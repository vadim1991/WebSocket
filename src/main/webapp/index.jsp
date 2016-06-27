<!DOCTYPE html>
<html>
<head>
    <title>Hello WebSocket</title>
    <script src="/resources/js/sockjs.js"></script>
    <script src="/resources/js/stomp.js"></script>
    <script type="text/javascript">
        var stompClient = null;
        var topicID = randomString(10);

        function setConnected(connected) {
            document.getElementById('connect').disabled = connected;
            document.getElementById('disconnect').disabled = !connected;
            document.getElementById('conversationDiv').style.visibility = connected ? 'visible' : 'hidden';
            document.getElementById('response').innerHTML = '';
        }

        function connect() {
            var socket = new SockJS('/authentication');
            stompClient = Stomp.over(socket);
            stompClient.connect({}, function(frame) {
                setConnected(true);
                console.log('Connected: ' + frame);
                stompClient.subscribe('/topic/authentication/' + topicID, function(authenticationResponse){
                    showGreeting(authenticationResponse.body);
                });
            });
        }

        function disconnect() {
            stompClient.disconnect();
            setConnected(false);
            console.log("Disconnected");
        }

        function sendName() {
            var email = document.getElementById('email').value;
            var password = document.getElementById('password').value;
            var request = new Object();
            request.type = "LOGIN_CUSTOMER";
            request.sequence_id = topicID;
            request.data = {};
            request.data.email = email;
            request.data.password = password;
            stompClient.send("/app/authentication/", {}, JSON.stringify(request));
        }

        function showGreeting(authenticationResponse) {
            console.log(authenticationResponse);
            var response = document.getElementById('response');
            var p = document.createElement('p');
            p.style.wordWrap = 'break-word';
            p.appendChild(document.createTextNode(authenticationResponse));
            response.appendChild(p);
        }
        function randomString(length) {
            return Math.round((Math.pow(36, length + 1) - Math.random() * Math.pow(36, length))).toString(36).slice(1);
        }
    </script>
</head>
<body>
<div>
    <div>
        <button id="connect" onclick="connect();">Connect</button>
        <button id="disconnect" disabled="disabled" onclick="disconnect();">Disconnect</button>
    </div>
    <div id="conversationDiv">
        <label>What is your email?</label><input type="text" id="email" />
        <label>What is your password?</label><input type="password" id="password" />
        <button id="sendName" onclick="sendName();">Send</button>
        <p id="response"></p>
    </div>
</div>
</body>
</html>