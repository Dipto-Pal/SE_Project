<?php 
    require_once('../db/dbh.php');
    session_start();
    if (!isset($_SESSION['recruiter_id'])){
        header('location: ../Recruiter_login/index.html');
     }
     if (!isset($_SESSION['post_id'])){
       header('location: ../Recruiter_login/index.html');
     }
    $recruiter_id = $_SESSION['recruiter_id'];
    $post_id = $_GET['post_id'];
    

    function updateUserQuery($title, $state_region, $job_position,$job_type, $category, $tag,$content, $post_id) {
        return "UPDATE job_post 
                SET title = '$title',state_region='$state_region',
                job_position='$job_position',job_type='$job_type', category = '$category', tag = '$tag', 
                content = '$content'
                WHERE post_id=$post_id;
        ";
      }


       $title = mysqli_real_escape_string($conn, $_POST['title']);
       $state_region = mysqli_real_escape_string($conn, $_POST['State_Region']);
       $job_position = mysqli_real_escape_string($conn, $_POST['Job_position']);
       $job_type = mysqli_real_escape_string($conn, $_POST['Job_type']);
       $category = mysqli_real_escape_string($conn, $_POST['category']);
       $tag = mysqli_real_escape_string($conn, $_POST['Tag']);
       $content = mysqli_real_escape_string($conn, $_POST['content']);
       echo $state_region;

 
       $sqlQuery = updateUserQuery($title, $state_region, $job_position,$job_type, $category, $tag, $content, $post_id);
       
         if (mysqli_query($conn, $sqlQuery)) {
           header("location: ../Recruiter/profile/index.php");
         } else {
           echo "Error: " . $sqlQuery . "<br>" . mysqli_error($conn);
         }


?>