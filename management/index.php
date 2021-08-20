<?php session_start();
if (isset($_SESSION['userid']) && ($_SESSION['userstatus'] == 'MANAGEMENT')) {
	$dashboardNavBrand = ucwords(strtolower($_SESSION['userstatus'])) . "'s Dashboard";
?>

<!doctype html>
<html lang="en">
	<head>
		<title>FMS | Management's Dashboard</title>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
		<!-- shortcut-icon -->
		<link rel="shortcut icon" href="/img/favicon.png"><!-- /shortcut-icon -->
		<!-- custom-stylesheet -->
		<link rel="stylesheet" href="/css/main.css" type="text/css"><!-- /custom-stylesheet -->
		<!-- font-awesome-icons -->
		<link rel="stylesheet" href="/css/font-awesome/css/font-awesome.min.css"><!-- /font-awesome-icons -->
	</head>

	<body>
		<header>
			<?php require '../templates/dashboard_navbar.php'; ?>
		</header>

		<!-- container -->
		<div class="container-fluid mt-5">
			<!-- row1 -->
			<div class="row px-sm-3 mx-md-1">
				<div class="card-deck-wrapper">
						<div class="card-deck">
					    	<div class="card text-center card-box">
					    		<a href="#">
					    		<h3 class="card-banner" style="background-color: #2C9676;">Lorem ipsum dolor.</h3>
					    		<div class="card-body">
						        	<p class="card-text lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi tempora consequuntur adipisci pariatur nam culpa nostrum dolor reiciendis numquam ipsam.</p>
								</div>
								</a>
							</div>
						<div class="card text-center card-box">
							<a href="#">
							<h3 class="card-banner" style="background-color: #2C9676;">Lorem ipsum dolor.</h3>
							<div class="card-body">
								<p class="card-text lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam quia ullam doloribus harum officiis, optio maiores velit, iusto recusandae sit!</p>
							</div>
							</a>
						</div>
						<div class="card text-center card-box">
							<a href="#">
							<h3 class="card-banner" style="background-color: #2C9676;">Lorem ipsum dolor.</h3>
							<div class="card-body">
								<p class="card-text lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, facilis sint deserunt. Sequi voluptas laudantium perspiciatis repellendus numquam veritatis nam!</p>
							</div>
							</a>
						</div>
					</div>
				</div>
			</div><!-- /row1 -->
			
			<div class="w-sm-100 my-sm-4"></div>

			<!-- row2 -->
			<div class="row px-sm-3 mx-md-1">
				<div class="card-deck-wrapper">
						<div class="card-deck">
					    	<div class="card text-center card-box">
					    		<a href="#">
					    		<h3 class="card-banner" style="background-color: #E15258;">Lorem ipsum dolor.</h3>
					    		<div class="card-body">
						        	<p class="card-text lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi tempora consequuntur adipisci pariatur nam culpa nostrum dolor reiciendis numquam ipsam.</p>
								</div>
								</a>
							</div>
						<div class="card text-center card-box">
							<a href="#">
							<h3 class="card-banner" style="background-color: #E15258;">Lorem ipsum dolor.</h3>
							<div class="card-body">
								<p class="card-text lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam quia ullam doloribus harum officiis, optio maiores velit, iusto recusandae sit!</p>
							</div>
							</a>
						</div>
						<div class="card text-center card-box">
							<a href="#">
							<h3 class="card-banner" style="background-color: #E15258;">Lorem ipsum dolor.</h3>
							<div class="card-body">
								<p class="card-text lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, facilis sint deserunt. Sequi voluptas laudantium perspiciatis repellendus numquam veritatis nam!</p>
							</div>
							</a>
						</div>
					</div>
				</div>
			</div><!-- /row2 -->
			
			<div class="w-sm-100 my-sm-4"></div>

			<footer>
				<?php require '../templates/footer.php'; ?>
 			</footer>
 		</div><!-- /container -->

		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
	</body>
</html>

<?php } else {
	$_SESSION['intruder'] = 'Hey, hang on there! You gotta sign in first.';
	if ((isset($_SESSION['userid'])) && ($_SESSION['userstatus']) != 'MANAGEMENT') {
		$_SESSION['noAuthority'] = "Hello friend, you don't belong here. Try once you're from the management.";
    }
    header("Location: ../index.php");
}
