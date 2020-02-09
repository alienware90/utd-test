<? $message = (empty($_SESSION['message']) ? '' : $_SESSION['message']) ?>

<h1 class="title">Sign In</h1>

<div class="row">
    <div class="col-md-6 push-md-3 col-lg-6 push-lg-3">
        <div class="alert alert-primary" role="alert"><?=$message?></div>

        <form action="<?=basePath()?>/auth/login" method="POST" class="jumbotron">
        <div class="form-group">
            <label for="userEmail">Email address</label>
            <input type="email" name="email" class="form-control" id="userEmail" aria-describedby="emailHelp" placeholder="Enter email" required autocomplete="true">
        </div>
        <div class="form-group">
            <label for="userPassword">Password</label>
            <input type="password" name="password" class="form-control" id="userPassword" placeholder="Password" autocomplete="true">
        </div>
        <div class="form-check">
            <input type="hidden" name="_csrf" value="<?=$token?>" />
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
    <!-- End Col -->
    <div class="col-md-3">
        <ul class="list-group">
            <li class="list-group-item"><strong>Simple User :</strong><br>user@user.com<br><strong>Password :</strong><br>dedede</li>
            <li class="list-group-item"><strong>Admin User :</strong><br>admin@admin.com<br><strong>Password : </strong><br>adminuser</li>
        </ul>
    </div>
    <!-- End Col -->
</div>