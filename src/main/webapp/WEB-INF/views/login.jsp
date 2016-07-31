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
                    <form action="/login" method="post"
                          class="form-signin" role="form">
                        <input class="form-control" name="username" id="username" type="text" placeholder="Username">
                        <input class="form-control" name="password" id="password" type="password"
                               placeholder="Enter Password">

                        <input name="submit" type="submit" value="Submit" class="btn btn-success">
                        <!--<a href="index.jsp" class="btn btn-primary">Login <i class="fa fa-fw fa-unlock-alt"></i></a>-->
                        <a href="#" class="forgot-password">Forgot password?</a>

                    </form>
                </div>
            </div>
        </div>

    </div>
</div>
<!-- .container -->
<!-- .container -->
<!-- Compiled and minified JQuery JavaScript (necessary for Bootstrap's JavaScript plugins).
     Placed at the end of the document so the pages load faster -->
<script src="<c:url value="/resources/scripts/jquery-1.10.2.min.js"/>"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<c:url value="/resources/scripts/bootstrap/js/bootstrap.min.js"/>"></script>
</body>

</html>