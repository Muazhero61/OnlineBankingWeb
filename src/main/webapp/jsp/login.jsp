<%@ page import="util.BankInformation" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="libraries.jsp"/>
    <script src="${pageContext.request.contextPath}/js/general/login.js"></script>
</head>
<body style="background: url(${pageContext.request.contextPath}/images/banking_wp.jpg);background-size: 100%">
<h1 class="alert alert-dark bg-gradient-dark rounded-0"><%= BankInformation.getBankName() %></h1>
<br>
<?php echo $error ?>
<br>
<div id="accordion" role="tablist" class="w-25 float-right shadowBlack" style="margin-right: 222px">
    <br><h4 class="text-center">Welcome Home</h4>
    <div class="card rounded-0">
        <div class="card-header" role="tab" id="headingOne">
            <h5 class="mb-0">
                <a style="text-decoration: none;" data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    <button class="btn btn-outline-primary btn-block">Click to Login</button>
                </a>
            </h5>
        </div>
        <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
            <div class="card-body">
                <form>
                    <input type="email" id="userLoginEmail" name="email" class="form-control" required placeholder="Enter Email">
                    <input type="password" id="userLoginPassword" name="password" class="form-control" required placeholder="Enter Password">
                    <button type="button" id="userLogin" class="btn btn-primary btn-block btn-sm my-1">Enter</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>