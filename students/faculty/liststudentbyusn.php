<?php include("header.php");
      include('sidebar.php');
      extract($_REQUEST);
      
      if(!$usn && isset($_SESSION["usn"])){
          $usn=$_SESSION["usn"];
      }
      
    $dbnam= substr($usn,5,2);
   
    if($dbnam=="cv")
    {   
        $_SESSION["dbname"]="civil";
    }
    else if($dbnam=="cs")
    {
       $_SESSION["dbname"]="csis";
    }
    else if($dbnam=="is")
    {
        
        $_SESSION["dbname"]="csis";
    }
    else if($dbnam=="ec")
    {
        
        $_SESSION["dbname"]="ec";
    }
    else if($dbnam=="ee")
    {
        
        $_SESSION["dbname"]="ee";
    }
    else if($dbnam=="me")
    {
        
        $_SESSION["dbname"]="mech";
    }
    
    $_SESSION['back']="liststudentbyusn.php";
    $_SESSION["usn"]=$usn;
  $servername1 = "localhost";
$username1 = "kvgenggco_admin";
$password1 = "Geleyageleya";
$dbname1 = "kvgenggco_".$_SESSION["dbname"];
$contemp = new mysqli($servername1, $username1, $password1, $dbname1);

    $ssl="SELECT * FROM students where USN='$usn'";
      $result = $contemp->query($ssl);
      
      
      //$row = $result->fetch_assoc();
      
           ?>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
     <h1>
        Student Information
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Student Information</li>
      </ol>
       
        <div class="content">
	   <div class="container-fluid">
           <?php if(isset($asuccess)){ ?>
   <div class="alert alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <strong>Faculty Added successfully.</strong>
</div>
   <?php } ?>
   <?php if(isset($deasucc)){ ?>
   <div class="alert alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <strong>Deactivated Successfully.</strong>
</div>
   <?php } ?>
            <?php if(isset($updsucc)){ ?>
   <div class="alert alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <strong>Updated successfully.</strong>
</div>
   <?php } ?>
   <?php if(isset($upderr)){ ?>
   <div class="alert alert-warning alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <strong>Updated Unsuccessfully.</strong>
</div>
   <?php } ?>
           <?php if(isset($success)){ ?>
   <div class="alert alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <strong>Deleted successfully.</strong>
</div>
   <?php } ?>
   <?php if(isset($error)){ ?>
   <div class="alert alert-danger alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <strong>Deleted Unsuccessfully.</strong>
</div>
   <?php } ?>
               
   <br/><br/>
   <div class="panel panel-info">
	          <div class="panel-heading">Students Details </div>
		         <div class="panel-body">
              <div class="box-body">
                           <table id="example1" class="table table-bordered table-striped">
                              <thead>
                                 <tr>
                                     <th>Photo</th>
                                    <th> USN </th>
                                    <th> Name </th>
                                     <th> SEM </th>
                                     <th> Mentor</th>
                                    <th> student Phno </th>
                                    <th> Parent Phno </th>
                                    <th> Parent Name </th>
                                    <th> Permanent Addr </th>
                                    <th> Campus Addr </th>
                                    <th> View IA</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <?php
                                $i=1;
                                
                                while($row=$result->fetch_assoc())
                                { 
                                ?>
                                <tr>
                                    <td><img src="../<?php echo $row['url'];?>" style="height:4.5cm;width:3.5cm;"></td>
                               <td><?=$row['USN'];?></td>
                                <td><?=$row['Name'];?></td>
                                <td><?=$row['sem'];?></td>
                                <td><?=$row['cordinator'];?></td>
                                  <td><?=$row['studnum'];?></td>
                                   <td><?=$row['parnum'];?></td>
                                    <td><?=$row['parname'];?></td>
                                     <td><?=$row['addl1'].'<br>'.$row['addl2'].'<br>'.$row['addl3'].'<br>'.$row['pincode'];?></td>
                                      <td><?=$row['caddl1'].'<br>'.$row['caddl2'].'<br>'.$row['caddl3'].'<br>'.$row['cpincode'];?></td>
                                      <td><a href="listia.php?susn=<?php echo $row['USN']?>"><button>View Marks</button></a></td>
                             </tr>
                             <?php $i++; } ?>
                              </tbody>
                              
                           </table>
                        </div>
                        <!-- /.box-body -->
                     </div>
                     <!-- /.box -->
                  </div>
           </div>
   
               <!-- /.row -->
            </section>
            <!-- /.content -->
         </div>
         <!-- /.content-wrapper -->
      
<style>
       
.box-body::-webkit-scrollbar
{
	-webkit-appearance: none;
	width: 14px;
	height: 14px;
}

.box-body::-webkit-scrollbar-thumb
{
	border-radius: 8px;
	border: 3px solid #fff;
	background-color: rgba(0, 0, 0, .3);
}
.box-body {
    width: 100%;
    overflow-y: auto;
    _overflow: auto;
    margin: 0 0 1em;
}

.box-body::-webkit-scrollbar-thumb {
    border-radius: 8px;
    border: 3px solid #fff;
    background-color: rgba(0, 0, 0, .3);
}
    
</style>

<?php include('footer.php');?>