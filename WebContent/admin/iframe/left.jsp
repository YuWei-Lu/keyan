<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="<%=basePath %>images/css/bootstrap.css" />
<link rel="stylesheet" href="<%=basePath %>images/css/css.css" />
<script type="text/javascript" src="<%=basePath %>images/js/jquery1.9.0.min.js"></script>
<script type="text/javascript" src="<%=basePath %>images/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=basePath %>images/js/sdmenu.js"></script>
<script type="text/javascript" src="<%=basePath %>images/js/laydate/laydate.js"></script>
</HEAD>
<%
	String username=(String)session.getAttribute("user");  String sf=(String)session.getAttribute("sf");  
	if(username==null){
		response.sendRedirect(path+"index.jsp");
	}
	else{ 
%>
<body>
<div class="left">
     
<script type="text/javascript">
var myMenu;
window.onload = function() {
	myMenu = new SDMenu("my_menu");
	myMenu.init();
};
</script>

<div id="my_menu" class="sdmenu">

	<div class="collapsed">
		<span>������Ϣ����</span>
		<a href="<%=basePath %>admin/system/editpwd.jsp" target="MainFrame">������Ϣ����</a> 
	</div>
	<%if(sf.equals("ϵͳ����Ա")){ %>  
	<div class="collapsed">
		<span>���й�����Ա</span>
		<a href="<%=basePath %>admin/jys/index.jsp" target="MainFrame">���й�����Ա</a> 
		<a href="<%=basePath %>admin/jys/add.jsp?method=addjys" target="MainFrame">���ӹ�����Ա</a> 
		 <a href="<%=basePath %>admin/jys/s.jsp" target="MainFrame">������Ա��ѯ</a>  
	</div> 
	<div class="collapsed">
		<span>��λ��Ϣ����</span>
		<a href="<%=basePath %>admin/dw/index.jsp" target="MainFrame">��λ��Ϣ����</a> 
		<a href="<%=basePath %>admin/dw/add.jsp?method=adddw" target="MainFrame">���ӵ�λ��Ϣ</a>  
		<a href="<%=basePath %>admin/dw/s.jsp" target="MainFrame">��λ��Ϣ��ѯ</a> 
	</div> 
	<div class="collapsed">
		<span>�����������</span>
		<a href="<%=basePath %>admin/system/index.jsp" target="MainFrame">�����������</a> 
		<a href="<%=basePath %>admin/system/add.jsp?method=addm" target="MainFrame">���ӿ�������</a> 
		 <a href="<%=basePath %>admin/system/s.jsp" target="MainFrame">���������ѯ</a>  
	</div>
	<div class="collapsed">
		<span>������Ա����</span>
		<a href="<%=basePath %>admin/xs/index.jsp" target="MainFrame">������Ա����</a> 
		<a href="<%=basePath %>admin/xs/add.jsp?method=addxs" target="MainFrame">���ӿ�����Ա</a>  
		<a href="<%=basePath %>admin/xs/s.jsp" target="MainFrame">������Ա��ѯ</a> 
	</div> 
	<div class="collapsed">
		<span>ϵͳ���ݹ���</span>
		<a href="<%=basePath %>admin/xt/bf.jsp" target="MainFrame">���ݱ��ݹ���</a> 
		<a href="<%=basePath %>admin/xt/rz.jsp?method=addxs" target="MainFrame">ϵͳ��־����</a>  
		<a href="<%=basePath %>admin/xt/dc.jsp" target="MainFrame">���ݵ�������</a> 
	</div> 
	
	
	<%}else if(sf.equals("���й�����Ա")){ %>
	<div class="collapsed">
		<span>������Ϣ����</span>
		<a href="<%=basePath %>admin/jys/index2.jsp" target="MainFrame">������Ϣ����</a>  
	</div>
	<div class="collapsed">
		<span>������Ŀ����</span>
		<a href="<%=basePath %>admin/xm/index5.jsp" target="MainFrame">������Ŀ����</a>   
		 <a href="<%=basePath %>admin/xm/s5.jsp" target="MainFrame">������Ŀ��ѯ</a>  
	</div>
	<div class="collapsed">
		<span>���гɹ�����</span>
		<a href="<%=basePath %>admin/cg/index5.jsp" target="MainFrame">���гɹ�����</a>   
		 <a href="<%=basePath %>admin/cg/s5.jsp" target="MainFrame">���гɹ���ѯ</a>  
	</div>  
	<div class="collapsed">
		<span>ѧ�������</span>
		<a href="<%=basePath %>admin/hd/index5.jsp" target="MainFrame">ѧ�������</a>   
		 <a href="<%=basePath %>admin/hd/s5.jsp" target="MainFrame">ѧ�����ѯ</a>  
	</div> 
	<div class="collapsed">
		<span>��Ŀ���۹���</span>
		<a href="<%=basePath %>admin/xm/pj.jsp" target="MainFrame">��Ŀ���۹���</a>   
		 <a href="<%=basePath %>admin/xm/pjs.jsp" target="MainFrame">��Ŀ���۲�ѯ</a>  
	</div>
	<div class="collapsed">
		<span>��Ŀ���ͳ��</span>
		<a href="<%=basePath %>admin/xm/tj.jsp" target="MainFrame">��Ŀ���ͳ��</a>     
	</div>
	<%}else if(sf.equals("��������")){ %> 
	<div class="collapsed">
		<span>������Ϣ����</span>
		<a href="<%=basePath %>admin/system/index2.jsp" target="MainFrame">������Ϣ����</a>  
	</div>
	
	<div class="collapsed">
		<span>������Ŀ����</span>
		<a href="<%=basePath %>admin/xm/index2.jsp" target="MainFrame">������Ŀ����</a>   
		 <a href="<%=basePath %>admin/xm/s2.jsp" target="MainFrame">������Ŀ��ѯ</a>  
	</div>
	<div class="collapsed">
		<span>���гɹ�����</span>
		<a href="<%=basePath %>admin/cg/index2.jsp" target="MainFrame">���гɹ�����</a>   
		 <a href="<%=basePath %>admin/cg/s2.jsp" target="MainFrame">���гɹ���ѯ</a>  
	</div>  
	<div class="collapsed">
		<span>֪ͨ��Ϣ����</span>
		<a href="<%=basePath %>admin/tz/index.jsp" target="MainFrame">֪ͨ��Ϣ����</a> 
		<a href="<%=basePath %>admin/tz/add.jsp?method=addtz" target="MainFrame">����֪ͨ��Ϣ</a> 
		 <a href="<%=basePath %>admin/tz/s.jsp" target="MainFrame">֪ͨ��Ϣ��ѯ</a>  
	</div>
	<div class="collapsed">
		<span>�ļ���Ϣ����</span>
		<a href="<%=basePath %>admin/wj/index.jsp" target="MainFrame">�ļ���Ϣ����</a> 
		<a href="<%=basePath %>admin/wj/add.jsp?method=addwj" target="MainFrame">�����ļ���Ϣ</a> 
		 <a href="<%=basePath %>admin/wj/s.jsp" target="MainFrame">�ļ���Ϣ��ѯ</a>  
	</div>  
	<div class="collapsed">
		<span>������Ϣ����</span>
		<a href="<%=basePath %>admin/fk/index2.jsp" target="MainFrame">������Ϣ����</a>  
		 <a href="<%=basePath %>admin/fk/s2.jsp" target="MainFrame">������Ϣ��ѯ</a>  
	</div>
	<div class="collapsed">
		<span>ѧ�������</span>
		<a href="<%=basePath %>admin/hd/index2.jsp" target="MainFrame">ѧ�������</a>   
		 <a href="<%=basePath %>admin/hd/s2.jsp" target="MainFrame">ѧ�����ѯ</a>  
	</div>
	<div class="collapsed">
		<span>��Ŀ�м����</span>
		<a href="<%=basePath %>admin/xm/zj.jsp" target="MainFrame">��Ŀ�м����</a>   
		 <a href="<%=basePath %>admin/xm/zjs.jsp" target="MainFrame">��Ŀ�м��ѯ</a>  
	</div>
	<div class="collapsed">
		<span>��Ŀ�ս����</span>
		<a href="<%=basePath %>admin/xm/zhj.jsp" target="MainFrame">��Ŀ�ս����</a>   
		 <a href="<%=basePath %>admin/xm/zhjs.jsp" target="MainFrame">��Ŀ�ս��ѯ</a>  
	</div> 
	
	<%}else if(sf.equals("������Ա")){ %> 
	<div class="collapsed">
		<span>������Ϣ����</span>
		<a href="<%=basePath %>admin/xs/index2.jsp" target="MainFrame">������Ϣ����</a>  
	</div>
	<div class="collapsed">
		<span>������Ŀ����</span>
		<a href="<%=basePath %>admin/xm/index.jsp" target="MainFrame">������Ŀ����</a>  
		<a href="<%=basePath %>admin/xm/add.jsp?method=addxm" target="MainFrame">�����걨��Ŀ</a> 
		 <a href="<%=basePath %>admin/xm/s.jsp" target="MainFrame">������Ŀ��ѯ</a>  
	</div>
	<div class="collapsed">
		<span>���гɹ�����</span>
		<a href="<%=basePath %>admin/cg/index.jsp" target="MainFrame">���гɹ�����</a>  
		<a href="<%=basePath %>admin/cg/add.jsp?method=addcg" target="MainFrame">�����걨���ĳɹ�</a>
		<a href="<%=basePath %>admin/cg/add1.jsp?method=addcg" target="MainFrame">�����걨ר���ɹ�</a>
		<a href="<%=basePath %>admin/cg/add2.jsp?method=addcg" target="MainFrame">�����걨�̲��������ɹ�</a> 
		<a href="<%=basePath %>admin/cg/add3.jsp?method=addcg" target="MainFrame">�����걨�Ƽ��񽱳ɹ�</a>  
		<a href="<%=basePath %>admin/cg/s.jsp" target="MainFrame">���гɹ���ѯ</a>  
	</div>
	<div class="collapsed">
		<span>ѧ�������</span>
		<a href="<%=basePath %>admin/hd/index.jsp" target="MainFrame">ѧ�������</a>  
		<a href="<%=basePath %>admin/hd/add.jsp?method=addhd" target="MainFrame">����ѧ���</a> 
		 <a href="<%=basePath %>admin/hd/s.jsp" target="MainFrame">ѧ�����ѯ</a>  
	</div>
	<div class="collapsed">
		<span>֪ͨ��Ϣ�鿴</span>
		<a href="<%=basePath %>admin/tz/index2.jsp" target="MainFrame">֪ͨ��Ϣ�鿴</a>  
		 <a href="<%=basePath %>admin/tz/s2.jsp" target="MainFrame">֪ͨ��Ϣ��ѯ</a>  
	</div> 
	<div class="collapsed">
		<span>�ļ���Ϣ�鿴</span>
		<a href="<%=basePath %>admin/wj/index2.jsp" target="MainFrame">�ļ���Ϣ�鿴</a>  
		 <a href="<%=basePath %>admin/wj/s2.jsp" target="MainFrame">�ļ���Ϣ��ѯ</a>  
	</div> 
	<div class="collapsed">
		<span>������Ϣ����</span>
		<a href="<%=basePath %>admin/fk/index.jsp" target="MainFrame">������Ϣ����</a>  
		<a href="<%=basePath %>admin/fk/add.jsp?method=addfk" target="MainFrame">�ύ������Ϣ</a> 
		 <a href="<%=basePath %>admin/fk/s.jsp" target="MainFrame">������Ϣ��ѯ</a>  
	</div>
	<%} %> 
 
 	<div class="collapsed">
		<span>ע���˳�ϵͳ</span>
		<a onclick="if (confirm('ȷ��Ҫ�˳���')) return true; else return false;" href="<%=basePath %>AdminServlet?method=adminexit" target="_top" >ע���˳�ϵͳ</a>
	</div> 
</div>
     </div>
     <div class="Switch"></div>
     <script type="text/javascript">
	$(document).ready(function(e) {
    $(".Switch").click(function(){
	$(".left").toggle();
	 
		});
});
</script> 
</body>
<%} %>

</html>
