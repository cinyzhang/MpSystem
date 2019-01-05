/**
 * @公司名称：VCOM
 * @文件名：PropertyManager.java
 * @作者：夏全刚
 * @版本号：1.0
 * @生成日期：2008-10-15
 * @功能描述：配置文件操作类
 */
package cn.edu.hist.util;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Set;

public class PropertyManager {
   // private LogManager logger =  LogManager.getMyLog(this.getClass());
	// 默认配置文件名和路径
	private String configfile = "";//null;

    public PropertyManager(String fileName)
    {
        try{
            configfile =getClass().getClassLoader().getResource(fileName).getPath();
            configfile = java.net.URLDecoder.decode(configfile, "UTF-8");
        }catch(Exception e)
        {
            e.printStackTrace();
        }
    }
	/**
      * @函数介绍：根据关键字取默认配置文件中的属性值
      * @参数：关键字
      * @返回值：对应的字符串值
	 */
	public String getPropertyStr(String key) {
		String value = "";
		Properties config = new Properties();
		try {
            FileInputStream is = new FileInputStream(configfile);
			config.load(is);
			if(is!=null) 
				is.close();
			// 如果配置文件中有该key
			if (config.containsKey(key))
				value = config.getProperty(key).trim();
			// 如果配置文件中没有该key则value为空
			else {
				System.out.println("配置文件中" + key + "不存在,请核实！");
				//logger.info("配置文件中" + key + "不存在,请核实！");
				value = "";
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return value;
	}

    /**
     * @函数介绍：根据关键字取默认配置文件中的属性值
     * @参数：关键字
     * @返回值：对应的int值
     */
	public int getPropertyInt(String key) {
		int value =0;
		Properties config = new Properties();
		try {
            FileInputStream is = new FileInputStream(configfile);
			config.load(is);
			if(is!=null) 
				is.close();
			if (config.containsKey(key))
				value = Integer.parseInt(config.getProperty(key).trim());
			// 如果配置文件中没有该key则value为空
			else {
               // logger.info("配置文件中" + key + "不存在,请核实！");
				System.out.println("配置文件中" + key + "不存在,请核实！");
				value = 0;
			}
		} catch (IOException e) {
            e.printStackTrace();
			return 0;
		}
		return value;
	}
	
    /**
     * @函数介绍：根据关键字取指定配置文件中的属性值
     * @参数：关键字
     * @返回值：对应的int值
     */
	public int getPropertyInt(String key, String file) {
		int value = 0;
		Properties config = new Properties();
		try {
            FileInputStream is = new FileInputStream(file);
			config.load(is);
			if(is!=null) 
				is.close();
			if (config.containsKey(key))
				value = Integer.parseInt(config.getProperty(key).trim());
			else {
             //   logger.info("配置文件中" + key + "不存在,请核实！");
				System.out.println("配置文件中" + key + "不存在,请核实！");
				value = 0;
			}
		} catch (IOException e) {
            e.printStackTrace();
			return 0;
		}
		return value;
	}
    
    /**
     * @函数介绍：根据关键字取指定配置文件中的属性值
     * @参数：关键字
     * @返回值：对应的字符串值
     */
	public String getPropertyStr(String key, String file) {
		String value = "";
		Properties config = new Properties();
		try {
            FileInputStream is = new FileInputStream(file);
			config.load(is);
			if(is!=null)
				is.close();
			if (config.containsKey(key))
				value = config.getProperty(key).trim();
			else {
               // logger.info("配置文件中" + key + "不存在,请核实！");
				System.out.println("配置文件中" + key + "不存在,请核实！");
				value = "";
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return value;
	}
	
	public List gekeyList(){
		List reslist = new ArrayList();
		Properties config = new Properties();
		try {
            FileInputStream is = new FileInputStream(configfile);
			config.load(is);
			Set keyset = config.keySet();
			for (Iterator it = keyset.iterator(); it.hasNext();) {
	            Object lkey = it.next();
	            reslist.add(lkey);
	        }

		} catch (IOException e) {
			e.printStackTrace();
		}
		return reslist;
		
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		PropertyManager p = new PropertyManager("WebServiceConfig.properties");
		List list = p.gekeyList();
		System.out.println("aaa:"+list);
	}

}
