<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link href="css/global.css" type="text/css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    </head>
    <body>
		
		<div id="amazon-root"></div>
		<script type="text/javascript">

			window.onAmazonLoginReady = function() {
			  amazon.Login.setClientId('amzn1.application-oa2-client.e44e498d5f324dc984810baff04386d8');
			};
			(function(d) {
			  var a = d.createElement('script'); a.type = 'text/javascript';
			  a.async = true; a.id = 'amazon-login-sdk';
			  a.src = 'https://assets.loginwithamazon.com/sdk/na/login1.js';
			  d.getElementById('amazon-root').appendChild(a);
			})(document);
			
			document.getElementById('LoginWithAmazon').onclick = function() {
				options = {}
				options.scope = 'profile';
				options.scope_data = {
					'profile' : {'essential': false} 
				};
				amazon.Login.authorize(options,
					'https://ajayg22.github.io/handle_login.php');
				return false;
			};

		</script>
		
		
		
        <div class="conainer-fluid bg">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12"></div>
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <!-- form start -->
                    <form class="form-container" action="addTransaction.html">
                        <h1>Login Form</h1>
                        <div class="form-group">
                          <label for="exampleInputEmail1">Email Address</label>
                          <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email">
                        </div>
                        <div class="form-group">
                          <label for="exampleInputPassword1">Password</label>
                          <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                        </div>
                        <div class="form-check">
                          <input type="checkbox" class="form-check-input" id="exampleCheck1">
                          <label class="form-check-label" for="exampleCheck1">Remember me</label>
                        </div>
                        <button type="submit" class="btn btn-info btn-block">Submit</button>
						<center>or</center>
						<center>
						<a href id="LoginWithAmazon" >
						<img border="0" alt="Login with Amazon"
						src="https://images-na.ssl-images-amazon.com/images/G/01/lwa/btnLWA_gold_156x32.png"
						width="156" height="32" />
						</a>
						</center>
                      </form>
                    <!-- form end -->
              	</div>
                <div class="col-md-4 col-sm-4 col-xs-12"></div>
        	</div>
        </div>
		
    </body>
</html>
