package cn.edu.hist.commons.result;

import java.util.ArrayList;
import java.util.List;
/**
 * 数据查询列表结果
 * @author Thinkpad
 *
 */
public class DataGridResultInfo {
	
	public DataGridResultInfo(){}
	public DataGridResultInfo(ResultInfo resultInfo){
		this.resultInfo = resultInfo;
	}
	
	//操作结果信息
	private ResultInfo resultInfo;
	
	//总条数
	private int total;
	
	//结果集
	private List rows = new ArrayList();
	
	//总计告诉footer
	private List footer = new ArrayList();

	public ResultInfo getResultInfo() {
		return resultInfo;
	}

	public void setResultInfo(ResultInfo resultInfo) {
		this.resultInfo = resultInfo;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public List getRows() {
		return rows;
	}

	public void setRows(List rows) {
		this.rows = rows;
	}
	public List getFooter() {
		return footer;
	}
	public void setFooter(List footer) {
		this.footer = footer;
	}
	
	
	
}
