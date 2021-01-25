<%@ pinsertage pinsertageEncoding="utf-8"%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>CoronaMap</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<script
	src="http://openapi.data.go.kr/openapi/service/rest/Covid19/getCovid19InfStateJson?ServiceKey=xd9KN2UOSssqVS84%2B%2BMF8MCygZ%2FcV88H%2Bk289Bojw9RqXTTV0QUX6%2BnBQqbdnC7qklkrFCq0tKB%2FAL4BGIy4%2FQ%3D%3D"></script>
<script
	src="https://apis.openapi.sk.com/tmap/jsv2?version=1&appKey=l7xx07edbdb4c7c845d08dbf34f748bdc31c"></script>

<script src="<c:url value='/resources/js/tmap2.js'/>" charset="utf-8"></script>
</head>

<body>
	<!-- �� ���� ���� -->

	<div>
		<h1>Corona Map</h1>
	</div>

	<div
		style="width: 60%; height: 400px; float: right; border: 8px solid black; float: left">

		<br> <select name="insertgender" id="insertgender"
			style="width: 90px; height: 50px; margin-left: 50px; border: 3px solid black">
			<option value="">���� ����</option>
			<option value="����">����</option>
			<option value="����">����</option>
		</select> <br> <br> &nbsp; &nbsp; &nbsp;<span>���� �Է� : &nbsp;<input
			type="number" id="insertage">
		</span> <br> <br> &nbsp; &nbsp; &nbsp; <span>���� �Է� : (���� :
			����� ������ ������) &nbsp;<input type="text" id="insertaddress1">
		</span> <br> <br> &nbsp; &nbsp;&nbsp; <span>�� ���� �Է� : (���� :
			�Ź��־���Ʈ 109�� 103ȣ) &nbsp;<input type="text" id="insertaddress2">
		</span> <br> <br> &nbsp; &nbsp; <span> &nbsp;Ȯ�� ��¥ : (����
			:20200819)<input type="text" name="insertconfirm_date" id="insertconfirm_date">
		</span> &nbsp; <br> <br>
		<select name="insertcure" id="insertcure"
			style="width: 90px; height: 50px; margin-left: 50px; border: 3px solid black">
			<option value="">��ġ ���� ����</option>
			<option value="o">O</option>
			<option value="x">X</option>
		</select> <br>
		<div>
			<button onClick="drawPolyline()">���� �׸���</button>
			<button onClick="clearDrawing()">���� �����ϱ�</button>
			<button id="click" style="width: 100px; height: 50px"
				onclick="insertData();">���</button>
				
	<button onClick="location.href='/home.do'">home</button>
		</div>
	</div>
	<div id="map_div"></div>
	<br>

	<button style="float: left" onClick="location.href='/home.do'">home</button>
</body>
</html>
