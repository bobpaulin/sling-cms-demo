<%@ include file="/apps/slingdemo/global.jsp" %> 
  <%
    String title = "Simple Page";
	
	if(currentNode.hasProperty("title"))
	{
		title = currentNode.getProperty("title").getString();
	}

%>
<!DOCTYPE html> 
<html>
  <head>
  	<title><%= title %></title>
  	<sling:include resource="<%=resource %>" replaceSelectors="head"/>
  </head>
  <body>
  	<div class="navigation">
  		<sling:include resource="<%=resource %>" replaceSelectors="menu"/>
  	</div>
  	<div class="clearfix"></div>
  	<sling:include resource="<%=resource %>" replaceSelectors="login"/>
  	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
  				<sling:include path="content"/>
  			</div>
  		</div>
  	</div>
  	
  </body>
</html>
  	