package cn.edu.hist.business.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import cn.edu.hist.business.service.YpxxService;
import cn.edu.hist.commons.context.Config;
import cn.edu.hist.commons.result.ResultUtil;
import cn.edu.hist.commons.result.SubmitResultInfo;
import cn.edu.hist.dict.service.SystemConfigService;
import cn.edu.hist.model.Dictinfo;
import cn.edu.hist.model.YpxxCustom;
import cn.edu.hist.model.YpxxQueryVo;
import cn.edu.hist.util.poi.ExcelExportSXXSSF;
import cn.edu.hist.util.poi.HxlsOptRowsInterface;
import cn.edu.hist.util.poi.HxlsRead;
import com.xiaoleilu.hutool.date.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/**
 * 
 * <p>
 * Title: YpxxAction
 * </p>
 * <p>
 * Description:药品目录
 * </p>
 * <p>
 * Company: www.itcast.com
 * </p>
 * 
 * @author 苗润土
 * @date 2014年11月29日下午3:25:41
 * @version 1.0
 */
@Controller
@RequestMapping("/ypml")
public class YpxxAction {

	@Autowired
	private YpxxService ypxxService;
	
	@Autowired
	private SystemConfigService systemConfigService;

	@Autowired
	@Qualifier("ypxxService")
	private HxlsOptRowsInterface ypxxImportService;

	// 导出页面展示
	@RequestMapping("/exportYpxx")
	public String exportYpxx(Model model) throws Exception {

		
		//药品类别
		List<Dictinfo> yplblist = systemConfigService.findDictinfoByType("001");
		
		//交易状态
		List<Dictinfo> jyztlist = systemConfigService.findDictinfoByType("003");
		
		model.addAttribute("yplblist", yplblist);
		model.addAttribute("jyztlist", jyztlist);
		
		return "/business/ypml/exportYpxx";
	}

	// 导出提交
	@RequestMapping("/exportYpxxSubmit")
	public @ResponseBody
	SubmitResultInfo exportYpxxSubmit(YpxxQueryVo ypxxQueryVo) throws Exception {

		// 调用封装类执行导出

		// 导出文件存放的路径，并且是虚拟目录指向的路径
		//String filePath = "d:/upload/linshi/";
		//改为从系统参数配置表获取参数值
		String filePath = systemConfigService.findBasicinfoById("00301").getValue();
		// 导出文件的前缀
		String filePrefix = "ypxx";
		// -1表示关闭自动刷新，手动控制写磁盘的时机，其它数据表示多少数据在内存保存，超过的则写入磁盘
		int flushRows = 100;

		// 定义导出数据的title
		List<String> fieldNames = new ArrayList<>();
		fieldNames.add("流水号");
		fieldNames.add("通用名");
		fieldNames.add("剂型");
		fieldNames.add("规格");
		fieldNames.add("转换系数");
		fieldNames.add("生产企业");
		fieldNames.add("商品名称");
		fieldNames.add("中标价格");
		fieldNames.add("交易状态");

		// 告诉导出类数据list中对象的属性，让ExcelExportSXXSSF通过反射获取对象的值
		List<String> fieldCodes = new ArrayList<>();
		fieldCodes.add("bm");// 药品流水号
		fieldCodes.add("mc");// 通用名
		fieldCodes.add("jx");
		fieldCodes.add("gg");
		fieldCodes.add("zhxs");
		fieldCodes.add("scqymc");
		fieldCodes.add("spmc");
		fieldCodes.add("zbjg");
		fieldCodes.add("jyztmc");

		// 上边的代码可以优化为，将title和title对应的 pojo的属性，使用map存储
		// ....

		// 注意：fieldCodes和fieldNames个数必须相同且属性和title顺序一一对应，这样title和内容才一一对应

		// 开始导出，执行一些workbook及sheet等对象的初始创建
		ExcelExportSXXSSF excelExportSXXSSF = ExcelExportSXXSSF.start(filePath,
				"/upload/", filePrefix, fieldNames, fieldCodes, flushRows);

		// 导出的数据通过service取出
		List<YpxxCustom> list = ypxxService.findYpxxList(ypxxQueryVo);

		// 执行导出
		excelExportSXXSSF.writeDatasByObject(list);
		// 输出文件，返回下载文件的http地址，已经包括虚拟目录
		String webpath = excelExportSXXSSF.exportFile();

		System.out.println(webpath);

		return ResultUtil.createSubmitResult(ResultUtil.createSuccess(
				Config.MESSAGE, 313, new Object[] {
						list.size(),
						webpath//下载地址
				}));
	}
	
	//药品导入页面
	@RequestMapping("/importypxx")
	public String importypxx(Model model)throws Exception{
		
		return "/business/ypml/importypxx";
	}
	
	
	//药品导入提交
	@RequestMapping("/importypxxsubmit")
	public @ResponseBody SubmitResultInfo importypxxsubmit(
			//写上传的文件
			MultipartFile ypxximportfile
			)throws Exception{
		
		//将上传的文件写到磁盘
		String originalFilename  = ypxximportfile.getOriginalFilename();
		//写入磁盘的文件
		File dir = new File("/home/hzxlciny/tmp/upload/"+ DateUtil.formatDate(new Date()));
		if(!dir.exists()){
			//如果文件目录 不存在则创建
			dir.mkdirs();
		}
		File des=new File(dir.getAbsolutePath()+"/"+originalFilename);
		
		//将内存中的文件写磁盘
		ypxximportfile.transferTo(des);
		//上传文件磁盘上路径 
		String absolutePath = des.getAbsolutePath();
		
		
		//调用工具类进行药品目录 导入
		HxlsRead xls2csv = null;
		try {
			//第一个参数就是导入的文件
			//第二个参数就是导入文件中哪个sheet
			//第三个参数导入接口的实现类对象
			xls2csv = new HxlsRead(absolutePath,1,ypxxImportService);
			xls2csv.process();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//提示导入成功条数
		long success_num = xls2csv.getOptRows_success();
		//导入失败数量
		long failure_num = xls2csv.getOptRows_failure();
		
		//对导入失败记录处理
		//获取导入失败记录
		//xls2csv.getFailrows()
		//获取导入记录的title
		//xls2csv.getRowtitle();
		//获取导入失败原因
		//xls2csv.getFailmsgs()
		
		//将上边获取到的失败记录、title、失败原因，导出成一个 excel
		//使用工具类进行导出，得到导出文件下载路径
		//......
		
		
		return ResultUtil.createSubmitResult(ResultUtil.createSuccess(Config.MESSAGE, 314, new Object[]{
				success_num,failure_num
		}));
	}

}
