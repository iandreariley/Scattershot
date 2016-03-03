<html>

<head>
    <title>${title}</title>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="/js/chart-form-control.js"></script>
    <link href="http://fonts.googleapis.com/css?family=Varela" rel="stylesheet" />
	<link href="/css/main/default.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/css/main/fonts.css" rel="stylesheet" type="text/css" media="all" />
</head>

<body>
	<script>
		var customerId = "${customerID}";
		var chartId = "${chartID}";
	</script>

	<div id="wrapper">
		<div id="header-wrapper">
			<div id="header" class="container">
				<div id="logo">
				<h1><a href="/${customerID}/homepage">New Chart Page</a></h1>
				</div>
				<div id="menu">
					<ul>
						<li><a href="/${customerID}/homepage" accesskey="1" title="">Homepage</a></li>
						<li class="current_page_item"><a href="#" onclick="goToDisplayPage()" accesskey="2" title="">Display Charts</a></li>
						<li><a href="#" onclick="goToUploadPage()" accesskey="3" title="">Upload</a></li>
						<li><a href="#" accesskey="4" title="">Contact Us</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div>
		<form method="get" action="/chart/add/${chartID}">
			What type of Chart Is this?
			<input type="radio" name="chartType" value="line"/>Line Chart
			<input type="radio" name="chartType" value="bar"/>Bar Chart
			<input type="radio" name="chartType" value="histogram"/>Histogram<br/>
			Chart Name: <input type="text" name="name"/><br/>
			Bins (only necessary for histogram): <input type="number" name="bins"/><br/>
			Which column should be represented on the x-axis? <br/>
			<#list columns?keys as column>
				<input type="radio" name="x" value="${column}">${column} (${columns[column]})
			</#list><br/>
			Which column should be represented on the y-axis?<br/>
			<#list columns?keys as column>
				<input type="radio" name="y" value="${column}">${column} (${columns[column]})
			</#list><br/>
			<input type="submit" value="drawChart"/>
		</form>
	</div>
</body>
<script>
	function submitForm() {
		submit("${customerID}");
	};
</script>

</html>