<!DOCTYPE html>
<html class="st-layout ls-top-navbar ls-bottom-footer show-sidebar sidebar-l2" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home|Page</title>

    <!-- Vendor CSS BUNDLE
      Includes styling for all of the 3rd party libraries used with this module, such as Bootstrap, Font Awesome and others.
      TIP: Using bundles will improve performance by reducing the number of network requests the client needs to make when loading the page. -->
    <link href="resources/css/vendor/all.css" rel="stylesheet">

    <!-- Vendor CSS Standalone Libraries
          NOTE: Some of these may have been customized (for example, Bootstrap).
          See: src/less/themes/{theme_name}/vendor/ directory -->
    <!-- <link href="css/vendor/bootstrap.css" rel="stylesheet"> -->
    <!-- <link href="css/vendor/font-awesome.css" rel="stylesheet"> -->
    <!-- <link href="css/vendor/picto.css" rel="stylesheet"> -->
    <!-- <link href="css/vendor/material-design-iconic-font.css" rel="stylesheet"> -->
    <!-- <link href="css/vendor/datepicker3.css" rel="stylesheet"> -->
    <!-- <link href="css/vendor/jquery.minicolors.css" rel="stylesheet"> -->
    <!-- <link href="css/vendor/bootstrap-slider.css" rel="stylesheet"> -->
    <!-- <link href="css/vendor/railscasts.css" rel="stylesheet"> -->
    <!-- <link href="css/vendor/jquery-jvectormap.css" rel="stylesheet"> -->
    <!-- <link href="css/vendor/owl.carousel.css" rel="stylesheet"> -->
    <!-- <link href="css/vendor/slick.css" rel="stylesheet"> -->
    <!-- <link href="css/vendor/morris.css" rel="stylesheet"> -->
    <!-- <link href="css/vendor/ui.fancytree.css" rel="stylesheet"> -->
    <!-- <link href="css/vendor/daterangepicker-bs3.css" rel="stylesheet"> -->
    <!-- <link href="css/vendor/jquery.bootstrap-touchspin.css" rel="stylesheet"> -->
    <!-- <link href="css/vendor/select2.css" rel="stylesheet"> -->

    <!-- APP CSS BUNDLE [css/app/app.css]
  INCLUDES:
      - The APP CSS CORE styling required by the "social-1" module, also available with main.css - see below;
      - The APP CSS STANDALONE modules required by the "social-1" module;
  NOTE:
      - This bundle may NOT include ALL of the available APP CSS STANDALONE modules;
        It was optimised to load only what is actually used by the "social-1" module;
        Other APP CSS STANDALONE modules may be available in addition to what's included with this bundle.
        See src/less/themes/social-1/app.less
  TIP:
      - Using bundles will improve performance by greatly reducing the number of network requests the client needs to make when loading the page. -->
    <link href="resources/css/app/app.css" rel="stylesheet">

    <!-- App CSS CORE
  This variant is to be used when loading the separate styling modules -->
    <!-- <link href="css/app/main.css" rel="stylesheet"> -->

    <!-- App CSS Standalone Modules
      As a convenience, we provide the entire UI framework broke down in separate modules
      Some of the standalone modules may have not been used with the current theme/module
      but ALL modules are 100% compatible -->

    <!-- <link href="css/app/essentials.css" rel="stylesheet" /> -->
    <!-- <link href="css/app/layout.css" rel="stylesheet" /> -->
    <!-- <link href="css/app/sidebar.css" rel="stylesheet" /> -->
    <!-- <link href="css/app/sidebar-skins.css" rel="stylesheet" /> -->
    <!-- <link href="css/app/navbar.css" rel="stylesheet" /> -->
    <!-- <link href="css/app/media.css" rel="stylesheet" /> -->
    <!-- <link href="css/app/player.css" rel="stylesheet" /> -->
    <!-- <link href="css/app/timeline.css" rel="stylesheet" /> -->
    <!-- <link href="css/app/cover.css" rel="stylesheet" /> -->
    <!-- <link href="css/app/chat.css" rel="stylesheet" /> -->
    <!-- <link href="css/app/charts.css" rel="stylesheet" /> -->
    <!-- <link href="css/app/maps.css" rel="stylesheet" /> -->
    <!-- <link href="css/app/colors-alerts.css" rel="stylesheet" /> -->
    <!-- <link href="css/app/colors-background.css" rel="stylesheet" /> -->
    <!-- <link href="css/app/colors-buttons.css" rel="stylesheet" /> -->
    <!-- <link href="css/app/colors-calendar.css" rel="stylesheet" /> -->
    <!-- <link href="css/app/colors-progress-bars.css" rel="stylesheet" /> -->
    <!-- <link href="css/app/colors-text.css" rel="stylesheet" /> -->
    <!-- <link href="css/app/ui.css" rel="stylesheet" /> -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries
  WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!-- If you don't need support for Internet Explorer <= 8 you can safely remove these -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<!-- Wrapper required for sidebar transitions -->
<div class="st-container">

    <!-- Fixed navbar -->
    <div class="navbar navbar-main navbar-default navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="#sidebar-menu" data-effect="st-effect-1" data-toggle="sidebar-menu" class="toggle pull-left visible-xs"><i class="fa fa-bars"></i></a>
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="#sidebar-chat" data-toggle="sidebar-menu" data-effect="st-effect-1" class="toggle pull-right visible-xs "><i class="fa fa-comments"></i></a>
                <a class="navbar-brand navbar-brand-primary hidden-xs" href="index.jsp">Home</a>
            </div>
            <div class="collapse navbar-collapse" id="main-nav">
                <ul class="nav navbar-nav hidden-xs">
                    <!-- messages -->
                    <li class="dropdown notifications hidden-xs hidden-sm">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>

                        </a>
                        <ul class="dropdown-menu">
                            <li class="media">
                                <div class="media-left">
                                    <a href="#">
                                        <img class="media-object thumb" src="resources/images/guy-2.jpg" alt="people">
                                    </a>
                                </div>
                                <div class="media-body">
                                    <div class="pull-right">
                                        <span class="label label-default">5 min</span>
                                    </div>
                                    <h5 class="media-heading">Adrian D.</h5>

                                    <p class="margin-none">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                </div>
                            </li>
                            <li class="media">
                                <div class="media-left">
                                    <a href="#">
                                        <img class="media-object thumb" src="resources/images/woman-7.jpg" alt="people">
                                    </a>
                                </div>

                                <div class="media-body">
                                    <div class="pull-right">
                                        <span class="label label-default">2 days</span>
                                    </div>
                                    <h5 class="media-heading">Jane B.</h5>
                                    <p class="margin-none">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                </div>
                            </li>
                            <li class="media">
                                <div class="media-left">
                                    <a href="#">
                                        <img class="media-object thumb" src="resources/images/guy-8.jpg" alt="people">
                                    </a>
                                </div>

                                <div class="media-body">
                                    <div class="pull-right">
                                        <span class="label label-default">3 days</span>
                                    </div>
                                    <h5 class="media-heading">Andrew M.</h5>
                                    <p class="margin-none">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <!-- // END messages -->
                </ul>

                <ul class="nav navbar-nav navbar-user">
                    <!-- User -->
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="resources/images/guy-5.jpg" width="35" alt="Bill" class="img-circle" /> Bill <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="/profile">Profile</a></li>
                            <li><a href="messages.jsp">Messages</a></li>
                            <li><a href="login.jsp">Logout</a></li>
                        </ul>
                    </li>
                </ul>

                <form class="navbar-form margin-none navbar-left hidden-xs ">
                    <!-- Search -->
                    <div class="search-1">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="icon-search"></i></span>
                            <input type="text" class="form-control" placeholder="Search a friend">
                        </div>
                    </div>
                    <div class="pull-left visible-md visible-lg" data-toggle="tooltip" data-placement="bottom" title="A few Color Examples. Download includes CSS Files for all color examples & the tools to Generate any Color combination. This Color-Switcher is for previewing purposes only.">
                        <ul class="skins">

                            <li><span data-file="app/app" data-skin="default" style="background: #16ae9f "></span></li>

                            <li><span data-file="skin-orange" data-skin="orange" style="background: #e74c3c "></span></li>

                            <li><span data-file="skin-blue" data-skin="blue" style="background: #4687ce "></span></li>

                            <li><span data-file="skin-purple" data-skin="purple" style="background: #af86b9 "></span></li>

                            <li><span data-file="skin-brown" data-skin="brown" style="background: #c3a961 "></span></li>

                        </ul>
                    </div>
                </form>

                <ul class="nav navbar-nav navbar-right hidden-xs">
                    <li class="pull-right">
                        <a href="#sidebar-chat" data-effect="st-effect-1" data-toggle="sidebar-menu">
                            <i class="fa fa-comments"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <!-- Sidebar component with st-effect-1 (set on the toggle button within the navbar) -->
    <div class="sidebar left sidebar-size-2 sidebar-offset-0 sidebar-visible-desktop sidebar-visible-mobile sidebar-skin-dark" id="sidebar-menu" data-type="collapse">
        <div data-scrollable>
            <ul class="sidebar-menu">
                <li><a href="../../../index.jsp"><i class="icon-paint-brush"></i> <span>Themes</span></a></li>
                <li class="category">Navigation</li>
                <li class="hasSubmenu open">
                    <a href="#timeline"><i class="icon-ship-wheel"></i> <span>Timeline</span></a>
                    <ul class="in" id="timeline">
                        <li class="active"><a href="index.jsp"><i class="fa fa-circle-o"></i> <span>Blocks</span></a></li>
                        <li><a href="timeline-list.html"><i class="fa fa-circle-o"></i> <span>Listing</span></a></li>
                    </ul>
                </li>
                <li class=""><a href="/profile"><i class="icon-user-1"></i> <span>Profile</span></a></li>
                <li class=""><a href="users.jsp"><i class="fa fa-group"></i> <span>Users</span></a></li>
                <li class=""><a href="messages.jsp"><i class="icon-comment-fill-1"></i> <span>Messages</span></a></li>
                <li><a href="login.jsp"><i class="icon-lock-fill"></i> <span>Login</span></a></li>
                <li class="hasSubmenu">
                    <a href="#components"><i class="icon-paint-brushes"></i> <span>UI Components</span></a>
                    <ul id="components">
                        <li><a href="essential-buttons.html"><i class="fa fa-circle-o"></i> <span>Buttons</span></a></li>
                        <li><a href="essential-icons.html"><i class="fa fa-circle-o"></i> <span>Icons</span></a></li>
                        <li><a href="essential-progress.html"><i class="fa fa-circle-o"></i> <span>Progress</span></a></li>
                        <li><a href="essential-grid.html"><i class="fa fa-circle-o"></i> <span>Grid</span></a></li>
                        <li><a href="essential-forms.html"><i class="fa fa-circle-o"></i> <span>Forms</span></a></li>
                        <li><a href="essential-tables.html"><i class="fa fa-circle-o"></i> <span>Tables</span></a></li>
                        <li><a href="essential-tabs.html"><i class="fa fa-circle-o"></i> <span>Tabs</span></a></li>
                    </ul>
                </li>
                <!-- Sample 2 Level Collapse -->
                <li class="hasSubmenu">
                    <a href="#submenu"><i class="fa fa-chevron-circle-down"></i> <span>Collapse</span></a>
                    <ul id="submenu">
                        <li class="hasSubmenu">
                            <a href="#submenu-1"><i class="fa fa-circle-o"></i> Submenu</a>
                            <ul id="submenu-1">
                                <li><a href="#">Regular Link</a></li>
                            </ul>
                        </li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> Regular Link</a></li>
                    </ul>
                </li>
            </ul>
            <h4 class="category border top">News Feeds</h4>
            <div class="sidebar-block">
                <ul class="sidebar-feed">
                    <li class="media">
                        <div class="media-left">
                <span class="media-object">
                            <i class="fa fa-fw fa-bell"></i>
                        </span>
                        </div>
                        <div class="media-body">
                            <a href="" class="text-white">Adrian</a> just logged in
                            <span class="time">2 min ago</span>
                        </div>
                        <div class="media-right">
                            <span class="news-item-success"><i class="fa fa-circle"></i></span>
                        </div>
                    </li>
                    <li class="media">

                        <div class="media-left">
                <span class="media-object">
                            <i class="fa fa-fw fa-bell"></i>
                        </span>
                        </div>
                        <div class="media-body">
                            <a href="" class="text-white">Adrian</a> just added <a href="" class="text-white">mosaicpro</a> as their office
                            <span class="time">2 min ago</span>
                        </div>
                        <div class="media-right">
                            <span class="news-item-success"><i class="fa fa-circle"></i></span>
                        </div>
                    </li>
                    <li class="media">
                        <div class="media-left">
                <span class="media-object">
                            <i class="fa fa-fw fa-bell"></i>
                        </span>
                        </div>
                        <div class="media-body">
                            <a href="" class="text-white">Adrian</a> just logged in
                            <span class="time">2 min ago</span>
                        </div>
                    </li>
                    <li class="media">
                        <div class="media-left">
                <span class="media-object">
                            <i class="fa fa-fw fa-bell"></i>
                        </span>
                        </div>
                        <div class="media-body">
                            <a href="" class="text-white">Adrian</a> just logged in
                            <span class="time">2 min ago</span>
                        </div>
                    </li>
                    <li class="media">
                        <div class="media-left">
                <span class="media-object">
                            <i class="fa fa-fw fa-bell"></i>
                        </span>
                        </div>
                        <div class="media-body">
                            <a href="" class="text-white">Adrian</a> just logged in
                            <span class="time">2 min ago</span>
                        </div>
                    </li>
                </ul>
            </div>
            <h4 class="category">Filter</h4>
            <div class="sidebar-block">
                <ul>
                    <li><a href="#" class="sidebar-link"><span class="fa fa-fw fa-circle-o text-success"></span> Work Related</a></li>
                    <li><a href="#" class="sidebar-link"><span class="fa fa-fw fa-circle-o text-danger"></span> Very Important</a></li>
                    <li><a href="#" class="sidebar-link"><span class="fa fa-fw fa-circle-o text-info"></span> Friends &amp; Family</a></li>
                    <li><a href="#" class="sidebar-link"><span class="fa fa-fw fa-circle-o text-primary"></span> Other</a></li>
                </ul>
            </div>
        </div>
    </div>

    <!-- Sidebar component with st-effect-1 (set on the toggle button within the navbar) -->
    <div class="sidebar sidebar-chat right sidebar-size-2 sidebar-offset-0 chat-skin-white sidebar-visible-mobile" id=sidebar-chat>
        <div class="split-vertical">
            <div class="chat-search">
                <input type="text" class="form-control" placeholder="Search" />
            </div>

            <ul class="chat-filter nav nav-pills ">
                <li class="active"><a href="#" data-target="li">All</a></li>
                <li><a href="#" data-target=".online">Online</a></li>
                <li><a href="#" data-target=".offline">Offline</a></li>
            </ul>
            <div class="split-vertical-body">
                <div class="split-vertical-cell">
                    <div data-scrollable>
                        <ul class="chat-contacts">
                            <li class="online" data-user-id="1">
                                <a href="#">
                                    <div class="media">
                                        <div class="pull-left">
                                            <span class="status"></span>
                                            <img src="resources/images/guy-6.jpg" width="40" class="img-circle" />
                                        </div>
                                        <div class="media-body">

                                            <div class="contact-name">Jonathan S.</div>
                                            <small>"Free Today"</small>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li class="online away" data-user-id="2">
                                <a href="#">

                                    <div class="media">
                                        <div class="pull-left">
                                            <span class="status"></span>
                                            <img src="resources/images/woman-5.jpg" width="40" class="img-circle" />
                                        </div>
                                        <div class="media-body">
                                            <div class="contact-name">Mary A.</div>
                                            <small>"Feeling Groovy"</small>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="online" data-user-id="3">
                                <a href="#">
                                    <div class="media">
                                        <div class="pull-left ">
                                            <span class="status"></span>
                                            <img src="resources/images/guy-3.jpg" width="40" class="img-circle" />
                                        </div>
                                        <div class="media-body">
                                            <div class="contact-name">Adrian D.</div>
                                            <small>Busy</small>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="offline" data-user-id="4">
                                <a href="#">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img src="resources/images/woman-6.jpg" width="40" class="img-circle" />
                                        </div>
                                        <div class="media-body">
                                            <div class="contact-name">Michelle S.</div>
                                            <small>Offline</small>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="offline" data-user-id="5">
                                <a href="#">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img src="resources/images/woman-7.jpg" width="40" class="img-circle" />
                                        </div>
                                        <div class="media-body">
                                            <div class="contact-name">Daniele A.</div>
                                            <small>Offline</small>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="online" data-user-id="6">
                                <a href="#">
                                    <div class="media">
                                        <div class="pull-left">
                                            <span class="status"></span>
                                            <img src="resources/images/guy-4.jpg" width="40" class="img-circle" />
                                        </div>
                                        <div class="media-body">
                                            <div class="contact-name">Jake F.</div>
                                            <small>Busy</small>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="online away" data-user-id="7">
                                <a href="#">
                                    <div class="media">
                                        <div class="pull-left">
                                            <span class="status"></span>
                                            <img src="resources/images/woman-6.jpg" width="40" class="img-circle" />
                                        </div>
                                        <div class="media-body">
                                            <div class="contact-name">Jane A.</div>
                                            <small>"Custom Status"</small>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="offline" data-user-id="8">
                                <a href="#">
                                    <div class="media">
                                        <div class="pull-left">
                                            <span class="status"></span>
                                            <img src="resources/images/woman-8.jpg" width="40" class="img-circle" />
                                        </div>
                                        <div class="media-body">
                                            <div class="contact-name">Sabine J.</div>
                                            <small>"Offline right now"</small>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="online away" data-user-id="9">
                                <a href="#">
                                    <div class="media">
                                        <div class="pull-left">
                                            <span class="status"></span>
                                            <img src="resources/images/woman-9.jpg" width="40" class="img-circle" />
                                        </div>
                                        <div class="media-body">
                                            <div class="contact-name">Danny B.</div>
                                            <small>Be Right Back</small>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="online" data-user-id="10">
                                <a href="#">
                                    <div class="media">
                                        <div class="pull-left">
                                            <span class="status"></span>
                                            <img src="resources/images/woman-8.jpg" width="40" class="img-circle" />
                                        </div>
                                        <div class="media-body">
                                            <div class="contact-name">Elise J.</div>
                                            <small>My Status</small>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="online" data-user-id="11">
                                <a href="#">
                                    <div class="media">
                                        <div class="pull-left">
                                            <span class="status"></span>
                                            <img src="resources/images/guy-3.jpg" width="40" class="img-circle" />
                                        </div>
                                        <div class="media-body">
                                            <div class="contact-name">John J.</div>
                                            <small>My Status #1</small>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
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

                    <div class="cover profile">
                        <div class="wrapper">
                            <div class="image">
                                <img src="resources/images/profile-cover.jpg" alt="people" />
                            </div>
                            <ul class="friends">
                                <li>
                                    <a href="#">
                                        <img src="resources/images/guy-6.jpg" alt="people" class="img-responsive">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="resources/images/woman-3.jpg" alt="people" class="img-responsive">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="resources/images/guy-2.jpg" alt="people" class="img-responsive">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="resources/images/guy-9.jpg" alt="people" class="img-responsive">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="resources/images/woman-9.jpg" alt="people" class="img-responsive">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="resources/images/guy-4.jpg" alt="people" class="img-responsive">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="resources/images/guy-1.jpg" alt="people" class="img-responsive">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="resources/images/woman-4.jpg" alt="people" class="img-responsive">
                                    </a>
                                </li>
                                <li><a href="#" class="group"><i class="fa fa-group"></i></a></li>
                            </ul>
                        </div>
                        <div class="cover-info">
                            <div class="avatar">
                                <img src="resources/images/guy-5.jpg" alt="people" />
                            </div>
                            <div class="name"><a href="#">Bill Demian</a></div>
                            <ul class="cover-nav">

                                <li class="active"><a href="index.jsp"><i class="fa fa-fw icon-ship-wheel"></i> Home</a></li>
                                <li><a href="/profile"><i class="fa fa-fw icon-user-1"></i> About</a></li>
                                <li><a href="users.jsp"><i class="fa fa-fw fa-users"></i> Friends</a></li>

                            </ul>
                        </div>
                    </div>
                    <div class="timeline row" data-toggle="isotope">
                        <div class="col-xs-12 col-md-6 col-lg-4 item">
                            <div class="timeline-block">
                                <div class="panel panel-default share clearfix-xs">
                                    <div class="panel-heading panel-heading-gray title">
                                        What&acute;s new
                                    </div>
                                    <div class="panel-body">
                                        <textarea name="status" class="form-control share-text" rows="3" placeholder="Share your status..."></textarea>
                                    </div>
                                    <div class="panel-footer share-buttons">
                                        <a href="#"><i class="fa fa-map-marker"></i></a>
                                        <a href="#"><i class="fa fa-photo"></i></a>
                                        <a href="#"><i class="fa fa-video-camera"></i></a>
                                        <button type="submit" class="btn btn-primary btn-xs pull-right display-none" href="#">Post</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6 col-lg-4 item">
                            <div class="timeline-block">
                                <div class="panel panel-default relative">
                                    <img src="resources/images/place2-full.jpg" alt="place" class="img-responsive">
                                    <div class="panel-body panel-boxed text-center">
                                        <div class="rating">
                                            <span class="star"></span>
                                            <span class="star filled"></span>
                                            <span class="star filled"></span>
                                            <span class="star filled"></span>
                                            <span class="star filled"></span>
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                        <img src="resources/images/guy-2.jpg" alt="people" class="img-circle" />
                                        <img src="resources/images/woman-2.jpg" alt="people" class="img-circle" />
                                        <img src="resources/images/guy-3.jpg" alt="people" class="img-circle" />
                                        <img src="resources/images/woman-3.jpg" alt="people" class="img-circle" />
                                        <a href="#" class="user-count-circle">12+</a>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6 col-lg-4 item">
                            <div class="timeline-block">
                                <div class="panel panel-default">

                                    <div class="panel-heading">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="">
                                                    <img src="resources/images/woman-6.jpg" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <a href="#" class="pull-right text-muted"><i class="icon-reply-all-fill fa fa-2x "></i></a>

                                                <a href="">Michelle</a>

                                                <span>on 15th January, 2014</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel-body">
                                        <p>Late Night Show Photos</p>
                                        <div class="timeline-added-images">
                                            <img src="resources/images/1.jpg" width="80" alt="photo" />
                                            <img src="resources/images/2.jpg" width="80" alt="photo" />
                                            <img src="resources/images/3.jpg" width="80" alt="photo" />
                                        </div>
                                    </div>
                                    <div class="view-all-comments">
                                        <a href="#">
                                            <i class="fa fa-comments-o"></i> View all
                                        </a>
                                        <span>10 comments</span>

                                    </div>
                                    <ul class="comments">
                                        <li class="media">
                                            <div class="media-left">
                                                <a href="">
                                                    <img src="resources/images/guy-5.jpg" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <div class="pull-right dropdown" data-show-hover="li">
                                                    <a href="#" data-toggle="dropdown" class="toggle-button">
                                                        <i class="fa fa-pencil"></i>
                                                    </a>
                                                    <ul class="dropdown-menu" role="menu">
                                                        <li><a href="#">Edit</a></li>
                                                        <li><a href="#">Delete</a></li>
                                                    </ul>
                                                </div>
                                                <a href="" class="comment-author pull-left">Bill D.</a>
                                                <span>Hi Mary, Nice Party</span>
                                                <div class="comment-date">21st September</div>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <div class="media-left">
                                                <a href="">
                                                    <img src="resources/images/woman-5.jpg" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <div class="pull-right dropdown" data-show-hover="li">
                                                    <a href="#" data-toggle="dropdown" class="toggle-button">
                                                        <i class="fa fa-pencil"></i>
                                                    </a>
                                                    <ul class="dropdown-menu" role="menu">
                                                        <li><a href="#">Edit</a></li>
                                                        <li><a href="#">Delete</a></li>
                                                    </ul>
                                                </div>
                                                <a href="" class="comment-author pull-left">Mary</a>
                                                <span>Thanks Bill</span>
                                                <div class="comment-date">2 days</div>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <div class="media-left">
                                                <a href="">
                                                    <img src="resources/images/guy-5.jpg" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <div class="pull-right dropdown" data-show-hover="li">
                                                    <a href="#" data-toggle="dropdown" class="toggle-button">
                                                        <i class="fa fa-pencil"></i>
                                                    </a>
                                                    <ul class="dropdown-menu" role="menu">
                                                        <li><a href="#">Edit</a></li>
                                                        <li><a href="#">Delete</a></li>
                                                    </ul>
                                                </div>
                                                <a href="" class="comment-author pull-left">Bill D.</a>
                                                <span>What time did it finish?</span>
                                                <div class="comment-date">14 min</div>
                                            </div>
                                        </li>
                                        <li class="comment-form">
                                            <div class="input-group">

                          <span class="input-group-btn">
                   <a href="" class="btn btn-default"><i class="fa fa-photo"></i></a>
                </span>

                                                <input type="text" class="form-control" />

                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6 col-lg-4 item">
                            <div class="timeline-block">
                                <div class="panel panel-default">

                                    <div class="panel-heading">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="">
                                                    <img src="resources/images/guy-6.jpg" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <a href="#" class="pull-right text-muted"><i class="icon-reply-all-fill fa fa-2x "></i></a>

                                                <a href="">Jonathan</a>

                                                <span>on 15th January, 2014</span>
                                            </div>
                                        </div>
                                    </div>

                                    <img src="resources/images/place1-full.jpg" class="img-responsive">
                                    <ul class="comments">
                                        <li clas="media">
                                            <div class="media-left">
                                                <a href="">
                                                    <img src="resources/images/woman-5.jpg" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <div class="pull-right dropdown" data-show-hover="li">
                                                    <a href="#" data-toggle="dropdown" class="toggle-button">
                                                        <i class="fa fa-pencil"></i>
                                                    </a>
                                                    <ul class="dropdown-menu" role="menu">
                                                        <li><a href="#">Edit</a></li>
                                                        <li><a href="#">Delete</a></li>
                                                    </ul>
                                                </div>
                                                <a href="" class="comment-author">Mary</a>
                                                <span>Wow</span>
                                                <div class="comment-date">2 days</div>
                                            </div>
                                        </li>
                                        <li class="comment-form">
                                            <div class="input-group">

                                                <input type="text" class="form-control" />

                                                <span class="input-group-btn">
                   <a href="" class="btn btn-default"><i class="fa fa-photo"></i></a>
                </span>

                                            </div>
                                        </li>
                                    </ul>
                                </div>

                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6 col-lg-4 item">
                            <div class="timeline-block">
                                <div class="panel panel-default">

                                    <div class="panel-heading">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="">
                                                    <img src="resources/images/woman-3.jpg" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <a href="#" class="pull-right text-muted"><i class="icon-reply-all-fill fa fa-2x "></i></a>

                                                <a href="">Michelle</a>

                                                <span>on 15th January, 2014</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel-body text-muted">
                                        <i class="fa fa-map-marker"></i> Was in <a href="#">Brooklyn, New York</a>
                                    </div>

                                    <div class="relative height-300">
                                        <div data-toggle="google-maps" class="maps-google-fs" data-center="40.776928,-73.910330" data-zoom="12" data-style="paper"></div>
                                    </div>

                                    <div class="view-all-comments">
                                        <a href="#">
                                            <i class="fa fa-comments-o"></i> View all
                                        </a>
                                        <span>10 comments</span>

                                    </div>
                                    <ul class="comments">
                                        <li class="media">
                                            <div class="media-left">
                                                <a href="">
                                                    <img src="resources/images/guy-5.jpg" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <div class="pull-right dropdown" data-show-hover="li">
                                                    <a href="#" data-toggle="dropdown" class="toggle-button">
                                                        <i class="fa fa-pencil"></i>
                                                    </a>
                                                    <ul class="dropdown-menu" role="menu">
                                                        <li><a href="#">Edit</a></li>
                                                        <li><a href="#">Delete</a></li>
                                                    </ul>
                                                </div>
                                                <a href="" class="comment-author pull-left">Bill D.</a>
                                                <span>Hi Mary, Nice Party</span>
                                                <div class="comment-date">21st September</div>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <div class="media-left">
                                                <a href="">
                                                    <img src="resources/images/woman-5.jpg" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <div class="pull-right dropdown" data-show-hover="li">
                                                    <a href="#" data-toggle="dropdown" class="toggle-button">
                                                        <i class="fa fa-pencil"></i>
                                                    </a>
                                                    <ul class="dropdown-menu" role="menu">
                                                        <li><a href="#">Edit</a></li>
                                                        <li><a href="#">Delete</a></li>
                                                    </ul>
                                                </div>
                                                <a href="" class="comment-author pull-left">Mary</a>
                                                <span>Thanks Bill</span>
                                                <div class="comment-date">2 days</div>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <div class="media-left">
                                                <a href="">
                                                    <img src="resources/images/guy-5.jpg" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <div class="pull-right dropdown" data-show-hover="li">
                                                    <a href="#" data-toggle="dropdown" class="toggle-button">
                                                        <i class="fa fa-pencil"></i>
                                                    </a>
                                                    <ul class="dropdown-menu" role="menu">
                                                        <li><a href="#">Edit</a></li>
                                                        <li><a href="#">Delete</a></li>
                                                    </ul>
                                                </div>
                                                <a href="" class="comment-author pull-left">Bill D.</a>
                                                <span>What time did it finish?</span>
                                                <div class="comment-date">14 min</div>
                                            </div>
                                        </li>
                                        <li class="comment-form">
                                            <div class="input-group">

                          <span class="input-group-btn">
                   <a href="" class="btn btn-default"><i class="fa fa-photo"></i></a>
                </span>

                                                <input type="text" class="form-control" />

                                            </div>
                                        </li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6 col-lg-4 item">
                            <div class="timeline-block">
                                <div class="panel panel-default">

                                    <div class="panel-heading">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="">
                                                    <img src="resources/images/guy-5.jpg" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <a href="#" class="pull-right text-muted"><i class="icon-reply-all-fill fa fa-2x "></i></a>

                                                <a href="">Jonathan</a>

                                                <span>on 15th January, 2014</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel-body">
                                        Amazing 3D Animation
                                    </div>
                                    <!-- 4:3 aspect ratio -->
                                    <div class="embed-responsive embed-responsive-4by3">
                                        <iframe class="embed-responsive-item" src="//player.vimeo.com/video/50522981?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff"></iframe>
                                    </div>

                                    <div class="view-all-comments"><i class="fa fa-comments-o"></i> Be the first to comment</div>
                                    <ul class="comments">
                                        <li class="comment-form">
                                            <div class="input-group">

                                                <input type="text" class="form-control" />

                                                <span class="input-group-btn">
                   <a href="" class="btn btn-default"><i class="fa fa-photo"></i></a>
                </span>

                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6 col-lg-4 item">
                            <div class="timeline-block">
                                <div class="panel panel-default">

                                    <div class="panel-heading">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="">
                                                    <img src="resources/images/woman-4.jpg" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <a href="#" class="pull-right text-muted"><i class="icon-reply-all-fill fa fa-2x "></i></a>

                                                <a href="">Michelle</a>

                                                <span>on 15th January, 2014</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="weather-svg">
                                        <div class="list">
                                            <div class="list-item">
                                                <div class="text-h6">Today</div>
                                                <svg version="1.1" id="cloudDrizzleSunFill" class="climacon climacon_cloudDrizzleSunFill" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="15 15 70 70" enable-background="new 15 15 70 70" xml:space="preserve">
                            <g class="climacon_iconWrap climacon_iconWrap-cloudDrizzleSunFill">
                              <g class="climacon_componentWrap climacon_componentWrap-sun climacon_componentWrap-sun_cloud">
                                <g class="climacon_componentWrap climacon_componentWrap_sunSpoke">
                                  <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M80.029,43.611h-3.998c-1.105,0-2-0.896-2-1.999s0.895-2,2-2h3.998c1.104,0,2,0.896,2,2S81.135,43.611,80.029,43.611z"
                                  />
                                  <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M72.174,30.3c-0.781,0.781-2.049,0.781-2.828,0c-0.781-0.781-0.781-2.047,0-2.828l2.828-2.828c0.779-0.781,2.047-0.781,2.828,0c0.779,0.781,0.779,2.047,0,2.828L72.174,30.3z"
                                  />
                                  <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M58.033,25.614c-1.105,0-2-0.896-2-2v-3.999c0-1.104,0.895-2,2-2c1.104,0,2,0.896,2,2v3.999C60.033,24.718,59.135,25.614,58.033,25.614z"
                                  />
                                  <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M43.892,30.3l-2.827-2.828c-0.781-0.781-0.781-2.047,0-2.828c0.78-0.781,2.047-0.781,2.827,0l2.827,2.828c0.781,0.781,0.781,2.047,0,2.828C45.939,31.081,44.673,31.081,43.892,30.3z"
                                  />
                                  <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M42.033,41.612c0,1.104-0.896,1.999-2,1.999h-4c-1.104,0-1.998-0.896-1.998-1.999s0.896-2,1.998-2h4C41.139,39.612,42.033,40.509,42.033,41.612z"
                                  />
                                  <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M43.892,52.925c0.781-0.78,2.048-0.78,2.827,0c0.781,0.78,0.781,2.047,0,2.828l-2.827,2.827c-0.78,0.781-2.047,0.781-2.827,0c-0.781-0.78-0.781-2.047,0-2.827L43.892,52.925z"
                                  />
                                  <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M58.033,57.61c1.104,0,2,0.895,2,1.999v4c0,1.104-0.896,2-2,2c-1.105,0-2-0.896-2-2v-4C56.033,58.505,56.928,57.61,58.033,57.61z"
                                  />
                                  <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M72.174,52.925l2.828,2.828c0.779,0.78,0.779,2.047,0,2.827c-0.781,0.781-2.049,0.781-2.828,0l-2.828-2.827c-0.781-0.781-0.781-2.048,0-2.828C70.125,52.144,71.391,52.144,72.174,52.925z"
                                  />
                                </g>
                                <g class="climacon_componentWrap climacon_componentWrap-sunBody">
                                  <circle class="climacon_component climacon_component-stroke climacon_component-stroke_sunBody" cx="58.033" cy="41.612" r="11.999" />
                                  <circle class="climacon_component climacon_component-fill climacon_component-fill_sunBody" fill="#FFFFFF" cx="58.033" cy="41.612" r="7.999" />
                                </g>
                              </g>
                              <g class="climacon_componentWrap climacon_componentWrap-drizzle">
                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_drizzle climacon_component-stroke_drizzle-left" d="M42.001,53.644c1.104,0,2,0.896,2,2v3.998c0,1.105-0.896,2-2,2c-1.105,0-2.001-0.895-2.001-2v-3.998C40,54.538,40.896,53.644,42.001,53.644z"
                                />
                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_drizzle climacon_component-stroke_drizzle-middle" d="M49.999,53.644c1.104,0,2,0.896,2,2v4c0,1.104-0.896,2-2,2s-1.998-0.896-1.998-2v-4C48.001,54.54,48.896,53.644,49.999,53.644z"
                                />
                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_drizzle climacon_component-stroke_drizzle-right" d="M57.999,53.644c1.104,0,2,0.896,2,2v3.998c0,1.105-0.896,2-2,2c-1.105,0-2-0.895-2-2v-3.998C55.999,54.538,56.894,53.644,57.999,53.644z"
                                />
                              </g>

                              <g class="climacon_componentWrap climacon_componentWrap_cloud">
                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_cloud" d="M43.945,65.639c-8.835,0-15.998-7.162-15.998-15.998c0-8.836,7.163-15.998,15.998-15.998c6.004,0,11.229,3.312,13.965,8.203c0.664-0.113,1.338-0.205,2.033-0.205c6.627,0,11.998,5.373,11.998,12c0,6.625-5.371,11.998-11.998,11.998C57.168,65.639,47.143,65.639,43.945,65.639z"
                                />
                                <path class="climacon_component climacon_component-fill climacon_component-fill_cloud" fill="#FFFFFF" d="M59.943,61.639c4.418,0,8-3.582,8-7.998c0-4.417-3.582-8-8-8c-1.601,0-3.082,0.481-4.334,1.291c-1.23-5.316-5.973-9.29-11.665-9.29c-6.626,0-11.998,5.372-11.998,11.999c0,6.626,5.372,11.998,11.998,11.998C47.562,61.639,56.924,61.639,59.943,61.639z"
                                />
                              </g>
                            </g>
                          </svg>
                                                <!-- cloudDrizzleSunFill -->

                                            </div>
                                            <div class="list-item">
                                                <div class="text-h6">Tomorrow</div>
                                                <svg version="1.1" id="sun" class="climacon climacon_sun" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="15 15 70 70" enable-background="new 15 15 70 70" xml:space="preserve">
                            <clipPath id="svgs/sunFillClip">
                              <path d="M0,0v100h100V0H0z M50.001,57.999c-4.417,0-8-3.582-8-7.999c0-4.418,3.582-7.999,8-7.999s7.998,3.581,7.998,7.999C57.999,54.417,54.418,57.999,50.001,57.999z" />
                            </clipPath>
                            <g class="climacon_iconWrap climacon_iconWrap-sun">
                              <g class="climacon_componentWrap climacon_componentWrap-sun">
                                <g class="climacon_componentWrap climacon_componentWrap-sunSpoke">
                                  <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-east" d="M72.03,51.999h-3.998c-1.105,0-2-0.896-2-1.999s0.895-2,2-2h3.998c1.104,0,2,0.896,2,2S73.136,51.999,72.03,51.999z" />
                                  <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-northEast" d="M64.175,38.688c-0.781,0.781-2.049,0.781-2.828,0c-0.781-0.781-0.781-2.047,0-2.828l2.828-2.828c0.779-0.781,2.047-0.781,2.828,0c0.779,0.781,0.779,2.047,0,2.828L64.175,38.688z"
                                  />
                                  <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M50.034,34.002c-1.105,0-2-0.896-2-2v-3.999c0-1.104,0.895-2,2-2c1.104,0,2,0.896,2,2v3.999C52.034,33.106,51.136,34.002,50.034,34.002z"
                                  />
                                  <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-northWest" d="M35.893,38.688l-2.827-2.828c-0.781-0.781-0.781-2.047,0-2.828c0.78-0.781,2.047-0.781,2.827,0l2.827,2.828c0.781,0.781,0.781,2.047,0,2.828C37.94,39.469,36.674,39.469,35.893,38.688z"
                                  />
                                  <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-west" d="M34.034,50c0,1.104-0.896,1.999-2,1.999h-4c-1.104,0-1.998-0.896-1.998-1.999s0.896-2,1.998-2h4C33.14,48,34.034,48.896,34.034,50z"
                                  />
                                  <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-southWest" d="M35.893,61.312c0.781-0.78,2.048-0.78,2.827,0c0.781,0.78,0.781,2.047,0,2.828l-2.827,2.827c-0.78,0.781-2.047,0.781-2.827,0c-0.781-0.78-0.781-2.047,0-2.827L35.893,61.312z"
                                  />
                                  <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-south" d="M50.034,65.998c1.104,0,2,0.895,2,1.999v4c0,1.104-0.896,2-2,2c-1.105,0-2-0.896-2-2v-4C48.034,66.893,48.929,65.998,50.034,65.998z"
                                  />
                                  <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-southEast" d="M64.175,61.312l2.828,2.828c0.779,0.78,0.779,2.047,0,2.827c-0.781,0.781-2.049,0.781-2.828,0l-2.828-2.827c-0.781-0.781-0.781-2.048,0-2.828C62.126,60.531,63.392,60.531,64.175,61.312z"
                                  />
                                </g>
                                <g class="climacon_componentWrap climacon_componentWrap_sunBody" clip-path="url(#sunFillClip)">
                                  <circle class="climacon_component climacon_component-stroke climacon_component-stroke_sunBody" cx="50.034" cy="50" r="11.999" />
                                </g>
                              </g>
                            </g>
                          </svg>
                                                <!-- sun -->
                                            </div>
                                            <div class="list-item">
                                                <div class="text-h6">Saturday</div>

                                                <svg version="1.1" id="cloudRainFill" class="climacon climacon_cloudRainFill" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="15 15 70 70" enable-background="new 15 15 70 70" xml:space="preserve">
                            <g class="climacon_iconWrap climacon_iconWrap-cloudRainFill">
                              <g class="climacon_componentWrap climacon_componentWrap-rain">
                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_rain climacon_component-stroke_rain- left" d="M41.946,53.641c1.104,0,1.999,0.896,1.999,2v15.998c0,1.105-0.895,2-1.999,2s-2-0.895-2-2V55.641C39.946,54.537,40.842,53.641,41.946,53.641z"
                                />
                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_rain climacon_component-stroke_rain- middle" d="M49.945,57.641c1.104,0,2,0.896,2,2v15.998c0,1.104-0.896,2-2,2s-2-0.896-2-2V59.641C47.945,58.535,48.841,57.641,49.945,57.641z"
                                />
                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_rain climacon_component-stroke_rain- right" d="M57.943,53.641c1.104,0,2,0.896,2,2v15.998c0,1.105-0.896,2-2,2c-1.104,0-2-0.895-2-2V55.641C55.943,54.537,56.84,53.641,57.943,53.641z"
                                />
                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_rain climacon_component-stroke_rain- left" d="M41.946,53.641c1.104,0,1.999,0.896,1.999,2v15.998c0,1.105-0.895,2-1.999,2s-2-0.895-2-2V55.641C39.946,54.537,40.842,53.641,41.946,53.641z"
                                />
                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_rain climacon_component-stroke_rain- middle" d="M49.945,57.641c1.104,0,2,0.896,2,2v15.998c0,1.104-0.896,2-2,2s-2-0.896-2-2V59.641C47.945,58.535,48.841,57.641,49.945,57.641z"
                                />
                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_rain climacon_component-stroke_rain- right" d="M57.943,53.641c1.104,0,2,0.896,2,2v15.998c0,1.105-0.896,2-2,2c-1.104,0-2-0.895-2-2V55.641C55.943,54.537,56.84,53.641,57.943,53.641z"
                                />
                              </g>
                              <g class="climacon_componentWrap climacon_componentWrap_cloud">
                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_cloud" d="M43.945,65.639c-8.835,0-15.998-7.162-15.998-15.998c0-8.836,7.163-15.998,15.998-15.998c6.004,0,11.229,3.312,13.965,8.203c0.664-0.113,1.338-0.205,2.033-0.205c6.627,0,11.998,5.373,11.998,12c0,6.625-5.371,11.998-11.998,11.998C57.168,65.639,47.143,65.639,43.945,65.639z"
                                />
                                <path class="climacon_component climacon_component-fill climacon_component-fill_cloud" fill="#FFFFFF" d="M59.943,61.639c4.418,0,8-3.582,8-7.998c0-4.417-3.582-8-8-8c-1.601,0-3.082,0.481-4.334,1.291c-1.23-5.316-5.973-9.29-11.665-9.29c-6.626,0-11.998,5.372-11.998,11.999c0,6.626,5.372,11.998,11.998,11.998C47.562,61.639,56.924,61.639,59.943,61.639z"
                                />
                              </g>
                            </g>
                          </svg>
                                                <!-- cloudRainFill -->

                                            </div>
                                        </div>
                                        <hr class="margin-none" />
                                        <div class="today text-center">
                                            <svg version="1.1" id="cloudDrizzleSunFill" class="climacon climacon_cloudDrizzleSunFill" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="15 15 70 70" enable-background="new 15 15 70 70" xml:space="preserve">
                          <g class="climacon_iconWrap climacon_iconWrap-cloudDrizzleSunFill">
                            <g class="climacon_componentWrap climacon_componentWrap-sun climacon_componentWrap-sun_cloud">
                              <g class="climacon_componentWrap climacon_componentWrap_sunSpoke">
                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M80.029,43.611h-3.998c-1.105,0-2-0.896-2-1.999s0.895-2,2-2h3.998c1.104,0,2,0.896,2,2S81.135,43.611,80.029,43.611z"
                                />
                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M72.174,30.3c-0.781,0.781-2.049,0.781-2.828,0c-0.781-0.781-0.781-2.047,0-2.828l2.828-2.828c0.779-0.781,2.047-0.781,2.828,0c0.779,0.781,0.779,2.047,0,2.828L72.174,30.3z"
                                />
                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M58.033,25.614c-1.105,0-2-0.896-2-2v-3.999c0-1.104,0.895-2,2-2c1.104,0,2,0.896,2,2v3.999C60.033,24.718,59.135,25.614,58.033,25.614z"
                                />
                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M43.892,30.3l-2.827-2.828c-0.781-0.781-0.781-2.047,0-2.828c0.78-0.781,2.047-0.781,2.827,0l2.827,2.828c0.781,0.781,0.781,2.047,0,2.828C45.939,31.081,44.673,31.081,43.892,30.3z"
                                />
                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M42.033,41.612c0,1.104-0.896,1.999-2,1.999h-4c-1.104,0-1.998-0.896-1.998-1.999s0.896-2,1.998-2h4C41.139,39.612,42.033,40.509,42.033,41.612z"
                                />
                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M43.892,52.925c0.781-0.78,2.048-0.78,2.827,0c0.781,0.78,0.781,2.047,0,2.828l-2.827,2.827c-0.78,0.781-2.047,0.781-2.827,0c-0.781-0.78-0.781-2.047,0-2.827L43.892,52.925z"
                                />
                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M58.033,57.61c1.104,0,2,0.895,2,1.999v4c0,1.104-0.896,2-2,2c-1.105,0-2-0.896-2-2v-4C56.033,58.505,56.928,57.61,58.033,57.61z"
                                />
                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M72.174,52.925l2.828,2.828c0.779,0.78,0.779,2.047,0,2.827c-0.781,0.781-2.049,0.781-2.828,0l-2.828-2.827c-0.781-0.781-0.781-2.048,0-2.828C70.125,52.144,71.391,52.144,72.174,52.925z"
                                />
                              </g>
                              <g class="climacon_componentWrap climacon_componentWrap-sunBody">
                                <circle class="climacon_component climacon_component-stroke climacon_component-stroke_sunBody" cx="58.033" cy="41.612" r="11.999" />
                                <circle class="climacon_component climacon_component-fill climacon_component-fill_sunBody" fill="#FFFFFF" cx="58.033" cy="41.612" r="7.999" />
                              </g>
                            </g>
                            <g class="climacon_componentWrap climacon_componentWrap-drizzle">
                              <path class="climacon_component climacon_component-stroke climacon_component-stroke_drizzle climacon_component-stroke_drizzle-left" d="M42.001,53.644c1.104,0,2,0.896,2,2v3.998c0,1.105-0.896,2-2,2c-1.105,0-2.001-0.895-2.001-2v-3.998C40,54.538,40.896,53.644,42.001,53.644z"
                              />
                              <path class="climacon_component climacon_component-stroke climacon_component-stroke_drizzle climacon_component-stroke_drizzle-middle" d="M49.999,53.644c1.104,0,2,0.896,2,2v4c0,1.104-0.896,2-2,2s-1.998-0.896-1.998-2v-4C48.001,54.54,48.896,53.644,49.999,53.644z"
                              />
                              <path class="climacon_component climacon_component-stroke climacon_component-stroke_drizzle climacon_component-stroke_drizzle-right" d="M57.999,53.644c1.104,0,2,0.896,2,2v3.998c0,1.105-0.896,2-2,2c-1.105,0-2-0.895-2-2v-3.998C55.999,54.538,56.894,53.644,57.999,53.644z"
                              />
                            </g>

                            <g class="climacon_componentWrap climacon_componentWrap_cloud">
                              <path class="climacon_component climacon_component-stroke climacon_component-stroke_cloud" d="M43.945,65.639c-8.835,0-15.998-7.162-15.998-15.998c0-8.836,7.163-15.998,15.998-15.998c6.004,0,11.229,3.312,13.965,8.203c0.664-0.113,1.338-0.205,2.033-0.205c6.627,0,11.998,5.373,11.998,12c0,6.625-5.371,11.998-11.998,11.998C57.168,65.639,47.143,65.639,43.945,65.639z"
                              />
                              <path class="climacon_component climacon_component-fill climacon_component-fill_cloud" fill="#FFFFFF" d="M59.943,61.639c4.418,0,8-3.582,8-7.998c0-4.417-3.582-8-8-8c-1.601,0-3.082,0.481-4.334,1.291c-1.23-5.316-5.973-9.29-11.665-9.29c-6.626,0-11.998,5.372-11.998,11.999c0,6.626,5.372,11.998,11.998,11.998C47.562,61.639,56.924,61.639,59.943,61.639z"
                              />
                            </g>
                          </g>
                        </svg>
                                            <!-- cloudDrizzleSunFill -->

                                            <div class="clearfix"></div>
                                            <div class="details">
                                                Today
                                                <strong class="pull-right"> 10&deg; C </strong>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="view-all-comments"><i class="fa fa-comments-o"></i> Be the first to comment</div>
                                    <ul class="comments">
                                        <li class="comment-form">
                                            <div class="input-group">

                                                <input type="text" class="form-control" />

                                                <span class="input-group-btn">
                   <a href="" class="btn btn-default"><i class="fa fa-photo"></i></a>
                </span>

                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6 col-lg-4 item">
                            <div class="timeline-block">
                                <div class="panel panel-default">
                                    <div class="profile-block">
                                        <div class="cover overlay cover-image-full">
                                            <img src="resources/images/place1-full.jpg" alt="cover">
                                            <div class="overlay overlay-full overlay-bg-black">
                                                <div class="v-top v-spacing-2">
                                                    <a href="#" class="icon pull-right">
                                                        <i class="fa fa-comment"></i>
                                                    </a>
                                                    <div class="text-headline text-overlay">Adrian Demian</div>
                                                    <p class="text-overlay">User Interface Designer</p>
                                                </div>
                                                <div class="v-bottom">
                                                    <a href="#">
                                                        <img src="resources/images/guy-6.jpg" alt="people" class="img-circle avatar" />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="profile-icons">
                                            <span><i class="fa fa-users"></i> 372</span> <span><i class="fa fa-photo"></i> 43</span>
                                            <span><i class="fa fa-video-camera"></i> 3 </span>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6 col-lg-4 item">
                            <div class="timeline-block">
                                <div class="panel panel-default event">
                                    <div class="panel-heading title">
                                        Cocktail Party
                                    </div>
                                    <ul class="icon-list icon-list-block">
                                        <li><i class="fa fa-globe"></i> Miami, FL</li>
                                        <li><i class="fa fa-calendar-o"></i> 31st Oct 2014</li>
                                        <li><i class="fa fa-clock-o"></i> 5:50 PM</li>
                                        <li><i class="fa fa-users"></i> 9 Attendees <a href="#" class="btn btn-primary btn-stroke btn-xs pull-right">Attend</a></li>
                                    </ul>
                                    <ul class="img-grid">
                                        <li>
                                            <a href="#">
                                                <img src="resources/images/guy-6.jpg" alt="people" class="img-responsive" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="resources/images/woman-3.jpg" alt="people" class="img-responsive" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="resources/images/guy-2.jpg" alt="people" class="img-responsive" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="resources/images/guy-9.jpg" alt="people" class="img-responsive" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="resources/images/woman-9.jpg" alt="people" class="img-responsive" />
                                            </a>
                                        </li>
                                        <li class="clearfix">
                                            <a href="#">
                                                <img src="resources/images/guy-4.jpg" alt="people" class="img-responsive" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="resources/images/guy-1.jpg" alt="people" class="img-responsive" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="resources/images/woman-4.jpg" alt="people" class="img-responsive" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="resources/images/guy-6.jpg" alt="people" class="img-responsive" />
                                            </a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6 col-lg-4 item">
                            <div class="timeline-block">
                                <div class="panel panel-default profile-card clearfix-xs">
                                    <div class="panel-body">
                                        <div class="profile-card-icon">
                                            <i class="fa fa-graduation-cap"></i>
                                        </div>
                                        <h4 class="text-center">Graduation Badge</h4>
                                        <ul class="icon-list icon-list-block">
                                            <li><i class="fa fa-map-marker"></i> Amsterdam, Europe</li>
                                            <li><i class="fa fa-trophy"></i> 1st in Class</li>
                                            <li><i class="fa fa-calendar"></i> 31st Oct 2014</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6 col-lg-4 item">
                            <div class="timeline-block">
                                <div class="panel panel-default">

                                    <div class="panel-heading">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="">
                                                    <img src="resources/images/guy-2.jpg" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <a href="#" class="pull-right text-muted"><i class="icon-reply-all-fill fa fa-2x "></i></a>

                                                <a href="">Jonathan</a>

                                                <span>on 15th January, 2014</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad blanditiis perspiciatis praesentium quaerat repudiandae soluta? Cum doloribus esse et eum facilis impedit officiis omnis optio, placeat, quia quo reprehenderit sunt velit?
                                            Asperiores cumque deserunt eveniet hic reprehenderit sit, ut voluptatum?</p>
                                    </div>
                                    <div class="view-all-comments">
                                        <a href="#">
                                            <i class="fa fa-comments-o"></i> View all
                                        </a>
                                        <span>10 comments</span>

                                    </div>
                                    <ul class="comments">
                                        <li class="media">
                                            <div class="media-left">
                                                <a href="">
                                                    <img src="resources/images/guy-5.jpg" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <div class="pull-right dropdown" data-show-hover="li">
                                                    <a href="#" data-toggle="dropdown" class="toggle-button">
                                                        <i class="fa fa-pencil"></i>
                                                    </a>
                                                    <ul class="dropdown-menu" role="menu">
                                                        <li><a href="#">Edit</a></li>
                                                        <li><a href="#">Delete</a></li>
                                                    </ul>
                                                </div>
                                                <a href="" class="comment-author pull-left">Bill D.</a>
                                                <span>Hi Mary, Nice Party</span>
                                                <div class="comment-date">21st September</div>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <div class="media-left">
                                                <a href="">
                                                    <img src="resources/images/woman-5.jpg" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <div class="pull-right dropdown" data-show-hover="li">
                                                    <a href="#" data-toggle="dropdown" class="toggle-button">
                                                        <i class="fa fa-pencil"></i>
                                                    </a>
                                                    <ul class="dropdown-menu" role="menu">
                                                        <li><a href="#">Edit</a></li>
                                                        <li><a href="#">Delete</a></li>
                                                    </ul>
                                                </div>
                                                <a href="" class="comment-author pull-left">Mary</a>
                                                <span>Thanks Bill</span>
                                                <div class="comment-date">2 days</div>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <div class="media-left">
                                                <a href="">
                                                    <img src="resources/images/guy-5.jpg" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <div class="pull-right dropdown" data-show-hover="li">
                                                    <a href="#" data-toggle="dropdown" class="toggle-button">
                                                        <i class="fa fa-pencil"></i>
                                                    </a>
                                                    <ul class="dropdown-menu" role="menu">
                                                        <li><a href="#">Edit</a></li>
                                                        <li><a href="#">Delete</a></li>
                                                    </ul>
                                                </div>
                                                <a href="" class="comment-author pull-left">Bill D.</a>
                                                <span>What time did it finish?</span>
                                                <div class="comment-date">14 min</div>
                                            </div>
                                        </li>
                                        <li class="comment-form">
                                            <div class="input-group">

                          <span class="input-group-btn">
                   <a href="" class="btn btn-default"><i class="fa fa-photo"></i></a>
                </span>

                                                <input type="text" class="form-control" />

                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6 col-lg-4 item">
                            <div class="timeline-block">
                                <div class="panel panel-default">

                                    <div class="panel-heading">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="">
                                                    <img src="resources/images/woman-5.jpg" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <a href="#" class="pull-right text-muted"><i class="icon-reply-all-fill fa fa-2x "></i></a>

                                                <a href="">Michelle</a>

                                                <span>on 15th January, 2014</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel-body">
                                        <div class="boxed">
                                            <a href="#" class="h4 margin-none">Vegetarian Pizza</a>
                                            <div>
                                                <span class="fa fa-star text-primary"></span>
                                                <span class="fa fa-star text-primary"></span>
                                                <span class="fa fa-star text-primary"></span>
                                                <span class="fa fa-star text-primary"></span>
                                                <span class="fa fa-star-o"></span>
                                            </div>

                                            <div class="media">
                                                <div class="media-left">
                                                    <a href="#">
                                                        <img src="resources/images/food1.jpg" alt="" width="80" class="media-object">
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor impedit ipsum laborum maiores tempore veritatis....</p>
                                                </div>
                                            </div>
                                            <ul class="icon-list">
                                                <li><i class="fa fa-star fa-fw"></i> 4.8</li>
                                                <li><i class="fa fa-clock-o fa-fw"></i> 20 min</li>
                                                <li><i class="fa fa-graduation-cap fa-fw"></i> Beginner</li>
                                            </ul>
                                        </div>

                                    </div>

                                    <div class="view-all-comments">
                                        <a href="#">
                                            <i class="fa fa-comments-o"></i> View all
                                        </a>
                                        <span>10 comments</span>

                                    </div>
                                    <ul class="comments">
                                        <li class="media">
                                            <div class="media-left">
                                                <a href="">
                                                    <img src="resources/images/guy-5.jpg" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <div class="pull-right dropdown" data-show-hover="li">
                                                    <a href="#" data-toggle="dropdown" class="toggle-button">
                                                        <i class="fa fa-pencil"></i>
                                                    </a>
                                                    <ul class="dropdown-menu" role="menu">
                                                        <li><a href="#">Edit</a></li>
                                                        <li><a href="#">Delete</a></li>
                                                    </ul>
                                                </div>
                                                <a href="" class="comment-author pull-left">Bill D.</a>
                                                <span>Hi Mary, Nice Party</span>
                                                <div class="comment-date">21st September</div>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <div class="media-left">
                                                <a href="">
                                                    <img src="resources/images/woman-5.jpg" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <div class="pull-right dropdown" data-show-hover="li">
                                                    <a href="#" data-toggle="dropdown" class="toggle-button">
                                                        <i class="fa fa-pencil"></i>
                                                    </a>
                                                    <ul class="dropdown-menu" role="menu">
                                                        <li><a href="#">Edit</a></li>
                                                        <li><a href="#">Delete</a></li>
                                                    </ul>
                                                </div>
                                                <a href="" class="comment-author pull-left">Mary</a>
                                                <span>Thanks Bill</span>
                                                <div class="comment-date">2 days</div>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <div class="media-left">
                                                <a href="">
                                                    <img src="resources/images/guy-5.jpg" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <div class="pull-right dropdown" data-show-hover="li">
                                                    <a href="#" data-toggle="dropdown" class="toggle-button">
                                                        <i class="fa fa-pencil"></i>
                                                    </a>
                                                    <ul class="dropdown-menu" role="menu">
                                                        <li><a href="#">Edit</a></li>
                                                        <li><a href="#">Delete</a></li>
                                                    </ul>
                                                </div>
                                                <a href="" class="comment-author pull-left">Bill D.</a>
                                                <span>What time did it finish?</span>
                                                <div class="comment-date">14 min</div>
                                            </div>
                                        </li>
                                        <li class="comment-form">
                                            <div class="input-group">

                          <span class="input-group-btn">
                   <a href="" class="btn btn-default"><i class="fa fa-photo"></i></a>
                </span>

                                                <input type="text" class="form-control" />

                                            </div>
                                        </li>
                                    </ul>

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

<!-- Vendor Scripts Bundle
  Includes all of the 3rd party JavaScript libraries above.
  The bundle was generated using modern frontend development tools that are provided with the package
  To learn more about the development process, please refer to the documentation.
  Do not use it simultaneously with the separate bundles above. -->
<script src="resources/js/vendor/all.js"></script>

<!-- Vendor Scripts Standalone Libraries -->
<!-- <script src="js/vendor/core/all.js"></script> -->
<!-- <script src="js/vendor/core/jquery.js"></script> -->
<!-- <script src="js/vendor/core/bootstrap.js"></script> -->
<!-- <script src="js/vendor/core/breakpoints.js"></script> -->
<!-- <script src="js/vendor/core/jquery.nicescroll.js"></script> -->
<!-- <script src="js/vendor/core/isotope.pkgd.js"></script> -->
<!-- <script src="js/vendor/core/packery-mode.pkgd.js"></script> -->
<!-- <script src="js/vendor/core/jquery.grid-a-licious.js"></script> -->
<!-- <script src="js/vendor/core/jquery.cookie.js"></script> -->
<!-- <script src="js/vendor/core/jquery-ui.custom.js"></script> -->
<!-- <script src="js/vendor/core/jquery.hotkeys.js"></script> -->
<!-- <script src="js/vendor/core/handlebars.js"></script> -->
<!-- <script src="js/vendor/core/jquery.hotkeys.js"></script> -->
<!-- <script src="js/vendor/core/load_image.js"></script> -->
<!-- <script src="js/vendor/core/jquery.debouncedresize.js"></script> -->
<!-- <script src="js/vendor/tables/all.js"></script> -->
<!-- <script src="js/vendor/forms/all.js"></script> -->
<!-- <script src="js/vendor/media/all.js"></script> -->
<!-- <script src="js/vendor/player/all.js"></script> -->
<!-- <script src="js/vendor/charts/all.js"></script> -->
<!-- <script src="js/vendor/charts/flot/all.js"></script> -->
<!-- <script src="js/vendor/charts/easy-pie/jquery.easypiechart.js"></script> -->
<!-- <script src="js/vendor/charts/morris/all.js"></script> -->
<!-- <script src="js/vendor/charts/sparkline/all.js"></script> -->
<!-- <script src="js/vendor/maps/vector/all.js"></script> -->
<!-- <script src="js/vendor/tree/jquery.fancytree-all.js"></script> -->
<!-- <script src="js/vendor/nestable/jquery.nestable.js"></script> -->
<!-- <script src="js/vendor/angular/all.js"></script> -->

<!-- App Scripts Bundle
  Includes Custom Application JavaScript used for the current theme/module;
  Do not use it simultaneously with the standalone modules below. -->
<script src="resources/js/app/app.js"></script>

<!-- App Scripts Standalone Modules
  As a convenience, we provide the entire UI framework broke down in separate modules
  Some of the standalone modules may have not been used with the current theme/module
  but ALL the modules are 100% compatible -->

<!-- <script src="js/app/essentials.js"></script> -->
<!-- <script src="js/app/layout.js"></script> -->
<!-- <script src="js/app/sidebar.js"></script> -->
<!-- <script src="js/app/media.js"></script> -->
<!-- <script src="js/app/player.js"></script> -->
<!-- <script src="js/app/timeline.js"></script> -->
<!-- <script src="js/app/chat.js"></script> -->
<!-- <script src="js/app/maps.js"></script> -->
<!-- <script src="js/app/charts/all.js"></script> -->
<!-- <script src="js/app/charts/flot.js"></script> -->
<!-- <script src="js/app/charts/easy-pie.js"></script> -->
<!-- <script src="js/app/charts/morris.js"></script> -->
<!-- <script src="js/app/charts/sparkline.js"></script> -->

<!-- App Scripts CORE [social-1]:
      Includes the custom JavaScript for this theme/module;
      The file has to be loaded in addition to the UI modules above;
      app.js already includes main.js so this should be loaded
      ONLY when using the standalone modules; -->
<!-- <script src="js/app/main.js"></script> -->

</body>

</html>