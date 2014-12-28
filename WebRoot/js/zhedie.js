// JavaScript Document
$(document).ready(function(){
						$(".list>a").click(function(){
								$(this).next(".one").slideToggle();
								$(".two").css("display","none");
								$(".three").css("display","none");
						
						});
						$(".list>a").click(function(){
								$(this).next(".two").slideToggle();
								$(".one").css("display","none");
								$(".three").css("display","none");
								});
							$(".list>a").click(function(){
								$(this).next(".three").slideToggle();
								$(".two").css("display","none");
								$(".one").css("display","none");
								});
 						   
						   });