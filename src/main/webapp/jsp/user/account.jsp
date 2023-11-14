<%@ page import="util.BankInformation" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/jsp/libraries.jsp"/>
</head>
<body style="background-size: 100%" class="bg-gradient-seconday">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="">
        <img src="images/logo.png" style="object-fit:cover;object-position:center center" width="30" height="30" class="d-inline-block align-top" alt="">
        <%= BankInformation.getBankName() %>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item ">
                <a class="nav-link" href="${pageContext.request.contextPath}/indexUser">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath}/accountUser">Accounts</a></li>
            <li class="nav-item "><a class="nav-link" href="${pageContext.request.contextPath}/statementUser">Account Statements</a></li>
            <li class="nav-item "><a class="nav-link" href="${pageContext.request.contextPath}/transferUser">Funds Transfer</a></li>
        </ul>
        <jsp:include page="/jsp/user/sidebutton.jsp"/>
    </div>
</nav><br><br><br>
<div class="container">
    <div class="card  w-75 mx-auto">
        <div class="card-header text-center">
            Your account Information
        </div>
        <div class="card-body">
            <table class="table table-striped table-dark w-75 mx-auto">
                <thead>
                <tr>
                    <td scope="col">Account No.</td>
                    <th scope="col"><?php echo $userData['accountNo']; ?></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">Branch</th>
                    <td><?php echo $userData['branchName']; ?></td>
                </tr>
                <tr>
                    <th scope="row">Branch Code</th>
                    <td><?php echo $userData['branchNo']; ?></td>
                </tr>
                <tr>
                    <th scope="row">Account Type</th>
                    <td><?php echo $userData['accountType']; ?></td>
                </tr>
                <tr>
                    <th scope="row">Account Created</th>
                    <td><?php echo $userData['date']; ?></td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="card-footer text-muted">
            <%= BankInformation.getBankName() %>
        </div>
    </div>
</div>
</body>
</html>