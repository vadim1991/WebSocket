<!DOCTYPE html>
<html class="hide-sidebar ls-bottom-footer" lang="en">

<jsp:include page="fragments/head.jsp">
    <jsp:param name="pageName" value="Login | Page"></jsp:param>
</jsp:include>
<body class="login">

<div id="content">
    <div class="container-fluid">

        <div class="lock-container">
            <h1>Account Access</h1>
            <div class="panel panel-default text-center">
                <img src="resources/images/guy-5(1).jpg" class="img-circle">
                <div class="panel-body">
                    <input class="form-control" type="text" placeholder="Username">
                    <input class="form-control" type="password" placeholder="Enter Password">

                    <a href="index.jsp" class="btn btn-primary">Login <i class="fa fa-fw fa-unlock-alt"></i></a>
                    <a href="#" class="forgot-password">Forgot password?</a>
                </div>
            </div>
        </div>

    </div>
</div>

<jsp:include page="fragments/footer.jsp"></jsp:include>

</body>

</html>