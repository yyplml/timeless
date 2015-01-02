package com.sthy.listener;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.log4j.Logger;

import com.sthy.pojo.Link;
import com.sthy.util.CONST;
import com.sthy.util.DBManage;
import com.sthy.util.PropertiesUtils;

/**
 * 启动监听器
 * 
 * @author Administrator
 * 
 */
public class TimelessServletContextListener implements ServletContextListener {
	
	private Logger log = Logger.getLogger(TimelessServletContextListener.class);

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {

	}

	@Override
	public void contextInitialized(ServletContextEvent servletContextEvent) {
		ServletContext servletContext = servletContextEvent.getServletContext();
		log.info("Load Language Info Start");
		this.loadLoanguageInfo(servletContext);
		log.info("Load Language Info End");
		log.info("Load Configuration1 Info Start");
		this.loadConfiguration1(servletContext);
		log.info("Load Configuration1 Info End");
		log.info("Load loadConfiguration2 Info Start");
		this.loadConfiguration2(servletContext);
		log.info("Load loadConfiguration2 Info End");
	}

	/**
	 * 加载语言版本信息
	 * 
	 * @param servletContext
	 */
	private void loadLoanguageInfo(ServletContext servletContext) {
		DBManage db = new DBManage();
		String languageSQL = "SELECT * FROM t_language_info ORDER BY num";
		String[] languageColumns = new String[] { "id", "name", "locale", "num" };
		servletContext.setAttribute(CONST.APPLICATION.LANGUAGES,
				db.query(languageSQL, languageColumns));
	}

	/**
	 * 加载配置文件friendconfiguration1.properties的数据
	 * 
	 * @param servletContext
	 */
	private void loadConfiguration1(ServletContext servletContext) {
		String path = servletContext.getRealPath("/") + "config/friendConfiguration1.config";
		BufferedReader br = null;
		try {
			br = new BufferedReader(new InputStreamReader(
					new FileInputStream(path), "UTF-8"));
			List<Link> links = new ArrayList<Link>();
			String str = null;
			Link link = null;
			int i = 1;
			while ((str = br.readLine()) != null) {
				// name
				if (i % 2 != 0) {
					link = new Link();
					link.setName(str);
				}
				// url
				if (i % 2 == 0) {
					link.setUrl(str);
					links.add(link);
				}
				i++;
			}
			servletContext.setAttribute(CONST.BASE.LINKS, links);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if(br != null) {
				try {
					br.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	/**
	 * 加载配置文件friendconfiguration2.properties的数据
	 * 
	 * @param servletContext
	 */
	private void loadConfiguration2(ServletContext servletContext) {
		String path = servletContext.getRealPath("/") + "config/friendConfiguration2.config";
		BufferedReader br = null;
		try {
			br = new BufferedReader(new InputStreamReader(
					new FileInputStream(path), "UTF-8"));
			List<Link> links = new ArrayList<Link>();
			String str = null;
			Link link = null;
			int i = 1;
			while ((str = br.readLine()) != null) {
				// name
				if (i % 2 != 0) {
					link = new Link();
					link.setName(str);
				}
				// url
				if (i % 2 == 0) {
					link.setUrl(str);
					links.add(link);
				}
				i++;
			}
			servletContext.setAttribute(CONST.BASE.LINKS2, links);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if(br != null) {
				try {
					br.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public void init(ServletContext servletContext) {
		String path = servletContext.getRealPath("/") + "temp/data.vm";
		try {
			BufferedReader br = new BufferedReader(new InputStreamReader(
					new FileInputStream(path), "UTF-8"));
			String str = null;
			int i = 0;
			String sql = "INSERT INTO t_faq (q_content, a_content, shop_id) VALUES ('#{q_content}', '#{a_content}', #{shop_id});";
			while ((str = br.readLine()) != null) {
				if (i % 2 == 0) {
					sql = sql.replace("#{q_content}", str);
				}
				if (i % 2 != 0) {
					sql = sql.replace("#{a_content}", str);
					sql = sql.replace("#{shop_id}", "6");
					System.out.println(sql);
				}
				i++;
				if (i > 1) {
					i = 0;
					sql = "INSERT INTO t_faq (q_content, a_content, shop_id) VALUES ('#{q_content}', '#{a_content}', #{shop_id});";
				}
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
