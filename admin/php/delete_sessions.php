<?php session_start();
if (isset($_SESSION['userid']) && ($_SESSION['userstatus'] == 'ADMIN')) {
	require '../../php/db_config.php';

	$sessionId = $_GET['sessionId'];

	$con->query("DELETE FROM sessions WHERE SESSION_ID = '$sessionId';");

	$_SESSION['admin_message'] = "Session successfully deleted!";
	header("Location: ../masters/add_sessions.php");
?>

<?php } else {
	$_SESSION['intruder'] = 'Hey, hang on there! You gotta sign in first.';
	if ((isset($_SESSION['userid'])) && ($_SESSION['userstatus']) != 'ADMIN') {
		$_SESSION['noAuthority'] = "Hello friend, you don't belong here. Try once you're an admin.";
    }
    header("Location: ../index.php");
}
