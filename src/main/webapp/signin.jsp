<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>Sign in</title>
  <link rel="stylesheet" href="CSSFiles/loginPage.css">
</head>

<body>

  <header class="header">
    <div class="container header__container">
      <div class="header__logo"><img class="header__img" src="https://image.ibb.co/kcVou6/path3000.png">
        <h1 class="header__title">HRP<span class="header__light">.io</span></h1>
      </div>
    </div>
  </header>

  <div class="sect sect--padding-bottom">
    <div class="container">
      <div class="row row--center">
        <h1 class="row__title">Welcome Back</h1>
        <h2 class="row__sub"></h2>
      </div>
      <div class="row row--center row--margin">
        <div class="col-md-4 col-sm-4 price-box price-box--purple">
          <div class="price-box__wrap">
            
            <form action="SigninServlet" method="post">
              <div class="login-div">
                <div class="loginfield">
                
                  <p class="price-box__feat">First Name</p>
                  <input type="text" class="inputfield" placeholder="full name" name="fname" >
                  
                   <p class="price-box__feat">Last Name</p>
                  <input type="text" class="inputfield" placeholder="full name" name="fname">
                  
                   <p class="price-box__feat">Middle Name</p>
                  <input type="text" class="inputfield" placeholder="full name" name="fname">
                  
                  <p class="price-box__feat">Email</p> 
                  <input type="email" class="inputfield" placeholder="xyz@gmail.com" name="email">
                  
                  <p class="price-box__feat">HR ID</p>
                  <input type="text" class="inputfield" placeholder="Phone" name="id">
                  
                  <p class="price-box__feat">Password</p>
                  <input type="password" class="inputfield" placeholder="Password" name="password">
                  
                  <p class="price-box__feat">Confirm Password</p>
                  <input type="password" class="inputfield" placeholder="Password" >
                  
                </div>

                <div class="price-box__btn">
                  <a href="loginPage.jsp" class="btn btn--purple btn--width" >Sign-in</a>
                  
                </div>
                <div class="checkbox-field">agree terms and conditions
                  <input type="checkbox" id="remember-me" class="checkbox">
                  <label for="remember-me" class="checkbox-label"></label>
                </div>
               
              </div>
              </form>
              
            
            <div class="new-account">
              <p>Already have an account - <a href="loginPage.jsp">Login</a></p>
            </div>
          </div>

        </div>
      </div>
    </div>
  </div>

</body>

</html>