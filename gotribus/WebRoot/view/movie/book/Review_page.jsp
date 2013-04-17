<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page language="java" import="config.*"%>
<%
	request.setAttribute("my_local",GlobleConfig.my_local);
	request.setAttribute("my_domain",GlobleConfig.my_domain);
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Tribus_Review_page</title>
	<meta name="description" content="" />
	<meta name="keywords" content="" />
    <link rel="stylesheet" type="text/css" media="screen,projection" href="${my_local}/movie/font/font.css" />
    <link rel="stylesheet" type="text/css" media="screen,projection" href="${my_local}/movie/style.css" />

</head>

<body>
	<div id="wrapper"><!--start wrapper-->
    	<div id="header"><!--start header-->
        	<div class="logo"><a name="top" href="index.html"><img src="${my_local}/movie/img/logo.png" alt="" width="59" height="65" /></a></div>
            <div id="header_rgt"><!--start header_rgt-->
            	<div id="menu_bg"><div id="menu_lft"><div id="menu_rgt">
                    <ul>
                    	<li><a href="${my_domain}/activity/index.action">CITY</a></li>
                    	<li><a href="${my_domain }/movie/movieHomePage.action" title="MOVIE">MOVIE</a></li>
                        <li class="current_page_item"><a href="${my_domain }/book/bookHomePage.action" title="BOOK">BOOK</a></li>
                        <li><a href="${my_domain }/music/musicHomePage.action" title="MUSIC">MUSIC</a></li>
                        <li><a href="${my_domain }/user/my.action" title="MY TRIBUS">MY TRIBUS</a></li>
                    </ul>
                    <div class="header_search">
						<form action="${my_domain}/user/ searchAll.action">
                         	<p class="txt_header"><input type="text" name="search" value="" /></p>
                            <p class="submit_header"><input type="submit"  value="" /></p>
                        </form>
                    </div>
                    <div class="header_icon_area">
                    	<span class="space_btm"><a href="#"><img src="${my_local}/movie/img/icon_header1.png" alt="" width="10" height="11" /></a></span>
                        <span><a href="${my_domain }/user/editForm.action"><img src="${my_local}/movie/img/icon_header2.png" alt="" width="12" height="13" /></a></span>
                    </div>
                </div></div></div>
            </div><!--//end #header_rgt-->
        </div><!--//end #header-->
        <div id="main_area"><!--start main_area-->
        	<div id="saerch_area"><!--start saerch_area-->
            	<div id="search_bg" class="space_lft"><!--start search_bg-->
                	<form action="${my_domain }/book/search/1.action" id="single_search_bar" name="single_search_bar">
                    	<p class="search_text"><input name="single_search_name" type="text" value="Book, Auther, Book list" onclick="if(this.value=='Book, Auther, Book list')(this.value='')"  onblur="if(this.value=='')(this.value='Book, Auther, Book list')" /></p>
                        <p class="search_submit"><input type="submit" value=" " /></p>
                    </form>
                </div><!--//end #search_bg-->
                <div id="social_media"><!--start social_media-->
                	<div id="social_lftcol">
                    	<a href="#"><img src="${my_local}/movie/img/icon_facebook.jpg" alt="" width="24" height="24" /></a>
                        <a href="#"><img src="${my_local}/movie/img/icon_tweet.jpg" alt="" width="24" height="24" /></a>
                    </div>
                    <div id="social_box"><!--start social_box-->
                    	<div id="message">
                        	<a href="${my_domain }/userMail/box/0.action"><img src="${my_local }/movie/img/icon_message1.jpg" alt="" width="22" height="22" /><c:if test="${unreadMail > 0}"><span><c:out value="${unreadMail}"/></span></c:if></a>
                            <a href="${my_local }/user/police.action"><img src="${my_local }/movie/img/icon_message2.jpg" alt="" width="22" height="22" /></a>
                            <a href="${my_local }/user/about.action"><img src="${my_local }/movie/img/icon_message3.jpg" alt="" width="22" height="22" /></a>
                            <a href="${my_local }/user/logout.action"><img src="${my_local }/movie/img/icon_message4.jpg" alt="" width="22" height="22" /></a>
                        </div>
                        <div class="address">
                        	<h3><c:out value="${userName}" /></h3>
                            <span><c:out value="${userCity }" /></span>
                        </div>
                    </div><!--//end #social_box-->
                </div><!--//end #social_media-->
            </div><!--//end #saerch_area-->
            <div id="common_maincontent"><!--start common_maincontent-->
            	<div id="review_main"><!--start review_main-->
                	<div id="review_lftcol"><!--start review_lftcol-->
                    	<div class="review_post"><!--start review_post-->
                        	<h2 class="review_title">Review </h2>
                            <div class="review_ratting"><!--start review_ratting-->
                            	<div class="games_bg"><h3>All Books </h3></div>
                                <span>(<a href="#"><c:out value="${reviewNumber}" /></a>)</span>
                                <!--<h4><a href="#">Create a Review</a></h4>
                                --><div class="rating_icon">
                                	<a href="#"><img src="${my_local}/movie/img/icon_rating1.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating1.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating1.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating1.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating2.jpg" alt="" width="12" height="12" /></a>
                                </div>
                            </div><!--//end .review_ratting-->
                            <!--<div class="rating_descript">start rating_descript
                            	<p>The Hunger Games, a vision of human life in all its nasty, brutish brevity demands to be devoured.</p>
                            </div>//end .rating_descript
                        --></div><!--//end .review_post-->
                        
                        <c:forEach items="${reviewPages}" var="thisReview" >
                        <div class="review_post"><!--start review_post-->
                            <div class="review_ratting"><!--start review_ratting-->
                            	<h2><a href="${my_domain }/review/bookReview/${thisReview.commentId }.action"><c:out value="${thisReview.commentTitle}" /></h2>
                                <div class="rating_icon">
												<c:choose>
		                                		<c:when test="${thisReview.userRate>=0.5 && thisReview.userRate<1.5}">
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star1.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star2.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star2.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star2.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star2.png" alt="" width="12" height="12" /></a>
				                               </c:when>
				                               <c:when test="${thisReview.userRate>=1.5 && thisReview.userRate<2.5}">
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star1.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star1.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star2.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star2.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star2.png" alt="" width="12" height="12" /></a>
				                               </c:when>
				                               <c:when test="${thisReview.userRate>=2.5 && thisReview.userRate<3.5}">
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star1.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star1.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star1.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star2.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star2.png" alt="" width="12" height="12" /></a>
				                               </c:when>
				                               <c:when test="${thisReview.userRate>=3.5 && thisReview.userRate<4.5}">
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star1.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star1.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star1.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star1.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star2.png" alt="" width="12" height="12" /></a>
				                               </c:when>
				                               <c:when test="${thisReview.userRate>=4.5}">
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star1.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star1.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star1.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star1.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star1.png" alt="" width="12" height="12" /></a>
				                               </c:when>
				                               <c:otherwise>
				                               		<a href="#"><img src="${my_local}/movie/img/icon_star2.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star2.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star2.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star2.png" alt="" width="12" height="12" /></a>
				                                    <a href="#"><img src="${my_local}/movie/img/icon_star2.png" alt="" width="12" height="12" /></a>
				                               </c:otherwise>
				                           	</c:choose>
                                </div>
                            </div><!--//end .review_ratting-->
                            <div class="rating_descript"><!--start rating_descript-->
                            	<p><c:out value="${thisReview.commentContent}" /></p>
                                <div class="social_rating"><!--start social_rating-->
                                	<div class="social_rating_lft">
                                    	<a href="#"><img src="${my_local}/movie/img/rating_tweet.jpg" alt="" width="14" height="13" /></a>
                                        <a href="#"><img src="${my_local}/movie/img/rating_facebook.jpg" alt="" width="13" height="13" /></a>
                                    </div>

                                    <span><c:out value="${thisReview.commentDate}" /></span>
                                </div><!--//end .social_rating-->
                            </div><!--//end .rating_descript-->
                        </div><!--//end .review_post-->
                        </c:forEach>
                        
                       
                        <div id="rating_pagi">
                            <div id="follower_apgi">
 								${pageStr} 
                       	 	</div>
                     	</div>
                    </div><!--//end #review_lftcol-->
                    <!--<div id="review_side_bar">start review_side_bar
                    	<div class="review_btn"><a href="#">Create a Review</a></div>
                    	<div class="review_feature">
                        	<img src="${my_local}/movie/img/pic_games.jpg" alt="" />
                            <h3>The Hunger Games Page <a href="#"><img src="${my_local}/movie/img/tripple_arrow3.jpg" alt="" width="25" height="8" /></a></h3>
                        </div>
                        <div class="rating_widget">
                        	<h2>Seach by Rating <span>(<a href="#">1768</a>)</span></h2>
                            <ul>
                            	<li>
                                	<a href="#"><img src="${my_local}/movie/img/icon_rating1.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating1.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating1.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating1.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating1.jpg" alt="" width="12" height="12" /></a>
                                    <span>452</span>
                                </li>
                                <li>
                                	<a href="#"><img src="${my_local}/movie/img/icon_rating1.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating1.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating1.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating1.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating2.jpg" alt="" width="12" height="12" /></a>
                                    <span>543</span>
                                </li>
                                <li>
                                	<a href="#"><img src="${my_local}/movie/img/icon_rating1.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating1.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating1.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating2.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating2.jpg" alt="" width="12" height="12" /></a>
                                    <span>339</span>
                                </li>
                                <li>
                                	<a href="#"><img src="${my_local}/movie/img/icon_rating1.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating1.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating2.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating2.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating2.jpg" alt="" width="12" height="12" /></a>
                                    <span>221</span>
                                </li>
                                <li>
                                	<a href="#"><img src="${my_local}/movie/img/icon_rating1.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating2.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating2.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating2.jpg" alt="" width="12" height="12" /></a>
                                    <a href="#"><img src="${my_local}/movie/img/icon_rating2.jpg" alt="" width="12" height="12" /></a>
                                    <span>231</span>
                                </li>
                            </ul>
                        </div>
                    </div>//end #review_side_bar
                    --><div class="clear"></div>
                </div><!--//end #review_main-->
            </div><!--//end #common_maincontent-->
            <div id="footer"><p>Copyright @ Tribus.us 2012.      <span>All rights reserved</span> </p></div>
            <div id="back_to_top"><a href="#top"></a></div>
            <script src="${my_local}/movie/js/smoothscroll.js" type="text/javascript"></script>
        </div><!--//end #main_area-->
    </div><!--//end #wrapper-->
</body>
</html>                                                                                                   