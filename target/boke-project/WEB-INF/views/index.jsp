<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WorkWise Html Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="../../css/animate.css">
<link rel="stylesheet" href="https://www.jq22.com/jquery/bootstrap-4.2.1.css">
<link rel="stylesheet" type="text/css" href="../../css/line-awesome.css">
<link rel="stylesheet" type="text/css" href="../../css/line-awesome-font-awesome.min.css">
<link rel="stylesheet" href="https://www.jq22.com/jquery/font-awesome.4.7.0.css">
<link rel="stylesheet" type="text/css" href="../../css/jquery.mCustomScrollbar.min.css">
<link rel="stylesheet" type="text/css" href="../../lib/slick/slick.css">
<link rel="stylesheet" type="text/css" href="../../lib/slick/slick-theme.css">
<link rel="stylesheet" type="text/css" href="../../css/style.css">
<link rel="stylesheet" type="text/css" href="../../css/responsive.css">
</head>


<body>


<div class="wrapper">



	<header>
		<div class="container">
			<div class="header-data">
				<div class="logo">
					<a href="index.html" title=""><img src="images/logo.png" alt=""></a>
				</div><!--logo end-->
				<div class="search-bar">
					<form>
						<input type="text" name="search" placeholder="搜索...">
						<button type="submit"><i class="la la-search"></i></button>
					</form>
				</div><!--search-bar end-->
				<nav>
					<ul>
						<li>
							<a href="index.html" title="">
								<span><img src="images/icon1.png" alt=""></span>
								家
							</a>
						</li>
						<li>
							<a href="companies.html" title="">
								<span><img src="images/icon2.png" alt=""></span>
								公司介绍
							</a>
						</li>
						<li>
							<a href="projects.html" title="">
								<span><img src="images/icon3.png" alt=""></span>
								专案
							</a>
						</li>
						<li>
							<a href="profiles.html" title="">
								<span><img src="images/icon4.png" alt=""></span>
								个人资料
							</a>
							<ul>
								<li><a href="user-profile.html" title="">用户资料</a></li>
								<li><a href="my-profile-feed.html" title="">我的个人资料供稿</a></li>
							</ul>
						</li>
						<li>
							<a href="jobs.html" title="">
								<span><img src="images/icon5.png" alt=""></span>
								职位
							</a>
						</li>
						<li>
							<a href="#" title="" class="not-box-open">
								<span><img src="images/icon6.png" alt=""></span>
								留言内容
							</a>
							<div class="notification-box msg">
								<div class="nt-title">
									<h4>设置</h4>
									<a href="#" title="">全部清除</a>
								</div>
								<div class="nott-list">
									<div class="notfication-details">
										<div class="noty-user-img">
											<img src="images/resources/ny-img1.png" alt="">
										</div>
										<div class="notification-info">
											<h3><a href="messages.html" title="">杰西卡</a> </h3>
											<p>巴拉巴拉</p>
											<span>2分钟前</span>
										</div><!--notification-info -->
									</div>
									<div class="notfication-details">
										<div class="noty-user-img">
											<img src="images/resources/ny-img2.png" alt="">
										</div>
										<div class="notification-info">
											<h3><a href="messages.html" title="">杰西卡</a></h3>
											<p>巴拉巴拉</p>
											<span>2分钟前</span>
										</div><!--notification-info -->
									</div>
									<div class="notfication-details">
										<div class="noty-user-img">
											<img src="images/resources/ny-img3.png" alt="">
										</div>
										<div class="notification-info">
											<h3><a href="messages.html" title="">杰西卡</a></h3>
											<p>巴拉巴拉</p>
											<span>2分钟前</span>
										</div><!--notification-info -->
									</div>
									<div class="view-all-nots">
										<a href="messages.html" title="">查看所有消息</a>
									</div>
								</div><!--nott-list end-->
							</div><!--notification-box end-->
						</li>
						<li>
							<a href="#" title="" class="not-box-open">
								<span><img src="images/icon7.png" alt=""></span>
								通知
							</a>
							<div class="notification-box">
								<div class="nt-title">
									<h4>设置</h4>
									<a href="#" title="">全部清除</a>
								</div>
								<div class="nott-list">
									<div class="notfication-details">
										<div class="noty-user-img">
											<img src="images/resources/ny-img1.png" alt="">
										</div>
										<div class="notification-info">
											<h3><a href="#" title="">杰西卡</a>评论您的项目。</h3>
											<span>2分钟前</span>
										</div><!--notification-info -->
									</div>
									<div class="notfication-details">
										<div class="noty-user-img">
											<img src="images/resources/ny-img2.png" alt="">
										</div>
										<div class="notification-info">
											<h3><a href="#" title="">杰西卡</a>评论您的项目。</h3>
											<span>2分钟前</span>
										</div><!--notification-info -->
									</div>
									<div class="notfication-details">
										<div class="noty-user-img">
											<img src="images/resources/ny-img3.png" alt="">
										</div>
										<div class="notification-info">
											<h3><a href="#" title="">杰西卡</a>评论您的项目。</h3>
											<span>2分钟前</span>
										</div><!--notification-info -->
									</div>
									<div class="notfication-details">
										<div class="noty-user-img">
											<img src="images/resources/ny-img2.png" alt="">
										</div>
										<div class="notification-info">
											<h3><a href="#" title="">杰西卡</a>评论您的项目。</h3>
											<span>2分钟前</span>
										</div><!--notification-info -->
									</div>
									<div class="view-all-nots">
										<a href="#" title="">查看所有通知</a>
									</div>
								</div><!--nott-list end-->
							</div><!--notification-box end-->
						</li>
					</ul>
				</nav><!--nav end-->
				<div class="menu-btn">
					<a href="#" title=""><i class="fa fa-bars"></i></a>
				</div><!--menu-btn end-->
				<div class="user-account">
					<div class="user-info">
						<img src="images/resources/user.png" alt="">
						<a href="#" title="">约翰</a>
						<i class="la la-sort-down"></i>
					</div>
					<div class="user-account-settingss">
						<h3>在线状态</h3>
						<ul class="on-off-status">
							<li>
								<div class="fgt-sec">
									<input type="radio" name="cc" id="c5">
									<label for="c5">
										<span></span>
									</label>
									<small>线上</small>
								</div>
							</li>
							<li>
								<div class="fgt-sec">
									<input type="radio" name="cc" id="c6">
									<label for="c6">
										<span></span>
									</label>
									<small>离线</small>
								</div>
							</li>
						</ul>
						<h3>自定义状态</h3>
						<div class="search_form">
							<form>
								<input type="text" name="search">
								<button type="submit">ok</button>
							</form>
						</div><!--search_form end-->
						<h3>设置</h3>
						<ul class="us-links">
							<li><a href="profile-account-setting.html" title="">账户设置</a></li>
							<li><a href="#" title="">隐私</a></li>
							<li><a href="#" title="">常见问题</a></li>
							<li><a href="#" title="">条款及细则</a></li>
						</ul>
						<h3 class="tc"><a href="#" title="">登出</a></h3>
					</div><!--user-account-settingss end-->
				</div>
			</div><!--header-data end-->
		</div>
	</header><!--header end-->

	<main>
		<div class="main-section">
			<div class="container">
				<div class="main-section-data">
					<div class="row">
						<div class="col-lg-3 col-md-4 pd-left-none no-pd">
							<div class="main-left-sidebar no-margin">
								<div class="user-data full-width">
									<div class="user-profile">
										<div class="username-dt">
											<div class="usr-pic">
												<img src="images/${user.headPortraint}" alt="">
											</div>
										</div><!--username-dt end-->
										<div class="user-specs">
											<h3>${user.nickName}</h3>
											<span>${user.profile}</span>
										</div>
									</div><!--user-profile end-->
									<ul class="user-fw-status">
										<li>
											<h4>关注</h4>
											<span>${focusOn}</span>
										</li>
										<li>
											<h4>粉丝</h4>
											<span>${fans}</span>
										</li>
										<li>
											<a href="#" title="">查看资料</a>
										</li>
									</ul>
								</div><!--user-data end-->
								<div class="suggestions full-width">
									<div class="sd-title">
										<h3>意见建议</h3>
										<i class="la la-ellipsis-v"></i>
									</div><!--sd-title end-->
									<div class="suggestions-list">
										<div class="suggestion-usd">
											<img src="images/resources/s1.png" alt="">
											<div class="sgt-text">
												<h4>杰西卡</h4>
												<span>平面设计师</span>
											</div>
											<span><i class="la la-plus"></i></span>
										</div>
										<div class="suggestion-usd">
											<img src="images/resources/s2.png" alt="">
											<div class="sgt-text">
												<h4>约翰</h4>
												<span>PHP开发人员</span>
											</div>
											<span><i class="la la-plus"></i></span>
										</div>
										<div class="suggestion-usd">
											<img src="images/resources/s3.png" alt="">
											<div class="sgt-text">
												<h4>普南</h4>
												<span>WordPress开发人员</span>
											</div>
											<span><i class="la la-plus"></i></span>
										</div>
										<div class="suggestion-usd">
											<img src="images/resources/s4.png" alt="">
											<div class="sgt-text">
												<h4>比尔盖茨</h4>
												<span>C＆C ++开发人员</span>
											</div>
											<span><i class="la la-plus"></i></span>
										</div>
										<div class="suggestion-usd">
											<img src="images/resources/s5.png" alt="">
											<div class="sgt-text">
												<h4>杰西卡</h4>
												<span>平面设计师</span>
											</div>
											<span><i class="la la-plus"></i></span>
										</div>
										<div class="suggestion-usd">
											<img src="images/resources/s6.png" alt="">
											<div class="sgt-text">
												<h4>约翰</h4>
												<span>PHP开发人员</span>
											</div>
											<span><i class="la la-plus"></i></span>
										</div>
										<div class="view-more">
											<a href="#" title="">查看更多</a>
										</div>
									</div><!--suggestions-list end-->
								</div><!--suggestions end-->
								<div class="tags-sec full-width">
									<ul>
										<li><a href="#" title="">帮助中心</a></li>
										<li><a href="#" title="">关于</a></li>
										<li><a href="#" title="">隐私政策</a></li>
										<li><a href="#" title="">社区准则</a></li>
										<li><a href="#" title="">Cookies政策</a></li>
										<li><a href="#" title="">事业</a></li>
										<li><a href="#" title="">语言</a></li>
										<li><a href="#" title="">版本政策</a></li>
									</ul>
									<div class="cp-sec">
										<img src="images/logo2.png" alt="">
										<p><img src="images/cp.png" alt="">版权2017</p>
									</div>
								</div><!--tags-sec end-->
							</div><!--main-left-sidebar end-->
						</div>
						<div class="col-lg-6 col-md-8 no-pd">
							<div class="main-ws-sec">
								<div class="post-topbar">
									<div class="user-picy">
										<img src="images/${user.headPortraint}" alt="" style="width: 50px;height: 50px;border-radius: 100%">
									</div>
									<div class="post-st">
										<ul>
											<li><a class="post_project" href="#" title="">发布项目</a></li>
											<li><a class="post-jb active" href="#" title="">发布工作</a></li>
										</ul>
									</div><!--post-st end-->
								</div><!--post-topbar end-->
								<div class="posts-section">
									<div class="post-bar">
										<div class="post_topbar">
											<div class="usy-dt">
												<img src="images/${user.headPortraint}" alt="" style="width: 50px;height: 50px;border-radius: 100%" alt="">
												<div class="usy-name">
													<h3>${user.nickName}</h3>
													<span><img src="images/clock.png" alt="">3分钟前</span>
												</div>
											</div>
											<div class="ed-opts">
												<a href="#" title="" class="ed-opts-open"><i class="la la-ellipsis-v"></i></a>
												<ul class="ed-options">
													<li><a href="#" title="">编辑帖子</a></li>
													<li><a href="#" title="">未保存</a></li>
													<li><a href="#" title="">不竞标</a></li>
													<li><a href="#" title="">关闭</a></li>
													<li><a href="#" title="">隐藏</a></li>
												</ul>
											</div>
										</div>
										<div class="epi-sec">
											<ul class="descp">
												<li><img src="images/icon8.png" alt=""><span>史诗般的编码器</span></li>
												<li><img src="images/icon9.png" alt=""><span>印度</span></li>
											</ul>
											<ul class="bk-links">
												<li><a href="#" title=""><i class="la la-bookmark"></i></a></li>
												<li><a href="#" title=""><i class="la la-envelope"></i></a></li>
											</ul>
										</div>
										<div class="job_descp">
											<h3>资深Wordpress开发人员</h3>
											<ul class="job-dt">
												<li><a href="#" title="">全职</a></li>
												<li><span>30/小时</span></li>
											</ul>
											<p>巴拉巴拉<a href="#" title="">查看更多</a></p>
											<ul class="skill-tags">
												<li><a href="#" title="">HTML</a></li>
												<li><a href="#" title="">PHP</a></li>
												<li><a href="#" title="">CSS</a></li>
												<li><a href="#" title="">Javascript</a></li>
												<li><a href="#" title="">Wordpress</a></li>
											</ul>
										</div>
										<div class="job-status-bar">
											<ul class="like-com">
												<li>
													<a href="#"><i class="la la-heart"></i> 喜欢</a>
													<img src="images/liked-img.png" alt="">
													<span>25</span>
												</li>
												<li><a href="#" title="" class="com"><img src="images/com.png" alt="">评论15</a></li>
											</ul>
											<a><i class="la la-eye"></i>意见50</a>
										</div>
									</div><!--post-bar end-->
									<div class="top-profiles">
										<div class="pf-hd">
											<h3>热门个人资料</h3>
											<i class="la la-ellipsis-v"></i>
										</div>
										<div class="profiles-slider">
											<div class="user-profy">
												<img src="images/resources/user1.png" alt="">
												<h3>约翰</h3>
												<span>平面设计师</span>
												<ul>
													<li><a href="#" title="" class="followw">Follow</a></li>
													<li><a href="#" title="" class="envlp"><img src="images/envelop.png" alt=""></a></li>
													<li><a href="#" title="" class="hire">hire</a></li>
												</ul>
												<a href="#" title="">查看资料</a>
											</div><!--user-profy end-->
											<div class="user-profy">
												<img src="images/resources/user2.png" alt="">
												<h3>约翰</h3>
												<span>平面设计师</span>
												<ul>
													<li><a href="#" title="" class="followw">Follow</a></li>
													<li><a href="#" title="" class="envlp"><img src="images/envelop.png" alt=""></a></li>
													<li><a href="#" title="" class="hire">hire</a></li>
												</ul>
												<a href="#" title="">查看资料</a>
											</div><!--user-profy end-->
											<div class="user-profy">
												<img src="images/resources/user3.png" alt="">
												<h3>约翰</h3>
												<span>平面设计师</span>
												<ul>
													<li><a href="#" title="" class="followw">Follow</a></li>
													<li><a href="#" title="" class="envlp"><img src="images/envelop.png" alt=""></a></li>
													<li><a href="#" title="" class="hire">hire</a></li>
												</ul>
												<a href="#" title="">查看资料</a>
											</div><!--user-profy end-->
											<div class="user-profy">
												<img src="images/resources/user1.png" alt="">
												<h3>约翰</h3>
												<span>平面设计师</span>
												<ul>
													<li><a href="#" title="" class="followw">Follow</a></li>
													<li><a href="#" title="" class="envlp"><img src="images/envelop.png" alt=""></a></li>
													<li><a href="#" title="" class="hire">hire</a></li>
												</ul>
												<a href="#" title="">查看资料</a>
											</div><!--user-profy end-->
											<div class="user-profy">
												<img src="images/resources/user2.png" alt="">
												<h3>约翰</h3>
												<span>平面设计师</span>
												<ul>
													<li><a href="#" title="" class="followw">Follow</a></li>
													<li><a href="#" title="" class="envlp"><img src="images/envelop.png" alt=""></a></li>
													<li><a href="#" title="" class="hire">hire</a></li>
												</ul>
												<a href="#" title="">查看资料</a>
											</div><!--user-profy end-->
											<div class="user-profy">
												<img src="images/resources/user3.png" alt="">
												<h3>约翰</h3>
												<span>平面设计师</span>
												<ul>
													<li><a href="#" title="" class="followw">Follow</a></li>
													<li><a href="#" title="" class="envlp"><img src="images/envelop.png" alt=""></a></li>
													<li><a href="#" title="" class="hire">hire</a></li>
												</ul>
												<a href="#" title="">查看资料</a>
											</div><!--user-profy end-->
										</div><!--profiles-slider end-->
									</div><!--top-profiles end-->
									<div class="post-bar">
										<div class="post_topbar">
											<div class="usy-dt">
												<img src="images/resources/us-pic.png" alt="">
												<div class="usy-name">
													<h3>约翰</h3>
													<span><img src="images/clock.png" alt="">3分钟前</span>
												</div>
											</div>
											<div class="ed-opts">
												<a href="#" title="" class="ed-opts-open"><i class="la la-ellipsis-v"></i></a>
												<ul class="ed-options">
													<li><a href="#" title="">编辑帖子</a></li>
													<li><a href="#" title="">未保存</a></li>
													<li><a href="#" title="">不竞标</a></li>
													<li><a href="#" title="">Close</a></li>
													<li><a href="#" title="">Hide</a></li>
												</ul>
											</div>
										</div>
										<div class="epi-sec">
											<ul class="descp">
												<li><img src="images/icon8.png" alt=""><span>史诗般的编码器</span></li>
												<li><img src="images/icon9.png" alt=""><span>印度</span></li>
											</ul>
											<ul class="bk-links">
												<li><a href="#" title=""><i class="la la-bookmark"></i></a></li>
												<li><a href="#" title=""><i class="la la-envelope"></i></a></li>
												<li><a href="#" title="" class="bid_now">现在出价</a></li>
											</ul>
										</div>
										<div class="job_descp">
											<h3>高级Wordpress的开发者</h3>
											<ul class="job-dt">
												<li><a href="#" title="">全职</a></li>
												<li><span>$30 / hr</span></li>
											</ul>
											<p>巴拉巴拉的话 <a href="#" title="">查看更多</a></p>
											<ul class="skill-tags">
												<li><a href="#" title="">HTML</a></li>
												<li><a href="#" title="">PHP</a></li>
												<li><a href="#" title="">CSS</a></li>
												<li><a href="#" title="">Javascript</a></li>
												<li><a href="#" title="">Wordpress</a></li>
											</ul>
										</div>
										<div class="job-status-bar">
											<ul class="like-com">
												<li>
													<a href="#"><i class="la la-heart"></i> 喜欢</a>
													<img src="images/liked-img.png" alt="">
													<span>25</span>
												</li>
												<li><a href="#" title="" class="com"><img src="images/com.png" alt=""> 评论15</a></li>
											</ul>
											<a><i class="la la-eye"></i>意见50</a>
										</div>
									</div><!--post-bar end-->
									<div class="posty">
										<div class="post-bar no-margin">
											<div class="post_topbar">
												<div class="usy-dt">
													<img src="images/resources/us-pc2.png" alt="">
													<div class="usy-name">
														<h3>约翰</h3>
														<span><img src="images/clock.png" alt="">3分钟前</span>
													</div>
												</div>
												<div class="ed-opts">
													<a href="#" title="" class="ed-opts-open"><i class="la la-ellipsis-v"></i></a>
													<ul class="ed-options">
														<li><a href="#" title="">编辑帖子</a></li>
														<li><a href="#" title="">未保存</a></li>
														<li><a href="#" title="">不竞标</a></li>
														<li><a href="#" title="">关闭</a></li>
														<li><a href="#" title="">隐藏</a></li>
													</ul>
												</div>
											</div>
											<div class="epi-sec">
												<ul class="descp">
													<li><img src="images/icon8.png" alt=""><span>史诗般的编码器</span></li>
													<li><img src="images/icon9.png" alt=""><span>印度</span></li>
												</ul>
												<ul class="bk-links">
													<li><a href="#" title=""><i class="la la-bookmark"></i></a></li>
													<li><a href="#" title=""><i class="la la-envelope"></i></a></li>
												</ul>
											</div>
											<div class="job_descp">
												<h3>高级Wordpress的开发者</h3>
												<ul class="job-dt">
													<li><a href="#" title="">Full Time</a></li>
													<li><span>30/小时</span></li>
												</ul>
												<p>巴拉巴拉的话 <a href="#" title="">查看更多</a></p>
												<ul class="skill-tags">
													<li><a href="#" title="">HTML</a></li>
													<li><a href="#" title="">PHP</a></li>
													<li><a href="#" title="">CSS</a></li>
													<li><a href="#" title="">Javascript</a></li>
													<li><a href="#" title="">Wordpress</a></li>
												</ul>
											</div>
											<div class="job-status-bar">
												<ul class="like-com">
													<li>
														<a href="#"><i class="la la-heart"></i> 喜欢</a>
														<img src="images/liked-img.png" alt="">
														<span>25</span>
													</li>
													<li><a href="#" title="" class="com"><img src="images/com.png" alt=""> 评论15</a></li>
												</ul>
												<a><i class="la la-eye"></i>意见50</a>
											</div>
										</div><!--post-bar end-->
										<div class="comment-section">
											<div class="plus-ic">
												<i class="la la-plus"></i>
											</div>
											<div class="comment-sec">
												<ul>
													<li>
														<div class="comment-list">
															<div class="bg-img">
																<img src="images/resources/bg-img1.png" alt="">
															</div>
															<div class="comment">
																<h3>约翰</h3>
																<span><img src="images/clock.png" alt=""> 3分钟前</span>
																<p>Lorem ipsum dolor sit amet, </p>
																<a href="#" title="" class="active"><i class="fa fa-reply-all"></i>回复</a>
															</div>
														</div><!--comment-list end-->
														<ul>
															<li>
																<div class="comment-list">
																	<div class="bg-img">
																		<img src="images/resources/bg-img2.png" alt="">
																	</div>
																	<div class="comment">
																		<h3>约翰</h3>
																		<span><img src="images/clock.png" alt=""> 3分钟前</span>
																		<p>你好约翰 </p>
																		<a href="#" title=""><i class="fa fa-reply-all"></i>回复</a>
																	</div>
																</div><!--comment-list end-->
															</li>
														</ul>
													</li>
													<li>
														<div class="comment-list">
															<div class="bg-img">
																<img src="images/resources/bg-img3.png" alt="">
															</div>
															<div class="comment">
																<h3>约翰</h3>
																<span><img src="images/clock.png" alt=""> 3分钟前</span>
																<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam luctus hendrerit metus, ut ullamcorper quam finibus at.</p>
																<a href="#" title=""><i class="fa fa-reply-all"></i>回复</a>
															</div>
														</div><!--comment-list end-->
													</li>
												</ul>
											</div><!--comment-sec end-->
											<div class="post-comment">
												<div class="cm_img">
													<img src="images/resources/bg-img4.png" alt="">
												</div>
												<div class="comment_box">
													<form>
														<input type="text" placeholder="Post a comment">
														<button type="submit">发送</button>
													</form>
												</div>
											</div><!--post-comment end-->
										</div><!--comment-section end-->
									</div><!--posty end-->
									<div class="process-comm">
										<a href="#" title=""><img src="images/process-icon.png" alt=""></a>
									</div><!--process-comm end-->
								</div><!--posts-section end-->
							</div><!--main-ws-sec end-->
						</div>
						<div class="col-lg-3 pd-right-none no-pd">
							<div class="right-sidebar">
								<div class="widget widget-about">
									<img src="images/wd-logo.png" alt="">
									<h3>在工作上跟踪时间</h3>
									<span>按工作时间付费</span>
									<div class="sign_link">
										<h3><a href="#" title="">注册</a></h3>
										<a href="#" title="">学到更多</a>
									</div>
								</div><!--widget-about end-->
								<div class="widget widget-jobs">
									<div class="sd-title">
										<h3>最热门职位</h3>
										<i class="la la-ellipsis-v"></i>
									</div>
									<div class="jobs-list">
										<div class="job-info">
											<div class="job-details">
												<h3>Senior Product Designer</h3>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit..</p>
											</div>
											<div class="hr-rate">
												<span>$25/hr</span>
											</div>
										</div><!--job-info end-->
										<div class="job-info">
											<div class="job-details">
												<h3>Senior UI / UX Designer</h3>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit..</p>
											</div>
											<div class="hr-rate">
												<span>$25/hr</span>
											</div>
										</div><!--job-info end-->
										<div class="job-info">
											<div class="job-details">
												<h3>Junior Seo Designer</h3>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit..</p>
											</div>
											<div class="hr-rate">
												<span>$25/hr</span>
											</div>
										</div><!--job-info end-->
										<div class="job-info">
											<div class="job-details">
												<h3>Senior PHP Designer</h3>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit..</p>
											</div>
											<div class="hr-rate">
												<span>$25/hr</span>
											</div>
										</div><!--job-info end-->
										<div class="job-info">
											<div class="job-details">
												<h3>Senior Developer Designer</h3>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit..</p>
											</div>
											<div class="hr-rate">
												<span>$25/hr</span>
											</div>
										</div><!--job-info end-->
									</div><!--jobs-list end-->
								</div><!--widget-jobs end-->
								<div class="widget widget-jobs">
									<div class="sd-title">
										<h3>本周观看次数最多</h3>
										<i class="la la-ellipsis-v"></i>
									</div>
									<div class="jobs-list">
										<div class="job-info">
											<div class="job-details">
												<h3>Senior Product Designer</h3>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit..</p>
											</div>
											<div class="hr-rate">
												<span>$25/hr</span>
											</div>
										</div><!--job-info end-->
										<div class="job-info">
											<div class="job-details">
												<h3>Senior UI / UX Designer</h3>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit..</p>
											</div>
											<div class="hr-rate">
												<span>$25/hr</span>
											</div>
										</div><!--job-info end-->
										<div class="job-info">
											<div class="job-details">
												<h3>Junior Seo Designer</h3>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit..</p>
											</div>
											<div class="hr-rate">
												<span>$25/hr</span>
											</div>
										</div><!--job-info end-->
									</div><!--jobs-list end-->
								</div><!--widget-jobs end-->
								<div class="widget suggestions full-width">
									<div class="sd-title">
										<h3>观看次数最多的人</h3>
										<i class="la la-ellipsis-v"></i>
									</div><!--sd-title end-->
									<div class="suggestions-list">
										<div class="suggestion-usd">
											<img src="images/resources/s1.png" alt="">
											<div class="sgt-text">
												<h4>Jessica William</h4>
												<span>平面设计师</span>
											</div>
											<span><i class="la la-plus"></i></span>
										</div>
										<div class="suggestion-usd">
											<img src="images/resources/s2.png" alt="">
											<div class="sgt-text">
												<h4>约翰</h4>
												<span>PHP Developer</span>
											</div>
											<span><i class="la la-plus"></i></span>
										</div>
										<div class="suggestion-usd">
											<img src="images/resources/s3.png" alt="">
											<div class="sgt-text">
												<h4>Poonam</h4>
												<span>Wordpress Developer</span>
											</div>
											<span><i class="la la-plus"></i></span>
										</div>
										<div class="suggestion-usd">
											<img src="images/resources/s4.png" alt="">
											<div class="sgt-text">
												<h4>Bill Gates</h4>
												<span>C &amp; C++ Developer</span>
											</div>
											<span><i class="la la-plus"></i></span>
										</div>
										<div class="suggestion-usd">
											<img src="images/resources/s5.png" alt="">
											<div class="sgt-text">
												<h4>Jessica William</h4>
												<span>平面设计师</span>
											</div>
											<span><i class="la la-plus"></i></span>
										</div>
										<div class="suggestion-usd">
											<img src="images/resources/s6.png" alt="">
											<div class="sgt-text">
												<h4>约翰</h4>
												<span>PHP Developer</span>
											</div>
											<span><i class="la la-plus"></i></span>
										</div>
										<div class="view-more">
											<a href="#" title="">查看更多</a>
										</div>
									</div><!--suggestions-list end-->
								</div>
							</div><!--right-sidebar end-->
						</div>
					</div>
				</div><!-- main-section-data end-->
			</div>
		</div>
	</main>




	<div class="post-popup pst-pj">
		<div class="post-project">
			<h3>Post a project</h3>
			<div class="post-project-fields">
				<form>
					<div class="row">
						<div class="col-lg-12">
							<input type="text" name="title" placeholder="Title">
						</div>
						<div class="col-lg-12">
							<div class="inp-field">
								<select>
									<option>Category</option>
									<option>Category 1</option>
									<option>Category 2</option>
									<option>Category 3</option>
								</select>
							</div>
						</div>
						<div class="col-lg-12">
							<input type="text" name="skills" placeholder="Skills">
						</div>
						<div class="col-lg-12">
							<div class="price-sec">
								<div class="price-br">
									<input type="text" name="price1" placeholder="Price">
									<i class="la la-dollar"></i>
								</div>
								<span>To</span>
								<div class="price-br">
									<input type="text" name="price1" placeholder="Price">
									<i class="la la-dollar"></i>
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<textarea name="description" placeholder="Description"></textarea>
						</div>
						<div class="col-lg-12">
							<ul>
								<li><button class="active" type="submit" value="post">Post</button></li>
								<li><a href="#" title="">Cancel</a></li>
							</ul>
						</div>
					</div>
				</form>
			</div><!--post-project-fields end-->
			<a href="#" title=""><i class="la la-times-circle-o"></i></a>
		</div><!--post-project end-->
	</div><!--post-project-popup end-->

	<div class="post-popup job_post">
		<div class="post-project">
			<h3>Post a job</h3>
			<div class="post-project-fields">
				<form>
					<div class="row">
						<div class="col-lg-12">
							<input type="text" name="title" placeholder="Title">
						</div>
						<div class="col-lg-12">
							<div class="inp-field">
								<select>
									<option>Category</option>
									<option>Category 1</option>
									<option>Category 2</option>
									<option>Category 3</option>
								</select>
							</div>
						</div>
						<div class="col-lg-12">
							<input type="text" name="skills" placeholder="Skills">
						</div>
						<div class="col-lg-6">
							<div class="price-br">
								<input type="text" name="price1" placeholder="Price">
								<i class="la la-dollar"></i>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="inp-field">
								<select>
									<option>Full Time</option>
									<option>Half time</option>
								</select>
							</div>
						</div>
						<div class="col-lg-12">
							<textarea name="description" placeholder="Description"></textarea>
						</div>
						<div class="col-lg-12">
							<ul>
								<li><button class="active" type="submit" value="post">Post</button></li>
								<li><a href="#" title="">Cancel</a></li>
							</ul>
						</div>
					</div>
				</form>
			</div><!--post-project-fields end-->
			<a href="#" title=""><i class="la la-times-circle-o"></i></a>
		</div><!--post-project end-->
	</div><!--post-project-popup end-->



	<div class="chatbox-list">
		<div class="chatbox">
			<div class="chat-mg">
				<a href="#" title=""><img src="images/resources/usr-img1.png" alt=""></a>
				<span>2</span>
			</div>
			<div class="conversation-box">
				<div class="con-title mg-3">
					<div class="chat-user-info">
						<img src="images/resources/us-img1.png" alt="">
						<h3>约翰 <span class="status-info"></span></h3>
					</div>
					<div class="st-icons">
						<a href="#" title=""><i class="la la-cog"></i></a>
						<a href="#" title="" class="close-chat"><i class="la la-minus-square"></i></a>
						<a href="#" title="" class="close-chat"><i class="la la-close"></i></a>
					</div>
				</div>
				<div class="chat-hist mCustomScrollbar" data-mcs-theme="dark">
					<div class="chat-msg">
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor.</p>
						<span>Sat, Aug 23, 1:10 PM</span>
					</div>
					<div class="date-nd">
						<span>Sunday, August 24</span>
					</div>
					<div class="chat-msg st2">
						<p>Cras ultricies ligula.</p>
						<span>5 minutes ago</span>
					</div>
					<div class="chat-msg">
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor.</p>
						<span>Sat, Aug 23, 1:10 PM</span>
					</div>
				</div><!--chat-list end-->
				<div class="typing-msg">
					<form>
						<textarea placeholder="Type a message here"></textarea>
						<button type="submit"><i class="fa fa-send"></i></button>
					</form>
					<ul class="ft-options">
						<li><a href="#" title=""><i class="la la-smile-o"></i></a></li>
						<li><a href="#" title=""><i class="la la-camera"></i></a></li>
						<li><a href="#" title=""><i class="fa fa-paperclip"></i></a></li>
					</ul>
				</div><!--typing-msg end-->
			</div><!--chat-history end-->
		</div>
		<div class="chatbox">
			<div class="chat-mg">
				<a href="#" title=""><img src="images/resources/usr-img2.png" alt=""></a>
			</div>
			<div class="conversation-box">
				<div class="con-title mg-3">
					<div class="chat-user-info">
						<img src="images/resources/us-img1.png" alt="">
						<h3>约翰 <span class="status-info"></span></h3>
					</div>
					<div class="st-icons">
						<a href="#" title=""><i class="la la-cog"></i></a>
						<a href="#" title="" class="close-chat"><i class="la la-minus-square"></i></a>
						<a href="#" title="" class="close-chat"><i class="la la-close"></i></a>
					</div>
				</div>
				<div class="chat-hist mCustomScrollbar" data-mcs-theme="dark">
					<div class="chat-msg">
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor.</p>
						<span>Sat, Aug 23, 1:10 PM</span>
					</div>
					<div class="date-nd">
						<span>Sunday, August 24</span>
					</div>
					<div class="chat-msg st2">
						<p>Cras ultricies ligula.</p>
						<span>5 minutes ago</span>
					</div>
					<div class="chat-msg">
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor.</p>
						<span>Sat, Aug 23, 1:10 PM</span>
					</div>
				</div><!--chat-list end-->
				<div class="typing-msg">
					<form>
						<textarea placeholder="Type a message here"></textarea>
						<button type="submit"><i class="fa fa-send"></i></button>
					</form>
					<ul class="ft-options">
						<li><a href="#" title=""><i class="la la-smile-o"></i></a></li>
						<li><a href="#" title=""><i class="la la-camera"></i></a></li>
						<li><a href="#" title=""><i class="fa fa-paperclip"></i></a></li>
					</ul>
				</div><!--typing-msg end-->
			</div><!--chat-history end-->
		</div>
		<div class="chatbox">
			<div class="chat-mg bx">
				<a href="#" title=""><img src="images/chat.png" alt=""></a>
				<span>2</span>
			</div>
			<div class="conversation-box">
				<div class="con-title">
					<h3>Messages</h3>
					<a href="#" title="" class="close-chat"><i class="la la-minus-square"></i></a>
				</div>
				<div class="chat-list">
					<div class="conv-list active">
						<div class="usrr-pic">
							<img src="images/resources/usy1.png" alt="">
							<span class="active-status activee"></span>
						</div>
						<div class="usy-info">
							<h3>约翰</h3>
							<span>Lorem ipsum dolor <img src="images/smley.png" alt=""></span>
						</div>
						<div class="ct-time">
							<span>1:55 PM</span>
						</div>
						<span class="msg-numbers">2</span>
					</div>
					<div class="conv-list">
						<div class="usrr-pic">
							<img src="images/resources/usy2.png" alt="">
						</div>
						<div class="usy-info">
							<h3>约翰</h3>
							<span>Lorem ipsum dolor <img src="images/smley.png" alt=""></span>
						</div>
						<div class="ct-time">
							<span>11:39 PM</span>
						</div>
					</div>
					<div class="conv-list">
						<div class="usrr-pic">
							<img src="images/resources/usy3.png" alt="">
						</div>
						<div class="usy-info">
							<h3>约翰</h3>
							<span>Lorem ipsum dolor <img src="images/smley.png" alt=""></span>
						</div>
						<div class="ct-time">
							<span>0.28 AM</span>
						</div>
					</div>
				</div><!--chat-list end-->
			</div><!--conversation-box end-->
		</div>
	</div><!--chatbox-list end-->

</div><!--theme-layout end-->



<script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/popper.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.mCustomScrollbar.js"></script>
<script type="text/javascript" src="lib/slick/slick.min.js"></script>
<script type="text/javascript" src="js/scrollbar.js"></script>
<script type="text/javascript" src="js/script.js"></script>

</body>
</html>
