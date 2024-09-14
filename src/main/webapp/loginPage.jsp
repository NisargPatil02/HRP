<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>Login Page</title>
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
            <div class="img-flex">
              <div class="login-div">
               <form action="SigninServlet" method="post">
                <div class="loginfield">
               
                  <p class="price-box__feat">Email</p>
                  <input type="email" class="inputfield" name="email">
                  <p class="price-box__feat">Password</p>
                  <input type="password" class="inputfield" name="password">
                </div>

                <div class="price-box__btn">
                  <a href="dashBoard.jsp" class="btn btn--purple btn--width">Login now</a>
                  
                </div>
                <div class="checkbox-field">
                  <input type="checkbox" id="remember-me" class="checkbox">
                  <label for="remember-me" class="checkbox-label">Remember Me</label>
                </div>
               </form>
              </div>
              <div class="image">

              </div>
            </div>
            <div class="new-account">
              <p>I don't have account ? <a href="signin.jsp">New-account</a></p>
            </div>
            
          </div>

        </div>
      </div>
    </div>
  </div>

</body>

</html>