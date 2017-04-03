<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <title>Sign Up</title>
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
                                <li><a href="index.php">Login</a></li>
                                <li>  <a href="signup.php">Sign Up</a></li>
								
                            </ul>
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.container-fluid -->
                </nav>
            </div>
			 </div>
			

			<form  action="<?php echo $_SERVER['PHP_SELF']; ?>"  method="POST" enctype="multipart/form-data">
			Select file to upload:
			<input type="file" name="fileToUpload" id="fileToUpload">
			<input type="submit" value="Upload file" name="submit" >
			</form>
 <?php
 session_start();
            require_once 'services/class.Database.inc';
            $mysqli = Database::getInstance()->getConnection();
			
			                //if (isset($_POST['submit'])) {
								
								$user1= $_SESSION['username'];
								
								if(isset($_POST['submit']))
								{
									
								$line="";
								$line1="";
									$i =1 ;
									$fp = fopen($_FILES['fileToUpload']['tmp_name'], 'rb');
									
										while(! feof($fp))
										  {
										   $line = $line.fgets($fp);
										   echo  "<br />";
										   echo $line;
										  }

										fclose($fp);
									
									echo $line;
									
									$sql = "insert into upload values('$line','$user1')";

									$result = $mysqli->query($sql);
									if ($result) {
									echo "done successful";
									} else {
								    echo '<p class="alert alert-danger" align="center"> failed</p>';
									}
									
								}
									

							//	}
							session_destroy();
						
			
			    ?>
		
    </body>
</html>
