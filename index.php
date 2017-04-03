 <!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" >
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" >
        <!-- Latest compiled and minified JavaScript -->
       
    </head>
    <body>
        <div>
            <div>
                <nav class="navbar navbar-default">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="#" style="margin-left: 5px">Secure assignment</a>
                        </div>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li  class="active"><a href="index.php">Login</a></li>
                                <li><a href="signup.php">Sign Up</a></li>

                            </ul>
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.container-fluid -->
                </nav>
            </div>
            <div>
                <div class="container">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="row">
                                <br/>
                                <div class="container-fluid">
                                    <form class="form-horizontal" action="<?php $_SERVER['PHP_SELF'] ?>" method="POST">
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" for="name">Username</label>
                                            <div class="col-sm-4">
                                                <input type="text" name="username" class="form-control" id="username" placeholder="username" required="true">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label col-sm-2" for="name">Password</label>
                                            <div class="col-sm-4">
                                                <input type="password" name="password" class="form-control" id="password" placeholder="Password " required="true">
                                            </div>
                                        </div>

                                        <div class="form-group">

                                            <div class="col-sm-offset-2 col-sm-10">
                                                <input type="submit" value="Login" class="btn btn-primary"/>
                                            </div>
                                        </div>
                                    </form>
                                    <p id="message"></p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <?php
                require_once 'services/class.Database.inc';
                $mysqli = Database::getInstance()->getConnection();

                if (isset($_POST['username'])) {
                    $username = $_POST['username'];
                    $password = $_POST['password'];
					$pass = md5($password);
					echo $pass ;
                    $sql = "select role from customers where username='$username' and password='$pass'";
                    $result = $mysqli->query($sql);
                    $row = $result->fetch_assoc();
                    if ($row['role'] == 'user') {
                        session_start();
                        $_SESSION['username'] = $username;
                     //  echo "login  successful";
						header('Location: activity.php');    

                    } else if ($row['role'] == 'admin') {
                        session_start();
                        $_SESSION['username'] = $username;
                        ?>
                       
        <?php
    } else {
        echo '<p class="alert alert-danger" align="center">Username or Password is incorrrect</p>';
    }
}
?>
            </div>
        </div>
    </body>
</html>
