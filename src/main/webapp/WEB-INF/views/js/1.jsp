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
    <title>WEB - HTML</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="js/colors.js"></script>
</head>
<body>
<h1><a href="/">WEB</a></h1>
<input type="button" value="night" onclick="nightDayHandler(this);">
<ol>
    <li><a href="1">HTML</a></li>
    <li><a href="2">CSS</a></li>
    <li><a href="3">JavaScript</a></li>
</ol>
<h2>HTML</h2>
<p><a href="https://www.w3.org/TR/html5/"
      target="_blank" title="html5
    speicification">Hypertext Markup Language</a>하이퍼 텍스트 마크업 언어(영어: Hyper Text Markup Language, HTML, 문화어: 초본문표식달기언어,
    하이퍼본문표식달기언어)는 웹 페이지 표시를 위해 개발된 지배적인 마크업 언어다.
    또한, HTML은 제목, 단락, 목록 등과 같은 본문을 위한 구조적 의미를 나타내는 것뿐만 아니라 링크, 인용과 그 밖의 항목으로 구조적 문서를 만들 수 있는 방법을 제공한다. 그리고 이미지와 객체를 내장하여
    대화형 양식을 생성하는 데 사용될 수 있다.
    HTML은 웹 페이지 콘텐츠 안의 꺾쇠 괄호에 둘러싸인 "태그"로 되어있는 HTML 요소 형태로 작성한다. HTML은 웹 브라우저와 같은 HTML 처리 장치의 행동에 영향을 주는 자바스크립트, 본문과 그 밖의
    항목의 외관과 배치를 정의하는 CSS 같은 스크립트를 포함하거나
    불러올 수 있다. HTML과 CSS 표준의 공동 책임자인 W3C는 명확하고 표상적인 마크업을 위하여 CSS의 사용을 권장한다.</p>
<h3>역사</h3>
<p>개발</p>
<p> 팀 버너스리
    1980년, 유럽 입자 물리 연구소(CERN)의 계약자였었던 물리학자 팀 버너스리가 HTML의 원형인 인콰이어를 제안하였다. 인콰이어는 CERN의 연구원들이 문서를 이용하고 공유하기 위한 체계였다.
    1989년에 팀 버너스리는 인터넷 기반 하이퍼텍스트
    체계를 제안하는 메모를 작성했다.[2] 버너스 리는 1990년 말에 HTML을 명시하고, 브라우저와 서버 소프트웨어를 작성했다. 그 해에 버너스리와 CERN 데이터 시스템 엔지니어 로버트 카일리아우와 함께
    CERN측에 자금 지원을 요청하였지만, 이 프로젝트는 CERN으로부터
    정식으로 채택 받지 못했다. 버너스리의 개인적인 기록에 1990년부터 "하이퍼텍스트가 사용되는 여러 분야의 일부"를 열거했고 백과사전을 그 목록의 첫 번째로 두었다.</p>
<h3>최초 규격</h3>
<p> HTML 최초의 일반 공개 설명은 1991년 말에 버너스리가 처음으로 인터넷에서 문서를 "HTML 태그"(HTML tag)로 부르면서 시작되었다.</p>

<p> 그것은 머릿글자로 이루어진 20개의 요소를 기술하였고, 상대적으로 HTML의 단순한 디자인이었다. 하이퍼링크를 제외한 HTML 태그들은 CERN 자체의 SGML 기반 문서화 포맷인 SGML GUID에 강하게
    영향을 받았다. 이 요소 중 13개는 HTML 4 버전에서도 여전히 존재한다.</p>

<p> HTML은 동적인 웹 페이지의 웹 브라우저를 통한 문자와 이미지 양식이다. 문자 요소의 대부분은 1988년 ISO 기술 보고서 9537 SGML을 이용한 기법에서 찾을 수 있다. 하지만 SGML 개념의
    일반적인 마크업은 단지 개별 효과 보다는 요소 기반이고 또한 구조와
    처리의 분리(?)(HTML은 CSS와 함께 이 방향으로 점진적으로 이동해 왔다.)</p>

<p> 버너스리는 SGML 응용 프로그램이 되는 HTML을 고안해야 했고 그것은 공식적으로 IETF(국제 인터넷 표준화 기구)에 의하여 1993년 중반, HTML 규격에 대한 최초의 제안을 간행물로 정의했다.
    (버너스리와 덴 콘놀리에 의한 문법을 규정하는 SGML
    문서 형식 정의(SGML DTD)가 포함된 "하이퍼텍스트 마크업 언어(HTML)" 인터넷 초안[7]) 이 초안은 6개월 후 만료된다. 하지만 NCSA 모자이크 브라우저의 인라인 이미지를 내장하는 사용자 정의
    태그의 사례는 주목할 만 했고, 성공적인 프로토타입에 대한 표준을
    기반한 IETF의 철학을. [8] 마찬가지로 데이브 라그렛의 경쟁 인터넷 초안인 "HTML+ (하이퍼텍스트 마크업 포맷)"은 1993년 말에 테이블과 기입양식 같은 요소들을 이미 구현하여 표준화 제안을
    했다.</p>

<p> 이후 1994년 초 HTML과 HTML+ 초안은 만료되었고, IETF는 HTML 작업 그룹을 설립해 1995년에 HTML 2.0을 완성한다. 최초의 HTML의 규격은 미래에 수행될 HTML 표준을 기반으로
    간주되는 경향이 있었다.
    RFC 1996년에 HTML 2.0은 HTML과 HTML+ 초안의 아이디어가 포함됐다고 발표했다.[10] HTML 2.0 지정은 이전의 초안들로부터 새로운 버전을 구별하기 위해서였다.</p>

<p> 게다가 IETF의 후원하에 개발은 상충하는 이해 관계 때문에 지연되었다. 1996년부터 HTML 규격은 상용 소프트웨어 제작사의 투입으로 월드 와이드 웹 컨소시엄(W3C)에서 유지해 왔다. 하지만
    2000년부터 HTML 또한 국제 표준(ISO/IEC 15445:2000)이 되었다.
    현재 W3C에 의해 발표된 최신 규격은 1999년 말에 발표된 HTML 4.01 권고안이며 2001년에 문제와 오류들이 수정되어 발표된 안이 최종 승인되었다.</p>
</body>
</html>