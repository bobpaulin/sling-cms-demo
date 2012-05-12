<%@ include file="/apps/slingdemo/global.jsp" %> 
		<form id="imageUpload" action="/content/slingdemo/assets" method="POST" 
				enctype="multipart/form-data" accept-charset="UTF-8">
			<label for="imagePath">Image</label>
			<input id="imagePath" name="img/*" type="file">
			<input id="uploadImage" type="submit" value="Upload Image">
			<input type="hidden" name=":redirect" value="/content/slingdemo/home/image-upload.html">
		</form>