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
	   
	    body {
margin:0;

font-family: Arial;
}

.column {
float: left;
width: 32%;
height:50%;
padding:30px;
}

.column img {

cursor: pointer;

}
.auto
{
padding-left:29px;
}
.aut
{

padding-bottom:65px;

}
.container
{
display:grid;
}

.at
{
padding-bottom:42px;
}
	
		
	
	</style>

	
	
	  <div class="fixed-header">
		<img src="https://visualstudio.microsoft.com/wp-content/uploads/2016/06/ContinuousTesting1-636x350-op.png" style="margin-top:-30px;
		height: 116px; float:left"/>
		<a><b>TCS ECP  Dev Ops as a Service</b></a>
		
		<div class="topnav-right">
		<a style="margin-top: -5px;" href=""><i class="fa fa-home" aria-hidden="true"></i>&nbsp;Home</a>
		<a style="margin-top: -5px;" href="fost.jsp"><i class="fa fa-gavel" aria-hidden="true"></i>&nbsp;Tools</a>
		<a style="margin-top: -5px;" href="provision.jsp"><i class="fa fa-clone" aria-hidden="true"></i>&nbsp;Provision</a>
		<a style="margin-top: -5px;" href="<%=ApplicationProperties.INSTANCE.getPipelineURL()%>"><i class="fa fa-sitemap" aria-hidden="true"></i>&nbsp;Pipeline</a>
		<a style="margin-top: -5px;" href="<%=ApplicationProperties.INSTANCE.getMonitoringURL()%>"><i class="fa fa-desktop" aria-hidden="true"></i>&nbsp;Monitor</a> 
	    </div> 
	  </div>
	  
	  
	    <div class="body-content" style="height:90.85%;overflow-y:scroll">		
		<!-- Content Here -->
	
	       <div>     <!-- banner image div -->
				<figure style="padding-bottom:5px;">
				<img src="image/banner.jpg" style=" width:100%;height:75%;">
				</figure>
			</div>
			
			
			
			
			<div style="text-align: center;">
<div class="container">
<div class="row ">
<div class="column">
<figure>
<img src="https://clarive.com/wp-content/uploads/Environment_provisioning.png" style="width:100%" class="at">
<figcaption><b>Provision</b></figcaption>
<p>Dev and QA environment provisioning, to simplify and control the process of procuring and automating environment generation.</p>
</figure>
</div>
<div class="column">
<figure>
<img src="http://www.newdesignfile.com/postpic/2013/01/version-control-icon_88399.jpg" style="width:100%" class="auto">
<figcaption><b>Version Control</b></figcaption>
<p> Version controlling 'Infrastructure set up and configuration details as a code' is the key differentiator in DevOps practice.</p>
</figure>
</div>
<div class="column">
<figure>
<img src="https://www.dangercove.com/assets/img/app/carbonize-palette_512.png" style="width:100%" class="auto">
<figcaption><b>Build</b></figcaption>
<p>Build automation is the process of automating the creation of a software build and the associated processes.</p>
</figure>
</div>
</div>

<div class="row text-center">
<div class="column">
<figure>
<img src="http://clipart-library.com/images/kTKnqxEpc.png" style="width:100%" class="auto">
<figcaption><b>Deploy</b></figcaption>
<p>Entire DevOps pipeline containing continuous integration, continuous testing, and continuous deployment, including application performance monitoring in live is automated.</p>
</figure>
</div>
<div class="column">
<figure>
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO0DkHf4yM2JVvIJqLUVz7-khArb-QNTPUJKnWKOrVnC1kePgr" style="width:100%" class="auto">
<figcaption><b>Test</b></figcaption>
<p>Test automation is a boon to organizations when its approached with reasonable expectations for skills, time, and problems its able to solve.</p>
</figure>
</div>

<div class="column">
<figure>
<img src="https://cdn2.iconfinder.com/data/icons/seo-web-optomization-ultimate-set/512/profit-512.png" style="width:100%" class="auto">
<figcaption><b>Monitoring</b></figcaption>
<p>Monitoring provides feedback from production. Monitoring delivers information about an applications performance and usage patterns</p>
</figure>
</div>
</div>
</div>
</div>
			
			
			
			
			
			
			
	   
				 
		<!-- Content ends -->
		</div>
</body>
</html>