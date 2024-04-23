<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Hotelier - Hotel HTML Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&family=Montserrat:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">

<!-- Braintree Drop-in Stylesheet -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/braintree-web-drop-in@1.32.1/dist/css/dropin.min.css">
</head>

<body>
	<div class="container-xxl bg-white p-0">
		<!-- Spinner Start -->
		<div id="spinner"
			class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
			<div class="spinner-border text-primary"
				style="width: 3rem; height: 3rem;" role="status">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
		<!-- Spinner End -->

		<!-- Header Start -->
		<jsp:include page="landlord-header.jsp" >
		<jsp:param name="landlordId" value="${sessionScope.landlordId}"/>
		<jsp:param name="firstName" value="${sessionScope.user.firstName}"/>
		<jsp:param name="lastName" value="${sessionScope.user.lastName}"/>
		</jsp:include>
		<!-- Header End -->

		<!-- Page Header Start -->
		<div class="container-fluid page-header mb-5 p-0"
			style="background-image: url(https://i.pinimg.com/236x/df/c4/f1/dfc4f1f4d3cec0722d7e0e0ae32f771f.jpg)">
			<div class="container-fluid page-header-inner py-5">
				<div class="container text-center pb-5">
					<h1 class="display-3 text-white mb-3 animated slideInDown">Payment</h1>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb justify-content-center text-uppercase">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item"><a href="#">Pages</a></li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
		<!-- Page Header End -->

		<!-- Payment Start -->
		<div class="container-xxl py-5" style="padding: 100px;">
			<%
			// Check if the student is logged in
			boolean isLoggedIn = false;
			String username = (String) session.getAttribute("username");
			if (username != null && !username.isEmpty()) {
				isLoggedIn = true;
			}
			String roomID = request.getParameter("roomID");
			%>

			<%
			if (isLoggedIn) {
			%>
			<form id="payment-form" action="PaymentServlet" method="post">
				<div class="row">
					<div class="col">
						<h3 class="title" style="color: #fea115; padding-bottom: 10px;">BILLING
							ADDRESS</h3>
						<div class="col-md-6">
							<div class="form-floating">
								<input type="text" class="form-control" id="name"
									placeholder="Your Name" required pattern="\w+\s\w+"> <label
									for="name">Full Name</label>
							</div>
						</div>
						<br>
						<div class="col-md-6">
							<div class="form-floating">
								<input type="email" class="form-control" id="email"
									placeholder="Your Email" required> <label for="email">Email</label>
							</div>
						</div>
						<br>
						<div class="col-md-6">
							<div class="form-floating">
								<input type="text" class="form-control" id="address"
									placeholder="Your Address" required> <label
									for="address">Address</label>
							</div>
						</div>
						<br>
						<div class="col-md-6">
							<div class="form-floating">
								<input type="text" class="form-control" id="suburb"
									placeholder="Suburb" required> <label for="suburd">Suburb</label>
							</div>
						</div>
						<br>
						<div class=" col-md-6 d-inline-flex">
							<div class="col-sm-5.5" style="margin-right: 20px;">
								<div class="form-floating">
									<input type="text" class="form-control" id="state"
										placeholder="State" required> <label for="state">
										State</label>
								</div>
							</div>
							<div class="col-sm-5.5">
								<div class="form-floating">
									<input type="text" pattern="\d{5}" title="Five digit zip code"
										class="form-control" id="post-code" placeholder="Post Code"
										required> <label for="post-code">Post Code</label>
								</div>
							</div>
						</div>
					</div>

					<div class="col">
						<h3 class="title" style="color: #fea115; padding-bottom: 10px;">CARD
							DETAILS</h3>
						<div class="inputBox" style="padding-bottom: 6.5px;">
							<img src="img/card_img.png">
						</div>
						<br>
						<div class="col-md-6">
							<div class="form-floating">
								<input type="text" class="form-control" id="name-card"
									placeholder="Name on Card" required pattern="\w+\s\w+">
								<label for="name-card">Name on Card</label>
							</div>
						</div>
						<br>
						<div class="col-md-6">
							<div class="form-floating">
								<input type="text" pattern="\d{16}" title="16 digit card number"
									class="form-control" id="card-number" placeholder="Card Number"
									required> <label for="card-number">Card Number</label>
							</div>
						</div>
						<br>
						<div class="col-md-6">
							<div class="form-floating">
								<select class="form-control" id="card-type" name="card-type"
									required>
									<option value="">Select card type</option>
									<option value="visa">Visa</option>
									<option value="mastercard">Mastercard</option>
								</select> <label for="card-type">Card Type</label>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-floating">
								<input type="text" pattern="(0[1-9]|1[0-2])" title="MM format"
									class="form-control" id="expiry-month"
									placeholder="Expiry Month" required> <label
									for="expiry-month">Expiry Month</label>
							</div>
						</div>
						<br>
						<div class=" col-md-6 d-inline-flex">
							<div class="col-sm-5.5" style="margin-right: 20px;">
								<div class="form-floating">
									<input type="text" pattern="\d{4}" title="YYYY format"
										class="form-control" id="expiry-year"
										placeholder="Expiry Year" required> <label
										for="expiry-year">Expiry Year</label>
								</div>
							</div>
							<div class="col-sm-5.5">
								<div class="form-floating">
									<input type="text" pattern="\d{3}" title="3 digit CVV"
										class="form-control" id="cvv" placeholder="CVV" required>
									<label for="cvv"> CVV</label>
								</div>
							</div>
						</div>

						<br> <br>
						<div class="col-md-6">
							<div id="dropin-container"></div>
						</div>

						<br> <br>
						<div class="col-md-6">
							<button class="btn btn-primary w-100 py-3" type="submit">Proceed
								Payment</button>
						</div>
					</div>
				</div>
				<input type="hidden" name="roomID"
					value="<%=request.getParameter("roomID")%>">
			</form>
			<%
			} else {
			%>
			<p>Please log in to proceed with the payment.</p>
			<a href="login.jsp" class="btn btn-primary">Log In</a>
			<%
			}
			%>

		</div>
		<!-- Payment End -->
		<br> <br> <br> <br> <br> <br> <br>
		<br> <br>

	<!-- Footer Start -->
<jsp:include page="footer.jsp"></jsp:include>
	<!-- Footer End -->

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="lib/wow/wow.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/counterup/counterup.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="lib/tempusdominus/js/moment.min.js"></script>
	<script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
	<script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

	<!-- Braintree JavaScript Library -->
	<script
		src="https://js.braintreegateway.com/web/dropin/1.32.1/js/dropin.min.js"></script>

	<!-- Template Javascript -->
	<script src="js/main.js"></script>

	<!-- Braintree Payment Form Script -->
	<script>
    var form = document.getElementById('payment-form');
    var dropinContainer = document.getElementById('dropin-container');

    braintree.dropin.create({
        authorization : '<%=request.getAttribute("clientToken")%>
		',
			container : dropinContainer
		}, function(createErr, instance) {
			if (createErr) {
				console.error(createErr);
				return;
			}

			form.addEventListener('submit', function(event) {
				event.preventDefault();

				instance.requestPaymentMethod(function(err, payload) {
					if (err) {
						console.error(err);
						return;
					}

					// Assign the payment method nonce to a hidden input field
					var nonceInput = document.createElement('input');
					nonceInput.type = 'hidden';
					nonceInput.name = 'payment_method_nonce';
					nonceInput.value = payload.nonce;
					form.appendChild(nonceInput);

					// Submit the form
					form.submit();
				});
			});
		});
	</script>

</body>

</html>