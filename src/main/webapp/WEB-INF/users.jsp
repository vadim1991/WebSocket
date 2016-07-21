<!DOCTYPE html>
<html class="st-layout ls-top-navbar ls-bottom-footer show-sidebar sidebar-l2" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>ThemeKit</title>

    <!-- Vendor CSS BUNDLE
      Includes styling for all of the 3rd party libraries used with this module, such as Bootstrap, Font Awesome and others.
      TIP: Using bundles will improve performance by reducing the number of network requests the client needs to make when loading the page. -->
    <link href="css/vendor/all.css" rel="stylesheet">

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
    <link href="css/app/app.css" rel="stylesheet">

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
                <a class="navbar-brand navbar-brand-primary hidden-xs" href="index.jsp">ThemeKit</a>
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
                <li class="hasSubmenu">
                    <a href="#timeline"><i class="icon-ship-wheel"></i> <span>Timeline</span></a>
                    <ul id="timeline">
                        <li><a href="index.jsp"><i class="fa fa-circle-o"></i> <span>Blocks</span></a></li>
                        <li><a href="timeline-list.html"><i class="fa fa-circle-o"></i> <span>Listing</span></a></li>
                    </ul>
                </li>
                <li class=""><a href="/profile"><i class="icon-user-1"></i> <span>Profile</span></a></li>
                <li class=" active"><a href="users.jsp"><i class="fa fa-group"></i> <span>Users</span></a></li>
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

    <!-- Footer -->
    <footer class="footer">
        <strong>ThemeKit</strong> v4.0.0 &copy; Copyright 2016
    </footer>
    <!-- // Footer -->

</div>
<!-- /st-container -->

<!-- Inline Script for colors and config objects; used by various external scripts; -->
<script>
    var colors = {
        "danger-color": "#e74c3c",
        "success-color": "#81b53e",
        "warning-color": "#f0ad4e",
        "inverse-color": "#2c3e50",
        "info-color": "#2d7cb5",
        "default-color": "#6e7882",
        "default-light-color": "#cfd9db",
        "purple-color": "#9D8AC7",
        "mustard-color": "#d4d171",
        "lightred-color": "#e15258",
        "body-bg": "#f6f6f6"
    };
    var config = {
        theme: "social-1",
        skins: {
            "default": {
                "primary-color": "#16ae9f"
            },
            "orange": {
                "primary-color": "#e74c3c"
            },
            "blue": {
                "primary-color": "#4687ce"
            },
            "purple": {
                "primary-color": "#af86b9"
            },
            "brown": {
                "primary-color": "#c3a961"
            }
        }
    };
</script>

<!-- Vendor Scripts Bundle
  Includes all of the 3rd party JavaScript libraries above.
  The bundle was generated using modern frontend development tools that are provided with the package
  To learn more about the development process, please refer to the documentation.
  Do not use it simultaneously with the separate bundles above. -->
<script src="js/vendor/all.js"></script>

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
<script src="js/app/app.js"></script>

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