package stu.message;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import common.util.PageAction;

public class MessageAction extends PageAction{

	/**
	 * @�û�ҵ���߼���
	 * @author wt
	 * @date 2010-07-27
	 */
	private static final long serialVersionUID = 8456844136309406451L;
	
	private MessageDao messageDao;
	private Message message;
	private List<Message> mlist;
	private Long ids[];
	
	//������е�list
	public String list(){
		allCount=messageDao.allCount();
		allPages();
		mlist=messageDao.queryList(pageNow, maxCount);
		return "list";
	}
	
	//�������˵�list
	public String verifyedList(){
		allCount=messageDao.verifyedCount();
		allPages();
		//�ҳ���������˵�����
		mlist=messageDao.queryList("1", pageNow, maxCount);
		return "VerifyedList";
	}
	
	public String preCreate(){
		return "create";
	}

	public String create(){
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-mm-dd");
		message.setMegTime(sdf.format(date));
		message.setFlag("0");	//�մ�����û�����
		messageDao.create(message);
		return "createok";
	}
	
	public String delete(){
		messageDao.delete(message);
		return "deleteok";
	}
	
	public String bentchDelete(){
		messageDao.bentchDelete(ids);
		return "bentchDelete";
	}

	//�������״̬
	public String verifyUpdate(){
		message=messageDao.read(ids[0]);
		messageDao.flagUpdate(message);
		return "verifyUpdate";
	}
	
	public String preUpdate(){
		message=messageDao.read(ids[0]);
		return "update";
	}
	
	public String update(){
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-mm-dd");
		message.setReplyTime(sdf.format(date));
		messageDao.update(message);
		return "updateok";
	}
	
	public String read(){
		message=messageDao.read(ids[0]);
		return "readok";
	}

	
	public MessageDao getMessageDao() {
		return messageDao;
	}

	public void setMessageDao(MessageDao messageDao) {
		this.messageDao = messageDao;
	}

	public Message getMessage() {
		return message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}

	public List<Message> getMlist() {
		return mlist;
	}

	public void setMlist(List<Message> mlist) {
		this.mlist = mlist;
	}

	public Long[] getIds() {
		return ids;
	}
	public void setIds(Long[] ids) {
		this.ids = ids;
	}
	
}
