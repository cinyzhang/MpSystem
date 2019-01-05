package cn.edu.hist.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class DateUtil {
    
	public static final String FormatDayToChinaTime24H = "yyyy年MM月dd日";
	public static String DATETIME_FORMAT = "yyyy-MM-dd HH:mm:ss";
	public static String DATE_FORMAT = "yyyy-MM-dd";
	public static String TIME_FORMAT = "HH:mm:ss";
	
	/**
	 * 返回年份
	 * 
	 * @param date
	 *            日期
	 * @return 返回年份
	 */
	public static int getYear(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		return c.get(Calendar.YEAR);
	}

	/**
	 * 返回月份
	 * 
	 * @param date
	 *            日期
	 * @return 返回月份
	 */
	public static int getMonth(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		return c.get(Calendar.MONTH) + 1;
	}

	/**
	 * 返回日份
	 * 
	 * @param date
	 *            日期
	 * @return 返回日份
	 */
	public static int getDay(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		return c.get(Calendar.DAY_OF_MONTH);
	}
	
	/**
	 * Parse date like "yyyy-MM-dd".
	 */
	public static Date parseDate(String d) {
		try {
			return new SimpleDateFormat(DATE_FORMAT).parse(d);
		} catch (Exception e) {
		}
		return null;
	}
	
	/**
	 * Parse date like "yyyy-MM-dd HH:mm:ss".
	 */
	public static Date parseDateTime(String d) {
		try {
			return new SimpleDateFormat(DATETIME_FORMAT).parse(d);
		} catch (Exception e) {
		}
		return null;
	}
	
	/**
	 * Parse date like "HH:mm:ss".
	 */
	public static Date parseTime(String d) {
		try {
			return new SimpleDateFormat(TIME_FORMAT).parse(d);
		} catch (Exception e) {
		}
		return null;
	}
	
	/**
	 * 取得指定月份的最后一天
	 * 
	 * @param strdate
	 *            String
	 * @return String
	 */
	public String getMonthEnd(String strdate) {
		Date date = parseDate(getMonthBegin(strdate));
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.add(Calendar.MONTH, 1);
		calendar.add(Calendar.DAY_OF_YEAR, -1);
		return formatDate(calendar.getTime());
	}
	
	/**
	 * 取得指定月份的第一天
	 * 
	 * @param strdate
	 *            String
	 * @return String
	 */
	public String getMonthBegin(String strdate) {
		Date date = parseDate(strdate);
		return formatDateByFormat(date, "yyyy-MM") + "-01";
	}
	
	/**
	 * 以指定的格式来格式化日期
	 * 
	 * @param date
	 *            Date
	 * @param format
	 *            String
	 * @return String
	 */
	public static String formatDateByFormat(Date date, String format) {
		String result = "";
		if (date != null) {
			try {
				SimpleDateFormat sdf = new SimpleDateFormat(format);
				result = sdf.format(date);
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
		return result;
	}
	
	/**
	 * 常用的格式化日期
	 * 
	 * @param date
	 *            Date
	 * @return String
	 */
	public String formatDate(Date date) {
		return formatDateByFormat(date, "yyyy-MM-dd");
	}
	
	/**
	 * @根据当前日期计算n天后的日期
	 * @return String
	 */
	public Date afterNDay(Date date, int n) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		c.add(Calendar.DATE, n);
		Date destDay = c.getTime();
		return destDay;
	}

	/**
	 * 两个日期间的天数
	 */
	public static int getIntervalDays(Date startday, Date endday) {
		if (startday.after(endday)) {
			Date cal = startday;
			startday = endday;
			endday = cal;
		}
		long sl = startday.getTime();
		long el = endday.getTime();
		long ei = el - sl;
		return (int) (ei / (1000 * 60 * 60 * 24));
	}
    
    public static boolean  verifyDate(String birthday){
    	String [] array = birthday.split("-");
    	if(null == array || array.length != 3 || array[0].length() !=4 || array[1].length() != 2 || array[2].length() != 2) 
    		return false;
    	int curyear = DateUtil.getYear(new Date());
    	try {
			int studyear = Integer.parseInt(array[0]);
			if(studyear <= 1900 || studyear > curyear)
				return false;
			String curDateStr = formatDateByFormat(new Date(), DATE_FORMAT);
			if(birthday.compareTo(curDateStr) >= 0) 
				return false;
			return checkDate(birthday);
		} catch (NumberFormatException e) {
			return false;
		}
    }
    
    private static boolean checkDate(String date) {
		// System.out.println(date);
		// 判断年月日的正则表达式，接受输入格式为2010-12-24，可接受平年闰年的日期
		String regex = "(([0-9]{3}[1-9]|[0-9]{2}[1-9][0-9]{1}|[0-9]{1}[1-9][0-9]{2}|[1-9][0-9]{3})-(((0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)-(0[1-9]|[12][0-9]|30))|(02-(0[1-9]|[1][0-9]|2[0-8]))))|((([0-9]{2})(0[48]|[2468][048]|[13579][26])|((0[48]|[2468][048]|[3579][26])00))-02-29)";
		Pattern pattern = Pattern.compile(regex);
		Matcher matcherObj = pattern.matcher(date);
		return matcherObj.matches();
	}
    
    public static void main(String [] args) {
    	//System.out.println(verifyDate("2012-09-27"));
    	String test = ",1.1,1.2,1.3,";
		System.out.println(test.split(",").length);
    }
	
}
