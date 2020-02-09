<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
    <link rel="stylesheet" href="<?=basePathInclude()?>/css/style.css">
    <title>United Remote Test Card Games and Casino</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark justify-content-between">
      <a class="navbar-brand" href="<?=basePath()?>">United Remote</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mainMenuTop" aria-controls="mainMenuTop" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="mainMenuTop">
        <div class="navbar-nav">
          <a class="nav-item nav-link active" href="<?=basePath()?>">Home <span class="sr-only">(current)</span></a>
          <?php 
          // Simple User Permission
          if(isUserLoggedin()) :?>
            <a class="nav-item nav-link" href="<?=basePath()?>/poker">Poker</a>
            <a class="nav-item nav-link" href="<?=basePath()?>/casino">Casino</a>
          <?php endif; ?>

        </div>
      </div>
      <ul class="navbar-nav">
      <?php 
        if(isUserLoggedin()) :?>
        
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="mainMenuTopUser" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Welcome, <?=getUsername()?>
            </a>
            <div class="dropdown-menu" aria-labelledby="mainMenuTopUser">
              <?php if(isUserAdmin() == 'admin' ) : ?>
                <!-- Only For Admin User/s -->
                <a class="dropdown-item" href="<?=basePath()?>/loadcards">Load Poker hands</a>
              <?php endif; ?>
              <div class="dropdown-item">
                <form class="form" role="form" method="post" action="<?=basePath()?>/logout/">
                    <input type="hidden" name="action" value="logout">
                    <button  class="btn btn-link">Logout</button>
                </form>
              </div>
            </div>
          </li>

      <?php else : ?>
        <li class="nav-link">
            <a href="<?=basePath()?>/login" class="btn btn-primary btn-success">LOGIN</a>
        </li>
      <?php endif; ?>
      </ul>

      
    </nav>
    <section class="main container">
      <div class="row">
        <div class="col-md-12">
          <!-- Dynamic Content by MVC -->
          <?=$this->content?>
        </div>
      </div>
    </section>

    <footer><div class="container">Copyright 2020</div></footer>

    <!-- Optional JavaScript -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <script src="<?=basePathInclude()?>/js/script.js"></script>

  </body>
</html>