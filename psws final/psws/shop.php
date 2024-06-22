<?php
session_start();

include("includes/db.php");
include("includes/header.php");
include("functions/functions.php");
include("includes/main.php");

$manFilters = isset($_GET['man']) ? $_GET['man'] : [];
$pCatFilters = isset($_GET['p_cat']) ? $_GET['p_cat'] : [];
$catFilters = isset($_GET['cat']) ? $_GET['cat'] : [];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Your Title Here</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

<!-- MAIN -->
<main>
    <!-- HERO -->
    <div class="nero">
        <div class="nero__heading">
            <span class="nero__bold">shop</span> AT AGRIMA
        </div>
        <p class="nero__text">
        </p>
    </div>
</main>

<div id="content"><!-- content Starts -->
    <div class="container"><!-- container Starts -->
        <div class="col-md-12"><!--- col-md-12 Starts -->
        </div><!--- col-md-12 Ends -->

        <div class="col-md-3"><!-- col-md-3 Starts -->
            <?php include("includes/sidebar.php"); ?>
        </div><!-- col-md-3 Ends -->

        <div class="col-md-9"><!-- col-md-9 Starts --->
            <div id="Products">
                <?php getProducts(); ?>
            </div>
        </div><!-- row Ends -->

        <center><!-- center Starts -->
            <ul class="pagination"><!-- pagination Starts -->
                <?php getPaginator(); ?>
            </ul><!-- pagination Ends -->
        </center><!-- center Ends -->
    </div><!-- col-md-9 Ends --->
</div><!-- container Ends -->
</div><!-- content Ends -->

<?php include("includes/footer.php"); ?>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<script>
    $(document).ready(function(){

        // getProducts Function Code Starts
        function getProducts(){
            var sPath = '';
            var aInputs = $('li').find('.get_manufacturer');
            var aKeys = Array();
            var aValues = Array();
            iKey = 0;

            $.each(aInputs, function(key, oInput){
                if (oInput.checked){
                    aKeys[iKey] = oInput.value;
                }
                iKey++;
            });

            if (aKeys.length > 0){
                var sPath = '';
                for (var i = 0; i < aKeys.length; i++){
                    sPath = sPath + 'man[]=' + aKeys[i] + '&';
                }
            }

            var aInputs = $('li').find('.get_p_cat');
            var aKeys = Array();
            iKey = 0;

            $.each(aInputs, function(key, oInput){
                if (oInput.checked){
                    aKeys[iKey] = oInput.value;
                }
                iKey++;
            });

            if (aKeys.length > 0){
                for (var i = 0; i < aKeys.length; i++){
                    sPath = sPath + 'p_cat[]=' + aKeys[i] + '&';
                }
            }

            var aInputs = $('li').find('.get_cat');
            var aKeys = Array();
            iKey = 0;

            $.each(aInputs, function(key, oInput){
                if (oInput.checked){
                    aKeys[iKey] = oInput.value;
                }
                iKey++;
            });

            if (aKeys.length > 0){
                for (var i = 0; i < aKeys.length; i++){
                    sPath = sPath + 'cat[]=' + aKeys[i] + '&';
                }
            }

            $('#wait').html('<img src="images/load.gif">');

            $.ajax({
                url: "load.php",
                method: "POST",
                data: sPath + 'sAction=getProducts',
                success: function(data){
                    $('#Products').html('');
                    $('#Products').html(data);
                    $("#wait").empty();
                }
            });

            $.ajax({
                url: "load.php",
                method: "POST",
                data: sPath + 'sAction=getPaginator',
                success: function(data){
                    $('.pagination').html('');
                    $('.pagination').html(data);
                }
            });
        }
        // getProducts Function Code Ends

        $('.get_manufacturer').click(function(){
            getProducts();
        });

        $('.get_p_cat').click(function(){
            getProducts();
        });

        $('.get_cat').click(function(){
            getProducts();
        });

        // Initial filters setup
        function applyInitialFilters(manFilters, pCatFilters, catFilters) {
            manFilters.forEach(function(man) {
                $('li .get_manufacturer[value="' + man + '"]').prop('checked', true);
            });

            pCatFilters.forEach(function(pCat) {
                $('li .get_p_cat[value="' + pCat + '"]').prop('checked', true);
            });

            catFilters.forEach(function(cat) {
                $('li .get_cat[value="' + cat + '"]').prop('checked', true);
            });

            getProducts();
        }

        // Fetch filter values from PHP
        var manFilters = <?php echo json_encode($manFilters); ?>;
        var pCatFilters = <?php echo json_encode($pCatFilters); ?>;
        var catFilters = <?php echo json_encode($catFilters); ?>;

        // Apply initial filters
        applyInitialFilters(manFilters, pCatFilters, catFilters);
    });
</script>

</body>
</html>
