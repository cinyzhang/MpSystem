package cn.edu.hist.commons;

import java.util.Iterator;
import java.util.List;

import com.sun.org.apache.bcel.internal.generic.NEW;

/**
 * 用户身份信息，存入session
 * 由于tomcat将session会序列化在本地硬盘上，所以使用Serializable接口
 * @author Thinkpad
 *
 */
public class ActiveUser  implements java.io.Serializable {
	private String userid;//用户账号
	private String username;//用户名称
	private String groupid;//用户类型
	private String groupname;//用户类型名称

	private Menu menu;//操作菜单
	private List<Operation> operationList;//操作权限，包括用户点击菜单及操作菜单功能所有链接权限
	
	private String sysid;//用户所属单位id
	private String sysmc;//单位名称


	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	

	public String getGroupid() {
		return groupid;
	}

	public void setGroupid(String groupid) {
		this.groupid = groupid;
	}


	public String getSysid() {
		return sysid;
	}

	public void setSysid(String sysid) {
		this.sysid = sysid;
	}


	/*public String getLogintype() {
		return logintype;
	}

	public void setLogintype(String logintype) {
		this.logintype = logintype;
	}*/



	public String getGroupname() {
		return groupname;
	}

	public List<Operation> getOperationList() {
		return operationList;
	}

	public void setOperationList(List<Operation> operationList) {
		this.operationList = operationList;
	}

	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}

	public Menu getMenu() {
		return menu;
	}

	public void setMenu(Menu menu) {
		this.menu = menu;
	}

	public String getSysmc() {
		return sysmc;
	}

	public void setSysmc(String sysmc) {
		this.sysmc = sysmc;
	}

/*	public Operation getActionUrl(String actionUrl) {
		if (operationList != null) {
			
			for (Iterator<Operation> o_list = operationList.iterator(); o_list.hasNext();) {
				Operation o_i = (Operation) o_list.next();
				if (actionUrl.indexOf(o_i.getActionUrl())>0) {
					return o_i;
				}
			}
		}
		return null;
	}*/
	

}
