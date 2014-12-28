/*
*	每个列表页面，各类操作的提交
*/

function opera(){
	//将增、删、改的title属性值，赋给listForm的action
	$("#delete").unbind().bind("click",function(){var url=$(this).attr("title");change(url,false);});
	$("#update").unbind().bind("click",function(){var url=$(this).attr("title");change(url,true);});
	$("#create").unbind().bind("click",function(){var url=$(this).attr("title");change(url,false);});
	$("#flagUpdate").unbind().bind("click",function(){var url=$(this).attr("title");change(url,false);});
	$("#flagback").unbind().bind("click",function(){var url=$(this).attr("title");change(url,false);});
	$("#read").unbind().bind("click",function(){var url=$(this).attr("title");change(url,true);});
	$("#allcheck").click(function(){
	                                $("input[type=checkbox]").attr("checked",$(this).attr("checked"));
                                });
}

function change(url,flag){
	if(flag){
		if(isSelect()){
		$("#listForm").attr("action",url).submit();
		return false;
		}
		else{
		 alert("请选择至少一条记录");
         return false;
		}
	}
	else{
		$("#listForm").attr("action",url).submit();
		return false;
	}
	
}

function isSelect(){
	 var flag = false;
     var inputs = document.getElementsByTagName("input");
     for(var i=0;i<inputs.length;i++){
        if(inputs[i].type=="checkbox"&&inputs[i].checked==true){
            flag = true;
            break;
        }
      }
        return flag;
	}
