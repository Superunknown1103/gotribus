<%@ page language="java" import="java.util.*,model.ActivityPic,model.User,config.GlobleConfig" pageEncoding="utf-8"%>
<%@page import="model.ActivityPic"%>
<%@ taglib uri="/WEB-INF/tld/c-rt.tld" prefix="c"%>
<%@ taglib prefix="fmt" uri="/WEB-INF/tld/fmt-rt.tld" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
		ActivityPic activityPic=(ActivityPic)request.getAttribute("activityPics");
Integer p=0;
User user=(User)request.getAttribute("user");
User user1=(User)session.getAttribute("user");
request.setAttribute("path1",GlobleConfig.pathPath);
request.setAttribute("path2",GlobleConfig.pathPath1);
	String wish=(String)request.getAttribute("wish");
			String tribus=(String)request.getAttribute("tribus");			
			String brief="";
			if(activityPic.getPicDescription()!=null){
			 brief=activityPic.getPicDescription().split("\\.")[0];}
			String picPath=activityPic.getPicPath_big();
			brief+="...";
%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<html>
  <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <title>${albumName}</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <link rel="stylesheet" type="text/css" media="screen,projection" href="font/font.css" />
    <link rel="stylesheet" type="text/css" media="screen,projection" href="newStyle.css" />
    <link rel="stylesheet" type="text/css" media="screen,projection" href="css/css3.css" />
    <!--[if lt IE 10]>
   		<script src="js/PIE.js" type="text/javascript"></script>
    <![endif]-->
<script type="text/javascript">
	
    function check(){
    	if($.trim($("#commentContent").val()) == ""){
    		alert("empty comment");
    	}else{
    		$("#formComment").submit();
    	}
    	
    }
     function WishList(url){
      http_request = false;
    if (window.XMLHttpRequest) {    								// 闈濱E娴忚鍣�
        http_request = new XMLHttpRequest();							//鍒涘缓XMLHttpRequest瀵硅薄
    } else if (window.ActiveXObject) {     							// IE娴忚鍣�
        try {
            http_request = new ActiveXObject("Msxml2.XMLHTTP");		//鍒涘缓XMLHttpRequest瀵硅薄
        } catch (e) {
            try {
                http_request = new ActiveXObject("Microsoft.XMLHTTP");	//鍒涘缓XMLHttpRequest瀵硅薄
           } catch (e) {}
        }
    }
    if (!http_request) {
        alert("Cannot create XMLHttpRequest object instance锛�");
        return false;
    }
    http_request.onreadystatechange = getResultWishList;							//璋冪敤杩斿洖缁撴灉澶勭悊鍑芥暟
    http_request.open('GET', url, true);								//鍒涘缓涓庢湇鍔″櫒鐨勮繛鎺�
    http_request.send(null);	
    }
    
   function  getResultWishList(){
        if (http_request.readyState == 4) {     							// 鍒ゆ柇璇锋眰鐘舵��
        if (http_request.status == 200) {     							// 璇锋眰鎴愬姛锛屽紑濮嬪鐞嗚繑鍥炵粨鏋�
            document.getElementById("wishList").innerHTML=http_request.responseText;;	//璁剧疆鎻愮ず鍐呭
 
        } else {     													// 璇锋眰椤甸潰鏈夐敊璇�
            alert("The service you requested is unavalible now锛�");
        }
    }
    }
    
    
 function TribusList(url){
      http_request = false;
    if (window.XMLHttpRequest) {    								// 闈濱E娴忚鍣�
        http_request = new XMLHttpRequest();							//鍒涘缓XMLHttpRequest瀵硅薄
    } else if (window.ActiveXObject) {     							// IE娴忚鍣�
        try {
            http_request = new ActiveXObject("Msxml2.XMLHTTP");		//鍒涘缓XMLHttpRequest瀵硅薄
        } catch (e) {
            try {
                http_request = new ActiveXObject("Microsoft.XMLHTTP");	//鍒涘缓XMLHttpRequest瀵硅薄
           } catch (e) {}
        }
    }
    if (!http_request) {
        alert("Cannot create XMLHttpRequest object instance锛�");
        return false;
    }
    http_request.onreadystatechange = getResultTribusList;							//璋冪敤杩斿洖缁撴灉澶勭悊鍑芥暟
    http_request.open('GET', url, true);								//鍒涘缓涓庢湇鍔″櫒鐨勮繛鎺�
    http_request.send(null);	
    }
    
   function  getResultTribusList(){
        if (http_request.readyState == 4) {     							// 鍒ゆ柇璇锋眰鐘舵��
        if (http_request.status == 200) {     							// 璇锋眰鎴愬姛锛屽紑濮嬪鐞嗚繑鍥炵粨鏋�
            document.getElementById("tribusList").innerHTML=http_request.responseText;;	//璁剧疆鎻愮ず鍐呭
 
        } else {     													// 璇锋眰椤甸潰鏈夐敊璇�
            alert("The service you requested is unavalible now锛�");
        }
    }
    }
function get(){

document.getElementById("aa").style.display="block";
document.getElementById("bb").style.display="none";

}
function bu(){

document.getElementById("bb").style.display="block";
document.getElementById("aa").style.display="none";
}
function submit(){
  resourceId=${activityId};
  typeId=document.getElementById("tribusClassify").value;
   document.form10.action="${path2}/user/addTribusList/city/"+typeId+"/"+rescourceId;
 document.form10.submit();
  closePop();
  }
	</script>
	
	
  </head>
  
  <body>
<div id="wrapper"><!--start wrapper-->
    	<div id="header"><!--start header-->
        	<div class="logo"><a href="${path2}activity/index.action"><img src="${path1}activity/img/logo.png" alt="" /></a></div>
            <div id="header_rgt"><!--start header_rgt-->
            	<div id="menu_bg"><div id="menu_lft"><div id="menu_rgt">
                    <ul>
                    	<li class="current_page_item">
										<a href="${path2}activity/index.action">EVENT</a>
									</li>
									<li>
										<a href="${path2}movie/movieHomePage.action" title="MOVIE">MOVIE</a>
									</li>
									<li>
										<a href="${path2}book/bookHomePage.action" title="BOOK">BOOK</a>
									</li>
									<li>
										<a href="${path2}music/musicHomePage.action" title="MUSIC">MUSIC</a>
									</li>
									<li>
										<a id="bb" onMouseOver="get()"  style="display:block"   href="${path2}user/my.action" title="MY TRIBUS">MY TRIBUS</a>
										<a id="aa"  onMouseOut="bu()" style="font-size:24px; display:none"  href="${path2}user/my.action" title="MY TRIBUS">MyTRIBUS</a>
									</li>
                    </ul>
                    <div class="header_search">
                    	<form action="${path2}user/searchAll.action">
                        	<p class="txt_header"><input id="search" name="search" type="text" /></p>
                            <p class="submit_header"><input type="submit" value=" " /></p>
                        </form>
                    </div>
                    <div class="header_icon_area">
                    	<span class="space_btm"><a href="#"><img src="${path1}activity/img/icon_header1.png" alt="" width="10" height="11" /></a></span>
                        <span><a href="#"><img src="${path1}activity/img/icon_header2.png" alt="" width="12" height="13" /></a></span>
                    </div>
                </div></div></div>
            </div><!--//end #header_rgt-->
        </div><!--//end #header-->
        <div id="main_area"><!--start main_area-->
        	<div id="saerch_area"><!--start saerch_area-->
            	<div id="search_bg" class="space_lft"><!--start search_bg-->
                	<form action="${path2}activity/search.action" method="get">
                    	<p class="search_text">
                    	<input id="txt1" name="searchCondition" type="text" value="Search for event name and city" onclick="if(this.value=='Search for event name and city')(this.value='')"  onblur="if(this.value=='')(this.value='Search for event name and city')" /></p>
                        <p class="search_submit">
                        <input type="submit" value="" />
                        </p>
                    </form>
                </div><!--//end #search_bg-->
                <div id="social_media"><!--start social_media-->
                	<div id="social_lftcol">
                    	 <a href="https://www.facebook.com/TheTribus"><img src="${path1}activity/img/icon_facebook.jpg" alt="" width="24" height="24" /></a>
                        <a href="#"><img src="${path1}activity/img/icon_tweet.jpg" alt="" width="24" height="24" /></a>
                    </div>
                    <div id="social_box"><!--start social_box-->
                    	<div id="message">
                        	<a href="${path2}userMail/box/0.action"><img src="${path1}activity/img/icon_message1.jpg" alt="" width="22" height="22" /><c:if test="${unreadMail > 0}">
								<span>${unreadMail}</span>
							</c:if></a>
                            <a href="${path2}user/about.action"><img src="${path1}activity/img/icon_message2.jpg" alt="" width="22" height="22" /></a>
                            <a href="${path2}user/police.action"><img src="${path1}activity/img/icon_message3.jpg" alt="" width="22" height="22" /></a>
                            <a href="${path2}user/logout.action"><img src="${path1}activity/img/icon_message4.jpg" alt="" width="22" height="22" /></a>
                        </div>
                        <div class="address">
                        	<h3>&nbsp;
                        	<%if(user1!=null){ %><a href="${path2}user/my.action"><%=user1.getUserAlias()%></a><%}else{ %><a href="${path2}user/loginForm.action">login</a><%} %></h3>
                            <span>${userProf.profCity}</span>
                        </div>
                    </div><!--//end #social_box-->
                </div><!--//end #social_media-->
            </div><!--//end #saerch_area-->
            <div id="common_maincontent"><!--start common_maincontent-->
            	<div id="album_content"><!--start album_content-->
                	<div id="album_type">
                    	<ul>
                        	<li class="album"><a href="${path2}user/friendHome/${user.userId}.action">By ${user.userAlias } </a>(<a href="${path2}activity/album.action?activityId=${activityId }">Albums</a>)</li>  
                            <!-- <li></li> -->
                            <li> </li> 
                        </ul>
                    </div>
                    <div id="gallery"><!--start gallery-->
                    	<h2>${albumName}</h2>
                        <div id="banner_pic_page">
                        	 <div align="center"><img src="${activityPics.picPath_big}" alt="" width="622px" usemap="#Map"/></div>
                                   <map name="Map" id="Map">
 <area shape="rect" coords="0,0,${picWidth/2-2},${picHeight}" href="${path2}activity/showPic.action?activityPicId=${activityPicIdPrev}&albumName=${albumName}&activityId=${activityId}&albumId=${albumId}" alt="Previous" />
  <area shape="rect" coords="${picWidth/2},0,${picWidth},${picHeight}" href="${path2}activity/showPic.action?activityPicId=${activityPicIdNext}&albumName=${albumName}&activityId=${activityId}&albumId=${albumId}" alt="Next" />

</map>
                        </div>
                        <div id="slbum_descript">
                        	<p>${activityPics.picDescription}</p>
                        </div>
                        <div id="pic_wish_list"><!--start pic_wish_list-->
                        	<div id="pic_wish_inner">
                            	<div class="pic_social">
                            	                                	       	<div id='fb-root'></div>
                            	<script src='http://connect.facebook.net/en_US/all.js'></script>
                                	<a href="#"><img src="${path1}activity/img/icon_facebook.jpg" alt="" width="24" height="24" /></a>
                                	<a href="#"><img src="${path1}activity/img/icon_tweet.jpg" alt="" width="24" height="24" /></a>
                                   <p id='msg'></p>
                               
                                </div> <script> 
      FB.init({appId: "167819743335514", status: true, cookie: true});

      function postToFeed() {
var str=location.href;
        // calling the API ...
        var obj = {
          method: 'feed',
          link: str,
         
          name: "${albumName}",
          picture: '<%=picPath%>',
          description: "<%=brief%>"
        };

        function callback(response) {
          document.getElementById('msg').innerHTML = "Post ID: " + response['post_id'];
        }

        FB.ui(obj, callback);
      }
    
    </script> 
                                <ul>
                                	<li><a id="wishList"   href="javascript:WishList('${path2}user/addWishList/city/${activityId}.action')"><%if(wish!=null&&wish.equals("ok")){%>Already Added<%}else{%>+ Track List<%}%></a></li>
                                	 <li><a href="javascript:void(0)" onClick="showPop()">+ Tribus List</a></li>
                                </ul>
                               
                            </div>
                        </div><!--//end #pic_wish_list-->
                        
                        	  <div id="comment_box_brief"><!--start comment_box_brief-->
                        <%if(user1!=null){ %>
                      
                        <div class="comment_box"><!--start comment_box-->
                            <div class="arrow_author2"></div>
                            <div class="comment_first_content"><!--start comment_first_content-->
                                <div class="pic_author">
                                    <div class="arrow_author1"></div>
                                    <img src="<%=user.getUserPic() %>" alt="" width="73" height="73" />
                                </div>
                                <form id="formComment" name="formComment" method="post" action="${path2}activity/addPicComment.action?activityPicId=${activityPicId}&albumName=${albumName}&activityId=${activityId}">
                                <div class="author_total_rgt">
                                    <div class="author_speech">
                                        <textarea id="commentContent" name="commentContent" rows="10" cols="10" onclick="if(this.value=='Name Says : ...')(this.value='')"  onblur="if(this.value=='Name Says : ...')(this.value='')">Name Says : ...</textarea>
                                    </div>
                                    <div class="author_icon">
                                        <span><img src="${path1}activity/img/icon_album.jpg" alt="" width="20" height="19" /></span>
                                        <div class="btn_done"><a href="javascript: check();">Done</a></div>
                                    </div>
                                </div>
                                </form>
                            </div><!--//end .comment_first_content-->
                        </div><!--//end .comment_box-->
                        <%} %>
                     
                        
                      
                          
                       
                        <c:forEach items="${userCommentList}" var="item" varStatus="in">
                        
                            <c:choose>
                       <c:when test="${in.index %2!=0}">
                         <div class="comment_box bg_differ"><!--start comment_box-->
                       </c:when>
                       <c:otherwise>
                       <div class="comment_box"><!--start comment_box-->
                       </c:otherwise>
                       </c:choose>
                            <div class="comment_scnd_content"><!--start comment_scnd_content-->
                                <div class="pic_author">
                                  <a href="${path2}user/friendHome/${item.userId}.action"><img src="${item.userPic}" width="72" height="72" /></a>
                                </div>
                                <div class="author_total_rgt">
                                    <div class="author_speech">
                                        <h3><a href="${path2}user/friendHome/${item.userId}.action">${item.userName}</a></h3>
                                        <p>${item.commentContent}</p>
                                        <span><fmt:formatDate value="${item.commentDate}" type="date" dateStyle="medium"/> </span>
                                    </div>
                                </div>
                            </div><!--//end .comment_scnd_content-->
                        </div><!--//end .comment_box-->
                       </c:forEach>  
                    </div><!--//end #comment_box_brief-->
                            
                        <div id="comment_pagination">
                        	
                                              <c:choose>
 <c:when test="${resultSize != 0}">
                            <a href="${path2}activity/showPic.action?activityId=${activityId}&page=<c:choose><c:when test="${current-1 == 0}">1</c:when><c:otherwise>${current-1}</c:otherwise></c:choose>&activityPicId=${activityPicId}&albumName=${albumName}" class="prev"></a>
               <c:forEach items="${pageNumbers}" var="item">  
             <a href="${path2}activity/showPic.action?activityId=${activityId}&activityPicId=${activityPicId}&page=${item}&albumName=${albumName}">
             ${item}
             </a>
            </c:forEach>     
            
                             <a href="${path2}activity/showPic.action?activityId=${activityId}&page=<c:choose><c:when test="${current == maxPage}">${maxPage}</c:when><c:otherwise>${current+1}</c:otherwise></c:choose>&activityPicId=${activityPicId}&albumName=${albumName}" class="next"></a>
                    	</c:when>
                    	</c:choose>
                          
                        </div>
                    </div><!--//end #gallery-->
                </div><!--//end #album_content-->
            </div><!--//end #common_maincontent-->
            <div id="footer"><p> &copy;2012 goTribus |<span>All rights reserved</span> </p></div>
            <div id="back_to_top"><a href="#top"></a></div>
            <script src="js/jquery-1.8.0.min.js" type="text/javascript"></script>
            <script src="js/back_to_top.js" type="text/javascript"></script>
        </div><!--//end #main_area-->
    </div><!--//end #wrapper-->
    <div id="popup_layer" onClick="closePop()"></div>   
	<div id="light_box_wrapper"><!--start light_box_wrapper-->
        <div id="light_box_bg"><!--start light_box_bg-->
            <div class="pop_up_cross"> <a href="javascript:void(0)" onClick="closePop()"></a></div>
            <h2>Add to list</h2>
             <form id="form10" name="form10" action="" method="post">
            	<p>
                	 <select id="tribusClassify" name="tribusClassify" >	
                    <c:forEach items="${tribusClassify}" var="item">
                        <option value="${item.id}">${item.name}</option>
                      </c:forEach>
                    </select>
                </p>
                <p><textarea rows="10" cols="10" onclick="if(this.value=='Description...')(this.value='')" onblur="if(this.value=='')(this.value='Description...')" >Description...</textarea></p>
                <div class="pop_btn"><a href="javascript:void(0)" onClick="submit()">Add</a></div>
              <div class="pop_btn1"><a href="${path2}tribuslist/add.action">Create </a></div>
            </form>
        </div><!--//end #light_box_bg-->
	</div><!--//end #light_box_wrapper-->
    
   <script src="${path1 }activity/css/js/jquery.min.js" type="text/javascript"></script>
    <script src="${path1 }activity/css/js/smoothscroll.js" type="text/javascript"></script>
    <!-- script src="${path1 }activity/css/js/easy-editable-text.js" type="text/javascript"></script-->
    <script src="${path1 }activity/css/js/latest.js" type="text/javascript"></script>
    <script src="${path1 }activity/css/js/box.slider.js" type="text/javascript"></script>
    <script type="text/javascript" src="${path1 }activity/css/js/code.js"></script>
    <script type="text/javascript">
	  $(document).ready(function(){
		$('#slider1').bxSlider();
	  });
	</script>
  </body>
</html>
