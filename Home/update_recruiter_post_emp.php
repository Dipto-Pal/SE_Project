<?php 
    require_once('../db/dbh.php');
    session_start();

    if (!isset($_SESSION['recruiter_id'])){
        header('location: ../Recruiter_login/index.html');
    }
    $recruiter_id = $_SESSION['recruiter_id'];
    $post_id = $_GET['post_id'];

    $query = "SELECT * FROM job_post WHERE post_id = $post_id;";
    $execute = mysqli_query($conn, $query);
    $row = mysqli_fetch_array($execute);

         $post_id=$row['post_id'];
         $recruiter_id=$row['recruiter_id'];
         $company_name = $row['company_name'];
         $title = $row['title'];
         $tag = $row['tag'];
         $state_region = $row['state_region'];
         $job_position = $row['job_position'];
         $job_type = $row['job_type'];
         $category=$row['category'];
         $post_date_time=$row['post_date_time'];
         $content=$row['content'];

//geting is finish



        

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- link css -->
    <link rel="stylesheet" href="post1.css">

</head>
<header class="header">
    <div class="section">
        <div class="header_container">
            <nav class="navbar">
                <h2 class="logo">
                    <a href="#">
                        <img src="../../images/logo.png" alt="">
                    </a>
                </h2>
                <ul>
                    <li><a href="../../index.html">Home</a></li>
                    <li><a href="../../Recruiter/profile/index.php">Profile</a></li>
                    <li><a href="../Recruiter_logout/logoutprocess.php">logout</a></li>
                    <li><a href="contact/contact.php?recruiter_id=<?php echo $recruiter_id; ?>">Contact</a></li>
                </ul>
                <a href="../../Recruiter/job-post/index.php" class="post_job">POST A JOB</a>
            </nav>
        </div>
    </div>
</header>
<!-- End Header -->
<body>
    <div class="container">
        <form action="./updating_process.php?post_id=<?php echo $post_id; ?>" method="POST">
            <div class="input_field">
                <label for="title">Title:</label>
                <input type="text" name="title" id="Tag" value="<?php echo $title ?>" placeholder="Please Enter tag name">

                <label for="title">State/Region:</label>
                <input type="text" name="State_Region" id="State_Region" value="<?php echo $state_region ?>" placeholder="Please Enter location">

                <label for="title">Job position:</label>
                <input type="text" name="Job_position" id="Job_position" value=" <?php echo $job_position ?>" placeholder="Please Enter tag name">

                <div class="tag_category">
                    <label for="title">Job type:</label>
                    <select name="Job_type" class="job_type" value="<?php echo $job_type ?>">
                        <option value="Regular">Regular</option>
                        <option value="Remote">Remote</option>
                    </select>


                    <label for="title">Category:</label>
                    <select class="category" name="category" id="browsers" value=" <?php echo $category ?>" onchange="preferedBrowser()" class="category">
                        <option value="Development">Development</option>
                        <option value="Data Science">Data Science</option>
                        <option value="Engineering">Engineering</option>
                        <option value="Security">Security</option>
                        <option value="Programmer">Programmer</option>
                        <option value="System Analyst">System Analyst</option>
                        <option value="Administrator">Administrator</option>
                        <option value="Design">Design</option>
                    </select>

                    <label for="title">Tag:</label>
                    <select name="Tag" class="tag" value="<?php echo $tag ?>">
                        <option style="display:none" class="development" value="Frontend">Frontend</option>
                        <option style="display:none" class="development" value="Backend">Backend</option>
                        <option style="display:none" class="development" value="Fullstack">Fullstack</option>
                        <option style="display:none" class="development" value="Mobile App">Mobile App</option>
                        <option style="display:none" class="development" value="Mobile App">IOS</option>

                        <option style="display:none" class="Design" value="System Design">System Design</option>
                        <option style="display:none" class="Design" value="Web Design">Web Design</option>
                        <option style="display:none" class="Design" value="UI/UX Design">UI/UX Design</option>
                        <option style="display:none" class="Design" value="Graphic Design">Graphic Design</option>

                        <option style="display:none" class="Engineering" value="Software Engineer">Software Engineer</option>
                        <option style="display:none" class="Engineering" value="Hardware Engineer">Hardware Engineer</option>
                        <option style="display:none" class="Engineering" value="Network Engineer">Network Engineer</option>
                        <option style="display:none" class="Engineering" value="Internet Application Engineer">Internet Application Engineer</option>
                        <option style="display:none" class="Engineering" value="Cloud System Engineer">Cloud System Engineer</option>
                        <option style="display:none" class="Engineering" value="QA Engineer">QA Engineer</option>
                        <option style="display:none" class="Engineering" value="Dev-Ops Engineer">Dev-Ops Engineer</option>


                        <option style="display:none" class="Data_Science" value="Data Analyst">Data Analyst</option>
                        <option style="display:none" class="Data_Science" value="Data Engineer">Data Engineer</option>
                        <option style="display:none" class="Data_Science" value="Data Extraction">Data Extraction</option>
                        <option style="display:none" class="Data_Science" value="Data Mining">Data Mining</option>
                        <option style="display:none" class="Data_Science" value="Data Processing">Data Processing</option>
                        <option style="display:none" class="Data_Science" value="Data Visualization">Data Visualization</option>
                        <option style="display:none" class="Data_Science" value="Deep Learning">Deep Learning</option>
                        <option style="display:none" class="Data_Science" value="Machine Learning">Machine Learning</option>

                        <option style="display:none" class="Security" value="SOC Analyst">SOC Analyst</option>
                        <option style="display:none" class="Security" value="Cyber Security Specialist">Cyber Security Specialist</option>
                        <option style="display:none" class="Security" value="Threat Hunter">Threat Hunter</option>
                        <option style="display:none" class="Security" value="Pentester">Pentester</option>
                        <option style="display:none" class="Security" value="Bug Hunter">Bug Hunter</option>
                        <option style="display:none" class="Security" value="Security Architecture">Security Architecture</option>
                        <option style="display:none" class="Security" value="Security Engineer">Security Engineer</option>
                        <option style="display:none" class="Security" value="Cryptographer">Cryptographer</option>

                        <option style="display:none" class="Administrator" value="Network Administrator">Network Administrator</option>
                        <option style="display:none" class="Administrator" value="Database Administrator">Database Administrator</option>

                        <option style="display:none" class="Programmer" value="Problem Solver">Problem Solver</option>

                        <option style="display:none" class="System_Analyst" value="Analyst">Analyst</option>


                    </select>
                    </div>
            </div>
            <textarea name="content" value="<?php echo $content?>"></textarea>
            <input type="submit" name="submit_data" value="Update" class="btn">
        </form>
    </div>

    <script src="../Recruiter/job-post/ckeditor/ckeditor.js"></script>
    <script>
        CKEDITOR.replace('content');
    </script>
    <script >

function preferedBrowser() {
    prefer = document.forms[0].browsers.value;
    //console.log(prefer);
    var development, data_science, engineering, security, programmer, system_analyst, administrator, design;

    //Development sub category
    if(prefer == 'Development'){
        design = document.querySelectorAll(".Design");
        design.forEach((item)=>{
            item.style.display="none";
        })

        data_science = document.querySelectorAll(".Data_Science");
        data_science.forEach((item)=>{
            item.style.display="none";
        })

        engineering = document.querySelectorAll(".Engineering");
        engineering.forEach((item)=>{
            item.style.display="none";
        })

        security = document.querySelectorAll(".Security");
        security.forEach((item)=>{
            item.style.display="none";
        })

        programmer = document.querySelectorAll(".Programmer");
        programmer.forEach((item)=>{
            item.style.display="none";
        })

        system_analyst = document.querySelectorAll(".System_Analyst");
        system_analyst.forEach((item)=>{
            item.style.display="none";
        })

        administrator = document.querySelectorAll(".Administrator");
        administrator.forEach((item)=>{
            item.style.display="none";
        })

        development = document.querySelectorAll(".development");
        development.forEach((item)=>{
            item.style.display="block";
        })

    }else if(prefer == 'Design'){
        design = document.querySelectorAll(".Design");
        design.forEach((item)=>{
            item.style.display="block";
        })

        data_science = document.querySelectorAll(".Data_Science");
        data_science.forEach((item)=>{
            item.style.display="none";
        })

        engineering = document.querySelectorAll(".Engineering");
        engineering.forEach((item)=>{
            item.style.display="none";
        })

        security = document.querySelectorAll(".Security");
        security.forEach((item)=>{
            item.style.display="none";
        })

        programmer = document.querySelectorAll(".Programmer");
        programmer.forEach((item)=>{
            item.style.display="none";
        })

        system_analyst = document.querySelectorAll(".System_Analyst");
        system_analyst.forEach((item)=>{
            item.style.display="none";
        })

        administrator = document.querySelectorAll(".Administrator");
        administrator.forEach((item)=>{
            item.style.display="none";
        })

        development = document.querySelectorAll(".development");
        development.forEach((item)=>{
            item.style.display="none";
        })
    }else if(prefer == 'Data Science'){
        design = document.querySelectorAll(".Design");
        design.forEach((item)=>{
            item.style.display="none";
        })

        data_science = document.querySelectorAll(".Data_Science");
        data_science.forEach((item)=>{
            item.style.display="block";
        })

        engineering = document.querySelectorAll(".Engineering");
        engineering.forEach((item)=>{
            item.style.display="none";
        })

        security = document.querySelectorAll(".Security");
        security.forEach((item)=>{
            item.style.display="none";
        })

        programmer = document.querySelectorAll(".Programmer");
        programmer.forEach((item)=>{
            item.style.display="none";
        })

        system_analyst = document.querySelectorAll(".System_Analyst");
        system_analyst.forEach((item)=>{
            item.style.display="none";
        })

        administrator = document.querySelectorAll(".Administrator");
        administrator.forEach((item)=>{
            item.style.display="none";
        })

        development = document.querySelectorAll(".development");
        development.forEach((item)=>{
            item.style.display="none";
        })
    }else if(prefer == 'Engineering'){
        design = document.querySelectorAll(".Design");
        design.forEach((item)=>{
            item.style.display="none";
        })

        data_science = document.querySelectorAll(".Data_Science");
        data_science.forEach((item)=>{
            item.style.display="none";
        })

        engineering = document.querySelectorAll(".Engineering");
        engineering.forEach((item)=>{
            item.style.display="block";
        })

        security = document.querySelectorAll(".Security");
        security.forEach((item)=>{
            item.style.display="none";
        })

        programmer = document.querySelectorAll(".Programmer");
        programmer.forEach((item)=>{
            item.style.display="none";
        })

        system_analyst = document.querySelectorAll(".System_Analyst");
        system_analyst.forEach((item)=>{
            item.style.display="none";
        })

        administrator = document.querySelectorAll(".Administrator");
        administrator.forEach((item)=>{
            item.style.display="none";
        })

        development = document.querySelectorAll(".development");
        development.forEach((item)=>{
            item.style.display="none";
        })
    }else if(prefer == 'Security'){
        design = document.querySelectorAll(".Design");
        design.forEach((item)=>{
            item.style.display="none";
        })

        data_science = document.querySelectorAll(".Data_Science");
        data_science.forEach((item)=>{
            item.style.display="none";
        })

        engineering = document.querySelectorAll(".Engineering");
        engineering.forEach((item)=>{
            item.style.display="none";
        })

        security = document.querySelectorAll(".Security");
        security.forEach((item)=>{
            item.style.display="block";
        })

        programmer = document.querySelectorAll(".Programmer");
        programmer.forEach((item)=>{
            item.style.display="none";
        })

        system_analyst = document.querySelectorAll(".System_Analyst");
        system_analyst.forEach((item)=>{
            item.style.display="none";
        })

        administrator = document.querySelectorAll(".Administrator");
        administrator.forEach((item)=>{
            item.style.display="none";
        })

        development = document.querySelectorAll(".development");
        development.forEach((item)=>{
            item.style.display="none";
        })
    }else if(prefer == 'Programmer'){
        design = document.querySelectorAll(".Design");
        design.forEach((item)=>{
            item.style.display="none";
        })

        data_science = document.querySelectorAll(".Data_Science");
        data_science.forEach((item)=>{
            item.style.display="none";
        })

        engineering = document.querySelectorAll(".Engineering");
        engineering.forEach((item)=>{
            item.style.display="none";
        })

        security = document.querySelectorAll(".Security");
        security.forEach((item)=>{
            item.style.display="none";
        })

        programmer = document.querySelectorAll(".Programmer");
        programmer.forEach((item)=>{
            item.style.display="block";
        })

        system_analyst = document.querySelectorAll(".System_Analyst");
        system_analyst.forEach((item)=>{
            item.style.display="none";
        })

        administrator = document.querySelectorAll(".Administrator");
        administrator.forEach((item)=>{
            item.style.display="none";
        })

        development = document.querySelectorAll(".development");
        development.forEach((item)=>{
            item.style.display="none";
        })
    }else if(prefer == 'System Analyst'){
        design = document.querySelectorAll(".Design");
        design.forEach((item)=>{
            item.style.display="none";
        })

        data_science = document.querySelectorAll(".Data_Science");
        data_science.forEach((item)=>{
            item.style.display="none";
        })

        engineering = document.querySelectorAll(".Engineering");
        engineering.forEach((item)=>{
            item.style.display="none";
        })

        security = document.querySelectorAll(".Security");
        security.forEach((item)=>{
            item.style.display="none";
        })

        programmer = document.querySelectorAll(".Programmer");
        programmer.forEach((item)=>{
            item.style.display="none";
        })

        system_analyst = document.querySelectorAll(".System_Analyst");
        system_analyst.forEach((item)=>{
            item.style.display="block";
        })

        administrator = document.querySelectorAll(".Administrator");
        administrator.forEach((item)=>{
            item.style.display="none";
        })

        development = document.querySelectorAll(".development");
        development.forEach((item)=>{
            item.style.display="none";
        })
    }else if(prefer == 'Administrator'){
        design = document.querySelectorAll(".Design");
        design.forEach((item)=>{
            item.style.display="none";
        })

        data_science = document.querySelectorAll(".Data_Science");
        data_science.forEach((item)=>{
            item.style.display="none";
        })

        engineering = document.querySelectorAll(".Engineering");
        engineering.forEach((item)=>{
            item.style.display="none";
        })

        security = document.querySelectorAll(".Security");
        security.forEach((item)=>{
            item.style.display="none";
        })

        programmer = document.querySelectorAll(".Programmer");
        programmer.forEach((item)=>{
            item.style.display="none";
        })

        system_analyst = document.querySelectorAll(".System_Analyst");
        system_analyst.forEach((item)=>{
            item.style.display="none";
        })

        administrator = document.querySelectorAll(".Administrator");
        administrator.forEach((item)=>{
            item.style.display="block";
        })

        development = document.querySelectorAll(".development");
        development.forEach((item)=>{
            item.style.display="none";
        })
    }
    
}

    </script>
</body>
</html>