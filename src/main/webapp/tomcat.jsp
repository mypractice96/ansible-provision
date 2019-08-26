<%@ page import="com.tcs.ApplicationProperties" %>
<html>
<head>
    <title>Product Provisioning - Tomcat</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
     </head>
	 
	 
	 
	    <style>

#hostsFileTextArea {
   resize: none;
    width: 100%;
    height:50%;
}

#hostsFileForm{
  padding:10px;
  border:2px solid #106677;
  background:#F0F8FF;
  border-radius:15px;
  display:none;
  max-width: 500px;
  margin:auto;
}

#editHostFileButton{
  border-radius: 8px;
  color: #ffffff;
  font-size: 20px;
  background: #106677;
  padding: 8px 16px ;
  text-decoration: none;
  font-size: 15px; 
}



#saveHostsFileButton{
  border-radius: 8px;
  color: #ffffff;
  font-size: 15px;
  background: #12a138;
  padding: 8px 16px ;
  text-decoration: none;
}

#cancelButton{
  border-radius: 8px;
  color: #ffffff;
  font-size: 15px;
  background: #ab2609;
  padding: 8px 16px ;
  text-decoration: none;
}



#installButton
{
 border-radius: 8px;
  color: #ffffff;
  font-size: 15px;
  background: #106677;
  padding: 8px 16px ;
  text-decoration: none;
}

.example_card{
	background:#ccc;
	padding:10px;
	margin:2px 10px;
	border-radius:5px;
}

ol {
    display: block;    
    margin-block-start: 5px;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
	padding:0px;
    padding-inline-start: 20px;
}


    </style>
	 
	 
	 
	 
	 
<body>
    
	 <script>
 $(document).ready(function(){ 
 
	 //Initialize
	 $("#installButton").attr('disabled', true);	 
	 $("#installButton").css('opacity', '.2');
	 
	 $("input:radio").change(function() {
		 if ($(this).val() == "Disable") {
			$("#installButton").attr('disabled', true);
			$("#installButton").css('opacity', '.2');
		 }	
		else {
			$("#installButton").attr('disabled', false);
			$("#installButton").css('opacity', '1');
		}
	});
	 
	 
	     
    // Reads the content of the hosts file
    $("#editHostFileButton").click(function(){        
            $.ajax({
                 type: 'POST',
                 url:  'RFile',                
                 success: function(result){
                           //alert(result.hostFileData);
                           $("#hostsFileTextArea").val(result.hostFileData);
                          },
                 error: function(result){
                          //alert("Back fail");
                         } 

           });		   
		   $("#editHostFileButton").hide();
		   $("#hostsFileForm").toggle();
    });
    // Saved the text area content to hosts file
    $("#saveHostsFileButton").click(function(){		      
	          var txt = $("#hostsFileTextArea").val();	          
	             $.ajax({
	                      type: 'POST',
	                      url: "SaveServlet",
	                      data : {'hostFileTxt' : txt},
	                      success: function(result){
	                               alert("Saved Successfully");
	                               },
	                      error: function(result){
	                               alert("Error saving file");
	                              }

	                });
	   });  
	   
	   $("#cancelButton").click(function(){    
	      
          $("#editHostFileButton").show();	
          $("#hostsFileForm").hide();		  
	   });  

	      

	   
		$("#installButton").click(function(){ 
			alert("Installing...");				
				
					$.ajax({
							 type: 'POST',
							 url: 'InstallServlet',
							 data : {'softwaretype' : 'tomcat'},
							 success: function(result){
									alert(result.message);
							 },
							error: function(result){
									// alert("Back fail");
							  }

					   }); 
					
		  });
       
    
    
});

	 
    </script>

	
	
	  <div class="fixed-header">
		<img src="https://visualstudio.microsoft.com/wp-content/uploads/2016/06/ContinuousTesting1-636x350-op.png" style="margin-top:-30px;
		height: 116px; float:left"/>
		<a><b>TCS ECP  Dev Ops as a Service</b></a>		
		<div class="topnav-right">
		<a style="  margin-top: -5px;" href="index.jsp"><i class="fa fa-home" aria-hidden="true"></i>&nbsp;Home</a>
		<a style="  margin-top: -5px;" href="fost.jsp"><i class="fa fa-gavel" aria-hidden="true"></i>&nbsp;Tools</a>
		<a style="  margin-top: -5px;" href="provision.jsp"><i class="fa fa-clone" aria-hidden="true"></i>&nbsp;Provision</a>
		<a style="margin-top: -5px;" href="<%=ApplicationProperties.INSTANCE.getPipelineURL()%>"><i class="fa fa-sitemap" aria-hidden="true"></i>&nbsp;Pipeline</a>
		<a style="margin-top: -5px;" href="<%=ApplicationProperties.INSTANCE.getMonitoringURL()%>"><i class="fa fa-desktop" aria-hidden="true"></i>&nbsp;Monitor</a>  
	    </div> 
	  </div>
	  
	  
	    <div class="body-content">	
		
		
		           <!-- Left side menu -->
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
									<li><a href=""><img sr	c="https://hctl.blob.core.windows.net/store/2019/04/sharepointonline.png" alt="Icon" width="32" height="22" align="left" hspace="10" /></image>Sharepoint</a></li>
									<li><a href=""><img src="https://tr3.cbsistatic.com/hub/i/r/2014/02/05/7edb6d5b-1151-4824-a8b7-6bd554f0ded5/resize/1200x/730810b34103c37ba13be7dae565edb4/hadoop.logo.tr.jpg" alt="Icon" width="32" height="22" align="left" hspace="10" /></image>Hadoop</a></li>
									<li><a href=""><img src="https://www.crowdstrike.com/blog/wp-content/uploads/2018/10/Jenkins-blog-image.jpg" alt="Icon" width="32" height="22" align="left" hspace="10" /></image>Jenkins</a></li>
								  </ul>
						</li>
						
					  </ul>
					</nav>
                  </div>
				  <!-- Left side menu end-->
				  
				  
				  
				  
				  
				  
				  <!-- Main content -->
				  <div style="margin-left:250px;height:90.85%;"> 				   
				                <!-- main content left -->
							    <div style="width:80%;float:left;height:100%">	
								
								         <div>
										 <br><br>
										   <center><button type="button" id="editHostFileButton" > Edit Hosts File <i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>	</center>
										 </div>  
										 
										 <div>										 
											<form id="hostsFileForm">
												<div>
													<textarea id ="hostsFileTextArea">
														Edit the hosts file...
													</textarea>
													     
														<div>
														<br>
														 <center> <button type="button" id="saveHostsFileButton">Save <i class="fa fa-check" aria-hidden="true"></i></button>
														  <button type="button" id="cancelButton">Cancel <i class="fa fa-times" aria-hidden="true"></i></button></center>
														</div>  
												</div>
												<br>
												   <div style="background:#ccc;border-radius:5px;padding:15px;">
														<center>
														 <b>Do you want to proceed with installation?</b><br>														
														  <input type="radio" name="first" value="Enable" id="enable">
														  <label for="enable">Yes</label></label>														
														  <input type="radio" name="first" value="Disable" id="disable" checked>
														  <label for="disable">No</label>
														  <br>
														<button type="button" id="installButton">Install <i class="fa fa-cogs" aria-hidden="true"></i></button>
														</center>
												   </div>  
                                                   												   
											</form>
										</div>
										
								</div>	
                                <!-- main content left end-->								
								<!-- main content right -->
								<div style="width:20%;border-left:1px solid #106677;float:right;height:100%">
								
								   <div style="padding:8px;font-weight:bold;font-size:18px;"> <center>Apache Tomcat</center> </div>
								    <img src="https://1.bp.blogspot.com/-B2viYmDRXhk/W1cPJPUMr1I/AAAAAAAAxoc/93Eg0eotr8MFBFhIfkqhB1yx0DZ4pvDuwCLcBGAs/s728-e100/apache-tomcat-server-software-download-min.png" width="100%" height="100px" />
									
									<br><br>
									<center><b>Steps</b></center>	
									<div>
									    <ol type="1">
										  <li>Edit the hosts file.</li>
										  <li>Use group name <b>[apache-tomcat]</b>.</li>
										  <li>Add hostnames/ips under the group.</li>
										  <li>Save hosts file.</li>
										  <li>Click on Install button.</li>
										</ol> 
																			
									</div>
									
									<div>
										     <center><b>Example</b></center>
											<div class="example_card">
												<b> . <br> . <br> </b>
												[apache-tomcat] <br>
												10.1.2.3 <br>
												10.1.2.4 <br> <b>. <br> . </b>
											</div>
											<p style="padding:0px 10px;">The above hosts file installs tomcat server on 10.1.2.3 and 10.1.2.4	</p>								  
									</div>
								</div>						
							    <!-- main content right end-->
				  </div>			  
				  <!-- Main content end -->
				  
				  
				  

         </div>
</body>
</html>