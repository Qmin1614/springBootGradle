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
    <meta charset="UTF-8">
    <title>WEB - JavaScript</title>
    <link rel="stylesheet" href="../css/style.css">
    <script>
        function nightDayHandler(self) {
            let target = document.querySelector('body');
            let alist = document.querySelectorAll('a');
            let pageStyle = [];

            if (self.value === 'night') {
                // 배경색,글자색,버튼내용,링크색
                pageStyle = ['black', 'white', 'day', 'powderblue'];
            } else {
                pageStyle = ['white', 'black', 'night', 'blue'];
            }

            target.style.backgroundColor = pageStyle[0];
            target.style.color = pageStyle[1];
            self.value = pageStyle[2];

            for (var i = 0; i < alist.length; i++) {
                alist[i].style.color = pageStyle[3];
            }
        }
    </script>
</head>
<h1><a href="/css">WEB</a></h1>
<div id="grid">
    <ol>
        <li><a href="1">HTML</a></li>
        <li><a href="2">CSS</a></li>
        <li><a href="3">JavaScript</a></li>
    </ol>
    <div id="article">
        <input id="night_day" type="button" value="night" onclick="nightDayHandler(this)">
        <h2>JavaScript</h2>
        <p><a href="https://www.w3.org/TR/html5/" target="_blank" title="html5 speicification">Hypertext Markup
            Language</a>자바스크립트(영어: JavaScript)는 객체 기반의 스크립트 프로그래밍 언어이다. 이 언어는 웹 브라우저 내에서 주로
            사용되며, 다른 응용 프로그램의 내장 객체에도 접근할 수 있는 기능을 가지고 있다. 또한 Node.js와 같은 런타임 환경과 같이 서버 프로그래밍에도 사용되고 있다. 자바스크립트는 본래
            넷스케이프
            커뮤니케이션즈 코퍼레이션의 브렌던 아이크(Brendan Eich)가 처음에는 모카(Mocha)라는 이름으로, 나중에는 라이브스크립트(LiveScript)라는 이름으로 개발하였으며,
            최종적으로 자바스크립트가
            되었다. 자바스크립트가 썬 마이크로시스템즈의 자바와 구문이 유사한 점도 있지만, 이는 사실 두 언어 모두 C 언어의 기본 구문에 바탕을 뒀기 때문이고, 자바와 자바스크립트는 직접적인
            연관성은 약하다. 이름과
            구문 외에는 자바보다 셀프나 스킴과 유사성이 많다. 자바스크립트는 ECMA스크립트(ECMAScript)의 표준 사양을 가장 잘 구현한 언어로 인정받고 있으며 ECMAScript
            5(ES5)까지는 대부분의
            브라우저에서 기본적으로 지원되었으나 ECMAScript 6 이후부터는 브라우저 호환성을 위해 트랜스파일러로 컴파일된다.[4]</p>

        <h3>역사</h3>
        <h4>넷스케이프에서의 시작</h4>
        <p>1993년, 일리노이 대학교 어배너-섐페인의 NCSA는 최초의 대중적인 그래픽 웹 브라우저인 NCSA 모자이크를 출시하였다. 1994년, 모자이크 커뮤니케이션스라는 이름의 회사가
            캘래포니아주 마운틴 뷰에
            설립되었으며 모자이크 넷스케이프를 만들기 위해 오리지널 NCSA 모자이크 개발자들을 고용하였다. 그러나 NCSA 모자이크와 코드는 의도적으로 공유하지 않았다. 이 기업의 브라우저의 내부
            코드명은 모질라였으며
            이는 "Mosaic and Godzilla"에서 비롯된 용어이다.[5]. 이 웹 브라우저의 첫 버전인 모자이크 넷스케이프 0.9는 1994년 말에 출시되었다. 4개월 후 브라우저 시장의
            3/4를 잠식하면서
            1990년대에 주된 웹 브라우저가 되었다. NCSA의 상표 소유권 문제를 회피하고자 이 브라우저는 같은 해에 "넷스케이프 내비게이터"로 이름을 바꾸었으며 이 기업은 "넷스케이프
            커뮤니케이션스"라는 이름을
            취하였다. 넷스케이프 커뮤니케이션스는 웹이 더 동적으로 변화할 필요가 있었음을 실감했다. 기업의 설립자 Marc Andreessen은 HTML에 코드를 웹 페이지 마크업으로 직접
            작성하면서 웹 디자이너들과
            파트타입 프로그래머들이 이미지, 플러그인 등의 요소를 쉽게 조합할 수 있는 글루 언어(glue language)가 필요했다고 믿었다.</p>

        <p>1995년, 넷스케이프 커뮤니케이션스는 스킴 프로그래밍 언어를 넷스케이프 내비게이터에 임베디드하기 위해 브렌던 아이크를 영입하였다.[6] 시작 전에 넷스케이프 커뮤니케이션스는 넷스케이프
            내비게이터 썬의 더
            정적인 프로그래밍 언어인 자바를 포함시키기 위해 썬 마이크로시스템즈와 협업했으며 이는 사용자에게 웹 기술 및 플랫폼을 채택시키려는 마이크로소프트와 경쟁하기 위해서였다.[7] 넷스케이프
            커뮤니케이션스는 이때
            자신들이 만들기 바랐던 스크립트 언어가 자바를 구현할 것이고 비슷한 문법을 채용하는 것이 좋겠다고 생각했으며 펄, 파이썬, Tcl, 스킴 등 기타 언어를 채택하는 것을 배제하였다.
            경쟁적인 제안에 대항하여
            자바스크립트 개념을 방어하기 위해 이 기업은 프로토타입이 필요했다. 아이크는 1995년 5월 10일 안에 이를 작성했다.</p>

        <p>원래 모카(Mocha)라는 이름으로 개발되었으나 이 언어는 공식적으로 라이브스크립트(LiveScript)로 불렸으며 이 당시 1995년 9월 넷스케이프 내비게이터 2.0의 베타 릴리스가
            이루어졌으나 나중에
            이름이 자바스크립트로 바뀌었는데[8] 이는 12월 넷스케이프 내비게이터 2.0 베타 3에 채용되었다.[9] 이름의 최종 선정에 혼란이 야기되었는데 이 언어가 자바 프로그래밍 언어에서
            파생되었다는 인상을
            심었으며 이러한 선택이 마케팅적인 특징을 보였고[10] 이는 넷스케이프가 당시 인기있는 웹 프로그래밍 언어로서 자바스크립트를 내밀기 위한 것이었다.</p>
    </div>
</div>
</body>
</html>