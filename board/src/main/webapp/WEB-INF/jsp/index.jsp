<!--
author: Boostraptheme
author URL: https://boostraptheme.com
License: Creative Commons Attribution 4.0 Unported
License URL: https://creativecommons.org/licenses/by/4.0/
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
	<link rel="stylesheet" href="assets/css/main.css" />
    <link rel="shortcut icon" href="img/favicon.ico">
    <title>Profile Bootstrap Themd</title>

    <!-- Global stylesheets -->
    <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/devicons/css/devicons.min.css" rel="stylesheet">
    <link href="css/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<style>
#videobcg {
     position: absolute;
     top: 0px;
     left: 0px;
     min-width: 100%;
     min-height: 100%;
     width: auto;
     height: auto;
     z-index: -1000;
     overflow: hidden;
}
</style>
<body>
  
</body>
<body id="page-top">
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">
        <span class="d-block d-lg-none  mx-0 px-0"><img src="img/logo-white.png" alt="" class="img-fluid"></span>
        <span class="d-none d-lg-block">
          <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="img/main.jpg" alt="">
        </span>
      </a>
     

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#about">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#experience">Experience</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#portfolio">Portfolio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#skills">Skills</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container-fluid p-0">

    <!--====================================================
                        ABOUT
    ======================================================-->
      <section class="resume-section p-3 p-lg-5 d-flex d-column" id="about">
          <div class="my-auto" >

              <img src="img/logo-s.png" class="img-fluid mb-3" alt="" width="200px";>
              
              <h1 class="mb-0">Yoo
                <span class="text-primary">Jae Hun</span>
                     <br><br><br>
              </h1>
              <p class="mb-5" style="max-width: 500px; color: black; font: bold;" >개발로 먹고살고 싶습니다.</p>
              <ul class="list-inline list-social-icons mb-0">
                 
                  <li class="list-inline-item">
                      <a href="https://github.com/yoo1589">
                  <span class="fa-stack fa-lg">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
                  </li>
              </ul>
          </div>
      </section>

    <!--====================================================
                        EXPERIENCE
    ======================================================-->      
      <section id="experience">
          <div class="row my-auto">
              <div class="col-12">
                <h2 class="  text-center">Experience</h2>
                <div class="mb-5 heading-border"></div>
              </div>
              <div class="resume-item col-md-6 col-sm-12 " > 
                <div class="card mx-0 p-4 mb-5" style="border-color: #17a2b8; box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.21);">
                  <div class=" resume-content mr-auto">
                      <h4 class="mb-3"><i class="fa fa-globe mr-3 text-info"></i> 두원공과 대학교</h4>
                      <p></p>
                       </div>
                  <div class="resume-date text-md-right">
                      <span class="text-primary">March-2015 ~ February-2020 </span>
                  </div>
                </div>  
              </div>
              <div class="resume-item col-md-6 col-sm-12">
                <div class="card mx-0 p-4 mb-5" style="border-color: #ffc107; box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.21);">
                  <div class="resume-content mr-auto">
                      <h4 class="mb-3"><i class="fa fa-laptop mr-3 text-warning"></i>GOODEE ACADEMY</h4>
                     </div>
                  <div class="resume-date text-md-right">
                      <span class="text-primary">29-July-2019 ~ 30-January-2020</span>
                  </div>
                </div>  
              </div>
              
              
          </div>
      </section>

    <!--====================================================
                        PORTFOLIO 포토폴리오 메인 사진
    ======================================================-->      
      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="portfolio"> 
          <div class="row my-auto">
              <div class="col-12">
                <h2 class="  text-center">Portfolio</h2>
                <div class="mb-5 heading-border"></div>
              </div>
              <div class="col-md-12">
                <div class="port-head-cont">
                  <button class="btn btn-general btn-green filter-b" data-filter="all">All</button>
                  <button class="btn btn-general btn-green filter-b" data-filter="consulting">individual project</button>
                  <button class="btn btn-general btn-green filter-b" data-filter="finance">team project</button>
                  <button class="btn btn-general btn-green filter-b" data-filter="marketing">company</button> 
                </div>
              </div>
          </div>
          <div class="row my-auto">
                         
              <div class="col-sm-4 portfolio-item filter consulting">
                  <a class="portfolio-link" href="#portfolioModal7" data-toggle="modal">
                      <div class="caption-port">
                          <div class="caption-port-content">
                              <i class="fa fa-search-plus fa-3x"></i>
                          </div>
                      </div>
                      <img src="img/201.jpg" alt=""  width="400px" height="250px;">
                  </a>
              </div>
              
              <div class="col-sm-4 portfolio-item filter finance">
                  <a class="portfolio-link" href="#portfolioModal8" data-toggle="modal">
                      <div class="caption-port">
                          <div class="caption-port-content">
                              <i class="fa fa-search-plus fa-3x"></i>
                          </div>
                      </div>
                      <img src="img/202.jpg" alt="" width="400px" height="250px;">
                  </a>
              </div>
              
              <div class="col-sm-4 portfolio-item filter marketing">
                  <a class="portfolio-link" href="#portfolioModal9" data-toggle="modal">
                      <div class="caption-port">
                          <div class="caption-port-content">
                              <i class="fa fa-search-plus fa-3x"></i>
                          </div>
                      </div>
                      <img src="img/portfolio/p-9.jpg" alt="" width="400px" height="250px;">
                  </a>
              </div>      
                      
              <div class="col-sm-4 portfolio-item filter marketing">
                  <a class="portfolio-link" href="#portfolioModal1" data-toggle="modal">
                      <div class="caption-port">
                          <div class="caption-port-content">
                              <i class="fa fa-search-plus fa-3x"></i>
                          </div>
                      </div>
                      <img src="img/bg.jpg" alt=""  width="400px" height="250px;">
                  </a>
              </div>
              
              <div class="col-sm-4 portfolio-item filter marketing">
                  <a class="portfolio-link" href="#portfolioModal2" data-toggle="modal">
                      <div class="caption-port">
                          <div class="caption-port-content">
                              <i class="fa fa-search-plus fa-3x"></i>
                          </div>
                      </div>
                      <img src="img/portfolio/101.png" alt=""  width="400px" height="250px;">
                  </a>
              </div>
              
              <div class="col-sm-4 portfolio-item filter marketing">
                  <a class="portfolio-link" href="#portfolioModal3" data-toggle="modal">
                      <div class="caption-port">
                          <div class="caption-port-content">
                              <i class="fa fa-search-plus fa-3x"></i>
                          </div>
                      </div>
                      <img src="img/portfolio/p-3.jpg" alt=""  width="400px" height="250px;">
                  </a>
              </div> 
          </div>
      </section>

    <!--====================================================
                        SKILLS
    ======================================================-->       
      <section class=" d-flex flex-column" id="skills">
         <div class="p-lg-5 p-3 skill-cover">
          <h3 class="text-center text-white">Coding Skills</h3>
          <div class="row text-center my-auto "> 
              <div class="col-md-3 col-sm-6">
                  <div class="skill-item">
                      <img src="img/302.png" alt=""  width="80px" height="80px;">
                      <h2><span class="counter"> 74 </span><span>%</span></h2>
                      <p>JAVA</p>
                  </div>
              </div>
              <div class="col-md-3 col-sm-6">
                  <div class="skill-item">
                      <img src="img/js.png" alt=""  width="80px" height="80px;">
                      <h2><span class="counter"> 65 </span><span>%</span></h2>
                      <p>JAVA SCRIPT</p>
                  </div>
              </div>
              <div class="col-md-3 col-sm-6">
                  <div class="skill-item">
                      <img src="img/spring.png" alt=""  width="80px" height="80px;">
                      <h2><span class="counter"> 80 </span><span>%</span></h2>
                      <p>SPRING</p>
                  </div>
              </div>
              <div class="col-md-3 col-sm-6">
                  <div class="skill-item">
                      <img src="img/html.png" alt=""  width="80px" height="80px;">
                      <h2><span class="counter"> 77 </span><span>%</span></h2>
                      <p>HTML</p>
                  </div>
              </div>
              <div class="col-md-3 col-sm-6">
                  <div class="skill-item">
                      <img src="img/phthon.png" alt=""  width="80px" height="80px;">
                      <h2><span class="counter"> 55 </span><span>%</span></h2>
                      <p>PYTHON</p>
                  </div>
              </div>
              <div class="col-md-3 col-sm-6">
                  <div class="skill-item">
                      <img src="img/db.png" alt=""  width="80px" height="80px;">
                      <h2><span class="counter"> 70 </span><span>%</span></h2>
                      <p>MARIA DB</p>
                  </div>
              </div>
              <div class="col-md-3 col-sm-6">
                  <div class="skill-item">
                      <img src="img/bootstrap.png" alt=""  width="80px" height="80px;">
                      <h2><span class="counter"> 75 </span><span>%</span></h2>
                      <p>BOOT STRAP</p>
                  </div>
              </div>
              
              <div class="col-md-3 col-sm-6">
                  <div class="skill-item">
                      <img src="img/css.png" alt=""  width="80px" height="80px;">
                      <h2><span class="counter"> 80 </span><span>%</span></h2>
                      <p>CSS</p>
                  </div>
              </div>  
              
          </div>
         </div> 
      </section>

    <!--====================================================
                          CONTACT
    ======================================================-->       
      <section class="resume-section p-3 p-lg-5 d-flex flex-column">
          <div class="row my-auto" id="contact"> 
            <div class="col-md-8">
              <div class="contact-cont">
                <h3>CONTACT Us</h3>
                <div class="heading-border-light"></div>
                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here.</p>
              </div>   
              <div class="row con-form">
                <div class="col-md-12">
                  <input type="text" name="full-name" placeholder="Full Name" class="form-control">
                </div>
                <div class="col-md-12">
                  <input type="text" name="email" placeholder="Email Id" class="form-control">
                </div>
                <div class="col-md-12">
                  <input type="text" name="subject" placeholder="Subject" class="form-control">
                </div>
                <div class="col-md-12"><textarea name="" id=""></textarea></div>
                <div class="col-md-12 sub-but"><button class="btn btn-general btn-white" role="button">Send</button></div>
              </div>
            </div>
            <div class="col-md-4 col-sm-12 mt-5"> 
              <div class="contact-cont2"> 
                <div class="contact-add contact-box-desc">
                  <h3><i class="fa fa-map-marker cl-atlantis fa-2x"></i> Address</h3>
                  <p>인천광역시 남동구 간석동 <br>
                	  두진아파트 102동1408호 <br></p>
                </div>
                <div class="contact-phone contact-side-desc contact-box-desc">
                  <h3><i class="fa fa-phone cl-atlantis fa-2x"></i> Phone</h3>
                  <p>010-2657-4179</p>
                </div>
                <div class="contact-mail contact-side-desc contact-box-desc">
                  <h3><i class="fa fa-envelope-o cl-atlantis fa-2x"></i> Email</h3>
                <address class="address-details-f">                   
                  Email: <a href="mailto:kuooe@naver.com" class="">kuooe@naver.com</a>
                </address>

                </div>
                
              </div>
            </div> 
          </div>
      </section>
    </div>
<!--====================================================
                    PORTFOLIO MODALS
======================================================-->
    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true" >
      <div class="modal-dialog" role="document">
          <div class="modal-content">
              <div class="close-modal" data-dismiss="modal">
                  <div class="lr">
                      <div class="rl"></div>
                  </div>
              </div>
              <div class="container">
                  <div class="row">
                          <div class="modal-body">
                              <div class="title-bar">
                                <div class="col-md-12">
                                  <h2 class="text-center">Woosin Project</h2>
                                  <div class="heading-border"></div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="col-md-6">
                                  <img class="img-fluid img-centered" src="img/201.jpg" alt="">
                                </div>
                                <div class="col-md-6">
                                	<p>Java Spring 프레임워크를 사용한 건설상업용 웹페이지 입니다. 데이터베이스 연동으로 어드민이 직접 각종데이터(연혁, 공사이미지게시글, 공사실적, 1:1문의 등,,)를 입출력 할수있는 기능성 웹페이지 입니다. 개인 프로젝트로 아버지의 명으로 만들게되었습니다.</p>
                                  <ul class="list-inline item-details">
                                      <li>Client:
                                          <strong>
                                            <a href="#">Techs Soft</a>
                                          </strong>
                                      </li>
                                      <li>Date:
                                          <strong>
                                            <a href="#">April 2018</a>
                                          </strong>
                                      </li>
                                      <li>Service:
                                          <strong>
                                            <a href="#">Web Development</a>
                                          </strong>
                                      </li>
                                  </ul>
                                  <button class="btn btn-general btn-white" type="button" data-dismiss="modal">
                                      <i class="fa fa-times"></i> Close
                                  </button>
                              </div>
                            </div>
                          </div>
                  </div>
              </div>
          </div>
      </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl"></div>
                    </div>
                </div>
                <div class="container">
                <div class="row">
                        <div class="modal-body">
                            <div class="title-bar">
                              <div class="col-md-12">
                                <h2 class="text-center">SpringBoard</h2>
                                <div class="heading-border"></div>
                              </div>
                            </div>
                            <div class="row">
                              <div class="col-md-6">
                                <img class="img-fluid img-centered" src="img/portfolio/101.png" alt="">
                              </div>
                              <div class="col-md-6">
                                <p>Spring framework를 이용하여 만든 공용 게시판 입니다. 피드백을 받기위하여 만든 게시판으로서 회원가입후 로그인을 하게되면 데이터베이스에 저장되어있는 게시판리스트와 게시글에 담긴 댓글들을 확인할수있습니다. 기능으로는 게시글 입력,삭제,수정 이가능하며 게시글 입력시 파일 첨부도 가능하게 설계가되었습니다. 또한 댓글 수정,삭제 기능도 가능하며 페이징기능이 추가되었습니다 마지막으로 회원수정과 삭제가 가능합니다.</p>
                                <ul class="list-inline item-details">
                                    
                                    <li>Service:
                                        <strong>
                                          <a href="/login">Start</a>
                                        </strong>
                                    </li>
                                </ul>
                                <button class="btn btn-general btn-white" type="button" data-dismiss="modal">
                                    <i class="fa fa-times"></i> Close
                                </button>
                            </div>
                          </div>
                        </div>
                </div>
            </div>
            </div>
        </div>
    </div>
    
    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl"></div>
                    </div>
                </div>
                <div class="container">
                <div class="row">
                        <div class="modal-body">
                            <div class="title-bar">
                              <div class="col-md-12">
                                <h2 class="text-center">Nor Project</h2>
                                <div class="heading-border"></div>
                              </div>
                            </div>
                            <div class="row">
                              <div class="col-md-6">
                                <img class="img-fluid img-centered" src="img/202.jpg" alt="">
                              </div>
                              <div class="col-md-6">
                                <p>직업훈련 Final 팀프로젝트로 pc방예약 음식주문 사이트입니다. 고객,가맹점,관리자 부분으로 나눠서 프로젝트를 진행하였으며 관리자페이지를 맡아서 진행하였으며 가맹점페이지에대한 부분을 팀원과 더좋은 효율을위해 짝코딩을 진행하였습니다. 좋은 팀원들과 프로젝트를 시작해 요구사항인 좌석예약과 좌석설정 음식주문 가맹점 신청 QnA, FAQ 등등,, 많은 서비스를 담은 웹페이지 소프트웨어입니다.</p>
                                <ul class="list-inline item-details">
                                    <li>Service:
                                        <strong>
                                          <a href="http://ahp7242.cafe24.com/nor/franchiseeIndex">Web Development</a>
                                        </strong>
                                    </li>
                                </ul>
                                <button class="btn btn-general btn-white" type="button" data-dismiss="modal">
                                    <i class="fa fa-times"></i> Close
                                </button>
                              </div>
                          </div>
                        </div>
                </div>
            </div>
            </div>
        </div>
    </div>
    
    <div class="portfolio-modal modal fade" id="portfolioModal7" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl"></div>
                    </div>
                </div>
                <div class="container">
                <div class="row">
                        <div class="modal-body">
                            <div class="title-bar">
                              <div class="col-md-12">
                                <h2 class="text-center">Woosin Project</h2>
                                <div class="heading-border"></div>
                              </div>
                            </div>
                            <div class="row">
                              <div class="col-md-6">
                                <img class="img-fluid img-centered" src="img/201.jpg" alt="">
                              </div>
                              <div class="col-md-6">
                                <p><p>Java Spring 프레임워크를 사용한 건설상업용 웹페이지 입니다. 데이터베이스 연동으로 어드민이 직접 각종데이터(연혁, 공사이미지게시글, 공사실적, 1:1문의 등,,)를 입출력 할수있는 기능성 웹페이지 입니다. 개인 프로젝트로 아버지의 명으로 만들게되었습니다.</p></p>
                                <ul class="list-inline item-details">
                                    <li>Service:
                                        <strong>
                                          <a href="http://www.우신종합건설.com">woosin</a>
                                        </strong>
                                    </li>
                                    
                                </ul>
                                <button class="btn btn-general btn-white" type="button" data-dismiss="modal">
                                    <i class="fa fa-times"></i> Close
                                </button>
                            </div>
                          </div>
                        </div>
                </div>
            </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal8" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl"></div>
                    </div>
                </div>
                <div class="container">
                <div class="row">
                        <div class="modal-body">
                            <div class="title-bar">
                              <div class="col-md-12">
                                <h2 class="text-center">Nor Project</h2>
                                <div class="heading-border"></div>
                              </div>
                            </div>
                            <div class="row">
                              <div class="col-md-6">
                                <img class="img-fluid img-centered" src="img/202.jpg" alt="">
                              </div>
                              <div class="col-md-6">
                                <p>직업훈련 Final 팀프로젝트로 pc방예약 음식주문 사이트입니다. 고객,가맹점,관리자 부분으로 나눠서 프로젝트를 진행하였으며 관리자페이지를 맡아서 진행하였으며 가맹점페이지에대한 부분을 팀원과 더좋은 효율을위해 짝코딩을 진행하였습니다. 좋은 팀원들과 프로젝트를 시작해 요구사항인 좌석예약과 좌석설정 음식주문 가맹점 신청 QnA, FAQ, 통계확인 등,, 많은 서비스를 담은 웹페이지 소프트웨어입니다.</p>
                                <ul class="list-inline item-details">
                                    <li>Service:
                                        <strong>
                                          <a href="http://ahp7242.cafe24.com/nor/">NOR</a>
                                        </strong>
                                    </li>
                                </ul>
                                </ul>
                                <button class="btn btn-general btn-white" type="button" data-dismiss="modal">
                                    <i class="fa fa-times"></i> Close
                                </button>
                            </div>
                          </div>
                        </div>
                </div>
            </div>
            </div>
        </div>
    </div>

    <div class="portfolio-modal modal fade" id="portfolioModal9" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl"></div>
                    </div>
                </div>
                <div class="container">
                <div class="row">
                        <div class="modal-body">
                            <div class="title-bar">
                              <div class="col-md-12">
                                <h2 class="text-center">Our Project</h2>
                                <div class="heading-border"></div>
                              </div>
                            </div>
                            <div class="row">
                              <div class="col-md-6">
                                <img class="img-fluid img-centered" src="img/portfolio/p-9.jpg" alt="">
                              </div>
                              <div class="col-md-6">
                                <p>Our new Project every processes had become fragmented; meaning quality and service were inconsistent. This lack of standardization was adversely impacting operating costs, productivity and customer satisfaction. For several years now Payfast has worked strategically with innovations as a means of developing new solutions, products and services. In line with this vision, Success was approached to find new payments solutions to offer Payfast customers on their website, including open invoice and partial payments options.</p>
                                <ul class="list-inline item-details">
                                    <li>Client:
                                        <strong>
                                          <a href="#">Techs Soft</a>
                                        </strong>
                                    </li>
                                    <li>Date:
                                        <strong>
                                          <a href="#">April 2018</a>
                                        </strong>
                                    </li>
                                    <li>Service:
                                        <strong>
                                          <a href="#">Web Development</a>
                                        </strong>
                                    </li>
                                </ul>
                                <button class="btn btn-general btn-white" type="button" data-dismiss="modal">
                                    <i class="fa fa-times"></i> Close
                                </button>
                            </div>
                          </div>
                        </div>
                </div>
               
            </div>
            </div>
        </div>
    </div>    


    <!-- Global javascript -->
    <script src="js/jquery/jquery.min.js"></script>
    <script src="js/bootstrap/bootstrap.bundle.min.js"></script>
    <script src="js/jquery-easing/jquery.easing.min.js"></script>
    <script src="js/counter/jquery.waypoints.min.js"></script>
    <script src="js/counter/jquery.counterup.min.js"></script>
    <script src="js/custom.js"></script>
    <script>
        $(document).ready(function(){

        $(".filter-b").click(function(){
            var value = $(this).attr('data-filter');
            if(value == "all")
            { 
                $('.filter').show('1000');
            }
            else
            { 
                $(".filter").not('.'+value).hide('3000');
                $('.filter').filter('.'+value).show('3000');
            }
        });
        
        if ($(".filter-b").removeClass("active")) {
          $(this).removeClass("active");
        }
        $(this).addClass("active");
        });

        // SKILLS
        $(function () {
            $('.counter').counterUp({
                delay: 10,
                time: 2000
            });

        });
    </script> 
</body>

</html>