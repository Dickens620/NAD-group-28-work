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
        <title>Booking Page</title>
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
                    <h5 class="card-title text-center pb-0 fs-4">Booking Form</h5>
                    <p class="text-center small">Enter your booking credentials</p>
                  </div>

                  <form class="row g-3 needs-validation" novalidate action="BookingServ" method="POST">

                    <div class="col-12">
                      <label for=name class="form-label">Full Name</label>
                      <div class="input-group has-validation">
                         <input type="text" name="name" class="form-control" id="name" required>
                    </div>
                    </div>
                      
                    <div class="col-12">
                      <label for=nin class="form-label">NIN</label>
                      <div class="input-group has-validation">
                         <input type="text" name="nin" class="form-control" id="nin" required>
                    </div>
                    </div>
                      
                    <div class="col-12">
                      <label for=email class="form-label">Email</label>
                      <div class="input-group has-validation">
                         <input type="email" name="email" class="form-control" id="email" required>
                    </div>
                    </div>
                    
                      
                      
                      <div class="col-12">
                      <label  class="form-label">Date of Appointment</label>
                      <div class="input-group has-validation">
                         <input type="date" name="date_of_appointment" class="form-control" id="date_of_appointment" required>
                    </div>
                    </div>
                      
                      <div class="col-12">
                      <label  class="form-label">Time of Appointment</label>
                      <div class="input-group has-validation">
                         <input type="time" name="time_of_appointment" class="form-control" id="time_of_appointment" required>
                    </div>
                    </div>
                      
                      <div class="col-12">
                      <label for=vaccine class="form-label">Vaccine</label>
                      <div class="input-group has-validation">
                         <input type="text" name="vaccine" class="form-control" id="vaccine" required>
                    </div>
                    </div>
                      
                       <div class="col-12">
                      <label for=vaccine class="form-label">Health Centre</label>
                      <div class="input-group has-validation">
                         <input type="text" name="health_centre" class="form-control" id="health_centre" required>
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

