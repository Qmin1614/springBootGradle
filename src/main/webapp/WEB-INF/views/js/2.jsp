<%--
  Created by IntelliJ IDEA.
  User: pkm16
  Date: 2022-09-13
  Time: 오후 2:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>WEB1 - JavaScript</title>
    <meta charset="utf-8">
    <script>

        var Links = {
            setColor:function(color){
                var alist = document.querySelectorAll('a');
                var i = 0;
                while(i < alist.length){
                    alist[i].style.color = color;
                    i = i + 1;
                }
            }
        }

        var Body = {
            setColor:function (color){
                var target = document.querySelector('body');
                target.style.color = color;
            },
            setBackgroundColor:function (color){
                var target = document.querySelector('body');
                target.style.backgroundColor = color;
            }
        }


        function nightDayHandler(self){

            if(self.value === 'night'){
                Body.setBackgroundColor('black');
                Body.setColor('white');
                self.value = 'day';

                Links.setColor('powderblue');
            } else {
                Body.setBackgroundColor('white');
                Body.setColor('black');
                self.value = 'night';

                Links.setColor('blue');
            }
        }
    </script>
</head>
<body>
<h1><a href="/">WEB</a></h1>
<input type="button" value="night" onclick="
    nightDayHandler(this);
  ">
<input type="button" value="night" onclick="
    nightDayHandler(this);
  ">
<ol>
    <li><a href="1">HTML</a></li>
    <li><a href="2">CSS</a></li>
    <li><a href="3">JavaScript</a></li>
</ol>
<h2>CSS</h2>
<p><a href="https://www.w3.org/TR/html5/"
      target="_blank" title="html5
    speicification">Hypertext Markup Language</a>종속형 시트 또는 캐스케이딩 스타일 시트(영어: Cascading Style Sheet)는 마크업 언어가 실제 표시되는 방법을
    기술하는 스타일 언어(영어: Style sheet language 스타일 시트 랭귀지[*])로[1],
    HTML과 XHTML에 주로 쓰이며, XML에서도 사용할 수 있다. W3C의 표준이고, 레이아웃과 스타일을 정의할 때의 자유도가 높다.</p>

<p>기본 파일명[2]은 style.css이다.</p>

<p>마크업 언어(ex: HTML)가 웹사이트의 몸체를 담당한다면 CSS는 옷과 액세서리처럼 꾸미는 역할을 담당한다고 할 수 있다. 즉, HTML 구조는 그대로 두고 CSS 파일만 변경해도 전혀 다른 웹사이트처럼
    꾸밀 수 있다.</p>

<p>현재 개발 중인 CSS3의 경우 그림자 효과, 그라데이션, 변형 등 그래픽 편집 프로그램으로 제작한 이미지를 대체할 수 있는 기능이 추가되었다. 또한 다양한 애니메이션 기능이 추가되어 어도비 플래시를 어느 정도
    대체하고 있다.</p>

<h3>역사</h3>
<p>CSS는 1994년 10월 10일, 하콤 비움 리(Håkon Wium Lie)가 처음 제안하였다.[3]</p>

<h3>버전의 변화</h3>
<p>CSS는 지속적으로 새로운 버전이 나오고 있다. 1996년에 도입된 CSS 1은 CSS의 바탕이 되었다. CSS의 표준으로는 CSS 2.1이 있으며 이전 버전에 비하여 새로운 기능과 도구가 추가되었다. 대다수의
    웹 브라우저는 CSS 3를 잘 지원한다.
    현재 W3C에서는 CSS 3를 표준으로 만들고 있다.</p>

<p>CSS는 여러 수준과 프로파일을 가지고 있다. 각 수준의 CSS는 일반적으로 새로운 기능을 담고 있으며 CSS1, CSS2, CSS3, CSS4로 나뉜다. 프로파일들은 일반적으로 특정한 장치나 사용자
    인터페이스를 위해 만들어진 하나 이상 수준의 CSS의 하부 집합이다. </p>
현재 휴대용 장치, 프린터, 텔레비전 수상기를 위한 프로파일들이 있다.</p>
<input type="button" value="night" onclick="
    if(this.value === 'night'){
      document.querySelector('body').style.backgroundColor = 'black';
      document.querySelector('body').style.color = 'white';
      this.value = 'day';
    } else {
      document.querySelector('body').style.backgroundColor = 'white';
      document.querySelector('body').style.color = 'black';
      this.value = 'night';
    }
  ">
</body>
</html>