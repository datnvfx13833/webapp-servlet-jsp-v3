<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Log In</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
    	.login {
    		margin-top: 10vh;
    	}
    	.right-column {
    		background-color: #101130;
    	}
    	.btnLogin {
    		background-color: #fc4d36;
    	}
    </style>
</head>
<body>
    <section class="h-100">
        <div class="container h-100 login" >
            <div class="row d-flex justify-content-center align-items-center">
                <div class="col-xl-8 p-0 shadow">
                    <div class="card rounded-3 text-black" >
                        <div class="row g-0" style="height:500px;">
                            <div class="col-lg-6 d-flex align-items-center">
                                <div class="card-body mx-md-4">
                                    <div class="text-center ">
                                        <h2>Sign in</h2>
                                    </div>
                                    <form class="login-form" name="loginform" action="LoginController" onsubmit="return validate()" method="post">
                                    <%
                                      Cookie[] cookies = request.getCookies();
                                      String value="";
                                      if(cookies != null) {
                                    	  for (Cookie retrievedCookie : cookies) {
                                    		  if(retrievedCookie.getName().equals("username")) {
                                    			  value = retrievedCookie.getValue();
                                    		  }
                                    	  }
                                      }
                                      if(value=="") {  
                                    %>
                                        <div class="mb-3">
                                            <input type="text" id="username" name="username" class="form-control" placeholder="username" />
                                        </div>
                                    <%} else { %>
                                    	<div class="mb-3">
                                            <input type="text" id="username" name="username" class="form-control" value=<%=value %> />
                                        </div>
                                    <%} %>
                                        <div class="mb-3">
                                            <input type="password" id="password" name="password" placeholder="password" class="form-control" />
                                        </div>
                                        <div class="mb-3 text-center">
                                            <a class="text-muted text-decoration-none" href="#"><h4>Forgot your password?</h4></a>
                                        </div>
                                        <div class="d-flex justify-content-center">
                                            <input class="btn btn-primary col-4 rounded-pill btnLogin" type="submit" value="LOGIN">
                                        </div>
                                    </form>
                                    
                                </div>
                            </div>
                            <div class="col-lg-6 d-flex align-items-center right-column">
                                <div class=" text-white px-3 py-4 p-md-5 mx-md-4">
                                    <h2 class="text-center">Welcome Back!</h2>
                                    <h4 class="text-center">To keep connected with us please login with your personal info.</h4>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
    <script type="text/javascript" src="js/validator.js"></script>
</body>
</html>