<?php
ini_set('session.cookie_httponly', 1);
ini_set('session.cookie_secure', 1);
session_start();
date_default_timezone_set('Asia/Manila');

$uname = "";
$email = "";
$birthday = "";
$password = "";
$repassword = "";

class db {
    public $connection;
    public function __construct(){

    $this -> connection = mysqli_connect("localhost","root","","FORM_DB");

        if(mysqli_connect_error()){
            die("Failed to connect to the database!");
        }
        else{
        }

}

function register_form($uname, $email, $birthday, $password, $repassword){

$_SESSION['name'] = $_POST["username"];
$_SESSION['pass'] = $_POST["password"];
$_SESSION['repass'] = $_POST["re-password"];
$_SESSION['email'] = $_POST["email"];
$_SESSION['birthday'] = $_POST["birthday"];

$uname = $_SESSION['name'];
$email = $_SESSION['email'];
$birthday = date($_SESSION['birthday']);
$password = $_SESSION['pass'];
$repassword = $_SESSION['repass'];

if($password != $repassword){
    echo "Passwords don't match, please re-check!";
}else{
    
$query = "SELECT email FROM UserInfo WHERE email=? OR username=?";
$stmt = mysqli_prepare($this -> connection, $query);
mysqli_stmt_bind_param($stmt, "ss", $email, $uname);
mysqli_stmt_bind_result($stmt, $queryRes);
mysqli_stmt_execute($stmt);
mysqli_stmt_fetch($stmt);
if(!empty($queryRes)){
    echo "username or email already taken!";;
}else{
    $query = "INSERT INTO UserInfo (username, password, email, birthday) VALUES (?, ?, ?, ?)";
    $stmt = mysqli_prepare($this -> connection, $query);
    mysqli_stmt_bind_param($stmt, "ssss", $uname, $password, $email, $birthday);
    mysqli_stmt_execute($stmt);
}
}
}
}
?>