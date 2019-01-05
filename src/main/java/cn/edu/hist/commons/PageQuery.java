package cn.edu.hist.commons;

import javax.swing.event.ListSelectionEvent;

/**
 * 分页查询参数类
 * @author miaoruntu
 *
 */
public class PageQuery {

	public static final int PageQuery_pageSize_common = 30;
	
	// 当前页码
	private int PageQuery_currPage;

	// 总页数
	private int PageQuery_Psize;

	// 总记录数
	private int PageQuery_infoCount;

	// 每页显示个数
	private int PageQuery_pageSize = PageQuery_pageSize_common;
	
	// 开始坐标
	private int PageQuery_start = 0;
	
	// 结束坐标
    private int PageQuery_end = 30;

	
	public static final String PageQuery_classname = "pagequery";
	

	/**
	 * 将分布参数传入处理，最终计算出当前页码PageQuery_currPage，开始坐标PageQuery_star，结束坐标PageQuery_end，总页数PageQuery_Psize
	 * @param infoCount 记录总数
	 * @param pageSize 每页显示个数
	 * @param currPage 当前页码
	 */
	public void setPageParams(int infoCount, int pageSize, int currPage) {
		this.PageQuery_infoCount = infoCount;
		this.PageQuery_pageSize = pageSize;
		this.PageQuery_currPage = currPage;
		
		float Psize_l = infoCount / (float) (this.PageQuery_pageSize);
		if (PageQuery_currPage < 2) {
			PageQuery_currPage = 1;
			PageQuery_start = 0;
		} else if (PageQuery_currPage > Psize_l) {
			if(Psize_l==0){
				
				PageQuery_currPage=1;
			}else{
				PageQuery_currPage = (int) Math.ceil(Psize_l);
			}
			
			PageQuery_start = (PageQuery_currPage - 1) * this.PageQuery_pageSize;
		} else {
			PageQuery_start = (PageQuery_currPage - 1) * this.PageQuery_pageSize;
		}
		PageQuery_Psize = (int) Math.ceil(Psize_l);
		this.PageQuery_end = PageQuery_currPage*this.PageQuery_pageSize;
	}
	
	public int getPageQuery_currPage() {
		return PageQuery_currPage;
	}

	public void setPageQuery_currPage(int pageQuery_currPage) {
		PageQuery_currPage = pageQuery_currPage;
	}

	public int getPageQuery_Psize() {
		return PageQuery_Psize;
	}

	public void setPageQuery_Psize(int pageQuery_Psize) {
		PageQuery_Psize = pageQuery_Psize;
	}

	public int getPageQuery_infoCount() {
		return PageQuery_infoCount;
	}

	public void setPageQuery_infoCount(int pageQuery_infoCount) {
		PageQuery_infoCount = pageQuery_infoCount;
	}

	public int getPageQuery_pageSize() {
		return PageQuery_pageSize;
	}

	public void setPageQuery_pageSize(int pageQuery_pageSize) {
		PageQuery_pageSize = pageQuery_pageSize;
	}

	public int getPageQuery_start() {
		return PageQuery_start;
	}

	public void setPageQuery_start(int pageQuery_start) {
		PageQuery_start = pageQuery_start;
	}

	public PageQuery getPageQuery() {
		return this;
	}

	public int getPageQuery_end() {
		return PageQuery_end;
	}


	
}
