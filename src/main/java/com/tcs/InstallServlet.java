package com.tcs;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;


public class InstallServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    
    public InstallServlet() {
        super();        
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
	try {
	         //create a new process
		 String str = request.getParameter("softwaretype");
			 System.out.println(str);
			 
			 if(str.equals("tomcat"))
			 {
				 System.out.println("Installing Tomcat...");
				 
				 String cmd = "ansible-playbook "+ApplicationProperties.INSTANCE.getPlayBooksFolder()+"apache.yml";	
				 //Process p = Runtime.getRuntime().exec(cmd);				 
				 //p.waitFor();
				   response.setContentType("application/json");
					PrintWriter out = response.getWriter(); 
					JSONObject obj = new JSONObject();
					obj.put("message", "Tomcat is installing in background");
					out.print(obj);
			 }
			 else if(str.equals("docker"))
			 {
				    System.out.println(" Docker installation starts...");
					
					String cmd1 = "ansible-playbook "+ApplicationProperties.INSTANCE.getPlayBooksFolder()+"docker-UCP.yml";						
			        //Process p1 = Runtime.getRuntime().exec(cmd1);			        
			        // p1.waitFor();
			        
					String cmd2 = "ansible-playbook "+ApplicationProperties.INSTANCE.getPlayBooksFolder()+"swarm-worker.yml";	
			        //Process p2 = Runtime.getRuntime().exec(cmd2);
			        //p2.waitFor();
					 
					 String cmd3 = "ansible-playbook "+ApplicationProperties.INSTANCE.getPlayBooksFolder()+"dtr.yml";
			         //Process p3 = Runtime.getRuntime().exec(cmd3);
                     //p3.waitFor();
					 
			           response.setContentType("application/json");
				        PrintWriter out = response.getWriter(); 
				        JSONObject obj = new JSONObject();
				        obj.put("message", "Docker is installing in background");
				        out.print(obj);
			 }			 
			 else if (str.equals("mysql"))
			 {
				  System.out.println("Installing MySQL...");
				  
				  String cmd = "ansible-playbook "+ApplicationProperties.INSTANCE.getPlayBooksFolder()+"mysql.yml";
				  
				 // Process p = Runtime.getRuntime().exec(cmd);		        
				 //p.waitFor();
				 
		           response.setContentType("application/json");
			        PrintWriter out = response.getWriter(); 
			        JSONObject obj = new JSONObject();
			        obj.put("message", "MySQL is installing in background");
			        out.print(obj);
			 }
		       
      }	
	  catch (Exception ex) {
	         ex.printStackTrace();
	  }
		
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
