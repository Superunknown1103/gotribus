<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Tribus_Personal_setting</title>
	<meta name="description" content="" />
	<meta name="keywords" content="" />
    <link rel="stylesheet" type="text/css" media="screen,projection" href="font/font.css" />
    <link rel="stylesheet" type="text/css" media="screen,projection" href="style.css" />
    <link rel="stylesheet" type="text/css" media="screen,projection" href="css/css3.css" />
    <link rel="shortcut icon" href="http://www.gotribus.com/view/images/LOGO_32.png"/>
    <!--[if lt IE 10]>
   		<script src="js/PIE.js" type="text/javascript"></script>
    <![endif]-->

</head>

<body>
	<div id="wrapper"><!--start wrapper-->
    	<div id="header"><!--start header-->
        	<div class="logo"><a name="top" href="index.html"><img src="img/logo.png" alt="" width="59" height="65" /></a></div>
            <div id="header_rgt"><!--start header_rgt-->
            	<div id="menu_bg"><div id="menu_lft"><div id="menu_rgt">
                    <ul>
                    	<li><a href="#">CITY</a></li>
                    	<li><a href="#" title="MOVIE">MOVIE</a></li>
                        <li><a href="#" title="BOOK">BOOK</a></li>
                        <li><a href="#" title="MUSIC">MUSIC</a></li>
                        <li><a href="#" title="MY TRIBUS">MY TRIBUS</a></li>
                    </ul>
                    <div class="header_search">
                    	<form action="#">
                        	<p class="txt_header"><input type="text" /></p>
                            <p class="submit_header"><input type="submit" value=" " /></p>
                        </form>
                    </div>
                    <div class="header_icon_area">
                    	<span class="space_btm"><a href="#"><img src="img/icon_header1.png" alt="" width="10" height="11" /></a></span>
                        <span><a href="#"><img src="img/icon_header2.png" alt="" width="12" height="13" /></a></span>
                    </div>
                </div></div></div>
            </div><!--//end #header_rgt-->
        </div><!--//end #header-->
        <div id="main_area"><!--start main_area-->
        	<div id="saerch_area"><!--start saerch_area-->
            	<div id="search_bg" class="space_lft"><!--start search_bg-->
                	<form action="#">
                    	<p class="search_text"><input type="text" value="Seach movie, actors, comment, tribus music list" onclick="if(this.value=='Seach movie, actors, comment, tribus music list')(this.value='')"  onblur="if(this.value=='')(this.value='Seach movie, actors, comment, tribus music list')" /></p>
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
                        	<a href="#"><img src="${my_local }/movie/img/icon_message1.jpg" alt="" width="22" height="22" /><span>5</span></a>
                        
                            <a href="#"><img src="${my_local }/movie/img/icon_message4.jpg" alt="" width="22" height="22" /></a>
                        </div>
                        <div class="address">
                        	<h3><a href="${my_domain }/user/my.action"><c:out value="${userName}" /></a></h3>
                            <span><c:out value="${userCity }" /></span>
                        </div>
                    </div><!--//end #social_box-->
                </div><!--//end #social_media-->
            </div><!--//end #saerch_area-->
            <div id="common_maincontent"><!--start common_maincontent-->
            	<div id="album_content" class="create_list"><!--start album_content-->
                    <div id="gallery"><!--start gallery-->
                    	<h2 class="overview">Overview</h2>
                        <div class="comment_box"><!--start comment_box-->
                        	<div class="arrow_create"></div>
                            <div class="perrsonal_info"><!--start perrsonal_info-->
                            	<div class="personal_lftcol">
                                	<span>guanmimi</span>
                                    <span><a href="#">guanmimi@gmail.com</a></span>
                                </div>
                                <div class="personal_img">
                                	<img src="img/pic_follower2.jpg" alt="" width="48" height="48" />
                                    <h5><a href="#">Canada Dry</a></h5>
                                </div>
                                <div class="personal_upload">
                                	<a href="#">Upload your photo</a>
                                </div>
                                <div class="persoanl_rgtcol">
                                	<span>Basic Setting</span>
                                    <small><a href="#"><img src="img/icon_album.jpg" alt="" width="20" height="19" /></a></small>
                                </div>
                            </div><!--//end .perrsonal_info-->
                        </div><!--//end .comment_box-->
                        <div id="persoanal_form"><!--start persoanal_form-->
                        	<form action="#">
                            	<div class="persoanal_inp_field">
                                	<label>Username:</label>
                                    <p><input type="text" /></p>
                                </div>
                                <div class="persoanal_inp_field">
                                	<label>Custermize your page addr.</label>
                                    <p><input type="text" /></p>
                                </div>
                                <div class="persoanal_inp_field">
                                	<label>Pass word</label>
                                    <a href="#">Change your password</a>
                                </div>
                                <div class="persoanal_inp_field">
                                	<label>Your city.</label>
                                    <p class="inp_search"><input type="text" /></p>
                                </div>
                                <div class="persoanal_inp_field">
                                	<label>Your email addr.</label>
                                    <p><input type="text" /></p>
                                </div>
                                <div class="btn_save"><a href="#">Save</a></div>
                            </form>
                        </div><!--//end #persoanal_form-->
                    </div><!--//end #gallery-->
                </div><!--//end #album_content-->
            </div><!--//end #common_maincontent-->
             <div id="footer">
            <p> &copy;2012 goTribus |<span>All rights reserved</span> </p>
            </div>
            <div id="back_to_top"><a href="#top"></a></div>
             <script src="${my_local }/movie/js/jquery-1.8.0.min.js" type="text/javascript"></script>
            <script src="${my_local }/movie/js/back_to_top.js" type="text/javascript"></script>
            <script src="${my_local }/movie/js/smoothscroll.js" type="text/javascript"></script>
        </div><!--//end #main_area-->
    </div><!--//end #wrapper-->
</body>
</html>                                                                                                   