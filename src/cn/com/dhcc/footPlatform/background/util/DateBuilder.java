package cn.com.dhcc.footPlatform.background.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 处理时间为各种需要的格式
 * 
 * @Title: 时间处理器
 * @Description: 本类的主要作用是处理时间为各种需要的格式
 * @Copyright: Copyright (c) 2011
 * @Company: lvbang
 * @author zhengxi
 * @version 1.0
 */
public class DateBuilder {
	/**
	 * "yyyy-MM"的日期格式
	 */
	private static String dateFormatToMonth = "yyyy-MM";
	/**
	 * "yyyy-MM-dd"的日期格式
	 */
	private static String dateFormatToDay = "yyyy-MM-dd";
	/**
	 * "yyyy-MM-dd HH:mm"的日期格式
	 */
	private static String dateFormatToMM = "yyyy-MM-dd HH:mm";
	/**
	 * "yyyy-MM-dd HH:mm:ss"的日期格式
	 */
	private static String dateFormatToSec = "yyyy-MM-dd HH:mm:ss";
	/**
	 * "yyyy-MM-dd HH:mm:ss SSS"的日期格式
	 */
	private static String dateFormatToMillisecond = "yyyy-MM-dd HH:mm:ss SSS";

	/**
	 * 天数为30天数的月份
	 */
	private static final int monthEnd30[] = { 4, 6, 9, 11 };

	/**
	 * 该方法获取系统的当前时间并将其转换为格式格式字符串
	 * 
	 * @param String 要降日期格式化成的格式
	 * @return String 当前时间的参数格式化字符串
	 */
	public static String getTimeString(String formatter) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(formatter);
		return dateFormat.format(new Date());
	}

	/**
	 * 该方法获取系统的当前时间并将其转换为"yyyy-MM"格式字符串
	 * 
	 * @return String 当前时间的"yyyy-MM格式化字符串
	 */
	public static String getTimeToMonth() {
		SimpleDateFormat dateFormat = new SimpleDateFormat(dateFormatToMonth);
		return dateFormat.format(new Date());
	}

	/**
	 * 该方法把传入的时间转化为"yyyy-MM"格式的字符串
	 * 
	 * @param date
	 *            Date 时间对象
	 * @return String 传入时间的"yyyy-MM"格式化字符串
	 */
	public static String getTimeToMonth(Date date) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(dateFormatToMonth);
		return dateFormat.format(date);
	}
	/**
	 * 获取2个字符日期的天数差
	 * 
	 * @param p_startDate(yyyyMMdd)
	 * @param p_endDate(yyyyMMdd)
	 * @return 天数差
	 */
	public static long getDaysOfTowDiffDate2(String p_startDate, String p_endDate)
			throws ParseException {
		
		Date l_startDate = toUtilDateFromStrDateByFormat(p_startDate,
				"yyyyMMdd");
		Date l_endDate = toUtilDateFromStrDateByFormat(p_endDate, "yyyyMMdd");
		long l_startTime = getMillisOfDate(l_startDate);
		long l_endTime = getMillisOfDate(l_endDate);
		long betweenDays = (long) ((l_endTime - l_startTime) / (1000 * 60 * 60 * 24));
		return betweenDays;
	}


	/**
	 * 该方法获取系统的当前时间并将其转换为"yyyy-MM-dd HH:mm"格式字符串
	 * 
	 * @return String 当前时间的"yyyy-MM-dd HH:mm"格式化字符串
	 */
	public static String getTimeToMM() {
		SimpleDateFormat dateFormat = new SimpleDateFormat(dateFormatToMM);
		return dateFormat.format(new Date());
	}

	/**
	 * 该方法把传入的时间转化为"yyyy-MM-dd HH:mm"格式的字符串
	 * 
	 * @param date
	 *            Date 时间对象
	 * @return String 传入时间的"yyyy-MM-dd HH:mm"格式化字符串
	 */
	public static String getTimeToMM(Date date) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(dateFormatToMM);
		return dateFormat.format(date);
	}

	/**
	 * 该方法获取系统的当前时间并将其转换为"yyyy-MM-dd"格式字符串
	 * 
	 * @return String 当前时间的"yyyy-MM-dd"格式化字符串
	 */
	public static String getTimeToDay() {
		SimpleDateFormat dateFormat = new SimpleDateFormat(dateFormatToDay);
		return dateFormat.format(new Date());
	}
	
	/**
	 * 该方法获取系统的当前时间
	 * 
	 *
	 */
	public static String getTimeToDayDate() {
		SimpleDateFormat dateFormat = new SimpleDateFormat(dateFormatToDay);
		return dateFormat.format(new Date());
	}

	/**
	 * 该方法把传入的时间转化为"yyyy-MM-dd"格式的字符串
	 * 
	 * @param date
	 *            Date 时间对象
	 * @return String 传入时间的"yyyy-MM-dd"格式化字符串
	 */
	public static String getTimeToDay(Date date) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(dateFormatToDay);
		return dateFormat.format(date);
	}

	/**
	 * 该方法获取系统的当前时间并将其转换为"yyyy-MM-dd HH:mm:ss"格式字符串
	 * 
	 * @return String 当前时间的"yyyy-MM-dd HH:mm:ss"格式化字符串
	 */
	public static String getTimeToSec() {
		SimpleDateFormat dateFormat = new SimpleDateFormat(dateFormatToSec);
		return dateFormat.format(new Date());
	}

	/**
	 * 该方法把传入的日期转化为"yyyy-MM-dd HH:mm:ss"格式的字符串
	 * 
	 * @param date
	 *            Date 时间对象
	 * @return String 传入时间的"yyyy-MM-dd HH:mm:ss"格式化字符串
	 */
	public static String getTimeToSec(Date date) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(dateFormatToSec);
		return dateFormat.format(date);
	}

	/**
	 * 该方法获取系统的当前时间并将其转换为"yyyy-MM-dd HH:mm:ss SSS"格式字符串
	 * 
	 * @return String 当前时间的"yyyy-MM-dd HH:mm:ss SSS"格式化字符串
	 */
	public static String getTimeToMillisecond() {
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				dateFormatToMillisecond);
		return dateFormat.format(new Date());
	}

	/**
	 * 该方法把传入的日期转化为"yyyy-MM-dd HH:mm:ss SSS"格式的字符串
	 * 
	 * @param date
	 *            Date 时间对象
	 * @return String 传入时间的"yyyy-MM-dd HH:mm:ss SSS"格式化字符串
	 */
	public static String getTimeToMillisecond(Date date) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				dateFormatToMillisecond);
		return dateFormat.format(date);
	}

	/**
	 * 该方法获的某月的天数
	 * 
	 * @param year
	 *            年
	 * @param month
	 *            月
	 * @return int 某月的天数
	 */
	public static int getMonthDayNumber(int year, int month) {
		int result;
		// 如果月为2月时，判断是28天还是29天
		if (month == 2) {
			result = 28;
			if (year % 100 == 0) {
				if (year % 400 == 0) {
					result = 29;
				}
			} else if (year % 4 == 0) {
				result = 29;
			}
		} else {
			result = 31;
			for (int i = 0; i < monthEnd30.length; i++) {
				if (month == monthEnd30[i]) {
					result = 30;
					break;
				}
			}
		}
		return result;
	}

	/**
	 * 此方法将将日期转为标准格式"yyyy-MM-dd"
	 * 
	 * @param dt String 时间对象
	 * <pre>dt 支持格式：
	 * yyyy-MM-dd 
	 * yyyy-MM-dd hh
	 * yyyy-MM-dd hh:mm
	 * yyyy-MM-dd hh:mm:ss
	 * yyyy.MM.dd 
	 * yyyy.MM.dd hh      
	 * yyyy.MM.dd hh:mm   
	 * yyyy.MM.dd hh:mm:ss 
	 * yyyy/MM/dd
	 * yyyy/MM/dd hh      
	 * yyyy/MM/dd hh:mm   
	 * yyyy/MM/dd hh:mm:ss
	 * 其中：年必须是4位，月1位或2位，天1位或2位
	 * </pre>
	 * @return String 传入时间的"yyyy-MM-dd",格式化字符串
	 * 
	 */
	public static String formatDate(String dt) {
		String retDt = "";
		try {
			if (null == dt || dt.length() == 0) {
				return "";
			} else {
				//year [1-9][0-9]{3}
				//month ( ([0]{0,1}[1-9]{1}) | ([1][0-2]{1}) )
				//day (([0]{0,1}[1-9]{1}) | ([1-2]{1}[0-9]{1}) | ([3]{1}[0-1]{1}))
				//0个或多个任意字符([\\s]|[\\S])*
				String dateReg="([1-9]{1}[0-9]{3})([-|/|.]{1})(([0]{0,1}[1-9]{1})|([1][0-2]{1}))([-|/|.]{1})(([0]{0,1}[1-9]{1})|([1-2]{1}[0-9]{1})|([3]{1}[0-1]{1}))([\\s]|[\\S])*";
//				System.out.println(dt.matches(dateReg));
				if(dt.matches(dateReg)){
					String year = "";
					String month = "";
					String date = "";
					boolean oneBitMonth=false;
//					int idx = dt.indexOf("-", 5);
//					if (idx == -1) {
//						return "";
//					}
					year = dt.substring(0, 4);
//					month = dt.substring(5, idx);
					month = dt.substring(5, 7);
					if(month.endsWith("-")||month.endsWith("/")||month.endsWith(".")){
						month=dt.substring(5, 6);
						month = "0" + month;
						oneBitMonth=true;
					}
//					if (month.length() == 1) {
//						month = "0" + month;
//					}
//					date = dt.substring(idx + 1);
					if(oneBitMonth){
						date=dt.substring(7);
					}else{
						date=dt.substring(8);
					}
					date=date.trim();
					if(date.length()>2){
						date=date.substring(0,2);
					}
					date=date.trim();
					if(date.length()==1){
						date = "0" + date;
					}
					
//					if(date.endsWith("-")||date.endsWith("/")||date.endsWith(".")){
//						date=date.substring(0, 1);
//						date = "0" + date;
//					}
//					if (date.length() == 1) {
//						date = "0" + date;
//					}
					retDt = year + "-" + month + "-" + date;
				}
			}
			return retDt;
		} catch (Exception e) {
			return "";
		}
	}
public static void main(String[] args) {
//	System.out.println(DateBuilder.getBeforeYear());
//	String aa="2014-12-16";
//	System.out.println(aa.substring(aa.indexOf("-")));
	
	SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM");
	String bb="2015-01";
	try {
		System.out.println(DateBuilder.getBeforeMonth(sf.parse(bb)));
	} catch (ParseException e) {
		e.printStackTrace();
	}
}
	/**
	 * 此方法得到给定日期，N天、月、年前或后的日期
	 * 
	 * @param startDate
	 *            String 开始日期
	 * @param longNumber
	 *            int 数值（输入正数，得到N天、月、年后的日期.输入负数，得到N天、月、年前的日期）
	 * @param unitDate
	 *            String 数值单位（0代表年，1代表月，2代表日）
	 * @return String 返回得到日期
	 */

	public static String getDate(String startDate, int longNumber,
			String unitDate) {
		Calendar beginDate = Calendar.getInstance();
		String sStartDate = formatDate(startDate);
		// 在字符串中取得年
		int year = Integer.parseInt(sStartDate.substring(0, 4));
		// 在字符串中取得月
		int month = Integer.parseInt(sStartDate.substring(5, 7));
		// 在字符串中取得日
		int day = Integer.parseInt(sStartDate.substring(8, 10));
		int end;

		month -= 1;
		// 如果数值单位为0，年加传入数值
		if (unitDate.equals("0")) {
			year += longNumber;
		}
		// 如果数值单位为1，月加传入数值
		if (unitDate.equals("2")) {
			day += longNumber;
		}
		// 如果数值单位为2，日加传入数值
		if (unitDate.equals("1")) {
			month += longNumber;

			beginDate.set(year, month, 1);

			year = beginDate.get(Calendar.YEAR);
			month = beginDate.get(Calendar.MONTH);

			end = getMonthDayNumber(year, month + 1);
			day = day > end ? end : day;
		} else {

			beginDate.set(year, month, day);

			year = beginDate.get(Calendar.YEAR);
			month = beginDate.get(Calendar.MONTH);
			day = beginDate.get(Calendar.DATE);
		}
		month++;
		sStartDate = String.valueOf(year) + "-" + String.valueOf(month) + "-"
				+ String.valueOf(day);
		sStartDate = formatDate(sStartDate);
		return sStartDate;
	}

	/**
	 * 此方法得到给定日期，N天后的日期或N天前的日期
	 * 
	 * @param startDay
	 *            String 开始日期
	 * @param longNumber
	 *            int 天数（输入正数，得到N天后的日期.输入负数，得到N天前的日期）
	 * @return String 返回得到日期
	 */
	public static String getNDaysChange(String startDay, int longNumber) {
		return DateBuilder.getDate(startDay, longNumber, "2");
	}

	/**
	 * 此方法得到给定日期，N月后的日期或N月前的日期
	 * 
	 * @param startDay
	 *            String 开始日期
	 * @param longNumber
	 *            int 月数（输入正数，得到N月后的日期.输入负数，得到N月前的日期）
	 * @return String 返回得到日期
	 */
	public static String getNMonthChange(String startDay, int longNumber) {
		return DateBuilder.getDate(startDay, longNumber, "1");
	}

	/**
	 * 此方法得到给定日期，N年后的日期或N年前的日期
	 * 
	 * @param startDay
	 *            String 开始日期
	 * @param longNumber
	 *            int 年数（输入正数，得到N年后的日期.输入负数，得到N年前的日期）
	 * @return String 返回得到日期
	 */
	public static String getNYearChange(String startDay, int longNumber) {
		return DateBuilder.getDate(startDay, longNumber, "0");
	}

	/**
	 * 此方法将yyyy-MM-dd类型的字符串转换为Date类型 如果字符串日期不合法，缺省为"1900-01-01"
	 * 
	 * @param parStringDate
	 *            String 需要转换的日期字符串
	 * @return Date 转换后的日期类型
	 */
	public static Date strToDate(String parStringDate) {
		java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat(
				dateFormatToDay);
		if (!isVerifyDate(parStringDate)) {
			parStringDate = new String("1900-01-01");
		}
		try {
			return dateFormat.parse(parStringDate);
		} catch (java.text.ParseException ex) {
			java.util.GregorianCalendar calendar = new java.util.GregorianCalendar();
			calendar.set(1900, 1, 1);
			return calendar.getTime();
		}
	}

	/**
	 * 此方法检验输入字符串日期的合法性
	 * 
	 * @param parDate
	 *            String 字符串日期，格式为yyyy-MM-dd
	 * @return boolean 如果输入合法返回true，不合法返回false
	 */
	public static boolean isVerifyDate(String parDate) {

		// 确保传入的日期字符串为10为yyyy-mm-dd格式
		parDate = formatDate(parDate);
		// 确保日期支持yyyy-m-dd yyyy-mm-d yyyy-m-d
		/*if (StringBuilder.trim(parDate).length() != 10) {
			return false;
		}*/
		SimpleDateFormat sdf = new SimpleDateFormat(dateFormatToDay);
		boolean valid = false;
		try {
			if (sdf.format(sdf.parse(parDate)).equalsIgnoreCase(parDate)) {
				valid = true;
			}
		} catch (Exception ex) {
		}
		return valid;
	}

	/**
	 * 如果该日期字符串是有效的返回true
	 * 
	 * @param date 传入的字符串
	 * @return true或者false
	 */
	public static boolean isLagelDateOfString(String date) {
		if (date == null || "".equals(date)) {
			return false;
		}
		Pattern p = Pattern.compile("^\\d{4}-\\d{1,2}-\\d{1,2}$");
		Matcher match = p.matcher(date);
		return match.matches();
	}

	/**
	 * 此方法根据输入日期对象获得一周的开始日期（星期一）
	 * 
	 * @param parDate
	 *            Date 日期对象
	 * @return String 开始日期
	 */
	public static String getStartDayOfWeek(Date parDate) {
		Calendar calendar = new GregorianCalendar();
		calendar.setTime(parDate);
		int i = calendar.get(Calendar.DAY_OF_WEEK);
		String day = getTimeToDay(parDate);
		day = getNDaysChange(day, -(i - 2));
		return day;
	}

	/**
	 * 此方法根据输入日期对象获得一周的结束日期(星期天)
	 * 
	 * @param parDate
	 *            Date 日期对象
	 * @return String 开始日期
	 */
	public static String getEndDayOfWeek(Date parDate) {
		Calendar calendar = new GregorianCalendar();
		calendar.setTime(parDate);
		int i = calendar.get(Calendar.DAY_OF_WEEK);
		String day = getTimeToDay(parDate);
		day = getNDaysChange(day, (-(i - 2)) + 6);
		return day;
	}

	/**
	 * 获得一个月的开始时间
	 * 
	 * @param parDate
	 *            Date 传入的日期
	 * @return String 月份开始的日期
	 */
	public static String getStartDayOfMonth(Date parDate) {
		Calendar calendar = new GregorianCalendar();
		calendar.setTime(parDate);
		int i = calendar.get(Calendar.DAY_OF_MONTH);
		String day = getTimeToDay(parDate);
		day = getNMonthChange(day, 0);
		day = getNDaysChange(day, -(i - 1));
		return day;
	}

	/**
	 * 获得一个月的结束时间
	 * 
	 * @param parDate
	 *            Date 传入的日期
	 * @return String 月份结束的日期
	 */
	public static String getEndDayOfMonth(Date parDate) {
		Calendar calendar = new GregorianCalendar();
		calendar.setTime(parDate);
		int i = calendar.get(Calendar.DAY_OF_MONTH);
		String day = getTimeToDay(parDate);
		//day = getNMonthChange(day, -1);
		int n = getMonthDayNumber(Integer.parseInt(day.substring(0, 4)),
				Integer.parseInt(day.substring(5, 7)));
		day = getNDaysChange(day, (-(i - 1)) + n - 1);
		return day;
	}

	/**
	 * 字符型日期转化成sql.Date型日期
	 * 
	 * @param p_strDate
	 *            字符型日期
	 * @return java.sql.Date sql.Date型日期
	 * @throws ParseException
	 */
	public static java.sql.Date toSqlDateFromStrDate(String p_strDate)
			throws ParseException {
		java.sql.Date returnDate = null;
		DateFormat sdf = new SimpleDateFormat();
		if (p_strDate != null && (!"".equals(p_strDate))) {
			returnDate = new java.sql.Date(sdf.parse(p_strDate).getTime());
		}
		return returnDate;
	}

	/**
	 * util.Date型日期转化sql.Date(年月日)型日期
	 * 
	 * @param p_utilDate
	 *            util.Date型日期
	 * @return java.sql.Date sql.Date型日期
	 */
	public static java.sql.Date toSqlDateFromUtilDate(java.util.Date p_utilDate) {
		java.sql.Date returnDate = null;
		if (p_utilDate != null) {
			returnDate = new java.sql.Date(p_utilDate.getTime());
		}
		return returnDate;
	}

	/**
	 * util.Date型日期转化sql.Time(时分秒)型日期
	 * 
	 * @param p_utilDate
	 *            util.Date型日期
	 * @return java.sql.Time sql.Time型日期
	 */
	public static java.sql.Time toSqlTimeFromUtilDate(java.util.Date p_utilDate) {
		java.sql.Time returnDate = null;
		if (p_utilDate != null) {
			returnDate = new java.sql.Time(p_utilDate.getTime());
		}
		return returnDate;
	}

	/**
	 * util.Date型日期转化sql.Date(时分秒)型日期
	 * 
	 * @param p_utilDate
	 *            util.Date型日期
	 * @return java.sql.Timestamp sql.Timestamp型日期
	 */
	public static java.sql.Timestamp toSqlTimestampFromUtilDate(
			java.util.Date p_utilDate) {
		java.sql.Timestamp returnDate = null;
		if (p_utilDate != null) {
			returnDate = new java.sql.Timestamp(p_utilDate.getTime());
		}
		return returnDate;
	}

	/**
	 * sql.Date型日期转化util.Date型日期
	 * 
	 * @param p_sqlDate
	 *            sql.Date型日期
	 * @return java.util.Date util.Date型日期
	 */
	public static Date toUtilDateFromSqlDate(java.sql.Date p_sqlDate) {
		java.util.Date returnDate = null;
		if (p_sqlDate != null) {
			returnDate = new java.util.Date(p_sqlDate.getTime());
		}
		return returnDate;
	}

	/**
	 * 字符型日期转化util.Date型日期
	 * 
	 * @param p_strDate
	 *            字符型日期
	 * @param p_format
	 *            格式:"yyyy-MM-dd" / "yyyy-MM-dd hh:mm:ss"
	 * @return java.util.Date util.Date型日期
	 * @throws ParseException
	 */
	public static java.util.Date toUtilDateFromStrDateByFormat(
			String p_strDate, String p_format) throws ParseException {
		java.util.Date l_date = null;
		java.text.DateFormat df = new java.text.SimpleDateFormat(p_format);
		if (p_strDate != null && (!"".equals(p_strDate)) && p_format != null
				&& (!"".equals(p_format))) {
			l_date = df.parse(p_strDate);
		}
		return l_date;
	}

	/**
	 * 获取指定日期的毫秒
	 * 
	 * @param p_date
	 *            util.Date日期
	 * @return long 毫秒
	 */
	public static long getMillisOfDate(java.util.Date p_date) {
		java.util.Calendar c = java.util.Calendar.getInstance();
		c.setTime(p_date);
		return c.getTimeInMillis();
	}

	// ----------------------日期计算---------------------------------------------------------------------------------

	/**
	 * 是否开始日期在结束日期之前(不包括相等)
	 * 
	 * @param p_startDate
	 * @param p_endDate
	 * @return boolean 在结束日期前:ture;否则：false
	 */
	public static boolean isStartDateBeforeEndDate(Date p_startDate,
			Date p_endDate) throws ParseException {
		long l_startTime = getMillisOfDate(p_startDate);
		long l_endTime = getMillisOfDate(p_endDate);
		return (l_startTime - l_endTime > (long) 0) ? true : false;
	}

	/**
	 * 获取2个字符日期的天数差
	 * 
	 * @param p_startDate
	 * @param p_endDate
	 * @return 天数差
	 */
	public static long getDaysOfTowDiffDate(String p_startDate, String p_endDate)
			throws ParseException {

		Date l_startDate = toUtilDateFromStrDateByFormat(p_startDate,
				"yyyy-MM-dd");
		Date l_endDate = toUtilDateFromStrDateByFormat(p_endDate, "yyyy-MM-dd");
		long l_startTime = getMillisOfDate(l_startDate);
		long l_endTime = getMillisOfDate(l_endDate);
		long betweenDays = (long) ((l_endTime - l_startTime) / (1000 * 60 * 60 * 24));
		return betweenDays;
	}

	/**
	 * 获取2个字符日期的周数差
	 * 
	 * @param p_startDate
	 * @param p_endDate
	 * @return 周数差
	 */
	public static long getWeeksOfTowDiffDate(String p_startDate,
			String p_endDate) throws ParseException {
		return getDaysOfTowDiffDate(p_startDate, p_endDate) / 7;
	}

	/**
	 * 获取2个字符日期的月数差
	 * 
	 * @param p_startDate
	 * @param p_endDate
	 * @return 月数差
	 */
	public static long getMonthsOfTowDiffDate(String p_startDate,
			String p_endDate) throws ParseException {
		return getDaysOfTowDiffDate(p_startDate, p_endDate) / 30;
	}

	/**
	 * 获取2个字符日期的年数差
	 * 
	 * @param p_startDate
	 * @param p_endDate
	 * @return 年数差
	 */
	public static long getYearsOfTowDiffDate(String p_startDate,
			String p_endDate) throws ParseException {
		return getDaysOfTowDiffDate(p_startDate, p_endDate) / 365;
	}
	
	/**
	 * 
	 * @Title getBeforeMonth
	 * @Description 获取上个月月份，格式yyyy-MM
	 * @return String
	 * @author LiQiang
	 * @date 2013-8-15
	 */
	public static String getBeforeMonth(){
		Calendar calendar=Calendar.getInstance();
		calendar.add(calendar.MONTH,-1);//得到上个月的月份
		return getTimeToMonth(calendar.getTime());
	}
	
	/**
	 * 
	 * @Title getBeforeDayMonth
	 * @Description 获取前一天上个月月份，格式yyyy-MM
	 * @return String
	 * @date 2017-9-1
	 */
	public static String getBeforeDayMonth(){
		Calendar calendar=Calendar.getInstance();
		calendar.setTime(getBeforeDayDate());
		calendar.add(calendar.MONTH,-1);//得到上个月的月份
		return getTimeToMonth(calendar.getTime());
	}
	
	/**
	 * 
	 * @Title getBeforeDayMonth
	 * @Description 获取前一天上2个月月份，格式yyyy-MM
	 * @return String
	 * @date 2017-9-1
	 */
	public static String getBeforeDayBeforeMonth(){
		Calendar calendar=Calendar.getInstance();
		calendar.setTime(getBeforeDayDate());
		calendar.add(calendar.MONTH,-2);//得到上个月的月份
		return getTimeToMonth(calendar.getTime());
	}
	
	/**
	 * 
	 * 获取指定日期的上一年月份，格式：yyyy-MM
	 * @param parDate
	 * @return String
	 * @author LiQiang
	 * @date 2015-1-6
	 */
	public static String getBeforeMonth(Date parDate){
		Calendar calendar=Calendar.getInstance();
		calendar.setTime(parDate);
		calendar.add(calendar.YEAR,-1);//得到上一年
		return getTimeToMonth(calendar.getTime());
	}
	
	
	/**
	 * 获取上一天
	 * @return String
	 * @author LiQiang
	 * @date 2014-12-17
	 */
	public static String getBeforeDay(){
		Calendar calendar=Calendar.getInstance();
		calendar.add(calendar.DATE,-1);
		return getTimeToDay(calendar.getTime());
	}
	
	/**
	 * 获取上个月的上一天
	 * @return String
	 * @author LiQiang
	 * @date 2014-12-17
	 */
	public static String getBeforeMonthDay(){
		Calendar calendar=Calendar.getInstance();
		calendar.add(calendar.DATE,-1);
		Calendar c = Calendar.getInstance();
		c.setTime(calendar.getTime());
		c.add(c.MONTH,-1);
		return getTimeToDay(c.getTime());
	}
	
	/**
	 * 获取前几天或后几天日期
	 * @return String
	 * @date 2017-09-12
	 */
	public static String getBeforeDay(int day){
		Calendar calendar=Calendar.getInstance();
		calendar.add(calendar.DATE,day);//得到上个月的月份
		return getTimeToDay(calendar.getTime());
	}
	
	/**
	 * 获取上一天
	 * @return Date
	 * @date 2017-09-01
	 */
	public static Date getBeforeDayDate(){
		Calendar calendar=Calendar.getInstance();
		calendar.add(calendar.DATE,-1);//得到上个月的月份
		return calendar.getTime();
	}
	
	/**
	 * 获取上个月的上一天
	 * @return Date
	 * @date 2017-09-01
	 */
	public static Date getBeforeMonthDayDate(){
		Calendar calendar=Calendar.getInstance();
		calendar.add(calendar.DATE,-1);//得到上个月的月份
		Calendar c = Calendar.getInstance();
		c.setTime(calendar.getTime());
		c.add(c.MONTH,-1);
		return c.getTime();
	}
	/**
	 * 获取上2个月的当前天
	 * @return Date
	 * @date 2017-09-01
	 */
	public static Date getBeforeTwoMonthDayDate(){
		Calendar calendar=Calendar.getInstance();
		calendar.add(calendar.DATE,0);//得到上个月的月份
		Calendar c = Calendar.getInstance();
		c.setTime(calendar.getTime());
		c.add(c.MONTH,-2);
		return c.getTime();
	}
	
	/**
	 * 获取前几天或后几天日期
	 * @return Date
	 * @date 2017-09-12
	 */
	public static Date getBeforeDayDate(int day){
		Calendar calendar=Calendar.getInstance();
		calendar.add(calendar.DATE,day);//得到上个月的月份
		return calendar.getTime();
	}
	
	/**
	 * 获取上一年
	 * @return String
	 * @author LiQiang
	 * @date 2014-12-17
	 */
	public static String getBeforeYear(){
		Calendar calendar=Calendar.getInstance();
		calendar.add(calendar.YEAR,-1);//得到上个月的月份
		return getTimeToDay(calendar.getTime()).substring(0, 4);
	}
	
	/**
	 * 获取上一年
	 * @param Date
	 * @return String
	 * @date 2017-11-01
	 */
	public static String getBeforeYear(Date parDate){
		Calendar calendar=Calendar.getInstance();
		calendar.setTime(parDate);
		calendar.add(calendar.YEAR,-1);//得到上个月的月份
		return getTimeToDay(calendar.getTime());
	}
	
	/**
	 * 
	 * @Title getBeforeDayMonth
	 * @Description 获取前一天上个月月份，格式yyyy-MM
	 * @return String
	 * @date 2017-9-1
	 */
	public static String getBeforeTwoDayMonth(){
		Calendar calendar=Calendar.getInstance();
		calendar.setTime(getBeforeDayDate(-2));
		calendar.add(calendar.MONTH,-1);//得到上个月的月份
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM");
		return dateFormat.format(calendar.getTime());
	}
	

}
