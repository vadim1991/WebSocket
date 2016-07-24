<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="st-layout ls-top-navbar ls-bottom-footer show-sidebar sidebar-l2" lang="en">

<jsp:include page="fragments/head.jsp">
    <jsp:param name="pageName" value="Messages | Page"></jsp:param>
</jsp:include>

<body>

<!-- Wrapper required for sidebar transitions -->
<div class="st-container">

    <jsp:include page="fragments/navbar.jsp"></jsp:include>

    <jsp:include page="fragments/sidebar.jsp">
        <jsp:param name="activePage" value="messagesPage"></jsp:param>
    </jsp:include>

    <!-- Sidebar friends -->
    <jsp:include page="fragments/friend-sidebar.jsp"></jsp:include>

    <script id="chat-window-template" type="text/x-handlebars-template">

        <div class="panel panel-default">
            <div class="panel-heading" data-toggle="chat-collapse" data-target="#chat-bill">
                <a href="#" class="close"><i class="fa fa-times"></i></a>
                <a href="#">
            <span class="pull-left">
                    <img src="{{ user_image }}" width="40">
                </span>
                    <span class="contact-name">{{user}}</span>
                </a>
            </div>
            <div class="panel-body" id="chat-bill">
                <div class="media">
                    <div class="media-left">
                        <img src="{{ user_image }}" width="25" class="img-circle" alt="people" />
                    </div>
                    <div class="media-body">
                        <span class="message">Feeling Groovy?</span>
                    </div>
                </div>
                <div class="media">
                    <div class="media-left">
                        <img src="{{ user_image }}" width="25" class="img-circle" alt="people" />
                    </div>
                    <div class="media-body">
                        <span class="message">Yep.</span>
                    </div>
                </div>
                <div class="media">
                    <div class="media-left">
                        <img src="{{ user_image }}" width="25" class="img-circle" alt="people" />
                    </div>
                    <div class="media-body">
                        <span class="message">This chat window looks amazing.</span>
                    </div>
                </div>
                <div class="media">
                    <div class="media-left">
                        <img src="{{ user_image }}" width="25" class="img-circle" alt="people" />
                    </div>
                    <div class="media-body">
                        <span class="message">Thanks!</span>
                    </div>
                </div>
            </div>
            <input type="text" class="form-control" placeholder="Type message..." />
        </div>
    </script>

    <div class="chat-window-container"></div>

    <!-- content push wrapper -->
    <div class="st-pusher" id="content">

        <!-- this is the wrapper for the content -->
        <div class="st-content">

            <!-- extra div for emulating position:fixed of the menu -->
            <div class="st-content-inner">

                <div class="container-fluid">

                    <div class="media messages-container media-clearfix-xs-min media-grid">
                        <div class="media-left">
                            <div class="messages-list">
                                <div class="panel panel-default">
                                    <ul class="list-group">
                                        <li class="list-group-item active">
                                            <a href="#" class="dialog" data-id="1">
                                                <div class="media">
                                                    <div class="media-left">
                                                        <img src="resources/images/woman-5.jpg" width="50" alt="" class="media-object" />
                                                    </div>
                                                    <div class="media-body">
                                                        <span class="date">Today</span>
                                                        <span class="user">Mary D.</span>
                                                        <div class="message">Are we ok to meet...</div>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="list-group-item">
                                            <a href="#" class="dialog" data-id="2">
                                                <div class="media">
                                                    <div class="media-left">
                                                        <img src="resources/images/guy-3.jpg" height="50" alt="" class="media-object" />
                                                    </div>
                                                    <div class="media-body">
                                                        <span class="date">Sat</span>
                                                        <span class="user">Adrian T.</span>
                                                        <div class="message">Looking forward to...</div>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="list-group-item">
                                            <a href="#" class="dialog" data-id="3">
                                                <div class="media">
                                                    <div class="media-left">
                                                        <img src="resources/images/woman-4.jpg" width="50" alt="" class="media-object" />
                                                    </div>
                                                    <div class="media-body">
                                                        <span class="date">5 days</span>
                                                        <span class="user">Michelle A.</span>
                                                        <div class="message">Nice design.</div>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="list-group-item">
                                            <a href="#" class="dialog" data-id="4">
                                                <div class="media">
                                                    <div class="media-left">
                                                        <img src="resources/images/woman-3.jpg" height="50" alt="" class="media-object" />
                                                    </div>
                                                    <div class="media-body">
                                                        <span class="date">Sat</span>
                                                        <span class="user">Sue T.</span>
                                                        <div class="message">Looking forward to...</div>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="list-group-item">
                                            <a href="#" class="dialog" data-id="5">
                                                <div class="media">
                                                    <div class="media-left">
                                                        <img src="resources/images/guy-9.jpg" height="50" alt="" class="media-object" />
                                                    </div>
                                                    <div class="media-body">
                                                        <span class="date">Sat</span>
                                                        <span class="user">Adrian T.</span>
                                                        <div class="message">Looking forward to...</div>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="list-group-item">
                                            <a href="#" class="dialog" data-id="6">
                                                <div class="media">
                                                    <div class="media-left">
                                                        <img src="resources/images/woman-9.jpg" height="50" alt="" class="media-object" />
                                                    </div>
                                                    <div class="media-body">
                                                        <span class="date">Sat</span>
                                                        <span class="user">Adrian T.</span>
                                                        <div class="message">Looking forward to...</div>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="list-group-item">
                                            <a href="#" class="dialog">
                                                <div class="media">
                                                    <div class="media-left">
                                                        <img src="resources/images/guy-6.jpg" height="50" alt="" class="media-object" />
                                                    </div>
                                                    <div class="media-body">
                                                        <span class="date">Sat</span>
                                                        <span class="user">Adrian T.</span>
                                                        <div class="message">Looking forward to...</div>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="list-group-item">
                                            <a href="#" class="dialog">
                                                <div class="media">
                                                    <div class="media-left">
                                                        <img src="resources/images/guy-2.jpg" height="50" alt="" class="media-object" />
                                                    </div>
                                                    <div class="media-body">
                                                        <span class="date">Sat</span>
                                                        <span class="user">Adrian T.</span>
                                                        <div class="message">Looking forward to...</div>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="media-body" id="message-block">
                            <div class="panel panel-default share">
                                <div class="input-group">
                                    <div class="input-group-btn">
                                        <a class="btn btn-primary" href="#" id="send-button">
                                            <i class="fa fa-envelope"></i> Send
                                        </a>
                                    </div>
                                    <!-- /btn-group -->
                                    <input type="text" class="form-control share-text" placeholder="Write message..." />
                                </div>
                                <!-- /input-group -->
                            </div>
                            <div class="media">
                                <div class="media-left">
                                    <a href="#">
                                        <img src="resources/images/woman-5.jpg" width="60" alt="woman" class="media-object" />
                                    </a>
                                </div>
                                <div class="media-body message">
                                    <div class="panel panel-default">
                                        <div class="panel-heading panel-heading-white">
                                            <div class="pull-right">
                                                <small class="text-muted">2 min ago</small>
                                            </div>
                                            <a href="#">Mary D.</a>
                                        </div>
                                        <div class="panel-body">
                                            Hi Bill,
                                            <br/> Is it ok if we schedule the meeting tomorrow?

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body message">
                                    <div class="panel panel-default">
                                        <div class="panel-heading panel-heading-white">
                                            <div class="pull-right">
                                                <small class="text-muted">10 min ago</small>
                                            </div>
                                            <a href="#">Me</a>
                                        </div>
                                        <div class="panel-body">
                                            Are we still on for Today?
                                        </div>
                                    </div>
                                </div>
                                <div class="media-right">
                                    <img src="resources/images/guy-5.jpg" width="60" alt="" class="media-object" />
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-left">
                                    <img src="resources/images/woman-5.jpg" width="60" alt="" class="media-object" />
                                </div>
                                <div class="media-body message">
                                    <div class="panel panel-default">
                                        <div class="panel-heading panel-heading-white">
                                            <div class="pull-right">
                                                <small class="text-muted">1 day ago</small>
                                            </div>
                                            <a href="#">Mary D.</a>
                                        </div>
                                        <div class="panel-body">
                                            Cool. It's settled. Tomorrow will discuss the project.
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body message">
                                    <div class="panel panel-default">
                                        <div class="panel-heading panel-heading-white">
                                            <div class="pull-right">
                                                <small class="text-muted">3 days ago</small>
                                            </div>
                                            <a href="#">Me</a>
                                        </div>
                                        <div class="panel-body">
                                            I suggest a meeting on Tuesday. What do you think?
                                        </div>
                                    </div>
                                </div>
                                <div class="media-right">
                                    <img src="resources/images/guy-5.jpg" width="60" alt="" class="media-object" />
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
            <!-- /st-content-inner -->

        </div>
        <!-- /st-content -->

    </div>
    <!-- /st-pusher -->

</div>
<!-- /st-container -->

<jsp:include page="fragments/footer.jsp"></jsp:include>

</body>

<div class="media hidden" id="media">
    <div class="media-left">
        <img src="../../resources/images/unknown.png" width="60" alt="" class="media-object" />
    </div>
    <div class="media-body message">
        <div class="panel panel-default">
            <div class="panel-heading panel-heading-white">
                <div class="pull-right">
                    <small class="text-muted"></small>
                </div>
                <a href="#" id="name"></a>
            </div>
            <div class="panel-body"></div>
        </div>
    </div>
    <div class="media-right">
        <img src="../../resources/images/unknown.png" width="60" alt="" class="media-object" />
    </div>
</div>

</html>