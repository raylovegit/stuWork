package common.backup;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import common.util.FileInfo;
import common.util.FileInfoUtil;

public class BackupAction extends ActionSupport{
	private BackUtil bu=null;
	private String fileName;
	private HttpServletResponse resp;
	private List<FileInfo> list=new ArrayList<FileInfo>();
	private List<FileInfo> alist=new ArrayList<FileInfo>();
	private String message;
	
    public String list() throws IOException {
        list = FileInfoUtil.getFileInfos();
        Collections.reverse(list);
        System.out.print("message--"+message);
        return "list";
    }
    public String alldelete()throws IOException{
    	delete("backup.path");
    	return list();
    }
    public String adelete()throws IOException{
    	delete("addbackup.path");
    	return alist();
    }
    //删除一个月前增量备份的文件
    public void delete(String path) throws IOException {
    	List<FileInfo> tlist = null;
    	if("backup.path".equals(path))
    		tlist=FileInfoUtil.getFileInfos();
    	else
    		tlist=FileInfoUtil.getAddFileInfos();
    	String date=this.oneMouthago();
    	String cdate=null;
    	String temp="";
    	String[] fileNames=null;
    	Iterator iter=tlist.iterator();
    	while(iter.hasNext()){
    		FileInfo fi=(FileInfo)iter.next();
    		cdate=fi.getLastReadTime();	//得到文件修改的时间，对于备份文件，也为文件创建时间
    		//如果文件创建的时间小于date，就删除该文件
    		if(cdate.compareTo(date)>0){
    			temp=fi.getFileName()+";"+temp;
    		}
    	}
    	fileNames=temp.split(";");
        FileInfoUtil.delete(fileNames,path);
    }
    
	public String oneMouthago(){
		Calendar calendar = Calendar.getInstance(); 
		calendar.add(Calendar.MONTH, -1);    //得到前一个月 
		int year = calendar.get(Calendar.YEAR); 
		int month = calendar.get(Calendar.MONTH)+1; 
		//按这样的形式：2010年07月03日16时08分12秒
		String date=year+"年"+month+"月"+"01日01时01分01秒";
		System.out.print("一个月前的日期是："+date);
		return date;
	}

	//完全备份
	public String backup() throws IOException{
		try {
			bu=new BackUtil();
			bu.backup();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		message="backup SUCCESS!";
		return "backup";		
	}
	//完全恢复
	public String load() throws IOException{
		if (fileName != null && fileName.length() > 0) {
		try {
			bu=new BackUtil();
			bu.load(fileName);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		message="load SUCCESS!";
		return "backup";
	}
	public String alist() throws IOException {
        alist = FileInfoUtil.getAddFileInfos();
        Collections.reverse(alist);
        return "alist";
    }
	//增量备份
	public String addBackup() throws IOException{
		try {
			bu=new BackUtil();    
			bu.addBackup();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		message="backup SUCCESS!";
		return "addbackup";	
	}
	//增量恢复
	public String addLoad()throws IOException{
		if (fileName != null && fileName.length() > 0) {
		try {
			bu=new BackUtil();
			bu.addLoad(fileName,"addbackup.path");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		message="load SUCCESS!";
		return "addbackup";
	}
	
	public BackUtil getBu() {
		return bu;
	}
	public void setBu(BackUtil bu) {
		this.bu = bu;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public List<FileInfo> getList() {
		return list;
	}


	public void setList(List<FileInfo> list) {
		this.list = list;
	}


	public List<FileInfo> getAlist() {
		return alist;
	}


	public void setAlist(List<FileInfo> alist) {
		this.alist = alist;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}

}
