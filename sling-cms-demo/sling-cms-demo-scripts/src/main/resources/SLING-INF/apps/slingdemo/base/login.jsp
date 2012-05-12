		<script type="text/javascript">
			$(document).ready(function(){
			 $('#loginLink').click(function(){
			    	var loginForm = $('#loginForm');
			    	if(loginForm.hasClass('openLogin'))
			    	{
			    		loginForm.slideDown('fast');
			    		loginForm.removeClass('openLogin');
			    	}
			    	else
			    	{
			    		loginForm.slideUp('fast');
			    		loginForm.addClass('openLogin');
			    	}
			    	
			    });
			});
		</script>
		<div id="loginForm" class="openLogin">
			<form id="loginform" method="POST" action="/j_security_check"
			        enctype="multipart/form-data" accept-charset="UTF-8">
				
			   <input type="hidden" name="_charset_" value="UTF-8" />
			   <input type="hidden" name="resource" value="/content/slingdemo/home.html" />
			   <input type="hidden" value="form" name="selectedAuthType" />
			
			   <div id="err" class="errorMessage" style="display: none;">
			   </div>
			   <div>
			      <label for="j_username" accesskey="u">Username:</label>
			      <input id="j_username" name="j_username" type="text" />
			   </div>
			   <div>
			      <label for="j_password" accesskey="p">Password:</label>
			      <input id="j_password" name="j_password" type="password" />
			   </div>
				  <button id="login" accesskey="l" type="submit" name="submit" value="Login">Login</button>
			</form>
		</div>