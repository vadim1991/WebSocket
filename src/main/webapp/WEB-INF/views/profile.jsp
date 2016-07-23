<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="st-layout ls-top-navbar ls-bottom-footer show-sidebar sidebar-l2" lang="en">

<jsp:include page="fragments/head.jsp">
  <jsp:param name="pageName" value="Profile | Page"></jsp:param>
</jsp:include>

<body>

<!-- Wrapper required for sidebar transitions -->
<div class="st-container">

  <!-- Fixed navbar -->
  <jsp:include page="fragments/navbar.jsp"></jsp:include>

  <!-- Sidebar component with st-effect-1 (set on the toggle button within the navbar) -->
  <jsp:include page="fragments/sidebar.jsp">
    <jsp:param name="activePage" value="profilePage"></jsp:param>
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

          <div class="media media-grid media-clearfix-xs">
            <div class="media-left">

              <div class="width-250 width-auto-xs">
                <div class="panel panel-default widget-user-1 text-center">
                  <div class="avatar">
                    <img src="resources/images/guy-5.jpg" alt="" class="img-circle">
                    <h3>Adrian Demian</h3>
                    <a href="#" class="btn btn-success">Following <i class="fa fa-check-circle fa-fw"></i></a>
                  </div>
                  <div class="profile-icons margin-none">
                    <span><i class="fa fa-users"></i> 372</span>
                    <span><i class="fa fa-photo"></i> 43</span>
                    <span><i class="fa fa-video-camera"></i> 3</span>
                  </div>
                  <div class="panel-body">
                    <div class="expandable expandable-indicator-white expandable-trigger">
                      <div class="expandable-content">
                        <p>Hi! I'm Adrian the Senior UI Designer at
                          <strong>MOSAICPRO</strong>. We hope you enjoy the design and quality of Social.</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut autem delectus dolorum necessitatibus neque odio quam quas qui quod soluta? Aliquid eius esse minima.</p>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Contact -->
                <div class="panel panel-default">
                  <div class="panel-heading">
                    Contact
                  </div>
                  <ul class="icon-list icon-list-block">
                    <li><i class="fa fa-envelope fa-fw"></i> <a href="#">contact@mosaicpro.biz</a></li>
                    <li><i class="fa fa-facebook fa-fw"></i> <a href="#">/facebook</a></li>
                    <li><i class="fa fa-behance fa-fw"></i> <a href="#">/user</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="media-body">
              <div class="panel panel-default share">
                <div class="input-group">
                  <div class="input-group-btn">
                    <a class="btn btn-primary" href="#"><i class="fa fa-envelope"></i> Send</a>
                  </div>
                  <input type="text" class="form-control share-text" placeholder="Write message..." />
                </div>
              </div>

              <div class="tabbable">
                <ul class="nav nav-tabs">
                  <li class="active"><a href="#home" data-toggle="tab"><i class="fa fa-fw fa-picture-o"></i> Photos</a></li>
                  <li class=""><a href="#profile" data-toggle="tab"><i class="fa fa-fw fa-folder"></i> Albums</a></li>
                </ul>
                <div class="tab-content">
                  <div class="tab-pane fade active in" id="home">
                    <img src="resources/images/place1.jpg" alt="image" />
                    <img src="resources/images/place2.jpg" alt="image" />
                    <img src="resources/images/food1.jpg" alt="image" />
                  </div>
                  <div class="tab-pane fade" id="profile">
                    <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo
                      booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente
                      labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed
                      echo park.</p>
                  </div>
                  <div class="tab-pane fade" id="dropdown1">
                    <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles
                      etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred
                      you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
                  </div>
                  <div class="tab-pane fade" id="dropdown2">
                    <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life
                      echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan,
                      sartorial keffiyeh echo park vegan.</p>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6">
                  <div class="panel panel-default">
                    <div class="panel-heading panel-heading-gray">
                      <a href="#" class="btn btn-white btn-xs pull-right"><i class="fa fa-pencil"></i></a>
                      <i class="fa fa-fw fa-info-circle"></i> About
                    </div>
                    <div class="panel-body">
                      <ul class="list-unstyled profile-about margin-none">
                        <li class="padding-v-5">
                          <div class="row">
                            <div class="col-sm-4"><span class="text-muted">Date of Birth</span></div>
                            <div class="col-sm-8">12 January 1990</div>
                          </div>
                        </li>
                        <li class="padding-v-5">
                          <div class="row">
                            <div class="col-sm-4"><span class="text-muted">Job</span></div>
                            <div class="col-sm-8">Specialist</div>
                          </div>
                        </li>
                        <li class="padding-v-5">
                          <div class="row">
                            <div class="col-sm-4"><span class="text-muted">Gender</span></div>
                            <div class="col-sm-8">Male</div>
                          </div>
                        </li>
                        <li class="padding-v-5">
                          <div class="row">
                            <div class="col-sm-4"><span class="text-muted">Lives in</span></div>
                            <div class="col-sm-8">Miami, FL, USA</div>
                          </div>
                        </li>
                        <li class="padding-v-5">
                          <div class="row">
                            <div class="col-sm-4"><span class="text-muted">Credits</span></div>
                            <div class="col-sm-8">249</div>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="panel panel-default">
                    <div class="panel-heading panel-heading-gray">
                      <div class="pull-right">
                        <a href="#" class="btn btn-primary btn-xs">Add <i class="fa fa-plus"></i></a>
                      </div>
                      <i class="icon-user-1"></i> Friends
                    </div>
                    <div class="panel-body">
                      <ul class="img-grid">
                        <li>
                          <a href="#">
                            <img src="resources/images/guy-6.jpg" alt="image" />
                          </a>
                        </li>
                        <li>
                          <a href="#">
                            <img src="resources/images/woman-3.jpg" alt="image" />
                          </a>
                        </li>
                        <li>
                          <a href="#">
                            <img src="resources/images/guy-2.jpg" alt="image" />
                          </a>
                        </li>
                        <li>
                          <a href="#">
                            <img src="resources/images/guy-9.jpg" alt="image" />
                          </a>
                        </li>
                        <li>
                          <a href="#">
                            <img src="resources/images/woman-9.jpg" alt="image" />
                          </a>
                        </li>
                        <li class="clearfix">
                          <a href="#">
                            <img src="resources/images/guy-4.jpg" alt="image" />
                          </a>
                        </li>
                        <li>
                          <a href="#">
                            <img src="resources/images/guy-1.jpg" alt="image" />
                          </a>
                        </li>
                        <li>
                          <a href="#">
                            <img src="resources/images/woman-4.jpg" alt="image" />
                          </a>
                        </li>
                        <li>
                          <a href="#">
                            <img src="resources/images/guy-6.jpg" alt="image" />
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>

              <div class="panel panel-default">
                <div class="panel-heading panel-heading-gray">
                  <i class="fa fa-bookmark"></i> Bookmarks
                </div>
                <div class="panel-body">
                  <div class="row">
                    <div class="col-md-4">
                      <div class="panel panel-default">
                        <div class="panel-body">
                          <a href="#" class="h5 margin-none">Climb a Mountain</a>
                          <div class="text-muted">
                            <small><i class="fa fa-calendar"></i> 24/10/2014</small>
                          </div>
                        </div>
                        <a href="#">
                          <img src="resources/images/place1-full.jpg" alt="image" class="img-responsive" />
                        </a>
                        <div class="panel-body">
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor impedit ipsum laborum maiores tempore veritatis....</p>
                          <div>
                            <div class="pull-right">
                              <a href="#" class="btn btn-primary btn-xs">read</a>
                            </div>

                            <a href="#" class="text-muted"> <i class="fa fa-comments"></i> 6</a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="panel panel-default">
                        <div class="panel-body text-center">
                          <a href="#" class="h5 margin-none">Vegetarian Pizza</a>
                          <p class="text-muted"><i class="fa fa-calendar"></i> 24/10/2014</p>
                          <span class="fa fa-star text-primary"></span>
                          <span class="fa fa-star text-primary"></span>
                          <span class="fa fa-star text-primary"></span>
                          <span class="fa fa-star text-primary"></span>
                          <span class="fa fa-star-o"></span>
                        </div>
                        <a href="#">
                          <img src="resources/images/food1-full.jpg" alt="image" class="img-responsive" />
                        </a>
                        <div class="panel-body">
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor impedit ipsum laborum maiores tempore veritatis....</p>
                          <div>
                            <div class="pull-right">
                              <a href="#" class="btn btn-primary btn-xs">read</a>
                            </div>
                            <a href="#" class="text-muted"> <i class="fa fa-comments"></i> 6</a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="panel panel-default">
                        <div class="panel-body">
                          <div class="pull-right">
                            <a href="#" class="btn btn-success btn-xs"><i class="fa fa-check-circle"></i></a>
                          </div>
                          <a href="#" class="h5">Win a Holiday</a>
                          <div class="text-muted">
                            <small><i class="fa fa-calendar"></i> 24/10/2014</small>
                          </div>
                        </div>
                        <a href="#">
                          <img src="resources/images/place2-full.jpg" alt="image" class="img-responsive" />
                        </a>
                        <ul class="icon-list icon-list-block">
                          <li><i class="fa fa-calendar fa-fw"></i> <a href="#">1 Week</a></li>
                          <li><i class="fa fa-users fa-fw"></i> <a href="#"> 2 People</a></li>
                          <li><i class="fa fa-map-marker fa-fw"></i> <a href="#">Miami, FL, USA</a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
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

</html>