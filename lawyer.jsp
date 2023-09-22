<%@ include file="include/dbconnect.jsp" %>
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>

<%
try
{
  String btn=request.getParameter("Submit");
  if(btn.equals("Submit"))
  {
      String name=request.getParameter("name");
      String pass=request.getParameter("pass");
      String n="select * from lawyer where name='"+name+"' && pass='"+pass+"'";
      ResultSet rs=stmt1.executeQuery(n);
      if(rs.next())
      {
         String id=rs.getString("id");
         session.setAttribute("id", id);
         String uname=rs.getString("name");
         session.setAttribute("uname", uname);
         String contact=rs.getString("contact");
         session.setAttribute("contact", contact);
         String email=rs.getString("email");
         session.setAttribute("email", email);
        %>
        <script language="javascript">
            alert("login Successful");
            window.location.href="lawyer_home.jsp";
        </script>
        <%
      }
      else
      {
          %>
          <script language="javascript">
              alert("Login Failed");
              window.location.href="lawyer.jsp";
          </script>
          <%
      }
  }
}
catch(Exception e)
{
    
}
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Lawyer  Application</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Law Firm Website Template" name="keywords">
        <meta content="Law Firm Website Template" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=EB+Garamond:ital,wght@1,600;1,700;1,800&family=Roboto:wght@400;500&display=swap" rel="stylesheet"> 
        
        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>
        <div class="wrapper">
            <!-- Top Bar Start -->
            <div class="top-bar">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="logo">
                                <a href="index.html">
                                    <h1>Lawyer</h1>
                                    <!-- <img src="img/logo.jpg" alt="Logo"> -->
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-9">
                            <div class="top-bar-right">
                                <div class="text">
                                    <h2>8:00 - 9:00</h2>
                                    <p>Opening Hour Mon - Fri</p>
                                </div>
                                <div class="text">
                                    
                                    <p>Call Us For Free Consultation</p>
                                </div>
                                <div class="social">
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Top Bar End -->

            <!-- Nav Bar Start -->
            <div class="nav-bar">
                <div class="container-fluid">
                    <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
                        <a href="#" class="navbar-brand">MENU</a>
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto">
                                <a href="index.jsp" class="nav-item nav-link active">Home</a>
                                <a href="admin.jsp" class="nav-item nav-link">Admin</a>
                                <a href="lawyer.jsp" class="nav-item nav-link">Lawyer</a>
                                <a href="user.jsp" class="nav-item nav-link">User</a>
                                
                                
                              
                            </div>
                            <div class="ml-auto">
                                <a class="btn" href="https://htmlcodex.com/law-firm-website-template">Get Appointment</a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <!-- Nav Bar End -->
            
            
            <!-- Carousel Start -->
            <div id="carousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel" data-slide-to="1"></li>
                    <li data-target="#carousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="img/carousel-1.jpg" alt="Carousel Image">
                        <div class="carousel-caption">
                            <h1 class="animated fadeInLeft">We fight for your justice</h1>
                            <p class="animated fadeInRight"> Great Lawyer here ...</p>
                            <a class="btn animated fadeInUp" href="#">Get free consultation</a>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="img/carousel-2.jpg" alt="Carousel Image">
                        <div class="carousel-caption">
                            <h1 class="animated fadeInLeft">We prepared to oppose for you</h1>
                            <p class="animated fadeInRight">Great Lawyer here ......</p>
                            <a class="btn animated fadeInUp" href="#">Get free consultation</a>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="img/carousel-3.jpg" alt="Carousel Image">
                        <div class="carousel-caption">
                            <h1 class="animated fadeInLeft">We fight for your privilege</h1>
                            <p class="animated fadeInRight">Great Lawyer here ......</p>
                            <a class="btn animated fadeInUp" href="#">Get free consultation</a>
                        </div>
                    </div>
                </div>

                <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <!-- Carousel End -->
            
            
            <!-- Top Feature Start-->
            <div class="feature-top">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-md-3 col-sm-6">
                            <div class="feature-item">
                                <i class="far fa-check-circle"></i>
                                <h3>Legal</h3>
                                <p>Govt Approved</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="feature-item">
                                <i class="fa fa-user-tie"></i>
                                <h3>Attorneys</h3>
                                <p>Expert Attorneys</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="feature-item">
                                <i class="far fa-thumbs-up"></i>
                                <h3>Success</h3>
                                <p>99.99% Case Won</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="feature-item">
                                <i class="far fa-handshake"></i>
                                <h3>Support</h3>
                                <p>Quick Support</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Top Feature End-->
  <form id="form" name="form" method="post" action="">
  <table width="70%" align="center" height="250px">
  <tr>
      <td height="53" colspan="4"><div align="center" class="style1 style3">  <h1 style="color:#e6b800;">Lawyer Login : </h1></div></td></h1>
   </tr>
  <tr>
    <td width="20%" height="61">&nbsp;</td>
    <td width="30%"><div align="center" class="style2"><h2>User Name : </h2> </div></td>
    <td width="14%"><input name="name" type="text" class="style2"></td>
    <td width="36%">&nbsp;</td>
  </tr>
  <tr>
    <td height="59">&nbsp;</td>
    <td><div align="center" class="style2"><h2>Password :</h2> </div></td>
    <td><input name="pass" type="password" class="style2"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="59">&nbsp;</td>
    <td height="59">&nbsp;</td>
    <td><h3><a href="lawyer_reg.jsp">NEW REGISTER</a</h3></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="54">&nbsp;</td>
    <td><div align="center">
      <input name="Submit" type="submit" class="ringcon" value="Submit">
    </div></td>
    <td><input name="Clear" type="reset" class="ringcon" value="Clear"></td>
    <td>&nbsp;</td>
  </tr>
</table>
</form>           
            
            <!-- About Start -->
           
            <!-- Feature End -->
            
            
         
            <!-- Testimonial End -->


            <!-- Blog Start -->
           
            <!-- Blog End -->
            
            
            <!-- Newsletter Start -->
            <div class="newsletter">
                <div class="container">
                    <div class="section-header">
                        <h2>Subscribe Our Newsletter</h2>
                    </div>
                    <div class="form">
                        <input class="form-control" placeholder="Email here">
                        <button class="btn">Submit</button>
                    </div>
                </div>
            </div>
            <!-- Newsletter End -->


            <!-- Footer Start -->
            <div class="footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-lg-4">
                            <div class="footer-about">
                                <h2>About Us</h2>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eu lectus a leo tristique dictum nec non quam. Suspendisse convallis, tortor eu placerat rhoncus, lorem quam iaculis felis, sed eleifend lacus neque id eros. Integer convallis volutpat neque
                                </p>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-8">
                            <div class="row">
                        <div class="col-md-6 col-lg-4">
                            <div class="footer-link">
                                <h2>Services Areas</h2>
                                <a href="">Civil Law</a>
                                <a href="">Family Law</a>
                                <a href="">Business Law</a>
                                <a href="">Education Law</a>
                                <a href="">Immigration Law</a>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <div class="footer-link">
                                <h2>Useful Pages</h2>
                                <a href="">About Us</a>
                                <a href="">Practices</a>
                                <a href="">Attorneys</a>
                                <a href="">Case Studies</a>
                                <a href="">FAQs</a>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <div class="footer-contact">
                                <h2>Get In Touch</h2>
                                <p><i class="fa fa-map-marker-alt"></i>123 Street, New York, USA</p>
                                <p><i class="fa fa-phone-alt"></i>+012 345 67890</p>
                                <p><i class="fa fa-envelope"></i>info@example.com</p>
                                <div class="footer-social">
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-youtube"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    </div>
                </div>
                <div class="container footer-menu">
                    <div class="f-menu">
                        <a href=""></a>
                        <a href=""></a>
                        <a href=""></a>
                        <a href=""></a>
                        <a href=""></a>
                    </div>
                </div>
                <div class="container copyright">
                    <div class="row">
                        <div class="col-md-6">
                            <p> <a href="https://htmlcodex.com/law-firm-website-template"></a></p>
                        </div>
                        <div class="col-md-6">
                            <p>Designed By <a href="https://htmlcodex.com"></a></p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer End -->
            
            <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
        </div>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/isotope/isotope.pkgd.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>
</html>
