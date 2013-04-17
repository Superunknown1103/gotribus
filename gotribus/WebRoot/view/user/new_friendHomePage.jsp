<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%><%@ taglib uri="/WEB-INF/tld/c-rt.tld" prefix="c" %><%
%><%@ page import="config.GlobleConfig" %><%

	request.setAttribute("domain",GlobleConfig.localhost);
	request.setAttribute("no_view_url",GlobleConfig.show_local);
	
 %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Welcome to Gotribus,${user.userAlias }</title>
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<link rel="shortcut icon" href="${domain }user/LOGO_32.png" />
    <link rel="stylesheet" type="text/css" media="screen,projection" href="${domain }user/font/font.css" />
    <link rel="stylesheet" type="text/css" media="screen,projection" href="${domain }user/css/nstyle.css" />
    <link rel="stylesheet" type="text/css" media="screen,projection" href="${domain }user/css/css3.css" />
    <!--[if lt IE 10]>
   		<script src="js/PIE.js" type="text/javascript"></script>
    <![endif]-->
    <script type="text/Javascript" src="${domain}js/jquery-1.6.2.min.js"></script>
	<script type="text/javascript">			
	
	 $(document).ready(function(){	   	
		 

//********************************************
	
	$('.edit').click(function(){
		$(this).hide();
		prevContent = $(this).prev().html();
		$(this).prev().hide();
		$(this).next().show();
		//$(this).next().select();
		$(this).next().val(prevContent);
	});
	
	
	$('.edit_tools input[type="text"]').blur(function() {  //alert(prevContent)
         if ($.trim(this.value) == ''){  
			 this.value = (this.defaultValue ? this.defaultValue : '');  
		 }
		 else{
			 $(this).prev().prev().html(this.value);
		 }
		 
		 $(this).hide();
		 $(this).prev().show();
		 $(this).prev().prev().show();
     });
	  
	  $('.edit_tools input[type="text"]').keypress(function(event) {
		  if (event.keyCode == '13') {
			  if ($.trim(this.value) == ''){  
				 this.value = (this.defaultValue ? this.defaultValue : '');  
			 }
			 else
			 {
				 $(this).prev().prev().html(this.value);
			 }
			 
			 $(this).hide();
			 $(this).prev().show();
			 $(this).prev().prev().show();
		  }
	  });
//********************************************


	 	$("div.follow_btn>a").click(function() {			
			var dataString = "";     								
			$.ajax({  				
				type: "POST",  
				url: "${no_view_url}user/follow/${friend.userId}/${user.userId}.action",  
				data: dataString,  
				success: function(data, textStatus, jqXHR) {  
					if(data == "ok"){
						$(".follow_txt").html("<h2>Followed</h2>");
					}else {
						$(".follow_txt").html("<h2>unFollow</h2>");
					}
				}  
			});   							
    		});					
	 });
					
		var i = 33;
		var j = 36;
		function add_comment(content,d){							
			var dataString = "messageContent="+ content+"&title="+content;
			$.ajax({  
				type: "POST",  
				url: "${no_view_url}/friendMessage/addSpeak/${user.userId}/${friend.userId}.action",  
				data: dataString,  
				success: function(data, textStatus, jqXHR) { 
					//alert(data);
					$(".author_speech > textarea").val("");
				}  
			});
		}
		
		function del_speaking(id){
			var dataString = "";
			$.ajax({  
				type: "POST",  
				url: "${no_view_url}/friendMessage/delSpeak/"+dataString+".action",  
				data: dataString,  
				success: function(data, textStatus, jqXHR) { 
					//alert(data);
					if(/ok/.test(data)){
						
					}
					$(".author_speech > textarea").val("");
				}  
			});			
		}

		function write_speaking(){
		
		var d = new Date();
			var userName= "${user.userAlias}";
				var content = $(".author_speech > textarea").val();
				var text = "<div class=\"comment_scnd_content\"><!--start comment_scnd_content-->"+
                                	"<div class=\"pic_author\">"+			
                 "<img src=\"${user.userPic}\" alt=\"\" width=\"72\" height=\"72\" />"+                           "</div>"+ 	
				"<div class=\"author_total_rgt\">"+
                      "<div class=\"author_speech\">"+
                                        	"<h3>"+userName+"</h3>"+
                                            "<p>"+content+"</p><span>"+d.toLocaleTimeString()+"</span>"+                                   
                                        "</div>"+
                                    "</div>"+
                                "</div>";                            
				var content_div = document.createElement("div");	
			//content_div.id = j+"";			
			if(j%2 == 0){
     			content_div.className = "comment_box";
				j=j+1;
			}else{			
				content_div.className="comment_box bg_differ";
				j=j+1;
			//	content_div.style.background = "#ccc";
			}
			content_div.innerHTML = text;
			//document.getElementById("comment_box_area").appendChild(content_div);
			$("#first_comment_box").after(content_div);
			//$("#"+i).slideDown();
			//i++;	
			add_comment(content,d);
		}

	</script>
<style type="text/css">
.edit_tools {
	width:335px;
	min-height:45px;
	position:relative;
}
</style>
</head>

<body>
	<div id="wrapper"><!--start wrapper-->
    	<div id="header"><!--start header-->
        	<div class="logo"><a name="top" href="${no_view_url}activity/index.action">
        	<img src="${domain }user/img/logo.png" alt="" width="59" height="65" /></a></div>
            <div id="header_rgt"><!--start header_rgt-->
            	<div id="menu_bg"><div id="menu_lft"><div id="menu_rgt">
                    <ul>
                    	<li><a href="${no_view_url}activity/index.action">EVENT</a></li>
                    	<li><a href="${no_view_url}movie/movieHomePage.action" title="MOVIE">MOVIE</a></li>
                        <li><a href="${no_view_url}book/bookHomePage.action" title="BOOK">BOOK</a></li>
                        <li><a href="${no_view_url }music/musicHomePage.action" title="MUSIC">MUSIC</a></li>
                        <li class="current_page_item"><a href="${no_view_url }user/my.action" title="MY TRIBUS">MY TRIBUS</a></li>
                    </ul>
                    <div class="header_search">
                    	<form action="${domain }user/findByName.action">
                        	<p class="txt_header"><input type="text" /></p>
                            <p class="submit_header"><input type="submit" value=" " name="name" /></p>
                        </form>
                    </div>
                    <div class="header_icon_area">
                    	<span class="space_btm">
                    	<a href="#">
                    	<img src="${domain }user/img/icon_header1.png" alt="" width="10" height="11" /></a></span>
                        <span><a href="${no_view_url }user/editForm.action">
                        <img src="${domain }user/img/icon_header2.png" alt="" width="12" height="13" /></a></span>
                    </div>
                </div></div></div>
            </div><!--//end #header_rgt-->
        </div><!--//end #header-->
        <div id="main_area"><!--start main_area-->
        	<div id="saerch_area"><!--start saerch_area-->
                <div id="social_media"><!--start social_media-->
                	<div id="social_lftcol">
                    	<a href="#"><img src="${domain }user/img/icon_facebook.jpg" alt="" width="24" height="24" /></a>
                        <a href="#"><img src="${domain }user/img/icon_tweet.jpg" width="24" height="24" alt="" /></a>
                    </div>
                    <div id="social_box"><!--start social_box-->
                    	<div id="message">
                        	
                        	
                        	
                        	<a href="${no_view_url }userMail/box/0.action"><img src="${domain}user/img/icon_message1.jpg" alt="" width="22" height="22" />
							
							<c:if test="${unreadMail > 0}">
								<span>${unreadMail}</span>
							</c:if>

							</a>
                            <a href="#"><img src="${domain}user/img/icon_message2.jpg" alt="" width="22" height="22" /></a>
                            <a href="#"><img src="${domain}user/img/icon_message3.jpg" alt="" width="22" height="22" /></a>
                            <a href="${no_view_url }user/logout.action"><img src="${domain}user/img/icon_message4.jpg" alt="" width="22" height="22" /></a>
                        	
                        	
                        </div>
                        <div class="address">
                        	<h3>${user.userAlias }</h3>
                            <span>${userPro.profCity}</span>
                        </div>
                    </div><!--//end #social_box-->
                </div><!--//end #social_media-->
            </div><!--//end #saerch_area-->
            <div id="main_content"><!--start main_content-->
            	<div id="friends_content"><!--start friends_content-->
                	<div id="friends_side_bar"><!--start friends_side_bar-->
                    	<div class="friends_img"><!--start friends_img-->
                        	<img src="${friend.userPic}" alt="" width="171" height="253" />
                            <div class="blue_reapet"><div class="friend_img_bg">
                            	<h2>
								${friend.userAlias }</h2>
                                <span>
								${friend.userIntro }
								</span>
                            </div></div>
                        </div><!--//end #friends_img-->
                        <div class="follow_btn">
                        	<a href="javascript:void(0);" class="follow_txt">
                        	
                        	<c:if test="${followed == 1}">
                        		<h2>Followed</h2>
                        	</c:if>
                        	<c:if test="${followed != 1}">
                        		<h2>Follow</h2>
                        	</c:if>
                        	
                        	</a>
                            <!-- 
                            
                            <div class="tool_tip">
                            	<p>You have follow<br /> her successfully!</p>
                                <p>Do you want system <br />to tribus mail her ?</p>
                                <div class="thanks_option"><span>Yes</span><small>No, Thanks</small></div>
                            </div>
                            
                             -->
                        </div>
                        <div class="btn_follow_num">
                        	<h2>She Follows</h2>
                            <span>(${all_friend_follow_num })</span>
                        </div>
                        <div class="followers_gallery_area"><!--start followers_gallery_area-->
                        	<div class="followers_gallery">
                            	
                            	
                            	
                            	<c:forEach items="${all_friend_follow}" var="in" varStatus="ind">
	                            	<c:if test="${ind.index<45}">	
                            		<a href="${no_view_url }user/friendHome/${in.userId }.action">
                            			<img src="${in.userPic }" alt="" width="50" height="50" />
                            		</a>                         
                            		</c:if>   		
                            	</c:forEach>
                            	
                            	
                            </div>
                            <h3>This guy's Follower (${friendsNum})</h3>

								<c:forEach items="${friends}" var="in" varStatus="ind">
	                            	<c:if test="${ind.index<45}">	
                            		<a href="${no_view_url }user/friendHome/${in.userId }.action">
                            			<img src="${in.userPic }" alt="" width="50" height="50" />
                            		</a>                         
                            		</c:if>   		
                            	</c:forEach>
						

                        </div><!--//end .followers_gallery_area-->
                    </div><!--//end #friends_side_bar-->
                    <div id="friends_rgtcol"><!--start friends_rgtcol-->
                    	<div class="friend_common_box"><!--start friend_common_box-->
                        	<div class="friend_box_bg">
                        	<div class="friend_box_top">
                        	<div class="friend_box_btm">
                            	
								<a href="${no_view_url}user/sameInterets/${user.userId}/${friend.userId}.action">
								<h2>
								
								We SHARE <span>${total }</span> INTERESTS
								
								
								</h2>
								</a>
                                <div class="img_valley">
                                	
                                    
                                    <c:forEach items="${sameBook}" var="in" varStatus="i">
                                    
                                    	<c:if test="${i.index<3}">
                                    		<a href="${no_view_url }book/${in.bookId}.action">
                                    			<img src="${in.bookPic }" alt="" class="friend_img1" width="61" height="93" />
                                    		</a>		
                                    	</c:if>
                                    
                                    </c:forEach>
                                    
                                     <c:forEach items="${sameMusic}" var="in" varStatus="i">
                                    
                                    	<c:if test="${i.index<3}">
                                    		<a href="${no_view_url }book/${in.musicId}.action">
                                    			<img src="${in.musicPic }" alt="" class="friend_img1" width="61" height="93" />
                                    		</a>		
                                    	</c:if>
                                    
                                    </c:forEach>
                                    
                                     <c:forEach items="${sameMovie}" var="in" varStatus="i">
                                    
                                    	<c:if test="${i.index<3}">
                                    		<a href="${no_view_url }book/${in.movieId}.action">
                                    			<img src="${in.moviePic }" alt="" class="friend_img1" width="61" height="93" />
                                    		</a>		
                                    	</c:if>
                                    
                                    </c:forEach>
                                    
                                    
                                    
                                </div>
                                
                                
                                
                                <div class="img_name">                                	
                                   <!--  -->
                                   
                                   
                                   <c:forEach items="${sameBook}" var="in" varStatus="i">
                                    
                                    	<c:if test="${i.index<3}">
                                    		<a href="${no_view_url }book/${in.bookId}.action">
                                    			<span class="colmn1">${in.bookName }</span>
                                    		</a>		
                                    	</c:if>
                                    
                                    </c:forEach>
                                    
                                     <c:forEach items="${sameMusic}" var="in" varStatus="i">
                                    
                                    	<c:if test="${i.index==0}">
                                    		<a href="${no_view_url }book/${in.musicId}.action">
                                    			<span class="colmn2">${in.musicName }</span>
                                    		</a>		
                                    	</c:if>
                                    
                                    </c:forEach>
                                    
                                     <c:forEach items="${sameMovie}" var="in" varStatus="i">
                                    
                                    	<c:if test="${i.index<3}">
                                    		<a href="${no_view_url }book/${in.movieId}.action">
                                    			<span class="colmn4">${in.movieNameOriginal }</span>
                                    		</a>		
                                    	</c:if>
                                    
                                    </c:forEach>
                                   
                                   
                                   <!--  -->
                                   
                                </div>
                                <div class="arrow_friend">
                                <a href="${no_view_url }activity/yourActivity.action?userId=${friend.userId}&page=1"><img src="${domain }user/img/tripple_arrow4.png" alt="" width="27" height="9" /></a>
                                </div>
                            </div></div></div>
                        </div><!--//end .friend_common_box-->
                        <div class="friend_common_box"><!--start friend_common_box-->
                        	<div class="friend_box_bg"><div class="friend_box_top"><div class="friend_box_btm">
                            	<h2>This guy's Activity</h2>
                                <div class="activity_img_valley">
                                
                                
                                <c:forEach items="${l_friend_activity}" var="i" varStatus="ind"> 
                                
                                <c:if test="${ind.index == 0}">
                                <img class="activity_valley1" src="${i.activityPic}" alt="" width="68" height="67" />
                                </c:if>
                               		
                              	<c:if test="${ind.index<4}">
                              		<img src="${i.activityPic }" alt="" width="67" height="67" />
                           		</c:if>
                                                                                               
                                <c:if test="${ind.index == 4}">
                                	<img class="activity_valley2" src="${i.activityPic }" alt="" width="70" height="67" />
                                </c:if>    
                                    
                                
                                </c:forEach>                                	                                                                                                          
                                </div>
                                <div class="product_descript"><!--start product_descript-->
                                
                                                                
                                <c:forEach items="${l_friend_activity}" var="i" varStatus="ind">                                                                
                                <c:if test="${ind.index<5}">                                
                                <div class="product_col product_col_${ind.index}">
                                    	<h3>
										<a href="${no_view_url}activity/info.action?activityId=${i.activityId}">
										${i.activityName }
										</a>
										</h3>
                                        <span>${i.activityStartTime }</span>
                                        <small></small>
                                    </div>                                
                                </c:if>                                                                                                
                                </c:forEach>
                                
                                
                                                                	
                                </div><!--//end .product_descript-->
                                <div class="finished_activity">
								
								<a href="${no_view_url}activity/yourActivity.action?userId=${friend.userId}&page=1">
								Finished Activity <img src="${domain }user/img/tripple_arrow4.png" alt="" width="27" height="9" /></a></div>
                            </div></div></div>
                        </div><!--//end .friend_common_box-->
                        <div class="list_widget"><!--start list_widget-->
                        	<h2>Tribus List</h2>
                            <ul>
                            
                            <c:forEach items="${tribusList}" var="i" varStatus="ind">
                            
                                <li>
								<a href="${no_view_url}user/tribusList/${i.user.userId}.action">
								${i.resourceName}
								</a>
                                <span>...............................</span>edit by ${i.user.userAlias}
                                </li>
                                
                            </c:forEach>
                                     
                            </ul>
                        </div><!--//end .list_widget-->
                        <div class="list_widget"><!--start list_widget-->
                        	<h2>
							<a href="${no_view_url}user/reviewList/${friend.userId}.action">
							Review
							</a>
							</h2>
                            <ul>
							<li>
								Latest music comments..........................................
							</li>
							<c:forEach items="${musicComments}" var="item" varStatus="in">
							<c:if test="${in.index<10}">
                            		<li>									
									<a href="${no_view_url}review/musicReview/${item.commentId}.action">
									${item.commentContent }  									
									</a>
                            		<span>.........................................................</span>
                            		        <small>
                            					${item.commentDate}
                            				</small>      
                            		</li>
									</c:if>
                            	</c:forEach>

							<li>
								Latest movie comments..........................................
							</li>
								<c:forEach items="${movieComments}" var="item" varStatus="in">
																<c:if test="${in.index<10}">
                            		<li>									
									<a href="${no_view_url}review/movieReview/${item.commentId}.action">
									${item.commentContent }  									
									</a>
                            		<span>.........................................................</span>
                            		        <small>
                            					${item.commentDate}
                            				</small>      
                            		</li>
									</c:if>
                            	</c:forEach>

								
														<li>
								Latest book comments..........................................
							</li>
							<c:forEach items="${bookComments}" var="item" varStatus="in">
								<c:if test="${in.index<10}">
                            		<li>									
									<a href="${no_view_url}review/bookReview/${item.commentId}.action">
									${item.commentContent }  									
									</a>
                            		<span>.........................................................</span>
                            		        <small>
                            					${item.commentDate}
                            				</small>      
                            		</li>
									</c:if>
                            	</c:forEach>
                            	

                                
                            </ul>
                        </div><!--//end .list_widget-->
                        <div class="common_gallery"><!--start common_gallery-->
                        	<h2>Her Book</h2>
                            <div class="gallery_row"><!--start gallery_row-->
                            	<span>
								<a href="${no_view_url}user/friendResourceList/4/${friend.userId}.action">
								Wanted
								</a>
								</span>
                                <div class="gallery_item">
                                	



                                	
                                	
                                	<c:forEach items="${wantbooks}" var="item" varStatus="in">
									<c:if test="${in.index<6}">
                                	<a href="${no_view_url}book/${item.bookId}.action"><img src="${item.bookPic }" alt="" width="71" height="106" /></a>
									</c:if>
                                	</c:forEach>
                                	
                                   
			
			

                                </div>
                            </div><!--//end .gallery_row-->
                            <div class="gallery_row"><!--start gallery_row-->
                            	<span>
								<a href="${no_view_url}user/friendResourceList/5/${friend.userId}.action">
								Finished
								</a>
								</span>
                                <div class="gallery_item">
                                	
                                	
                                	 <c:forEach items="${readbooks}" var="item" varStatus="in">
									 <c:if test="${in.index<6}">
	                                <a href="${no_view_url}book/${item.bookId}.action">
	                                	<img src="${item.bookPic }" alt="" width="71" height="106" />
	                                	
	                                </a>
									</c:if>
                                </c:forEach>
                                	
                                	
                                </div>
                            </div><!--//end .gallery_row-->
                        </div><!--//end .common_gallery-->
                        <div class="common_gallery"><!--start common_gallery-->
                        	<h2>Her Music</h2>
                            <div class="gallery_row"><!--start gallery_row-->
                            	<span>
								<a href="${no_view_url}user/friendResourceList/2/${friend.userId}.action">
								Wanted
								</a>
								</span>
                                <div class="gallery_item">
                                	
                                	
                                	  	  
                                <c:forEach items="${wantmusics}" var="item" varStatus="in">
								<c:if test="${in.index<6}">
                                	<a href="${no_view_url}music/${item.musicId}.action"><img src="${item.musicPic}" alt="" width="71" height="106" /></a>
								</c:if>
                                </c:forEach>
                                	
                                
                                	
                                	
                                </div>
                            </div><!--//end .gallery_row-->
                            <div class="gallery_row"><!--start gallery_row-->
                            	<span>
								<a href="${no_view_url}user/friendResourceList/3/${friend.userId}.action">
								Finished
								</a>
								</span>
                                <div class="gallery_item">
                                	
                                	
                                	
                                	 	                                	                                	   
                                <c:forEach items="${listenmusics}" var="item" varStatus="in">
								<c:if test="${in.index<6}">
                                	<a href="${no_view_url}music/${item.musicId}.action">
                                	<img src="${item.musicPic}" alt="" width="71" height="106" />
                                		
                                	</a>
									</c:if>
                                </c:forEach>  
                                	
                                	
                                	
                                </div>
                            </div><!--//end .gallery_row-->
                        </div><!--//end .common_gallery-->
                        <div class="common_gallery"><!--start common_gallery-->
                        	<h2>Her Movie</h2>
                            <div class="gallery_row"><!--start gallery_row-->
                            	<span>
								<a href="${no_view_url}user/friendResourceList/0/${friend.userId}.action">
								Wanted
								</a>
								</span>
                                <div class="gallery_item">
                                
                                
                                
                                	
                                	   
                                <c:forEach items="${wantmovies}" var="item" varStatus="in">
								<c:if test="${in.index<6}">
                                	<a href="${no_view_url}movie/${item.movieId}.action"><img src="${item.moviePic}" alt="" width="71" height="106" /></a>
								</c:if>
                                </c:forEach>
                                	
                                
                                
                                
                                </div>
                            </div><!--//end .gallery_row-->
                            <div class="gallery_row"><!--start gallery_row-->
                            	<span>
								<a href="${no_view_url}user/friendResourceList/1/${friend.userId}.action">
								Finished
								</a>
								</span>
                                <div class="gallery_item">
                                	
                                	
                                	
                                	  
                                 <c:forEach items="${watchmovies}" var="item" varStatus="in">                       <c:if test="${in.index<6}">
                                	<a href="${no_view_url}movie/${item.movieId}.action"><img src="${item.moviePic}" alt="" width="71" height="106" /></a>                                
								</c:if>
                                </c:forEach>
                                
                                
                                	
                                	
                                	
                                </div>
                            </div><!--//end .gallery_row-->
                        </div><!--//end .common_gallery-->
                        
                        
                        <div id="first_comment_box" class="comment_box"><!--start comment_box-->
                            <div class="arrow_author2"></div>
                            <div class="comment_first_content"><!--start comment_first_content-->
                                <div class="pic_author">
                                    <div class="arrow_author1"></div>
                                    <img src="${user.userPic}" alt="" width="73" height="73" />
                                </div>
                                <div class="author_total_rgt">
                                    <div class="author_speech">
                                        <textarea rows="10" cols="10" onclick="if(this.value=='Name Says : ...')(this.value='')"  onblur="if(this.value=='')(this.value='Name Says : ...')">Name Says : ...</textarea>
                                    </div>
                                    <div class="author_icon">
                                        <span><img src="${domain }user/img/icon_album.jpg" alt="" width="20" height="19" /></span>
                                        <div class="btn_done"><a href="javascript:write_speaking();">Done</a></div>
                                    </div>
                                </div>
                            </div><!--//end .comment_first_content-->
                        </div><!--//end .comment_box-->
                        
                       
                        
                        
                   
                   
                   
                   	<c:forEach items="${activityComments}" var="item" varStatus="in">														
					        <c:if test="${in.index%2 == 0}">
                        		<div class="comment_box bg_differ"><!--start comment_box-->
                        	</c:if>                        	
                        	<c:if test="${in.index%2 != 0}">
                        		<div class="comment_box"><!--start comment_box-->
                        	</c:if>                                               
                            <div class="comment_scnd_content"><!--start comment_scnd_content-->                            
                                <div class="pic_author">                                                                                                
                                <a href="${no_view_url}activity/info.action?activityId=${item.activityId}">
                                    <img src="${user.userPic }" alt="" width="72" height="72" /></a>                                                                                                   
                                </div>
                                <div class="author_total_rgt">                                                                        
                                    <div class="author_speech">                                                        
                                        <h3>${item.activityId }</h3>
                                        <div class="edit_tools">
                                        	<label  class="text_label">
                                        	${item.commentContent }
                                        	</label>
                                            <div style="display: block;" class="edit"></div>                                            
                                         </div>
                                        <span>${item.commentDate }</span>
                                    </div>
                                </div>
                            </div><!--//end .comment_scnd_content-->
                        </div><!--//end .comment_box-->
                        </c:forEach>
                   
                   
                   <c:forEach items="${speakings}" var="item" varStatus="in">														
					        <c:if test="${in.index%2 == 0}">
                        		<div class="comment_box bg_differ"><!--start comment_box-->
                        	</c:if>                        	
                        	<c:if test="${in.index%2 != 0}">
                        		<div class="comment_box"><!--start comment_box-->
                        	</c:if>                                               
                            <div class="comment_scnd_content"><!--start comment_scnd_content-->                            
                                <div class="pic_author">                                                                                                
                                <a href="${domain}user/friendHome/${item.me.userId}.action">
                                    <img src="${item.me.userPic}" alt="" width="72" height="72" /></a>                                                                                                   
                                </div>
                                <div class="author_total_rgt">                                                                        
                                    <div class="author_speech">                                                        
                                        <h3>${item.me.userAlias}</h3>
                                        <div class="edit_tools">
                                        	<label  class="text_label">
                                        	${item.messageContent }
                                        	</label>
                                            <div style="display: block;" class="edit"></div>                                            
                                         </div>
                                        <span>${item.messageDate }</span>
                                    </div>
                                </div>
                            </div><!--//end .comment_scnd_content-->
                        </div><!--//end .comment_box-->
                        </c:forEach>
                   
                   
                   
                        
                    </div><!--//end #friends_rgtcol-->
                </div><!--//end #friends_content-->
            </div><!--//end #main_content-->
            <div id="footer"><p> &copy;2012 goTribus |<span>All rights reserved</span> </p></div>
            <div id="back_to_top"><a href="#top"></a></div>
        </div><!--//end #main_area-->
    </div><!--//end #wrapper-->
    <script src="${domain }user/js/smoothscroll.js" type="text/javascript"></script>   
    <script src="${domain }user/js/easy-editable-text.js" type="text/javascript"></script>

</body>
</html>                                                                                                   