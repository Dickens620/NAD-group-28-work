<<%-- 
    Document   : login
    Created on : Dec 3, 2021, 3:13:42 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>General Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
       
    </head>
    <body>
        
        <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div  class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                
                  <img src="assets/img/logo.png" alt="">
                  <span class="d-none d-lg-block">General Login Page</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Login to Your Account</h5>
                    <p class="text-center small">You are either an Admin or a Patient</p>
                  </div>
                    
                    <center>

                    <div class="col-12">
                        <p class="small mb-0">Admin? <br> <a href="${pageContext.request.contextPath}/login.jsp">Login here</a></p>
                    </div>
                    </center>
                    
                    <br><br><br>
                 
                    
                    <center>

                    <div class="col-12">
                        <p class="small mb-0">Patient? <br> <a href="${pageContext.request.contextPath}/PatientLogin.jsp">Login here</a></p>
                    </div>
                    </center>
                    
                    <br><br><br>
                    
                    <center>

                    <div class="col-12">
                        <p class="small mb-0">Booking for Vaccination? <br> <a href="${pageContext.request.contextPath}/BookingVac.jsp">Register here</a></p>
                    </div>
                    </center>
                    
                </div>
              </div>


            </div>
          </div>
       

      </section>
      </div>  
    </body>
</html>
