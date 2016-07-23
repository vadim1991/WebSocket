<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="sidebar left sidebar-size-2 sidebar-offset-0 sidebar-visible-desktop sidebar-visible-mobile sidebar-skin-dark" id="sidebar-menu" data-type="collapse">
    <div data-scrollable>
        <ul class="sidebar-menu">
            <li class="category">Navigation</li>
            <li class="${param.activePage eq 'timelinePage' ? 'active' : ''}">
                <a href="/"><i class="icon-ship-wheel"></i> <span>Timeline</span></a>

            <%--<li class="hasSubmenu open ${param.activePage eq 'timelinePage' ? 'active' : ''}">--%>
                <%--<a href="#timeline"><i class="icon-ship-wheel"></i> <span>Timeline</span></a>--%>
                <%--<ul class="in" id="timeline">--%>
                    <%--<li><a href="/"><i class="fa fa-circle-o"></i> <span>Blocks</span></a></li>--%>
                    <%--<li><a href="timeline-list.html"><i class="fa fa-circle-o"></i> <span>Listing</span></a></li>--%>
                <%--</ul>--%>
            <%--</li>--%>
            <li class="${param.activePage eq 'profilePage' ? 'active' : ''}"><a href="/profile"><i class="icon-user-1"></i> <span>Profile</span></a></li>
            <li class="${param.activePage eq 'usersPage' ? 'active' : ''}"><a href="/users"><i class="fa fa-group"></i> <span>Users</span></a></li>
            <li class="${param.activePage eq 'messagesPage' ? 'active' : ''}"><a href="/messages"><i class="icon-comment-fill-1"></i> <span>Messages</span></a></li>
            <li><a href="/login"><i class="icon-lock-fill"></i> <span>Login</span></a></li>
        </ul>
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
