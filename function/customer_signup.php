<?php

	include('db/dbconn.php');
    function estValideMail($email){
        //return preg_match("/^[a-z][a-z0-9]*@[a-z]+\.[a-z]+$/",$email);
        return filter_var($email, FILTER_VALIDATE_EMAIL);
     }
     function estValideMobile($mobile){

        return(preg_match('/((\+)33|0|0033)[0-9](\d{2}){4}/img',$mobile));
     }
     function estValidepassword($password){
         return (preg_match('#^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*\W)#',$password));
     }


	if (isset($_POST['signup']))
{
	$firstname=$_POST['firstname'];
	$mi=$_POST['mi'];
	$lastname=$_POST['lastname'];
	$address=$_POST['address'];
	$country=$_POST['country'];
    $zipcode=$_POST['zipcode'];
    $mobile=$_POST['mobile'];
    $email=$_POST['email'];
   
    $password=$_POST['password'];
       

        $query = $conn->query("SELECT * FROM `customer` WHERE `email` = '$email'");
        $check = $query->num_rows;
            if($check == 1)
                {
                    echo "<script>alert('EMAIL ALREADY EXIST')</script>";	 
                }
                
                else
                    {
                        $conn->query ("INSERT INTO customer (firstname, mi, lastname, address, country, zipcode, mobile, telephone, email, password)
                        VALUES ('$firstname', '$mi', '$lastname', '$address', '$country', '$zipcode', '$mobile', '$telephone', '$email', '$password')") 
                        or die(mysqli_error());	
                    }				
                        
    }
        
           
                   

                        
    
	
				
					

?>