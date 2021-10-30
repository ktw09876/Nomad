<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("idKey");
%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NOMAD</title>
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<link rel="stylesheet" href="fullPage/jquery.fullPage.css">
<link href="bootstrap/bootstrap.min.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=BioRhyme:wght@400;700&family=Inria+Serif:wght@400;700&family=Monoton&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/css/reset.css">
<link rel="stylesheet" href="css/css/common.css">
<link rel="stylesheet" href="css/css/fhd.css" media="screen and (min-width:1400px)">
<link rel="stylesheet" href="css/css/hd.css" media="screen and (min-width:1020px) and (max-width:1399px)">
<link rel="stylesheet" href="css/css/tablet.css" media="screen and (min-width:661px) and (max-width:1019px)">
<link rel="stylesheet" href="css/css/mobile.css" media="screen and (max-width:660px)">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="fullPage/jquery.fullPage.min.js"></script>
<script src="bootstrap/bootstrap.min.js"></script>
<script>
	$(document).ready(function(e) {
		$('section').fullpage({
			menu:'#main-menu',
			anchors:['main', 'sub1', 'sub2', 'sub3']
		});
		$('#trigger').click(function(e) {
			e.preventDefault();
			$(this).toggleClass('active');
			$('nav, .bg, header').toggleClass('active');				
		});
        $('#main-menu li:nth-child(1)').hover(function() {
            $('.box04').toggleClass('active1')
        })
        $('#main-menu li:nth-child(2)').hover(function() {
            $('.box04').toggleClass('active2')
        })
        $('#main-menu li:nth-child(3)').hover(function() {
            $('.box04').toggleClass('active3')
        })
		$('#main-menu li:nth-child(4)').hover(function() {
            $('.box04').toggleClass('active4')
        })
		$('#main-menu li').click(function(e) {
			$('nav, .bg, #trigger').toggleClass('active');
		});
		
		var winWidth = $(window).width()
		
		if(winWidth > 1399) {
			$('.sns li:nth-child(1)').animate({ right:'140px' }, 700);
			$('.sns li:nth-child(2)').animate({ right:'70px' }, 1000);
			$('.sns li:nth-child(3)').animate({ right:'0' }, 2000);
			$('.box1').animate({ 
				left:'-1000px',
				top:'-400px'
			});
			$('.title1').delay(700).animate({ left:'0' }, 400);			
			$('.txt2').animate({ left:'120px' }, 800);
		}else if(winWidth > 1019){
			$('.sns li:nth-child(1)').animate({ right:'140px' }, 700);
			$('.sns li:nth-child(2)').animate({ right:'70px' }, 1000);
			$('.sns li:nth-child(3)').animate({ right:'0' }, 2000);
			$('.box1').animate({ 
				left:'-1000px',
				top:'-10%'
			});
			$('.title1').delay(700).animate({ left:'0' }, 400);			
			$('.txt2').animate({ left:'120px' }, 800);
		}else if(winWidth > 700){
			$('.sns li:nth-child(1)').animate({ right:'110px' }, 700);
			$('.sns li:nth-child(2)').animate({ right:'55px' }, 1000);
			$('.sns li:nth-child(3)').animate({ right:'0' }, 2000);
			$('.box1').animate({ 
				left:'-100px',
				top:'-550px'
			});	
			$('.title1').delay(700).animate({ left:'3%' }, 400);
			$('.txt2').animate({ left:'120px' }, 800);
		}else {

			$('.sns li:nth-child(1)').animate({ bottom:'0' }, 700);
			$('.sns li:nth-child(2)').animate({ bottom:'0' }, 1000);
			$('.sns li:nth-child(3)').animate({ bottom:'0' }, 2000);

			$('.box1').animate({ 
				left:'-180px',
				top:'-550px'
			});	
			$('.title1').delay(700).animate({ left:'3%' }, 400);
			$('.txt2').animate({ left:'90px' }, 800);
		};
		
		$('.txt1').delay(1300).animate({ left:'0' }, 400);		
		$('.title2').delay(1000).animate({ left:'0' }, 400);
		$('.isa').css({ 
			transform:'rotateY(360deg)',
			transition:'all 0.4s ease-in 2s'
		});	
		$('.bar').css({ background:'rgba(90,110,30,1)' })				
		$('.btn').css({ 
			transform:'scale(1)',
			opacity:'1'
		});
        $('.mc').mouseover(function() {
            $(this).parent().siblings().children().css({'opacity':'0.2'})
        })
        $('.mc').mouseleave(function() {
            $(this).parent().siblings().children().css({'opacity':'1'})
        });
	});
</script>
</head> 

<body>
    <header>        
        <a href="#" id="trigger"> 
            <span></span>
            <span></span>
            <span></span>
        </a>        
        <h1><a href="index.html"><img src="imgs/hd-logo.png" alt="로고"></a></h1>       
        <ul class="topmenu">
			<%	if(id != null) { %>        	
			
			<li><a href="member/logout.jsp"><span class="glyphicon glyphicon-log-out"></span></a></li>
			<li><a href="member/memberUpdate.jsp"><span class="glyphicon glyphicon-edit"></span></a></li>
			<%	}else { %>
			<li><a href="member/login.jsp"><span class="glyphicon glyphicon-log-in"></span></a></li>
			<li><a href="member/member.jsp"><span class="glyphicon glyphicon-user"></span></a></li>
			<%	} %>
		</ul> 
        <nav>
            <ul id="main-menu">
                <li><a href="#main">Main</a></li>
                <li><a href="#sub1">About Nomad</a></li>
                <li><a href="#sub2">Products</a></li>
                <li><a href="#sub3">Class</a></li>
            </ul>
        </nav>
    </header>        
    
    <div class="bg box03"></div>
    <div class="bg box02"></div>
    <div class="bg box01"></div>
    <div class="bg box04"></div>
    
    <section>
    	<div class="main section">
            <ul class="sns">
                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                <li><a href="#"><i class="fab fa-facebook-square"></i></a></li>
                <li><a href="#"><i class="fab fa-youtube"></i></a></li>
            </ul>
			<div class="box1"></div>
            <div class="txt">
                <h2 class="title1">what<span class="isa"> is a</span></h2>
                <h2 class="title2"><span class="pink">g</span>ood <span class="pink">c</span>offee?</h2>                
                <div class="sub-txt">
                    <p class="txt1">COFFEE?</p>
                    <div class="bar"></div>
                    <p class="txt2"><span class="nd">NOMAD</span>만의 스페셜 티<br>원두를 즐겨보세요!</p>
                </div>
                <a href="#" class="btn">Read More</a>
            </div>
        </div>
        
        <div class="section sub">
            <div class="sub-wrap">
                <div class="sub-txt">
                    <h3><span>A</span>bout Noma<span>d</span></h3>
                    <div class="bar"></div>
                    <p><span>NOMAD</span>만의 특별한<br> 이야기를 알려 드립니다.</p>
                </div>
                <div class="clear"></div>
                
                <ul class="demo demo1">
                    <li>
                		<div class="mc mc1">
                            <div class="mc-txt">
                                <svg width="100%" height="100%">
                                    <line x1="0" y1="0" x2="900" y2="0" class="top" />
                                    <line x1="0" y1="460" x2="0" y2="-920" class="left" />
                                    <line x1="300" y1="460" x2="-600" y2="460" class="bottom" />
                                    <line x1="300" y1="0" x2="300" y2="1380" class="right" />
								</svg>
                                <h3>About Us</h3>
                                <p>일상의 지루함을 커피 한 잔으로 잠시 환기해보세요.</p>
                                <a href="#">Read More</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="mc mc2">
                            <div class="mc-txt">
                                <svg width="100%" height="100%">
									<line x1="0" y1="0" x2="900" y2="0" class="top" />
									<line x1="0" y1="460" x2="0" y2="-920" class="left" />
									<line x1="300" y1="460" x2="-600" y2="460" class="bottom" />
									<line x1="300" y1="0" x2="300" y2="1380" class="right" />
								</svg>
                                <h3>Location</h3>
                                <p>Nomad@송파점</p>
                                <p class="address">서울 특별시 송파구 백제고분로 52번길 256</p>
                                <a href="#">Read More</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="mc mc3">
                            <div class="mc-txt">
                                <svg width="100%" height="100%">
									<line x1="0" y1="0" x2="900" y2="0" class="top" />
									<line x1="0" y1="460" x2="0" y2="-920" class="left" />
									<line x1="300" y1="460" x2="-600" y2="460" class="bottom" />
									<line x1="300" y1="0" x2="300" y2="1380" class="right" />
								</svg>
                                <h3>Contact Us</h3>
                                <p>노마드는 좋은 커피의 기준을 균형에서 찾습니다.</p>
                                <a href="#">Read More</a>
                            </div>
                        </div>
                    </li>                    
                </ul>
            </div>
    	</div>
        
        <div class="section sub2">
            <div class="sub-wrap">
                <div class="sub-txt">
                    <h3><span>P</span>roduc<span>t</span></h3>
                    <div class="bar"></div>
                    <p><span>NOMAD</span>만의 특별한<br> 로스팅 원두를 즐겨보세요!</p>
                </div>
            	<div class="clear"></div>
                <p>Nomad Blending <span>Medium Dark Roasting</span></p>
                <ul class="ch-grid">
                    <li>
                        <div class="ch-item ch-bg-1">
                            <h3>Origin</h3>
                            <div class="ch-info ch-info1">
                            	<h3>Origin</h3>
                                <ul>                                    
                                    <li>-Colombia</li>
                                    <li>-Guatemala</li>
                                    <li>-Costa Rica</li>
                                    <li>-Ethiopia</li>
                                    <li><a href="#">click</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ch-item">
                            <h3>Flavor</h3>
                            <div class="ch-info ch-info2">
                            	<h3>Flavor</h3>
                                <ul>
                                    <li>-Dark Chocolate</li>
                                    <li>-Hazelnut</li>
                                    <li>-Milk Powder</li>
                                    <li>-Brown Sugar</li>
                                    <a href="#">click</a>
                                </ul>
                            </div>
                            <div class="ch-thumb ch-bg-2"></div>
                        </div>
                    </li>
                    <li>
                        <div class="ch-item">
                            <h3>Brewing</h3>
                            <div class="ch-info ch-info3">
                                <div class="ch-info-front ch-bg-3"></div>
                                <div class="ch-info-back">
                                	<h3>Brewing</h3>
                                    <ul>
                                        <li>-Espresso</li>
                                        <li>-Hand Drip</li>
                                        <li>-French Press</li>
                                        <li>-Mocha Pot</li>
                                        <li><a href="#">click</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>       
            </div>
        </div>
        
        <div class="section sub3">
            <div class="sub-wrap">
                <div class="sub-txt">
                    <h3><span>C</span>las<span>s</span></h3>
                    <div class="bar"></div>
                    <p><span>NOMAD</span>와 함께하면<br> 혼자서도 간편하게</p>
                </div>
            <div class="clear"></div>
            
            <ul class="demo demo2">
                <li>
                    <div class="mc mc1">
                        <div class="mc-txt">
                            <svg width="100%" height="100%">
                                <line x1="0" y1="0" x2="900" y2="0" class="top" />
                                <line x1="0" y1="460" x2="0" y2="-920" class="left" />
                                <line x1="300" y1="460" x2="-600" y2="460" class="bottom" />
                                <line x1="300" y1="0" x2="300" y2="1380" class="right" />
                            </svg>
                            <h3>로그인</h3>
                            <a href="#">Read More</a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="mc mc2">
                        <div class="mc-txt">
                            <svg width="100%" height="100%">
                                <line x1="0" y1="0" x2="900" y2="0" class="top" />
                                <line x1="0" y1="460" x2="0" y2="-920" class="left" />
                                <line x1="300" y1="460" x2="-600" y2="460" class="bottom" />
                                <line x1="300" y1="0" x2="300" y2="1380" class="right" />
                            </svg>
                            <h3>회원가입</h3>
                            <a href="#">Read More</a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="mc mc2">
                        <div class="mc-txt">
                            <svg width="100%" height="100%">
                                <line x1="0" y1="0" x2="900" y2="0" class="top" />
                                <line x1="0" y1="460" x2="0" y2="-920" class="left" />
                                <line x1="300" y1="460" x2="-600" y2="460" class="bottom" />
                                <line x1="300" y1="0" x2="300" y2="1380" class="right" />
                            </svg>
                            <h3>클래스</h3>
                            <a href="#">Read More</a>
                        </div>
                    </div>
                </li>                    
            </ul>
        </div>
            <footer>
                <div class="ft-wrap">
                    <h2><a href="#main"><img src="imgs/hd-logo.png" alt="푸터 로고"></a></h2>
                    <p>(주)서울 특별시 송파구 백제고분로 52번길 256 tel. 02-222-5555/fax.02-256-8975</p>
                </div>
            </footer>
        </div>

    </section>

</body>
</html>



