<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%><%@ taglib uri="/WEB-INF/tld/c-rt.tld" prefix="c" %><%@ taglib prefix="fmt" uri="/WEB-INF/tld/fmt-rt.tld" %><%
%><%@ page import="config.GlobleConfig" %>
<%
	request.setAttribute("domain",GlobleConfig.localhost);
	request.setAttribute("no_view_url",GlobleConfig.show_local);
	
 %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Welcome to tribus, ${user.userAlias } you can send your email ! </title>
	<meta name="description" content="" />
	<meta name="keywords" content="" />
    <link rel="stylesheet" type="text/css" media="screen,projection" href="${domain}user/font/font.css" />
    <link rel="stylesheet" type="text/css" media="screen,projection" href="${domain}user/css/send_style.css" />
    <link rel="stylesheet" type="text/css" media="screen,projection" href="${domain}user/css/css3.css" />
    <!--[if lt IE 10]>
   		<script src="js/PIE.js" type="text/javascript"></script>
    <![endif]-->
    <script type="text/Javascript" src="${domain}js/jquery-1.6.2.min.js"></script>
	<script type="text/Javascript">		

			$("#searchAll_Sub").click(function(){
				if($.trim($('input[name=search]').val()) == ''){
					alert("Please fill the form ! ");
					return false;
				}
				$('#all_sea').submit();
			});

	var dataStructures = {
	    stack : function() {                  
	        var elements = new Array();
	        
	        this.push = function(element) {
	            if (typeof(elements) === 'undefined') {
	                elements = [];   
	            }                            
	            elements.push(element);
				return element;
	        }
	        this.pop = function() {
	            return elements.pop();
	        }
	        this.stackTop = function(element) {
	            return elements[elements.length - 1];
	        }
	        this.pop_pointed_ele = function(element){
	        	for(var i=0;i<elements.length;i++){
	        		if(element == elements[i]){
	        			elements[i] = -1;
	        		}
	        	}
	        }
			this.size = function(){
				return elements.length;
			}
	        this.toString = function() {
	            var s = "";
	            for(var i=0;i<elements.length;i++){
	            	if(i == elements.length -1 )
	            		s += elements[i];
					else	            		
	        			s += elements[i]+","
	        	}
	        	return s;
	        }
    	}
	}
	 var my_stack = new dataStructures.stack();	
	
	 $(document).ready(function(){	 
		//alert(my_stack.push(123));	 							
	 	<c:if test="${isInbox == 1}">
	 	$(".drop_arrow").css("left","486px");
	 	</c:if>						
     		 		
		$(".sel").click(function(){

				var flag = $(this).attr("src");

					if(flag.indexOf("round2") != -1 ){					
						my_stack.push($(this).parent().attr("id"));
						$(this).attr("src","${domain}user/img/blue_round1.jpg");						
					}else{
						my_stack.pop_pointed_ele($(this).parent().attr("id"));
						$(this).attr("src","${domain}user/img/blue_round2.jpg");						
					}
		});     		 		
     		 								 													 							
	 });
	 function getAllSelect(){
	 	if(confirm("Are you sure ?")){
			if(my_stack.size() == 0){
				return false;
			}
	 		$("input[name=ids]").attr("value",my_stack.toString());
	 		$("form[name=deleIds]").submit();
	 	}
	 	return false;
	 }
	</script>	
</head>

<body>
	<div id="wrapper"><!--start wrapper-->
    	<div id="header"><!--start header-->
        	<div class="logo"><a href="index.html"><img src="${domain}user/img/logo.png" alt="" width="59" height="65" /></a></div>
            <div id="header_rgt"><!--start header_rgt-->
            	<div id="menu_bg"><div id="menu_lft"><div id="menu_rgt">
                    <ul>
                    	<li><a href="${no_view_url}activity/index.action">EVENT</a></li>
                    	<li><a href="${no_view_url}movie/movieHomePage.action" title="MOVIE">MOVIE</a></li>
                        <li><a href="${no_view_url}book/bookHomePage.action" title="BOOK">BOOK</a></li>
                        <li><a href="${no_view_url}music/musicHomePage.action" title="MUSIC">MUSIC</a></li>
                        <li><a href="${no_view_url}user/my.action" title="MY TRIBUS">MY TRIBUS</a></li>
                    </ul>
                    <div class="header_search">
                    	<form action="${no_view_url}user/searchAll.action" id="all_sea">
                        	<p class="txt_header"><input type="text" name="search" /></p>
                            <p class="submit_header"><input type="submit" id="searchAll_Sub" value=" " /></p>
                        </form>
                    </div>
                    <div class="header_icon_area">
                    	<span class="space_btm"><a href="#"><img src="${domain}user/img/icon_header1.png" alt="" width="10" height="11" /></a></span>
                        <span><a href="${no_view_url }user/editForm.action"><img src="${domain}user/img/icon_header2.png" alt="" width="12" height="13" /></a></span>
                    </div>
                </div></div></div>
            </div><!--//end #header_rgt-->
        </div><!--//end #header-->
        <div id="main_area"><!--start main_area-->
        	<div id="saerch_area"><!--start saerch_area-->
            	<div id="search_bg" class="space_lft"><!--start search_bg-->
                	<form action="${no_view_url}userMail/searchMail.action">
                    	<p class="search_text"><input type="text" name="search" value="Seach Mail title or content" onclick="if(this.value=='Seach Mail title or content')(this.value='')"  onblur="if(this.value=='')(this.value='Seach Mail title or content')" /></p>
                        <p class="search_submit"><input type="submit"  value=" " /></p>
                    </form>
                </div><!--//end #search_bg-->
                <div id="social_media"><!--start social_media-->
                	<div id="social_lftcol">
                    	<a href="https://www.facebook.com/TheTribus"><img src="${domain}user/img/icon_facebook.jpg" alt="" width="24" height="24" /></a>
                        <a href="#"><img src="${domain}user/img/icon_tweet.jpg" width="24" height="24" alt="" /></a>
                    </div>
                    <div id="social_box"><!--start social_box-->
                    	<div id="message">
                        	
                        	
                        	
                        	<a href="${no_view_url }userMail/box/0.action"><img src="${domain}user/img/icon_message1.jpg" alt="" width="22" height="22" />
							
							<c:if test="${reminder > 0}">
								<span>${reminder}</span>
							</c:if>
							</a>
                            <a href="${no_view_url}user/about.action"><img src="${domain}user/img/icon_message2.jpg" alt="" width="22" height="22" /></a>
                            <a href="${no_view_url}user/police.action"><img src="${domain}user/img/icon_message3.jpg" alt="" width="22" height="22" /></a>
                            <a href="${no_view_url }user/logout.action"><img src="${domain}user/img/icon_message4.jpg" alt="" width="22" height="22" /></a>
                            
                        	
                        	
                        </div>
                        <div class="address">
                        	<h3>${user.userAlias}</h3>
                            <span>${userProf.profCity}</span>
                        </div>
                    </div><!--//end #social_box-->
                </div><!--//end #social_media-->
            </div><!--//end #saerch_area-->
            <div id="main_content"><!--start main_content-->
            	<div id="mail_main_content"><!--start mail_main_content-->
                	<div id="mail_lftcol"><!--start mail_lftcol-->
                    	<div class="mail_title"><!--start mail_title-->
                        	<h2>${user.userAlias }'s mail</h2>
                        	<div class="comment_box">
                            	<div class="drop_arrow"></div>
                                <div class="bottom_droparrow"></div>
                            	<div class="number_of_mail">
                                	<ul>
                                    	<li class="reminder"><span>${reminder}</span>Reminder </li>
                                        <li>
                                        <a href="${no_view_url}userMail/box/0.action?page=${page }">
                                        InBox
                                        </a>
                                        </li>
                                        <li class="inbox">
                                        <a href="${no_view_url}userMail/box/1.action?page=${page }">
                                        OutBox
                                        </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div><!--//end .mail_title-->
                        <div id="fourcol_content"><!--start fourcol_content-->
                        	<div id="four_coltitle">
                            	<h3 class="title_1">Form:</h3>
                                <h3 class="title_2">Title:</h3>
                                <h3 class="title_3">Time:</h3>
                                <div class="title_4">
                                	<h3>Select:</h3>
                                    <a href="#">Delete</a>
                                </div>
                            </div>
                            
                            
                            
                            <c:if test="${isInbox == 1}">
                            <c:forEach items="${outbox}" var="mails">
                            	<div class="select_row">
                            	<span class="select_col1">
								
								<a href="${no_view_url}user/friendHome/${mails.messageToUserId}.action">
								${mails.messageToUserAlias}
								</a>
								
								</span>
                                <span class="select_col2">
                                
                                <a href="${no_view_url}userMail/messageInfo/${mails.messageId}.action">
                                
								<c:if test="${mails.messageRead == 'false'}">
								<b>${ mails.messageTitle }</b>
								</c:if>

								<c:if test="${mails.messageRead == 'true'}">
								${ mails.messageTitle }
								</c:if>
								

								</a>                                 
                                </span>
                                <span class="select_col3"><fmt:formatDate value="${mails.messageDate}" type="date" dateStyle="medium"/>
								</span>
                                <span><a href="#" id="${mails.messageId}">                                                                
                                <img class="sel" src="${domain}user/img/blue_round2.jpg" alt="" width="11" height="11" />
                                </a>
                                </span>
                            </div>
                            </c:forEach>                                                        
                            </c:if>
                            
                             
                            
                            <c:if test="${isInbox == 0}">
                            <c:forEach items="${inbox}" var="mails">
                            	<div class="select_row">
                            	<span class="select_col1">
								
							<a href="${no_view_url}user/friendHome/${mails.messageFromUserId}.action">

								${mails.messageFromUserAlias}
							</a>	
							</span>
                                <span class="select_col2">
                                
                                <a href="${no_view_url}userMail/messageInfo/${mails.messageId}.action">
                                <c:if test="${mails.messageRead == 'false'}">
								<b>${ mails.messageTitle }</b>
								</c:if>

								<c:if test="${mails.messageRead == 'true'}">
								${ mails.messageTitle }
								</c:if>                            
                                </span>
                                <span class="select_col3"><fmt:formatDate value="${mails.messageDate}" type="date" dateStyle="medium"/></span>
                                <span><a href="#" id="${mails.messageId}">                                
                                
                                <img class="sel" src="${domain}user/img/blue_round2.jpg" alt="" width="11" height="11" />
                                                                                       
                                </a>
                                </span>
                            </div>
                            </c:forEach>
                        </c:if>
                        
                                                                                                                       
                        </div><!--//end #fourcol_content-->
                        
                        	<form name="deleIds" action="${no_view_url}userMail/deleteMailAction.action" method="POST">
                        		<input type="hidden" name="ids" value="-1" />
                        	</form>
                        
                        <div class="delete_option">                        
                        	<a href="javascript:getAllSelect();">Delete</a>                        	
                        </div>
                        <div id="follower_apgi" class="mail_pagi">
                         
                         
                         ${pageStr}
                         
                         
                        </div>
                    </div><!--//end #mail_lftcol-->
                    <div id="mail_rgtcol"><!--start mail_rgtcol-->
                    	<ul>
                        	<li><span><img src="${domain}user/img/icon_mail_1.jpg" alt="" width="20" height="17" /></span><a href="${no_view_url }userMail/sendMailForm.action">Mail To People I Follow</a></li>
                            <li><span><img src="${domain}user/img/icon_mail_1.jpg"  alt="" width="20" height="17" /></span><a href="${no_view_url }userMail/sendMailForm.action">Mail To People Follow Me</a></li>
                            <li><span><img src="${domain}user/img/icon_mail_2.jpg"  alt="" width="16" height="16" /></span><a href="#">Block List</a></li>
                        </ul>
                    </div><!--//end #mail_rgtcol-->
                	<div class="clear"></div>
                </div><!--//end #mail_main_content-->
            </div><!--//end #main_content-->
            <div id="footer"><p> &copy;2012 goTribus |<span>All rights reserved</span> </p></div>
        </div><!--//end #main_area-->
    </div><!--//end #wrapper-->
</body>
</html>                                                                                                   