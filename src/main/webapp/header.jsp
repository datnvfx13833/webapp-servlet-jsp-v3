<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<div class="container-fluid abc">
	<div class="row">
		<div class="col-md-2 text-white">
			<h2>PRJ321x</h2>
			<p>Welcome to my Website</p>
		</div>
		<form action="SearchController2" method="get" class="col-md-10 d-flex align-items-center">
		  <!-- <div class="col-md-10 d-flex align-items-center">  -->
		    <div class="input-group">
			  <select class="border-0">
			    <option>Categories</option>
				<option>Categories 1</option>
				<option>Categories 2</option>
			  </select>
			    <input class="form-control" type="text" name="searchString" placeholder="What are you looking for?"/>
				<input type="submit" value="Search"  class="border-0 btnSearch"/>
			</div>
		 <!--  </div>  -->
		</form>
	</div>	
</div>
<nav class="navbar navbar-expand-md navbar-dark bg-dark" aria-label="Fourth navbar example">
	<div class="row container-fluid">
	  <div class="col-md-2"></div>
	  <div class="col-md-10">
        
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarsExample04">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="/PRJ321x_Assignment3_datnvfx13833/HomeProductController">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Products</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">About us</a>
              </li>                      
            </ul> 
            <div class="col-md-3 text-end d-flex flex-wrap">
              <a class="nav-link" href="/PRJ321x_Assignment3_datnvfx13833/URLController?action=login" tabindex="-1" aria-disabled="true">Log in</a>  
              <a class="nav-link">Register</a>
            </div>       
          </div>        
      </div>
    </div>
  </nav>
</body>
</html>
