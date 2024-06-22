

</head>
<body>

  <header class="page-header">
    <!-- topline -->
    <div class="page-header__topline">
      <div class="container clearfix">

        <div class="currency">
          <a class="currency__change" href="customer/my_account.php?my_orders">
          <?php
          if(!isset($_SESSION['customer_email'])){
          echo "Welcome :Guest"; 
          }
          else
          { 
              echo "Welcome : " . $_SESSION['customer_email'] . "";
            }
?>
          </a>
        </div>

        <div class="basket">
          <a href="cart.php" class="btn btn--basket">
            <i class="icon-basket"></i>
            <?php items(); ?> items
          </a>
        </div>
        
        
        <ul class="login">

<li class="login__item">
<?php
if(!isset($_SESSION['customer_email'])){
  echo '<a href="customer_register.php" class="login__link">Register</a>';
} 
  else
  { 
      echo '<a href="customer/my_account.php?my_orders" class="login__link">My Account</a>';
  }   
?>  
</li>


<li class="login__item">
<?php
if(!isset($_SESSION['customer_email'])){
  echo '<a href="checkout.php" class="login__link">Sign In</a>';
} 
  else
  { 
      echo '<a href="./logout.php" class="login__link">Logout</a>';
  }   
?>  
  
</li>
</ul>
      
      </div>
    </div>
    <!-- bottomline -->
    <div class="page-header__bottomline">
      <div class="container clearfix">

        <div class="logo">
          <a class="logo__link" href="index.php">
            <img class="logo__img" src="images/logo.png" alt="Avenue fashion logotype" width="237" height="19">
          </a>
        </div>

        <nav class="main-nav">
          <ul class="categories">

          <li class="categories__item">
              <a class="categories__link" href="localstore.php">
                Local Stores
              </a>
            </li>

            <li class="categories__item">
              <a class="categories__link categories__link--active" href="shop.php">
                Shop
              </a>
            </li>
          
            <li class="categories__item">
              <a class="categories__link" >
                Nursery
                <i class="icon-down-open-1"></i>
              </a>
              <div class="dropdown dropdown--lookbook">
                <div class="clearfix">
                  <div class="dropdown__full  ">
                    <ul class="dropdown__items">
                      <li class="dropdown__item">
                        <a onclick="applyFilters([], ['10'], [])" class="dropdown__link">Saplings</a>
                      </li>
                      <li class="dropdown__item">
                        <a onclick="applyFilters([], ['32'], [])" class="dropdown__link">Seeds</a>
                      </li>
                      
                    </ul>
                  </div>
                  
                </div>
             

              </div>

            </li>
            <li class="categories__item">
              <a class="categories__link" >
                Supply Store
                <i class="icon-down-open-1"></i>
              </a>
              <div class="dropdown dropdown--lookbook">
                <div class="clearfix">
                  <div class="dropdown__full  ">
                    <ul class="dropdown__items">
                      <li class="dropdown__item">
                        <a onclick="applyFilters([], ['33'], [])" class="dropdown__link">Tools</a>
                      </li>
                      <li class="dropdown__item">
                        <a onclick="applyFilters([], ['34'], [])" class="dropdown__link">Plant pots</a>
                      </li>
                      <li class="dropdown__item">
                        <a onclick="applyFilters([], ['35'], [])" class="dropdown__link">Fertilizers</a>
                      </li>
                      
                  
                    </ul>
                  </div>
                  
                </div>
             

              </div>

            </li>
            <li class="categories__item">
              <a class="categories__link" >
                Fruits & Vegetables
                <i class="icon-down-open-1"></i>
              </a>
              <div class="dropdown dropdown--lookbook">
                <div class="clearfix">
                  <div class="dropdown__full  ">
                    <ul class="dropdown__items">
                      <li class="dropdown__item">
                        <a onclick="applyFilters([], ['9'], [])" class="dropdown__link">Fruits</a>
                      </li>
                      <li class="dropdown__item">
                        <a onclick="applyFilters([], ['16'], [])" class="dropdown__link">Vegetables</a>
                      </li>
                      <li class="dropdown__item">
                        <a onclick="applyFilters([], ['11'], [])" class="dropdown__link">24 hr</a>
                      </li>
                      
                  
                    </ul>
                  </div>
                  
                </div>
             

              </div>

            </li>
            <li class="categories__item">
              <a class="categories__link" >
                Agro Mart
                <i class="icon-down-open-1"></i>
              </a>
              <div class="dropdown dropdown--lookbook">
                <div class="clearfix">
                  <div class="dropdown__full  ">
                    <ul class="dropdown__items">
                      <li class="dropdown__item">
                        <a onclick="applyFilters([], [], ['3'])" class="dropdown__link">Food Groceries</a>
                      </li>
                      <li class="dropdown__item">
                        <a onclick="applyFilters([], [], ['4'])" class="dropdown__link">Millets</a>
                      </li>
                      <li class="dropdown__item">
                        <a onclick="applyFilters([], [], ['7'])" class="dropdown__link">Personal Care</a>
                      </li>
                      <li class="dropdown__item">
                        <a onclick="applyFilters([], [], ['6'])" class="dropdown__link">Home Care</a>
                      </li>
                    </ul>
                  </div>
                  
                </div>
             

              </div>

            </li>





          <li class="categories__item">
              <a class="categories__link" href="customer/my_account.php?my_orders">
                My Account
                <i class="icon-down-open-1"></i>
              </a>
              <div class="dropdown dropdown--lookbook">
                <div class="clearfix">
                  <div class="dropdown__half">
                    <div class="dropdown__heading">Account Settings</div>
                    <ul class="dropdown__items">
                      <li class="dropdown__item">
                        <a href="customer/my_account.php?my_wishlist" class="dropdown__link">My Wishlist</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="customer/my_account.php?my_orders" class="dropdown__link">My Orders</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">View Shopping Cart</a>
                      </li>
                    </ul>
                  </div>
                  <div class="dropdown__half">
                    <div class="dropdown__heading"></div>
                    <ul class="dropdown__items">
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">Edit Your Account</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">Change Password</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">Delete Account</a>
                      </li>
                    </ul>
                  </div>
                </div>
             

              </div>

            </li>

          </ul>
        </nav>
      </div>
    </div>
  </header>


<script>
  function applyFilters(manufacturers, productCategories, categories) {
  let url = "shop.php?";
  let params = [];

  // Add manufacturers to the URL
  manufacturers.forEach(manufacturer => {
    params.push("man[]=" + encodeURIComponent(manufacturer));
  });

  // Add product categories to the URL
  productCategories.forEach(pCat => {
    params.push("p_cat[]=" + encodeURIComponent(pCat));
  });

  // Add categories to the URL
  categories.forEach(cat => {
    params.push("cat[]=" + encodeURIComponent(cat));
  });

  // Join all parameters with '&' and append to the URL
  url += params.join("&");

  // Redirect to the shop page with the filters applied
  window.location.href = url;
}
</script>
</script>