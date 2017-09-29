<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 만들기 테스트</title>
</head>
<body>

<h1>board</h1>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Unicorn | Responsive one page HTML template</title>
 <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,700,900' rel='stylesheet' type='text/css'>

    <!-- Bootstrap css form cdn -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    
    <!-- Font awesome css -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/linecons.css">
    
    <link rel="stylesheet" href="inc/strip/css/strip.css">
    
    <!-- Owl carousel 2 css -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>


<header class="header">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <div class="logo">
                        <h1><a href="">BIT BOARD</a></h1>
                        
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>                         
                    </div>
                </div>
                
                <div class="col-sm-10">
                         

                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right text-uppercase">
                            <li class="active"><a href="#slider"></a></li>
                            <li><a href="#about"></a></li>
                            <li><a href="#our-blog"></a></li>
                            <li><a href="#our-clients"></a></li>
                            <li><a href="#portfolios"></a></li>
                            <li><a href="#team-members"></a></li>
                            <li><a href="#events"></a></li>
                            <li><a href="#footer">리스트로..</a></li>
                        </ul>
                    </div>                    
                </div>
            </div>
        </div>
    </header> <!-- End header -->
    
    <section id="slider">
       
        <div data-velocity="-.2" class="overlay-bg slide-bg"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="slide-text-table">
                        <div class="slide-text-table-cell">
                            <div class="slide-text wow fadeIn">
                                <h1>TODOLIST</h1>

                                <p>당신의 TodoList를 올려주세요... </p>   

                                <a href="" class="learn-more">아래로 스크롤하세요...</a>                     
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section> <!-- End slider -->
     <footer id="footer" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <div class="footer-contact">
                        <h2>Bit Board</h2>
 <body>
	리스트 페이지
	
	<form action= "/gallary/reg" method="get">
	<input type="submit">
	</form>
	
	<table class = "table">
	<thead>
			<tr>
				<th>lno</th>
				<th>Title</th>
				<th>Contents</th>
				<th>Reg Date</th>
				
			</tr>
		</thead>
			<c:forEach var="todo" items="${gg}">
		<tbody>
				<tr>
					<td>${todo.lno}</td>
				
				
					<td><a href ="http://192.168.0.19:8888/gallary/list/page?lno=${todo.lno}" >${todo.title}</a>  </td>
				
					<td>${todo.contents} ${todo.regdate} </td>  
			
				</tr>
		</tbody>
			</c:forEach>
			</table>
			
			
	<ul class="pagination">
	
	<c:if test="${pg.prev}">
	  <li><a href="/gallary/list?page=${pg.startPage -1}">이전</a></li>
	</c:if>
	
	<c:forEach var="pnum" begin="${pg.startPage}" end="${pg.endPage}">
		<li><a href="/gallary/list?page=${pnum}">${pnum}</a></li>
	</c:forEach>
	
	<c:if test="${pg.next}">
	  <li><a href="/gallary/list?page=${pg.endPage + 1 }">다음</a></li>
	</c:if>
		
	</ul>
			
</body>
                        </div>
                    </div>
                </div>
                

   
             
        
              
    


    
    <!-- jQuery form CDN -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    
    <!-- Bootstrap form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <!-- jQuery Counterup -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    
    <!-- jQuery sticky -->
    <script src="js/jquery.sticky.js"></script>
    
    <!-- jQuery Strip Lightbox -->
    <script src="inc/strip/js/strip.pkgd.min.js"></script>
    
    <!-- jQuery easing -->
    <script src="js/jquery.easing.1.3.min.js"></script>
    
    <!-- jQuery tweet -->
    <script src="js/jquery.tweet.min.js"></script>
    
    <!-- jQuery owl carousel -->
    <script src="js/owl.carousel.min.js"></script>
    
    <!-- jQuery isotope filder -->
    <script src="js/isotope.pkgd.min.js"></script>
    
    <!-- WOW Animation -->
    <script src="js/wow.min.js"></script>
		<!--Activating WOW Animation only for modern browser-->
		<!--[if !IE]><!-->
			<script type="text/javascript">new WOW().init();</script>
		<!--<![endif]-->		
		
		<!--Oh Yes, IE 9+ Supports animation, lets activate for IE 9+-->
		<!--[if gte IE 9]>
			<script type="text/javascript">new WOW().init();</script>
		<![endif]-->		 
		
		<!--Opacity & Other IE fix for older browser-->
		<!--[if lte IE 8]>
			<script type="text/javascript" src="js/ie-opacity-polyfill.js"></script>
		<![endif]-->	    
    
    <!-- jQuery main script -->
    <script src="js/main.js"></script>
  </body>
</html>

</body>
</html>