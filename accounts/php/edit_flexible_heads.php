<?php session_start();
if (isset($_SESSION['userid']) && ($_SESSION['userstatus'] == 'ACCOUNTS')) {
	require '../../php/db_config.php';
	$result = $con->query("SELECT * FROM fee_flexible_heads;");
	$resultEdit = $con->query("SELECT * FROM fee_flexible_heads WHERE FLEXIBLE_HEAD_ID ='" . $_GET['flexibleId'] . "';");
	$rowEdit = $resultEdit->fetch_assoc();
	$navBrand = 'Edit Flexible Fee Heads';
?>

<!doctype html>
<html lang="en">
	<head>
		<title>FMS | Edit Flexible Fee Heads</title>
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
			<?php require '../../templates/navbar.php'; ?>
		</header>

		<?php require '../../templates/flexible_head_message.php'; ?>
		<?php unset($_SESSION['flexible_head_message']); ?>
				
		<!-- container -->
		<div class="container-fluid px-5">
			<div class="row pt-5">
				<!-- form -->
				<div class="col-lg-4 ml-sm-auto">
					<h3 class="form-banner" style="background-color: #2C9676;">Edit Flexible Fee Heads</h3>
					<form class="form px-3 py-3" action="../php/update_flexible_heads.php" method="post">
						<div class="form-group">
							<label for="flexibleHeadName">Flexible Fee Head Name</label>
							<input type="text" class="form-control" id="flexibleHeadName" name="flexibleHeadName" aria-describedby="flexibleHeadHelp" placeholder="Enter flexible fee head name" value="<?php echo $rowEdit['FLEXIBLE_HEAD_NAME']; ?>">
							<small id="flexibleHeadHelp" class="form-text text-muted sr-only">Flexible fee heads (applicable on individual students according to the facilities they avail, like bus, canteen, etcetera) can be added student wise in every session (as per the requirement).</small>
						</div>
						<div class="form-group">
							<label for="description">Description</label>
							<textarea class="form-control" id="description" name="description" rows="3">
							</textarea>
						</div>
						<input type="hidden" name="flexibleId" value="<?php echo $_GET['flexibleId']; ?>">
						<button type="submit" class="btn btn-success btn-block">Update Flexible Fee Head</button>
					</form>
				</div>
				<!-- /form -->

				<div class="col-lg-8 d-none d-sm-block ml-sm-auto mt-2">
					<table class="table table-bordered table-striped bg-white mt-3 table-sm">
						<caption class="lead">List of already added flexible heads.</caption>
						<thead class="thead-dark">
							<tr>
								<th scope="col">#</th>
								<th scope="col">Flexible Fee Head Name</th>
								<th scope="col">Description</th>
								<th scope="col">Edit</th>
								<th scope="col">Delete</th>
							</tr>
						</thead>
						<tbody>
							<?php $i = 1;   //For table indexing. ?>
							<?php while ($row = $result->fetch_assoc()){ ?>
								<?php if ($row['FLEXIBLE_HEAD_ID'] == $_GET['flexibleId']) { ?>
									<tr class="table-info">
								<?php } else {?>
									<tr>
									<?php } ?>
										<th scope="row"><?php echo $i++; ?></th>
										<td><?php echo $row['FLEXIBLE_HEAD_NAME']; ?></td>
										<td><?php echo $row['DESCRIPTION']; ?></td>
										<td><a href="../php/edit_flexible_heads.php?flexibleId=<?php echo $row['FLEXIBLE_HEAD_ID']; ?>"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
										<td><a href="../php/delete_flexible_heads.php?flexibleId=<?php echo $row['FLEXIBLE_HEAD_ID']; ?>"><i class="fa fa-minus-circle" aria-hidden="true"></i></a></td>
									</tr>
							<?php } ?>
						</tbody>
					</table>
				</div>

			</div>

			<div class="w-100 my-5"></div>
			
			<footer>
				<?php require '../../templates/footer.php'; ?>
			</footer>
 		</div><!-- /container -->

		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
		<script>        
			$(document).ready(function () {
				$('#addedModal').modal('show');
				$('#description').text('<?php echo $rowEdit['DESCRIPTION']; ?>');
			});
		</script>
	</body>
</html>

<?php } else {
	$_SESSION['intruder'] = 'Hey, hang on there! You gotta sign in first.';
	if ((isset($_SESSION['userid'])) && ($_SESSION['userstatus']) != 'ACCOUNTS') {
		$_SESSION['noAuthority'] = "Hello friend, you don't belong here. Try once you're from the accounts department.";
    }
    header("Location: ../../index.php");
}

