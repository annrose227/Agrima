<?php

session_start();

include("includes/db.php");
include("includes/header.php");
include("functions/functions.php");
include("includes/main.php");

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7CRoboto" rel="stylesheet">
  <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="shortcut icon" href="images/agrima.ico" type="image/x-icon">
  <title>Agrima</title>
  <link href="styles/bootstrap.min.css" rel="stylesheet">
  <link href="styles/backend.css" rel="stylesheet">
  <link href="styles/style.css" rel="stylesheet">

  <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
</head>

<body>

<!-- MAIN -->
<main>
  <!-- HERO -->
  <div class="nero">
    <div class="nero__heading">
      <span class="nero__bold">Local </span>Stores
    </div>
    <p class="nero__text">
    </p>
  </div>
</main>

<div id="content"><!-- content Starts -->

  <div class="container-fluid"><!-- container Starts -->

    <div class="col-md-12"><!-- col-md-12 Starts -->

      <div class="services row"><!-- services row Starts -->

        <?php

        $get_services = "SELECT * FROM store";
        $run_services = mysqli_query($con, $get_services);

        while ($row_services = mysqli_fetch_array($run_services)) {
          $service_id = $row_services['store_id'];
          $service_title = $row_services['store_title'];
          $service_image = $row_services['store_image'];
          $service_desc = $row_services['store_desc'];
          $service_button = $row_services['store_button'];
          $service_url = $row_services['store_url'];
        ?>

        <div class="col-md-4 col-sm-6 box"><!-- col-md-4 col-sm-6 box Starts -->

          <img src="admin_area/store_images/<?php echo $service_image; ?>" class="img-responsive" alt="<?php echo $service_title; ?>">

          <h2 align="center"><?php echo $service_title; ?></h2>

          <p><?php echo $service_desc; ?></p>

          <center>
            <a href="<?php echo $service_url; ?>" class="btn btn-primary">
              <?php echo $service_button; ?>
            </a>
          </center>

        </div><!-- col-md-4 col-sm-6 box Ends -->

        <?php } ?>

      </div><!-- services row Ends -->

    </div><!-- col-md-12 Ends -->

  </div><!-- container Ends -->
</div><!-- content Ends -->

<?php include("includes/footer.php"); ?>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>

