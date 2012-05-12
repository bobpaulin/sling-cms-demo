<%
	def resourceResolver = request.getResourceResolver();
	def rootContent = resourceResolver.getResource("/content/slingdemo/home");

%>	
	<div class="navbar">
      <div class="navbar-inner">
        <div class="container">
        	<div class="nav-collapse">
            	<ul class="nav">
            		<li><a href="/content/slingdemo/home.html">Home</a></li>
        			<% 
				rootContent.listChildren().each{ curRes ->
   				if(curRes.isResourceType("slingdemo:base"))
   				{		
      				def curPageNode = curRes.adaptTo(javax.jcr.Node);
      				%>
      				<li><a href="<%=curRes.getPath()%>.html"><%= curPageNode.getProperty("title").getString()%></a></li>
      			<%
   				}
			}
				%>
        			<li> <a href="#" id="loginLink">Login</a></li>
        		</ul>
        	</div>
        </div>
      </div>
    </div>
    