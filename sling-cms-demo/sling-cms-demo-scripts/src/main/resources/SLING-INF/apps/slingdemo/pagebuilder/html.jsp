<%@ include file="/apps/slingdemo/global.jsp" %>
<script type="text/javascript">
	$(document).ready(
		function() {
	$('#createPage').click(function(){
		var pagePath = $('#pagePath').val();
		var pageTitle = $('#title').val();
		$.ajax({
			url: pagePath,
            type: 'POST',
            data: {'sling:resourceType':'slingdemo:base', 'title': pageTitle, 'content/sling:resourceType':'slingdemo:contentpage'},
            success: function( data, textStatus, xmlHttpRequest ) {
                // created new page component
                window.location.href = pagePath + '.html';
                
            },
            error: function( xmlHttpRequest, textStatus, errorThrown ) {
            	//error creating component
            }
		});
		return false;
	});
});
</script>
		<form id="pageBuilderForm" action="">
			<label for="title">Page Title</label>
			<input id="title" name="title" type="text">
			<label for="pagePath">Page Path</label>
			<input id="pagePath" name="pagePath" type="text">
			<input id="createPage" type="submit" value="Create Page">
		</form>
