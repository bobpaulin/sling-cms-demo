<%@ include file="/apps/slingdemo/global.jsp" %>
<%
	//Add Code to pull content property from currentNode
	String content ="Edit Me";
	if(currentNode.hasProperty("content"))
	{
		content = currentNode.getProperty("content").getString();
	}
	
%>
		<script type="text/javascript">
		var editor;
		$(document).ready(
				function() {
			// Listen to the double click event.
			if ( window.addEventListener )
				document.body.addEventListener( 'dblclick', onDoubleClick, false );
			else if ( window.attachEvent )
				document.body.attachEvent( 'ondblclick', onDoubleClick );
			});

		function onDoubleClick( ev )
		{
			// Get the element which fired the event. This is not necessarily the
			// element to which the event has been attached.
			var element = ev.target || ev.srcElement;

			// Find out the div that holds this element.
			var name;
			do
			{
				element = element.parentNode;
			}
			while ( element && ( name = element.nodeName.toLowerCase() ) && ( name != 'div' || element.className.indexOf( 'editable' ) == -1 ) && name != 'body' )


			if ( name == 'div' && element.className.indexOf( 'editable' ) != -1 )
			{
				replaceDiv( element );
			}
			else
			{
				if ( editor )
				{		
					saveAndCloseEditor();
				}
			}
		}
		function replaceDiv( div )
		{
			if ( editor )
			{		
				editor.destroy();
			}

			editor = CKEDITOR.replace( div );
		}
			function saveAndCloseEditor()
			{
				if(editor.checkDirty())
				{
					$.post('<%=resource.getPath() %>',{"content":editor.getData()}, function(data){editor.destroy()});
				}
				else
				{
					editor.destroy();
				}
			}
		</script>
			<div class="editable">
				<p><%=content %></p>
			</div>
		