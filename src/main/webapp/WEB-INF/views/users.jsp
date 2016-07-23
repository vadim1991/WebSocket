<!DOCTYPE html>
<html class="st-layout ls-top-navbar ls-bottom-footer show-sidebar sidebar-l2" lang="en">

<jsp:include page="fragments/head.jsp">
    <jsp:param name="pageName" value="Users | Page"></jsp:param>
</jsp:include>
<body>

<!-- Wrapper required for sidebar transitions -->
<div class="st-container">

    <!-- Fixed navbar -->
    <jsp:include page="fragments/navbar.jsp"></jsp:include>
    <!-- Sidebar component with st-effect-1 (set on the toggle button within the navbar) -->
    <jsp:include page="fragments/sidebar.jsp">
        <jsp:param name="activePage" value="usersPage"></jsp:param>
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

    <!-- sidebar effects OUTSIDE of st-pusher: -->
    <!-- st-effect-1, st-effect-2, st-effect-4, st-effect-5, st-effect-9, st-effect-10, st-effect-11, st-effect-12, st-effect-13 -->

    <!-- content push wrapper -->
    <div class="st-pusher" id="content">

        <!-- sidebar effects INSIDE of st-pusher: -->
        <!-- st-effect-3, st-effect-6, st-effect-7, st-effect-8, st-effect-14 -->

        <!-- this is the wrapper for the content -->
        <div class="st-content">

            <!-- extra div for emulating position:fixed of the menu -->
            <div class="st-content-inner">

                <div class="container-fluid">

                    <div id="filter">
                        <form class="form-inline">
                            <label>Filter:</label>
                            <select name="users-filter" id="users-filter-select" class="selectpicker" data-style="btn-primary" data-width="auto">
                                <option value="all">All</option>
                                <option value="friends">Friends of Friends</option>
                                <option value="name">by Name</option>
                            </select>
                            <div id="users-filter-trigger">
                                <div class="select-friends hidden">
                                    <select name="users-filter-friends" class="selectpicker" data-style="btn-primary" data-live-search="true">
                                        <option value="0">Select Friend</option>
                                        <option value="1">Mary D.</option>
                                        <option value="2">Michelle S.</option>
                                        <option value="3">Adrian Demian</option>
                                    </select>
                                </div>
                                <div class="search-name hidden">
                                    <input type="text" class="form-control" name="user-first" placeholder="First Last Name" id="name" />
                                    <a href="#" class="btn btn-default hidden" id="user-search-name"><i class="fa fa-search"></i> Search</a>
                                </div>

                            </div>
                        </form>
                    </div>

                    <div class="row" data-toggle="isotope">
                        <div class="col-md-6 col-lg-4 item">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img src="resources/images/guy-1.jpg" alt="people" class="media-object img-circle" />
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading margin-v-5"><a href="#">Adrian D.</a></h4>
                                            <div class="profile-icons">
                                                <span><i class="fa fa-users"></i> 372</span>
                                                <span><i class="fa fa-photo"></i> 43</span>
                                                <span><i class="fa fa-video-camera"></i> 3</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <p class="common-friends">Common Friends</p>
                                    <div class="user-friend-list">
                                        <a href="#">
                                            <img src="resources/images/guy-5.jpg" alt="people" class="img-circle" />
                                        </a>
                                        <a href="#">
                                            <img src="resources/images/guy-6.jpg" alt="people" class="img-circle" />
                                        </a>
                                        <a href="#">
                                            <img src="resources/images/woman-6.jpg" alt="people" class="img-circle" />
                                        </a>
                                        <a href="#">
                                            <img src="resources/images/woman-4.jpg" alt="people" class="img-circle" />
                                        </a>
                                    </div>
                                </div>
                                <div class="panel-footer">
                                    <a href="#" class="btn btn-default btn-sm">Follow <i class="fa fa-share"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 item">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img src="resources/images/guy-4.jpg" alt="people" class="media-object img-circle" />
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading margin-v-5"><a href="#">Adrian D.</a></h4>
                                            <div class="profile-icons">
                                                <span><i class="fa fa-users"></i> 372</span>
                                                <span><i class="fa fa-photo"></i> 43</span>
                                                <span><i class="fa fa-video-camera"></i> 3</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <p class="common-friends">Common Friends</p>
                                    <div class="user-friend-list">
                                        <a href="#">
                                            <img src="resources/images/guy-1.jpg" alt="people" class="img-circle" />
                                        </a>
                                        <a href="#">
                                            <img src="resources/images/guy-2.jpg" alt="people" class="img-circle" />
                                        </a>
                                        <a href="#">
                                            <img src="resources/images/woman-9.jpg" alt="people" class="img-circle" />
                                        </a>
                                        <a href="#">
                                            <img src="resources/images/woman-4.jpg" alt="people" class="img-circle" />
                                        </a>
                                    </div>
                                </div>
                                <div class="panel-footer">
                                    <a href="#" class="btn btn-default btn-sm">Follow <i class="fa fa-share"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 item">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img src="resources/images/guy-2.jpg" alt="people" class="media-object img-circle" />
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading margin-v-5"><a href="#">Adrian D.</a></h4>
                                            <div class="profile-icons">
                                                <span><i class="fa fa-users"></i> 372</span>
                                                <span><i class="fa fa-photo"></i> 43</span>
                                                <span><i class="fa fa-video-camera"></i> 3</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <p class="common-friends">Common Friends</p>
                                    <div class="user-friend-list">
                                        <a href="#">
                                            <img src="resources/images/guy-2.jpg" alt="people" class="img-circle" />
                                        </a>
                                        <a href="#">
                                            <img src="resources/images/guy-7.jpg" alt="people" class="img-circle" />
                                        </a>
                                        <a href="#">
                                            <img src="resources/images/woman-1.jpg" alt="people" class="img-circle" />
                                        </a>
                                        <a href="#">
                                            <img src="resources/images/woman-4.jpg" alt="people" class="img-circle" />
                                        </a>
                                    </div>
                                </div>
                                <div class="panel-footer">
                                    <a href="#" class="btn btn-default btn-sm">Follow <i class="fa fa-share"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 item">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img src="resources/images/guy-3.jpg" alt="people" class="media-object img-circle" />
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading margin-v-5"><a href="#">Adrian D.</a></h4>
                                            <div class="profile-icons">
                                                <span><i class="fa fa-users"></i> 372</span>
                                                <span><i class="fa fa-photo"></i> 43</span>
                                                <span><i class="fa fa-video-camera"></i> 3</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <p class="common-friends">Common Friends</p>
                                    <div class="user-friend-list">
                                        <a href="#">
                                            <img src="resources/images/guy-4.jpg" alt="people" class="img-circle" />
                                        </a>
                                        <a href="#">
                                            <img src="resources/images/guy-1.jpg" alt="people" class="img-circle" />
                                        </a>
                                        <a href="#">
                                            <img src="resources/images/woman-9.jpg" alt="people" class="img-circle" />
                                        </a>
                                        <a href="#">
                                            <img src="resources/images/woman-3.jpg" alt="people" class="img-circle" />
                                        </a>
                                    </div>
                                </div>
                                <div class="panel-footer">
                                    <a href="#" class="btn btn-default btn-sm">Follow <i class="fa fa-share"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 item">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img src="resources/images/guy-9.jpg" alt="people" class="media-object img-circle" />
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading margin-v-5"><a href="#">Adrian D.</a></h4>
                                            <div class="profile-icons">
                                                <span><i class="fa fa-users"></i> 372</span>
                                                <span><i class="fa fa-photo"></i> 43</span>
                                                <span><i class="fa fa-video-camera"></i> 3</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <p class="common-friends">Common Friends</p>
                                    <div class="user-friend-list">
                                        <a href="#">
                                            <img src="resources/images/guy-8.jpg" alt="people" class="img-circle" />
                                        </a>
                                        <a href="#">
                                            <img src="resources/images/guy-4.jpg" alt="people" class="img-circle" />
                                        </a>
                                        <a href="#">
                                            <img src="resources/images/woman-3.jpg" alt="people" class="img-circle" />
                                        </a>
                                        <a href="#">
                                            <img src="resources/images/woman-6.jpg" alt="people" class="img-circle" />
                                        </a>
                                    </div>
                                </div>
                                <div class="panel-footer">
                                    <a href="#" class="btn btn-default btn-sm">Follow <i class="fa fa-share"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 item">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img src="resources/images/guy-5.jpg" alt="people" class="media-object img-circle" />
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading margin-v-5"><a href="#">Adrian D.</a></h4>
                                            <div class="profile-icons">
                                                <span><i class="fa fa-users"></i> 372</span>
                                                <span><i class="fa fa-photo"></i> 43</span>
                                                <span><i class="fa fa-video-camera"></i> 3</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <p class="common-friends">Common Friends</p>
                                    <div class="user-friend-list">
                                        <a href="#">
                                            <img src="resources/images/guy-6.jpg" alt="people" class="img-circle" />
                                        </a>
                                        <a href="#">
                                            <img src="resources/images/guy-2.jpg" alt="people" class="img-circle" />
                                        </a>
                                        <a href="#">
                                            <img src="resources/images/woman-2.jpg" alt="people" class="img-circle" />
                                        </a>
                                        <a href="#">
                                            <img src="resources/images/woman-5.jpg" alt="people" class="img-circle" />
                                        </a>
                                    </div>
                                </div>
                                <div class="panel-footer">
                                    <a href="#" class="btn btn-default btn-sm">Follow <i class="fa fa-share"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 item">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img src="resources/images/guy-9.jpg" alt="people" class="media-object img-circle" />
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading margin-v-5"><a href="#">Adrian D.</a></h4>
                                            <div class="profile-icons">
                                                <span><i class="fa fa-users"></i> 372</span>
                                                <span><i class="fa fa-photo"></i> 43</span>
                                                <span><i class="fa fa-video-camera"></i> 3</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <p class="common-friends">Common Friends</p>
                                    <div class="user-friend-list">
                                        <a href="#">
                                            <img src="resources/images/guy-1.jpg" alt="people" class="img-circle" />
                                        </a>
                                        <a href="#">
                                            <img src="resources/images/guy-3.jpg" alt="people" class="img-circle" />
                                        </a>
                                        <a href="#">
                                            <img src="resources/images/woman-4.jpg" alt="people" class="img-circle" />
                                        </a>
                                        <a href="#">
                                            <img src="resources/images/woman-1.jpg" alt="people" class="img-circle" />
                                        </a>
                                    </div>
                                </div>
                                <div class="panel-footer">
                                    <a href="#" class="btn btn-default btn-sm">Follow <i class="fa fa-share"></i></a>
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

<jsp:include page="fragments/footer.jsp"></jsp:include>

</body>

</html>