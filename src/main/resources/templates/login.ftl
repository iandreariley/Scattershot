<#import "/spring.ftl" as spring />
<@spring.bind "customer" />
<html>

<head>
	<title>${title}</title>
	<link rel="stylesheet" href="/css/loginPage/reset.css">

	<link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
	<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

	<link rel="stylesheet" href="/css/loginPage/style.css">

	<script src="/js/login-control.js"></script>

	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
</head>

<body>
	<div class="pen-title">
		<h1>Scattershot User Login Page</h1>
	</div>
	<div class="container">
		<div class="card"></div>
		<div class="card">
			<h1 class="title">Login</h1>
			<form method="post" action="login">
				<div class="input-container">
					<@spring.formInput "customer.email" />
					<label for="Email">Email</label>
					<div class="bar"></div>
				</div>
				<div class="input-container">
					<@spring.formPasswordInput 'customer.password'/>
					<label for="Password">Password</label>
					<div class="bar"></div>
				</div>
				<div class="button-container">
					<button type="submit"><span>Next</span></button>
				</div>
				<div class="footer"><a href="/forgotPassword">Forgot your password?</a></div>
			</form>
		</div>
		<div class="card alt">
			<div class="toggle"></div>
			<h1 class="title">Register
				<div class="close"></div>
			</h1>
			<form method="post" action="register">
				<div class="input-container">
					<@spring.formInput "customer.email" />
					<label for="RegisterEmail">Email</label>
					<div class="bar"></div>
				</div>
				<div class="input-container">
					<@spring.formPasswordInput "customer.password"/>
					<label for="RegisterPassword">Password</label>
					<div class="bar"></div>
				</div>
				<div class="input-container">
					<@spring.formInput "customer.firstName" />
					<label for="firstName">First name</label>
					<div class="bar"></div>
				</div>
				<div class="input-container">
					<@spring.formInput "customer.lastName" />
					<label for="lastName">Last name</label>
					<div class="bar"></div>
				</div>
				<div class="button-container">
					<button type="submit"><span>Next</span></button>
				</div>
			</form>
		</div>
	</div>
	<script src="/js/toggle.js"></script>
</body>
</html>