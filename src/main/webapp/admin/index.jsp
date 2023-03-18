<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="../css/">
<style type="text/css">
	.fakeimg {
		background-image : url('../media/background.png');
	}
	.left-column {
		background-color: #2a3246;
		min-height: 100vh;
	}
	.content-table {
		background-color: #20293f;
		width: 50vw;
	}
	.right-column {
		background-color: #1a2034;
	}
	.left-column > h3 {
		color: #a25534;
	}
	.content-table > caption {
		caption-side: top;
		width: 48vw;
		background-color: #8d409d;
	}
</style>
</head>
<body>	
<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="grid" viewBox="0 0 16 16">
    <path d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zM2.5 2a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zM1 10.5A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3z"></path>
  </symbol>
  <symbol id="people-circle" viewBox="0 0 16 16">
    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"></path>
    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"></path>
  </symbol>
</svg>
	<div class="container-fluid">
	  <div class="row">
	    <div class="col-md-2 text-white box-shadow left-column">
		  <h3 class="text-center">1849 Team</h3>
		  <a href="#" class="nav-link text-white">
          	<svg class="bi me-2" width="16" height="16"><use xlink:href="#grid"></use></svg>
          	Dashboard
          </a>
          <a href="#" class="nav-link text-white">
          	<svg class="bi me-2" width="16" height="16"><use xlink:href="#people-circle"></use></svg>
          	Staff Manager
          </a>
	    </div>
	    <div class="col-md-10 p-0 right-column">
		  <div class="fakeimg" style="height:250px;"></div>
		  <div style="background-color: #1a2034">
		  <table class="table text-white content-table">
			<caption class="text-white mx-auto">Member of the team</caption>
			<tbody class="border-0">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>StudentID</th>
				<th>Class</th>
			</tr>
			<tr>
				<th>1</th>
				<th>Member 1</th>
				<th>Member Code 1</th>
				<th>Class 1</th>
			</tr>
			<tr>
				<th>2</th>
				<th>Member 2</th>
				<th>Member Code 2</th>
				<th>Class 2</th>
			</tr>
			</tbody>
		  </table>
		</div>
	    </div>
	  </div>
	</div>	
</body>
</html>