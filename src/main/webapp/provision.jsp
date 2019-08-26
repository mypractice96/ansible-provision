<%@ page import="com.tcs.ApplicationProperties"%>
<html>
<head>
    <title>Product Provisioning</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
     </head>
<body>
    
	<style>
	
		
	
	</style>

	
	
	  <div class="fixed-header">
		<img src="https://visualstudio.microsoft.com/wp-content/uploads/2016/06/ContinuousTesting1-636x350-op.png" style="margin-top:-30px;
		height: 116px; float:left"/>
		<a><b>TCS ECP  Dev Ops as a Service</b></a>		
		<div class="topnav-right">
		<a style="  margin-top: -5px;" href="index.jsp"><i class="fa fa-home" aria-hidden="true"></i>&nbsp;Home</a>
		<a style="  margin-top: -5px;" href="fost.jsp"><i class="fa fa-gavel" aria-hidden="true"></i>&nbsp;Tools</a>
		<a style="  margin-top: -5px;" href=""><i class="fa fa-clone" aria-hidden="true"></i>&nbsp;Provision</a>
		<a style="margin-top: -5px;" href="<%=ApplicationProperties.INSTANCE.getPipelineURL()%>"><i class="fa fa-sitemap" aria-hidden="true"></i>&nbsp;Pipeline</a>
		<a style="margin-top: -5px;" href="<%=ApplicationProperties.INSTANCE.getMonitoringURL()%>"><i class="fa fa-desktop" aria-hidden="true"></i>&nbsp;Monitor</a> 
	    </div> 
	  </div>
	  
	  
	    <div class="body-content">	
		
		          <div style="float:left;background-color:#106677;">
					<nav class="side-navigation">
					  <ul class="mainmenu">
						<li><a> <i class="fa fa-server" aria-hidden="true"></i> &nbsp;&nbsp;Application/Web Servers</a>
							<ul class="submenu">
									<li><a href="tomcat.jsp"><img src="https://1.bp.blogspot.com/-B2viYmDRXhk/W1cPJPUMr1I/AAAAAAAAxoc/93Eg0eotr8MFBFhIfkqhB1yx0DZ4pvDuwCLcBGAs/s728-e100/apache-tomcat-server-software-download-min.png" alt="Icon" width="32" height="22" align="left" hspace="10" /></image>Tomcat</a></li> 
									<li><a href=""><img src="http://www.weblogic.co.bw/images/weblogic-logo.jpg" alt="Icon" width="32" height="22" align="left" hspace="10" /></image>Web Logic</a></li>
									<li><a href=""><img src="https://xebialabs.com/wp-content/uploads/files/plugins/websphere-application-server.jpg" alt="Icon" width="32" height="22" align="left" hspace="10" /></image>WebSphere</a></li>
									<li><a href=""><img src="https://www.3pillarglobal.com/wp-content/uploads/2015/08/jboss_320x260-300x260.png" alt="Icon" width="32" height="22" align="left" hspace="10" /></image>JBoss</a></li>
									<li><a href=""><img src="https://www.scottbrady91.com/img/windows/iis-logo.png" alt="Icon" width="32" height="22" align="left" hspace="10" /></image>IIS</a></li>
								  
								  </ul>
						</li>
						<li><a> <i class="fa fa-database" aria-hidden="true"></i> &nbsp;&nbsp;Database</a>
							<ul class="submenu">
									<li><a href="mysql.jsp"><img src="https://pbs.twimg.com/profile_images/1240079072/logo-mysql-170x170_400x400.png" alt="Icon" width="32" height="22" align="left" hspace="10" /></image>MySQL</a></li>
									<li><a href=""><img src="https://www.asiapacificsecuritymagazine.com/wp-content/uploads/2017/01/oracle-social-share-fb-480-2516041.jpg" alt="Icon" width="32" height="22" align="left" hspace="10" /></image>Orcale</a></li>
									<li><a href=""><img src="https://devopsdozen.com/wp-content/uploads/2015/08/MongoDB-logo-770x330-01.png" alt="Icon" width="32" height="22" align="left" hspace="10" /></image>Mongo DB</a></li>
									<li><a href=""><img src="https://www.cbronline.com/wp-content/uploads/2016/06/sql-server.png" alt="Icon" width="32" height="22" align="left" hspace="10" /></image>SQL Server</a></li>
								  </ul>
						</li>
						<li><a> <i class="fa fa-cubes" aria-hidden="true"></i> &nbsp;Orchestration/Containers</a>
						  <ul class="submenu">
							<li><a href="docker.jsp"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKy3dY6wiOT9YlJRR0MTzkhhpUlSzoGAfzY8LcqBrgQWFTGjjR" alt="Icon" width="32" height="22" align="left" hspace="10" /></image>Docker CE</a></li>
							<li><a href=""><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKy3dY6wiOT9YlJRR0MTzkhhpUlSzoGAfzY8LcqBrgQWFTGjjR" alt="Icon" width="32" height="22" align="left" hspace="10" /></image>Docker EE</a></li>
							<li><a href=""><img src="https://www.smile.eu/sites/default/files/styles/picture_news_technology/public/2017-08/kubernetes-logo_0.png?itok=9_2q6SOF" alt="Icon" width="32" height="22" align="left" hspace="10" /></image>KuberNetes</a></li>
						  </ul>
						</li>
						<li><a><i class="fa fa-plus" aria-hidden="true"></i> &nbsp;&nbsp;Other Tools</a>
							<ul class="submenu">
									<li><a href=""><img src="https://hctl.blob.core.windows.net/store/2019/04/sharepointonline.png" alt="Icon" width="32" height="22" align="left" hspace="10" /></image>Sharepoint</a></li>
									<li><a href=""><img src="https://tr3.cbsistatic.com/hub/i/r/2014/02/05/7edb6d5b-1151-4824-a8b7-6bd554f0ded5/resize/1200x/730810b34103c37ba13be7dae565edb4/hadoop.logo.tr.jpg" alt="Icon" width="32" height="22" align="left" hspace="10" /></image>Hadoop</a></li>
									<li><a href=""><img src="https://www.crowdstrike.com/blog/wp-content/uploads/2018/10/Jenkins-blog-image.jpg" alt="Icon" width="32" height="22" align="left" hspace="10" /></image>Jenkins</a></li>
								  </ul>
						</li>
						
						
						
						
						
						
						
					  </ul>
					</nav>
                  </div>
				  
				  <div style="margin-left:250px;height:90.85%;overflow-y:scroll"> 
			         <div style="padding:8px;font-weight:bold;font-size:18px;"> <center>Application Provisioning</center> </div>
			    <br><br>
				  <div>
				     <img src="image/left-arrow.gif" style="width:130px;height:60px">
					 Select any application from the menu for provisioning
                  </div>
	
		
				  </div>

         </div>
</body>
</html>