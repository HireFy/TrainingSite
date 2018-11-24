<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
     String path = request.getContextPath();
     String basePath = request.getScheme()+"://"+request.getServerName()
             +":"+request.getServerPort()+path+"/";
%>
<html lang="en">
<head>

     <title>XXXX培训中心</title>
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="author" content="">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

     <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/font-awesome.min.css">
     <link rel="stylesheet" href="css/owl.carousel.css">
     <link rel="stylesheet" href="css/owl.theme.default.min.css">

     <!-- MAIN CSS -->
     <link rel="stylesheet" href="css/templatemo-style.css">
     

</head>
<body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

     <!-- PRE LOADER -->
     <section class="preloader">
          <div class="spinner">

               <span class="spinner-rotate"></span>
               
          </div>
     </section>


     <!-- MENU -->
     <section class="navbar custom-navbar navbar-fixed-top" role="navigation">
          <div class="container">

               <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                    </button>

                    <!-- lOGO TEXT HERE -->
                    <a href="#" class="navbar-brand">导航</a>
               </div>

               <!-- MENU LINKS -->
               <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-nav-first">
                         <li><a href="#top" class="smoothScroll">主页</a></li>
                         <li><a href="#about" class="smoothScroll">中心简介</a></li>
                         <li><a href="#team" class="smoothScroll">师资力量</a></li>
                         <li><a href="#courses" class="smoothScroll">培训课程</a></li>
                         <li><a href="#testimonial" class="smoothScroll">学员心声</a></li>
                         <li><a href="#contact" class="smoothScroll">联系我们</a></li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                         <li><a href="/login"><i class="fa fa-phone"></i>登录</a></li>
                    </ul>
               </div>

          </div>
     </section>

     <!-- HOME -->
     <section id="home">
          <div class="row">

                    <div class="owl-carousel owl-theme home-slider">
                         <div class="item item-first">
                              <div class="caption">
                                   <div class="container">
                                        <div class="col-md-6 col-sm-12">
                                             <h1>XXXX培训中心</h1>
                                             <h3>我们的在线课程支持适合你的行业，最新的教育资源</h3>
                                             <a href="#feature" class="section-btn btn btn-default smoothScroll">发现更多</a>
                                        </div>
                                   </div>
                              </div>
                         </div>

                         <div class="item item-second">
                              <div class="caption">
                                   <div class="container">
                                        <div class="col-md-6 col-sm-12">
                                             <h1>开始你的课程</h1>
                                             <h3>我们的在线课程</h3>
                                             <a href="#courses" class="section-btn btn btn-default smoothScroll">加入课程</a>
                                        </div>
                                   </div>
                              </div>
                         </div>

                         <div class="item item-third">
                              <div class="caption">
                                   <div class="container">
                                        <div class="col-md-6 col-sm-12">
                                             <h1>有效的学习方法</h1>
                                             <h3>有效的学习方法可以帮助你更有效率，节省时间 <a href="https://plus.google.com/+templatemo" target="_parent">浏览</a> 简介.</h3>
                                             <a href="#contact" class="section-btn btn btn-default smoothScroll">了解更多</a>
                                        </div>
                                   </div>
                              </div>
                         </div>
                    </div>
          </div>
     </section>


     <!-- FEATURE -->
     <section id="feature">
          <div class="container">
               <div class="row">

                    <div class="col-md-4 col-sm-4">
                         <div class="feature-thumb">
                              <span>01</span>
                              <h3>热门课程</h3>
                              <p>了解更多</p>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-4">
                         <div class="feature-thumb">
                              <span>02</span>
                              <h3>资料库</h3>
                              <p>最新资料查询</p>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-4">
                         <div class="feature-thumb">
                             <%--TODO:备注，在这里用了个button来跳转调试super_admin_news--%>
                              <span>03</span><br>
                              <a href="/super_admin_news"><button><h3>新闻资讯</h3></button></a>
                              <p>本培训中心2018年7月......</p>
                         </div>
                    </div>

               </div>
          </div>
     </section>


     <!-- ABOUT -->
     <section id="about">
          <div class="container">
               <div class="row">

                    <div class="col-md-6 col-sm-12">
                         <div class="about-info">
                              <h2>从网上实践课程开始你的美好生活之旅</h2>

                              <figure>
                                   <span><i class="fa fa-users"></i></span>
                                   <figcaption>
                                        <h3><nobr> 专业教师</nobr></h3>
                                        <p>掌握最新的教学理念.</p>
                                   </figcaption>
                              </figure>
                              <br >

                              <figure>
                                   <span><i class="fa fa-certificate"></i></span>
                                   <figcaption>
                                        <h3><nobr>专业认证</nobr></h3>
                                        <p>专业认证，国际化的课程</p>
                                   </figcaption>
                              </figure>
                              <br >

                              <figure>
                                   <span><i class="fa fa-bar-chart-o"></i></span>
                                   <figcaption>
                                        <h3><nobr>免费试用课程.</nobr></h3>
                                        <p>试用后可续费.</p>
                                   </figcaption>
                              </figure>
                              <br >
                         </div>
                    </div>

                    <div class="col-md-offset-1 col-md-4 col-sm-12">
                         <div class="entry-form">
                              <form action="#" method="post">
                                   <h2>今天就报名</h2>
                                   <input type="text" name="full name" class="form-control" placeholder="用户名" required="">

                                   <input type="email" name="email" class="form-control" placeholder="邮箱地址" required="">

                                   <input type="password" name="password" class="form-control" placeholder="密码" required="">

                                   <button class="submit-btn form-control" id="form-submit">开始注册</button>
                              </form>
                         </div>
                    </div>

               </div>
          </div>
     </section>
     <div class="tlinks">收集来自 <a href="http://www.cssmoban.com/"  title="培训中心">培训中心</a></div>


     <!-- TEAM -->
     <section id="team">
          <div class="container">
               <div class="row">

                    <div class="col-md-12 col-sm-12">
                         <div class="section-title">
                              <h2>教师 <small>会见专业培训教师</small></h2>
                         </div>
                    </div>

                    <div class="col-md-3 col-sm-6">
                         <div class="team-thumb">
                              <div class="team-image">
                                  <!-- 教师 -->
                                   <img src="images/author-image1.jpg" class="img-responsive" alt="">
                              </div>
                              <div class="team-info">
                                   <h3>马克老师</h3>
                                   <span>我喜欢教学</span>
                              </div>
                              <ul class="social-icon">
                                  <!-- 联系方式 -->
                                   <li><a href="#" class="fa fa-facebook-square" attr="facebook icon"></a></li>
                                   <li><a href="#" class="fa fa-twitter"></a></li>
                                   <li><a href="#" class="fa fa-instagram"></a></li>
                              </ul>
                         </div>
                    </div>

                    <div class="col-md-3 col-sm-6">
                         <div class="team-thumb">
                              <div class="team-image">
                                   <img src="images/author-image2.jpg" class="img-responsive" alt="">
                              </div>
                              <div class="team-info">
                                   <h3>凯瑟琳</h3>
                                   <span>教育是关键!</span>
                              </div>
                              <ul class="social-icon">
                                  <!-- 联系方式 -->
                                   <li><a href="#" class="fa fa-google"></a></li>
                                   <li><a href="#" class="fa fa-instagram"></a></li>
                              </ul>
                         </div>
                    </div>

                    <div class="col-md-3 col-sm-6">
                         <div class="team-thumb">
                              <div class="team-image">
                                   <img src="images/author-image3.jpg" class="img-responsive" alt="">
                              </div>
                              <div class="team-info">
                                   <h3>杰西卡</h3>
                                   <span>我喜欢在线教学！</span>
                              </div>
                              <ul class="social-icon">
                                  <!-- 联系方式 -->
                                   <li><a href="#" class="fa fa-twitter"></a></li>
                                   <li><a href="#" class="fa fa-envelope-o"></a></li>
                                   <li><a href="#" class="fa fa-linkedin"></a></li>
                              </ul>
                         </div>
                    </div>

                    <div class="col-md-3 col-sm-6">
                         <div class="team-thumb">
                              <div class="team-image">
                                   <img src="images/author-image4.jpg" class="img-responsive" alt="">
                              </div>
                              <div class="team-info">
                                   <h3>安德鲁</h3>
                                   <span>学习是快乐的事情</span>
                              </div>
                              <ul class="social-icon">
                                  <!-- 联系方式 -->
                                   <li><a href="#" class="fa fa-twitter"></a></li>
                                   <li><a href="#" class="fa fa-google"></a></li>
                                   <li><a href="#" class="fa fa-behance"></a></li>
                              </ul>
                         </div>
                    </div>

               </div>
          </div>
     </section>


     <!-- 课程 -->
     <section id="courses">
          <div class="container">
               <div class="row">

                    <div class="col-md-12 col-sm-12">
                         <div class="section-title">
                              <h2>最受欢迎的课程 <small>用最新的课程提升你的技能</small></h2>
                         </div>

                         <div class="owl-carousel owl-theme owl-courses">
                              <div class="col-md-4 col-sm-4">
                                   <div class="item">
                                        <div class="courses-thumb">
                                             <div class="courses-top">
                                                  <div class="courses-image">
                                                       <img src="images/courses-image1.jpg" class="img-responsive" alt="">
                                                  </div>
                                                  <div class="courses-date">
                                                       <span><i class="fa fa-calendar"></i> 12 / 7 / 2018</span>
                                                       <span><i class="fa fa-clock-o"></i> 7 小时</span>
                                                  </div>
                                             </div>

                                             <div class="courses-detail">
                                                  <h3><a href="#">社会媒体管理</a></h3>
                                                  <p>简洁，精炼，高效的课程指导</p>
                                             </div>

                                             <div class="courses-info">
                                                  <div class="courses-author">
                                                       <img src="images/author-image1.jpg" class="img-responsive" alt="">
                                                       <span>马克</span>
                                                  </div>
                                                  <div class="courses-price">
                                                       <a href="#"><span> 25元</span></a>
                                                  </div>
                                             </div>
                                        </div>
                                   </div>
                              </div>

                              <div class="col-md-4 col-sm-4">
                                   <div class="item">
                                        <div class="courses-thumb">
                                             <div class="courses-top">
                                                  <div class="courses-image">
                                                       <img src="images/courses-image2.jpg" class="img-responsive" alt="">
                                                  </div>
                                                  <div class="courses-date">
                                                       <span><i class="fa fa-calendar"></i> 20 / 7 / 2018</span>
                                                       <span><i class="fa fa-clock-o"></i> 4.5 小时</span>
                                                  </div>
                                             </div>

                                             <div class="courses-detail">
                                                  <h3><a href="#">图形与网络设计</a></h3>
                                                  <p>常用的语言以及框架学习</p>
                                             </div>

                                             <div class="courses-info">
                                                  <div class="courses-author">
                                                       <img src="images/author-image2.jpg" class="img-responsive" alt="">
                                                       <span>杰西卡</span>
                                                  </div>
                                                  <div class="courses-price">
                                                       <a href="#"><span>80元</span></a>
                                                  </div>
                                             </div>
                                        </div>
                                   </div>
                              </div>

                              <div class="col-md-4 col-sm-4">
                                   <div class="item">
                                        <div class="courses-thumb">
                                             <div class="courses-top">
                                                  <div class="courses-image">
                                                       <img src="images/courses-image3.jpg" class="img-responsive" alt="">
                                                  </div>
                                                  <div class="courses-date">
                                                       <span><i class="fa fa-calendar"></i> 15 / 8 / 2018</span>
                                                       <span><i class="fa fa-clock-o"></i> 6 小时</span>
                                                  </div>
                                             </div>

                                             <div class="courses-detail">
                                                  <h3><a href="#">营销传播</a></h3>
                                                  <p>结合当前局势的独特见解</p>
                                             </div>

                                             <div class="courses-info">
                                                  <div class="courses-author">
                                                       <img src="images/author-image3.jpg" class="img-responsive" alt="">
                                                       <span>凯瑟琳</span>
                                                  </div>
                                                  <div class="courses-price free">
                                                       <a href="#"><span>免费</span></a>
                                                  </div>
                                             </div>
                                        </div>
                                   </div>
                              </div>

                              <div class="col-md-4 col-sm-4">
                                   <div class="item">
                                        <div class="courses-thumb">
                                             <div class="courses-top">
                                                  <div class="courses-image">
                                                       <img src="images/courses-image4.jpg" class="img-responsive" alt="">
                                                  </div>
                                                  <div class="courses-date">
                                                       <span><i class="fa fa-calendar"></i> 10 / 8 / 2018</span>
                                                       <span><i class="fa fa-clock-o"></i> 8 小时</span>
                                                  </div>
                                             </div>

                                             <div class="courses-detail">
                                                  <h3><a href="#">幼儿教育</a></h3>
                                                  <p>了解更多国际教育.</p>
                                             </div>

                                             <div class="courses-info">
                                                  <div class="courses-author">
                                                       <img src="images/author-image1.jpg" class="img-responsive" alt="">
                                                       <span>马克松</span>
                                                  </div>
                                                  <div class="courses-price">
                                                       <a href="#"><span>45元</span></a>
                                                  </div>
                                             </div>
                                        </div>
                                   </div>
                              </div>

                              <div class="col-md-4 col-sm-4">
                                   <div class="item">
                                        <div class="courses-thumb">
                                             <div class="courses-top">
                                                  <div class="courses-image">
                                                       <img src="images/courses-image5.jpg" class="img-responsive" alt="">
                                                  </div>
                                                  <div class="courses-date">
                                                       <span><i class="fa fa-calendar"></i> 5 / 10 / 2018</span>
                                                       <span><i class="fa fa-clock-o"></i> 10 小时</span>
                                                  </div>
                                             </div>

                                             <div class="courses-detail">
                                                  <h3><a href="#">企业与管理</a></h3>
                                                  <p>和谐，最新，MBA</p>
                                             </div>

                                             <div class="courses-info">
                                                  <div class="courses-author">
                                                       <img src="images/author-image2.jpg" class="img-responsive" alt="">
                                                       <span>杰西卡</span>
                                                  </div>
                                                  <div class="courses-price free">
                                                       <a href="#"><span>免费</span></a>
                                                  </div>
                                             </div>
                                        </div>
                                   </div>
                              </div>

                         </div>

               </div>
          </div>
     </section>


     <!-- TESTIMONIAL -->
     <section id="testimonial">
          <div class="container">
               <div class="row">

                    <div class="col-md-12 col-sm-12">
                         <div class="section-title">
                              <h2>学员心声 <small>来自各地的学员</small></h2>
                         </div>

                         <div class="owl-carousel owl-theme owl-client">
                              <div class="col-md-4 col-sm-4">
                                   <div class="item">
                                        <div class="tst-image">
                                             <img src="images/tst-image1.jpg" class="img-responsive" alt="">
                                        </div>
                                        <div class="tst-author">
                                             <h4>老李</h4>
                                             <span>移动端开发人员</span>
                                        </div>
                                        <p>真的帮助到了我很多，感谢XXX培训!</p>
                                        <div class="tst-rating">
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                        </div>
                                   </div>
                              </div>

                              <div class="col-md-4 col-sm-4">
                                   <div class="item">
                                        <div class="tst-image">
                                             <img src="images/tst-image2.jpg" class="img-responsive" alt="">
                                        </div>
                                        <div class="tst-author">
                                             <h4>蔡娜</h4>
                                             <span>市场经理</span>
                                        </div>
                                        <p>尝试是令人激动，最终证明了我的是尝试是值得的.</p>
                                        <div class="tst-rating">
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                        </div>
                                   </div>
                              </div>

                              <div class="col-md-4 col-sm-4">
                                   <div class="item">
                                        <div class="tst-image">
                                             <img src="images/tst-image3.jpg" class="img-responsive" alt="">
                                        </div>
                                        <div class="tst-author">
                                             <h4>巴比</h4>
                                             <span>美术设计师</span>
                                        </div>
                                        <p>非常非常认真的教学！</p>
                                        <div class="tst-rating">
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                        </div>
                                   </div>
                              </div>

                              <div class="col-md-4 col-sm-4">
                                   <div class="item">
                                        <div class="tst-image">
                                             <img src="images/tst-image4.jpg" class="img-responsive" alt="">
                                        </div>
                                        <div class="tst-author">
                                             <h4>王托尔</h4>
                                             <span>网页开发程序员</span>
                                        </div>
                                        <p>学习到了更多的知识，可以很好的运用到工作中.</p>
                                        <div class="tst-rating">
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                        </div>
                                   </div>
                              </div>

                         </div>

               </div>
          </div>
     </section> 


     <!-- CONTACT -->
     <section id="contact">
          <div class="container">
               <div class="row">

                    <div class="col-md-6 col-sm-12">
                         <form id="contact-form" role="form" action="" method="post">
                              <div class="section-title">
                                   <h2>联系我们 <small>我们希望得到真挚的建议和意见！</small></h2>
                              </div>

                              <div class="col-md-12 col-sm-12">
                                   <input type="text" class="form-control" placeholder="输入姓名" name="name" required="">
                    
                                   <input type="email" class="form-control" placeholder="输入邮箱地址" name="email" required="">

                                   <textarea class="form-control" rows="6" placeholder="告诉我们你的想法" name="message" required></textarea>
                              </div>

                              <div class="col-md-4 col-sm-12">
                                   <input type="submit" class="form-control" name="send message" value="点击发送">
                              </div>

                         </form>
                    </div>

                    <div class="col-md-6 col-sm-12">
                         <div class="contact-image">
                              <img src="images/contact-image.jpg" class="img-responsive" alt="Smiling Two Girls">
                         </div>
                    </div>

               </div>
          </div>
     </section>       


     <!-- FOOTER -->
     <footer id="footer">
          <div class="container">
               <div class="row">

                    <div class="col-md-4 col-sm-6">
                         <div class="footer-info">
                              <div class="section-title">
                                   <h2>总部</h2>
                              </div>
                              <address>
                                   <p>XXXX培训中心<br> 项目审核 10086</p>
                              </address>

                              <ul class="social-icon">
                                   <li><a href="#" class="fa fa-facebook-square" attr="facebook icon"></a></li>
                                   <li><a href="#" class="fa fa-twitter"></a></li>
                                   <li><a href="#" class="fa fa-instagram"></a></li>
                              </ul>

                              <div class="copyright-text"> 
                                   <p>版权 &copy; 2018 公司</p>
                                   <p>设计by:internet</p>
                                  
                              </div>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                         <div class="footer-info">
                              <div class="section-title">
                                   <h2>联系信息</h2>
                              </div>
                              <address>
                                   <p>+10086, +12334567</p>
                                   <p><a href="mailto:youremail.com">1000008766@163.com</a></p>
                              </address>

                              <div class="footer_menu">
                                   <h2>快速链接</h2>
                                   <ul>
                                        <li><a href="#">职业生涯</a></li>
                                        <li><a href="#">教学资源</a></li>
                                        <li><a href="#">条款和条件</a></li>
                                        <li><a href="#">退款政策</a></li>
                                   </ul>
                              </div>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-12">
                         <div class="footer-info newsletter-form">
                              <div class="section-title">
                                   <h2>通讯注册</h2>
                              </div>
                              <div>
                                   <div class="form-group">
                                        <form action="#" method="get">
                                             <input type="email" class="form-control" placeholder="输入您的邮箱地址l" name="email" id="email" required="">
                                            <%--TODO:下面的id=form-submit在上面也有一个，应该改成什么 --%>
                                             <input type="submit" class="form-control" name="submit" id="form-submit" value="发送给我们">
                                        </form>
                                        <span><sup>*</sup> 请注意，我们不会给你的邮箱发送垃圾邮件.</span>
                                   </div>
                              </div>
                         </div>
                    </div>
                    
               </div>
          </div>
     </footer>


     <!-- SCRIPTS -->
     <script src="js/jquery.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/owl.carousel.min.js"></script>
     <script src="js/smoothscroll.js"></script>
     <script src="js/custom.js"></script>

</body>
</html>
