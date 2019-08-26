<%@ page import="com.tcs.ApplicationProperties" %>
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
		<a style="  margin-top: -5px;" href=""><i class="fa fa-gavel" aria-hidden="true"></i>&nbsp;Tools</a>
		<a style="  margin-top: -5px;" href="provision.jsp"><i class="fa fa-clone" aria-hidden="true"></i>&nbsp;Provision</a>
		<a style="margin-top: -5px;" href="<%=ApplicationProperties.INSTANCE.getPipelineURL()%>"><i class="fa fa-sitemap" aria-hidden="true"></i>&nbsp;Pipeline</a>
		<a style="margin-top: -5px;" href="<%=ApplicationProperties.INSTANCE.getMonitoringURL()%>"><i class="fa fa-desktop" aria-hidden="true"></i>&nbsp;Monitor</a> 
	    </div> 
	  </div>
	  
	  
	    <div class="body-content" style="height:90.85%;overflow-y:scroll">	
		
		         <!-- Content Here -->
	<div>
	   <p style="text-align: center;font-size:18px;padding-top:15px;font-weight:bold;">FOST(Fully Open Source Tools) Chain</hp>
	<div style="margin:2rem 5rem;font-size:15px;font-weight:bold;">

		<div style="border-bottom: 0.1px solid gray;">
		<font color= #000000">Continious Integration</font>
		<img src="image/github.png" style="width:10%" class="auto">
		<img src="image/gitlab.png" style="width:10%;margin-bottom:10px;" class="auto">
		<img src="image/bitbucket.png" style="width:10%" class="auto">
		</div>
		
		<div style="margin-top:5rem;border-bottom: 0.1px solid gray;">
		<font color= #000000" >Build</font>
		<img src="image/maven.png" style="width:10%;margin-left:15rem;" class="auto">
		<img src="image/gradle.png" style="width:10%" class="auto">
		<img src="image/docker.png" style="width:10%;margin-bottom:10px;" class="auto">
		</div>
		
		<div style="margin-top:30px;border-bottom: 0.1px solid gray;">
		<font color= #000000" >Test</font>
		<img src="image/junit.jfif" style="width:10%;margin-left:16.2rem;;margin-bottom:10px;" class="auto">
		</div>

		<div style="margin-top:2rem;border-bottom: 0.1px solid gray;">
		<font color= #000000" >Code Quality</font>
		<img src="image/sonarqube.png" style="width:20%;margin-left:4rem;margin-bottom:10px;" class="auto">
		<img src="image/gerrit.png" style="width:10%" class="auto">
		</div>

		<div style="margin-top:1.5rem;border-bottom: 0.1px solid gray;">
		<font color= #000000 " >Artifact Repository</font>
		<img src="image/nexes.jpg" style="width:10%;margin-left:3rem; margin-bottom: 10px;" class="auto">
		<img src="image/jfrog.png" style="width:10%" class="auto">
		<img src="image/dockerhub.png" style="width:10%;" class="auto">
		</div>


		<div style="border-bottom: 0.1px solid gray;">
		<font color= #000000 " >Deploy</font>
		<img src="image/server.jfif" style="width:12%;margin-left:9.5rem;;margin-bottom:10px;" class="auto">
		<img src="image/dockercontainer.png" style="width:12%" class="auto">
		</div>

		<div style="margin-top:1px;border-bottom: 0.1px solid gray;">
		<font color= #000000 " >Container Security</font>
		<img src="image/aqua.png" style="width:10%;margin-left:3rem;margin-bottom:10px;" class="auto">
		</div>


		<div style="margin-top:30px;border-bottom: 0.1px solid gray;">
		<font color= #000000 " >Monitoring</font>
		<img src="image/nagios.png" style="width:10%;margin-left:8rem;margin-bottom:10px;" class="auto">
		</div>

		<div style="margin-top:30px;border-bottom: 0.1px solid gray;">
		<font color= #000000 " >Collaboration</font>
		<img src="image/bugzilla.png" style="width:10%;margin-left:7rem;margin-bottom:10px;" class="auto">
		</div>
	</div>

	</div>
				 
				 <!-- Content ends -->
				 
				 

         </div>
</body>
</html>