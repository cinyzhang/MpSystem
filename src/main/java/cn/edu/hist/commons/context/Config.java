package cn.edu.hist.commons.context;

/**
 * 系统参数配置类，配置了系统用到参数
 * @author mrt
 * 
 */
public class Config {


	/**
	 * 系统语言环境，默认为中文zh
	 */
	public static final String LANGUAGE = "zh";

	/**
	 * 系统国家环境，默认为中国CN
	 */
	public static final String COUNTRY = "CN";
	
	/**
	 * servletContext
	 */
	public static final String SERVLETCONTEXT_KEY="servletContext";

	/**
	 * 提示信息配置文件名
	 */
	public static final String MESSAGE = "resources.messages";
	
	
	
	/**
	 * 系统版本文件名称
	 */
	public static final String VERSION = "version";
	
	/**
	 * 公共权限，需要给用户分配权限即可使用
	 */
	public static final String COMMON_ACTIONS = "commonActions";
	
	/**
	 * 公开权限，用户无需登录即可使用
	 */
	public static final String ANONYMOUS_ACTIONS = "anonymousActions";

	/**
	 * 系统参数配置文件名称
	 */
	public static final String SYSCONFIG = "sysParams";
	
	/**
	 * session中存放登录用户的key名称
	 */
	public static final String ACTIVEUSER_KEY = "activeUser";
	
	/**
	 * 配置文件中系统基础url的key名称
	 */
	public static final String BASEURL_KEY = "baseurl";
	
	/**
	 * 配置文件中系统管理url的key名称
	 */
	public static final String SYSMANAGERURL_KEY = "sysmanagerurl";
	
	/**
	 * 配置文件中系统配置url的key名称
	 */
	public static final String SYSCONFIGURL_KEY = "sysconfigurl";
	
	/**
	 * 配置文件中加密密钥的key名称
	 */
	public static final String DESKEY_KEY = "deskey";
	
	/**
	 * 系统管理及系统配置平台接入key参数
	 */
	public static final String LOGINKEY = "loginkeyString";
	
	/**
	 * 配置文件中系统版本名称的key名称
	 */
	public static final String VERSION_NAME_KEY = "version_name";
	
	/**
	 * 配置文件中系统版本号的key名称
	 */
	public static final String VERSION_NUMBER_KEY = "version_number";
	
	/**
	 * 配置文件中系统版本发布时间的key名称
	 */
	public static final String VERSION_DATE_KEY = "version_date";
	
	/**
	 * 系统提示信息ResultInfo对象key
	 */
	public static final String RESULTINFO_KEY = "resultInfo";
	
		
	/**
	 * 基础模块存放页面路径 ，在/WEB-INF/jsp下
	 */
	public static final String PAGE_PATH_BASE = "/base";
	
	/**
	 * 业务模块存放页面路径 ，在/WEB-INF/jsp下
	 */
	public static final String PAGE_PATH_BUSINESS = "/business";
	
		

	/**
	 * 一般错误提示页面,该路径需要匹配页面前后缀
	 */
	public static final String ERROR_PAGE = "/base/error";
	/**
	 * 登录页面地址,该路径需要匹配页面前后缀
	 */
	public static final String LOGIN_PAGE = "/base/login";
	
	/**
	 * 无权提示页面地址,该路径需要匹配页面前后缀
	 */
	public static final String REFUSE_PAGE = "/base/refuse";
	
	/**
	 * 系统公开action，无需登录即可使用
	 */
	//private static List<Operation> anonymousActions;
	
	
	
	/**
	    * 获取公开访问地址
	    * @return
	    */
	/*public static List<Operation> getAnonymousActions() {
		if(anonymousActions !=null){
			return anonymousActions;
		}
		anonymousActions = new ArrayList<Operation>();
		
		List<String> baseActions_list = ResourcesUtil.gekeyList(Config.ANONYMOUS_ACTIONS);
		for (String common_actionUrl:baseActions_list) {
			Operation o_i = new Operation(common_actionUrl);
			anonymousActions.add(o_i);
		}
		return anonymousActions;
	}
*/
	
	
	
	
}
