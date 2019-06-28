<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312" %>
<%@ include file="iframe/head.jsp" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>���ϿƼ���ѧ����ѧԺ���й���ϵͳ</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

    </head>

    <body>
<SCRIPT language=javascript>
function reg() {
	window.location="reg.jsp";
}
function lost() {
	window.location="lost.jsp";
}
</SCRIPT>
		<!-- Top menu -->
		<nav class="navbar navbar-inverse navbar-no-bg" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="http://www.ccswust.edu.cn/">Bootstrap Registration Form Template</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="top-navbar-1">
					<ul class="nav navbar-nav navbar-right">
						<li>
							<span class="li-text">
								
							</span> 
							<a href="#"><strong> ���ϿƼ���ѧ����ѧԺ  </strong></a> 
							<span class="li-text">
								��ӭ������ϵ: 
							</span> 
							<span class="li-social">
								<a href="http://www.ccswust.edu.cn/"><i class="fa fa-facebook"></i></a> 
								<a href="http://www.ccswust.edu.cn/"><i class="fa fa-twitter"></i></a> 
								<a href="http://www.ccswust.edu.cn/"><i class="fa fa-envelope"></i></a> 
								<a href="http://www.ccswust.edu.cn/"><i class="fa fa-skype"></i></a>
							</span>
						</li>
					</ul>
				</div>
			</div>
		</nav>

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-7 text">
                            <h1><strong>���ϿƼ���ѧ����ѧԺ<br /></strong> ���й���ϵͳ</h1>
                            <div class="description">
                            	<p>
	                            	Scientific Research Management System<a href="#"><strong> of </strong></a>City College of Southwest University of Science and Technology
                            	</p>
                            </div>
                            <div class="top-big-link">
                            	<a class="btn btn-link-1" href="http://kjc.ccswust.edu.cn/network/pages/index.html">������ҳ</a>
                            	
                            </div>
                        </div>
                        <div class="col-sm-5 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>��ӭ��½ϵͳ</h3>
                            		<p>�밴����ȷ���û������ɵ�½��</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-pencil"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <FORM  name="loginform" action="<%=basePath%>AdminServlet" method="post" class="registration-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-first-name">��¼�ʺţ�</label><input type=hidden name=method value="one"/>
			                        	<input type="text" name="username" placeholder="�������¼�ʺ�..." class="form-first-name form-control" id="form-first-name" required />
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-last-name">��¼���룺</label>
			                        	<input type="text" name="password" placeholder="�������¼����..." class="form-last-name form-control" id="form-last-name" required />
			                        </div>
			                        <div class="form-group">
			                       
			                        	<label class="sr-only" for="form-email">�û���ݣ�</label>
											<INPUT type="radio" name="sf" value="������Ա" checked="checked"> ������Ա 
											            <input type="radio" name="sf" value="��������" > �������� 
											            <input type="radio" name="sf" value="���й�����Ա" > ���й�����Ա  
											            <input type="radio" name="sf" value="ϵͳ����Ա" >ϵͳ����Ա
			                        	
			                        </div>
										<br />
			                        <button type="submit" value="�����¼" class="btn">�����½!</button>
			                    </FORM>
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>


        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/retina-1.1.0.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>