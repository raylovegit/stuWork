package stu.news;

public class Navigation {

	public String getNavigator(String type,String flag){
		String navigator = "";
		
		if("1".equals(type)){
			if("1".equals(flag)){
				navigator = "每月计划";
			}
			if("2".equals(flag)){
				navigator = "每月总结";
			}
			if("3".equals(flag)){
				navigator = "年度计划";
			}
			if("4".equals(flag)){
				navigator = "年度总结";
			}
		}
		if("2".equals(type)){
			if("1".equals(flag)){
				navigator = "通知公告";
			}
		}
		if("3".equals(type)){
			if("1".equals(flag)){
				navigator = "学工要闻";
			}
		}
		if("4".equals(type)){
			if("1".equals(flag)){
				navigator = "信息通报";
			}
		}
		if("5".equals(type)){
			if("1".equals(flag)){
				navigator = "本周安排";
			}
		}
		if("6".equals(type)){
			if("1".equals(flag)){
				navigator = "本周值班";
			}
		}
		if("7".equals(type)){
			if("1".equals(flag)){
				navigator = "本周工作督办";
			}
		}
		if("8".equals(type)){
			if("1".equals(flag)){
				navigator = "政工风采";
			}
		}
		if("9".equals(type)){
				navigator = "院系动态";
		}
		if("10".equals(type)){
			if("1".equals(flag)){
				navigator = "学子精英";
			}
		}
		if("11".equals(type)){
			if("1".equals(flag)){
				navigator = "资料下载";
			}
		}
		if("12".equals(type)){
			if("1".equals(flag)){
				navigator = "部门简介";
			}
			if("2".equals(flag)){
				navigator = "机构设置";
			}
			if("3".equals(flag)){
				navigator = "工作人员";
			}
			if("4".equals(flag)){
				navigator = "工作职责";
			}
		}
		if("13".equals(type)){
			if("1".equals(flag)){
				navigator = "国家法规";
			}
			if("2".equals(flag)){
				navigator = "校内规章";
			}
		}
		if("14".equals(type)){
			if("1".equals(flag)){
				navigator = "办公指南";
			}
		}
		
		return navigator;
	}
	
	public String mark(String type){
		String mark = "1";
		if("11".equals(type)){
			mark = "0";
		}
		if("12".equals(type)){
			mark = "0";
		}
		if("13".equals(type)){
			mark = "0";
		}
		if("14".equals(type)){
			mark = "0";
		}
		
		return mark;
	}
}
