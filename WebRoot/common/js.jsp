<!-- js.jsp中的js导入不能加在taglibs.jsp中，那样会影响样式 -->
<script type="text/javascript" src="${ctx}/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="${ctx}/js/jquery.validationEngine.js"></script>
<script type="text/javascript" src="${ctx}/js/jquery.validationEngine-cn.js"></script>
<script type="text/javascript" src="${ctx}/js/opera.js"></script>

 <script type="text/javascript">
                $(document).ready(function(){
                		opera();    
                		$("#validateform").validationEngine();
                });
</script>