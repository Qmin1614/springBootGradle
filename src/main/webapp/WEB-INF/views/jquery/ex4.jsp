<%--
  Created by IntelliJ IDEA.
  User: pkm16
  Date: 2022-09-15
  Time: 오후 2:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script>
        function clickHandler(e){
            alert('thank you');
        }

        // $(document).bind('ready', function(){
        //     $('#click_me').bind('click', clickHandler);
        //     $('#remove_event').bind('click', function(e){
        //         $('#click_me').unbind('click', clickHandler);
        //     });
        //     $('#trigger_event').bind('click', function(e){
        //         $('#click_me').trigger('click');
        //     });
        // })

        //event helper
        $(document).ready(function(){
            $('#click_me').click(clickHandler);
            $('#remove_event').click(function(e){
                $('#click_me').unbind('click', clickHandler);
            });
            $('#trigger_event').click(function(e){
                $('#click_me').trigger('click');
            });
        })

        //event use by on (live does not used these day)
        // $('#click_me').on('click', clickHandler);
        // $('#remove_event').on('click', function(e) {
        //     $('#click_me').off('click', clickHandler);
        // });
        // $('#trigger_event').on('click', function(e) {
        //     $('#click_me').trigger('click');
        // });
    </script>
</head>
<body>
<input id="click_me" type="button" value="click me" />
<input id="remove_event" type="button" value="unbind" />
<input id="trigger_event" type="button" value="trigger" /></body>
</html>
