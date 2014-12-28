package stu.login;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.springframework.web.context.WebApplicationContext;

/**
 * @author rslee
 * @date 2010-7-20 文档说明： 该类实现当前在线人数的统计和显示，更新数据库内总访问人数
 */
public class OnlineCount  implements HttpSessionListener {

	private OnlineDao onlineDao;
	public void sessionCreated(HttpSessionEvent event) {
		System.out.println("有人访问");
		WebApplicationContext ctx = (WebApplicationContext) event
	      .getSession()
	      .getServletContext()
	      .getAttribute(
	        WebApplicationContext.ROOT_WEB_APPLICATION_CONTEXT_ATTRIBUTE);
		onlineDao=(OnlineDao)ctx.getBean("onlineDao");
		try {
			onlineDao.add();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void sessionDestroyed(HttpSessionEvent arg0) {
	}

	public OnlineDao getOnlineDao() {
		return onlineDao;
	}

	public void setOnlineDao(OnlineDao onlineDao) {
		this.onlineDao = onlineDao;
	}

}
