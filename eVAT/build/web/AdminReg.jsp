<%-- 
    Document   : AdminReg.jsp
    Created on : Dec 3, 2021, 3:26:06 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Register</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        
    </head>
    <body>
        
        
        <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Admin Registration Form</h5>
                    <p class="text-center small">Enter your registration credentials</p>
                  </div>

                  <form class="row g-3 needs-validation" novalidate action="administration" method="POST">

                    <div class="col-12">
                      <label for=fullname class="form-label">Full Name</label>
                      <div class="input-group has-validation">
                         <input type="text" name="fullname" class="form-control" id="fullname" required>
                    </div>
                    </div>
                      
                      
                    <div class="col-12">
                      <label for=username class="form-label">Username</label>
                      <div class="input-group has-validation">
                         <input type="text" name="username" class="form-control" id="username" required>
                    </div>
                    </div>
                      
                      
                   
                    <div class="col-12">
                      <label for="yourPassword" class="form-label">Password</label>
                      <input type="password" name="passwod" class="form-control" id="passwod" required>
                      
                    </div>
                      
                     <div class="col-12">
                      <label for=nin class="form-label">NIN</label>
                      <div class="input-group has-validation">
                         <input type="text" name="nin" class="form-control" id="nin" required>
                    </div>
                    </div>
                      
                      <div class="col-12">
                      <label for=email class="form-label">email</label>
                      <div class="input-group has-validation">
                         <input type="text" name="email" class="form-control" id="email" required>
                    </div>
                    </div>
                      
                      <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit" name="sub">Submit</button>
                    </div>
                    
                  </form>

                </div>
              </div>


            </div>
          </div>
        </div>

      </section>
         </body>
</html>
