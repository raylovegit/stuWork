package common.util;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class PageAction extends ActionSupport implements SessionAware,ServletRequestAware{
	
	protected Map<String,Object> session;
    protected HttpServletRequest request;
	
	   protected  long allCount=0;                      //总记录数
	   protected  long allPages = 0;                   //总页数
	   protected int maxCount = 10;               //一页最多有几条记录 
	   protected int pageNow=1;						//当前为第几页
	   
	   public void allPages(){
			if(allCount%maxCount==0)
				allPages=allCount/maxCount;
			else
				allPages=allCount/maxCount+1;
	   }
	   
	public long getAllPages() {
		return allPages;
	}
	public void setAllPages(long allPages) {
		this.allPages = allPages;
	}
	public int getMaxCount() {
		return maxCount;
	}
	public void setMaxCount(int maxCount) {
		this.maxCount = maxCount;
	}
	public int getPageNow() {
		return pageNow;
	}
	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}
	public long getAllCount() {
		return allCount;
	}
	public void setAllCount(long allCount) {
		this.allCount = allCount;
	}

	public void setSession(Map<String, Object> map) {
        this.session = map;
    }
    public Map<String,Object> getSession(){
        return session;
    }


    public void setServletRequest(HttpServletRequest req) {
		request = req;
	}
  
}
