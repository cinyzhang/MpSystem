package cn.edu.hist.business.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import cn.edu.hist.business.service.YpmlService;
import cn.edu.hist.commons.ActiveUser;
import cn.edu.hist.commons.PageQuery;
import cn.edu.hist.commons.context.Config;
import cn.edu.hist.commons.result.DataGridResultInfo;
import cn.edu.hist.dict.service.SystemConfigService;
import cn.edu.hist.model.Dictinfo;
import cn.edu.hist.model.GysypmlCustom;
import cn.edu.hist.model.GysypmlQueryVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


/**
 * 
 * <p>
 * Title: YpmlAction
 * </p>
 * <p>
 * Description:供货商药品目录
 */
@Controller
@RequestMapping("/ypml")
public class YpmlAction {

	@Autowired
	private SystemConfigService systemConfigService;

	@Autowired
	private YpmlService ypmlService;

	// 查询页面
	@RequestMapping("/querygysypml")
	public String querygysypml(Model model) throws Exception {
		// 药品类别
		List<Dictinfo> yplblist = systemConfigService.findDictinfoByType("001");
		model.addAttribute("yplblist", yplblist);

		return "/business/ypml/querygysypml";
	}

	// 查询列表结果集,json
	@RequestMapping("/querygysypml_result")
	public @ResponseBody
    DataGridResultInfo querygysypml_result(HttpSession session,
                                           GysypmlQueryVo gysypmlQueryVo,// 查询条件
                                           int page, int rows) throws Exception {

		// 当前用户
		ActiveUser activeUser = (ActiveUser) session
				.getAttribute(Config.ACTIVEUSER_KEY);
		// 用户所属的单位
		String usergysid = activeUser.getSysid();// 单位id

		// 列表的总数
		int total = ypmlService.findGysypmlCount(usergysid, gysypmlQueryVo);

		// 分页参数
		PageQuery pageQuery = new PageQuery();
		pageQuery.setPageParams(total, rows, page);
		gysypmlQueryVo.setPageQuery(pageQuery);// 设置分页参数

		// 分页查询列表
		List<GysypmlCustom> list = ypmlService.findGysypmlList(usergysid,
				gysypmlQueryVo);

		DataGridResultInfo dataGridResultInfo = new DataGridResultInfo();
		dataGridResultInfo.setTotal(total);
		dataGridResultInfo.setRows(list);

		return dataGridResultInfo;
	}

	// 查询页面
	@RequestMapping("/queryaddgysypml")
	public String queryaddgysypml(Model model) throws Exception {
		// 药品类别
		List<Dictinfo> yplblist = systemConfigService.findDictinfoByType("001");
		model.addAttribute("yplblist", yplblist);

		return "/business/ypml/queryaddgysypml";
	}

	// 查询列表结果集,json
	@RequestMapping("/queryaddgysypml_result")
	public @ResponseBody
	DataGridResultInfo queryaddgysypml_result(HttpSession session,
			GysypmlQueryVo gysypmlQueryVo,// 查询条件
			int page, int rows) throws Exception {

		// 当前用户
		ActiveUser activeUser = (ActiveUser) session
				.getAttribute(Config.ACTIVEUSER_KEY);
		// 用户所属的单位
		String usergysid = activeUser.getSysid();// 单位id

		// 列表的总数
		int total = ypmlService.findAddGysypmlCount(usergysid, gysypmlQueryVo);

		// 分页参数
		PageQuery pageQuery = new PageQuery();
		pageQuery.setPageParams(total, rows, page);
		gysypmlQueryVo.setPageQuery(pageQuery);// 设置分页参数

		// 分页查询列表
		List<GysypmlCustom> list = ypmlService.findAddGysypmlList(usergysid,
				gysypmlQueryVo);

		DataGridResultInfo dataGridResultInfo = new DataGridResultInfo();
		dataGridResultInfo.setTotal(total);
		dataGridResultInfo.setRows(list);

		return dataGridResultInfo;
	}
}
