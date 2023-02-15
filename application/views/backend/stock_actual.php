<?php
    $this->load->view('backend/header');
    $this->load->view('backend/sidebar'); 
?>
        <div class="page-wrapper">
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-themecolor">Actual Stock</h3>
                </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item ">Actual Stock</li>
                    </ol>
                </div>
            </div>
            <div class="container-fluid">

                <div class="row m-b-10"> 
                    <div class="col-12">
                        <button type="button" class="btn btn-info"><i class="fa fa-plus"></i><a href="<?php echo base_url();?>Purchase/Create" class="text-white"><i class="" aria-hidden="true"></i> Add Medicine Stock</a></button>
                        <button type="button" class="btn btn-primary"><i class="fa fa-bars"></i><a href="<?php echo base_url();?>invantory/stock" class="text-white"><i class="" aria-hidden="true"></i> Manage Medicine Stock </a></button>
                        <button type="button" class="btn btn-primary"><i class="fa fa-bars"></i><a href="<?php echo base_url();?>invantory/Stock_out" class="text-white"><i class="" aria-hidden="true"></i> Out of Stock </a></button>
                        <button type="button" class="btn btn-primary"><i class="fa fa-bars"></i><a href="<?php echo base_url();?>invantory/Stock_expire_soon" class="text-white"><i class="" aria-hidden="true"></i> Soon Expire </a></button>
                        <button type="button" class="btn btn-primary"><i class="fa fa-bars"></i><a href="<?php echo base_url();?>invantory/Stock_expired" class="text-white"><i class="" aria-hidden="true"></i> Expired Medicine</a></button>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="card card-outline-info">
                            <div class="card-header">
                                <h4 class="m-b-0 text-white">Manage Medicine Stock </h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive ">
                                    <table id="myTable" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>Medicine Name</th>
                                                <th>Generic Name</th>
                                                <th>Stock</th>
                                                <th>New Stock Count</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                       
                                        <?php
			$servername = "localhost";
			$dbusername = "root";
			$dbpassword = "";
			$dbname = "genpharma";

			$conn = mysqli_connect($servername, $dbusername, $dbpassword, $dbname);

			if (!$conn) {
				die("Connection failed: " . mysqli_connect_error());
			}

			$query = "SELECT * FROM medicine";
			$result = mysqli_query($conn, $query);

			if (mysqli_num_rows($result) > 0) {
				while($row = mysqli_fetch_assoc($result)) {
					echo "<tr>";
					echo "<td>" . $row["product_name"] . "</td>";
                    echo "<td>" . $row["generic_name"] . "</td>";
                    echo "<td>" . $row["instock"] . "</td>";
                  
					echo "<td>";
					echo "<form action='' method='post'>";
					echo "<input type='hidden' name='id' value='" . $row["id"] . "'>";
					echo "<input type='text' name='stockk' value='" . $row["instock"] . "'>";
					echo "<input type='submit' name='submit' value='Update'>";
					echo "</form>";
					echo "</td>";
					echo "</tr>";

					if(isset($_POST['submit'])) {
						$id = $_POST['id'];
						$stocks = $_POST['stockk'];
                        $qty = $row["sale_qty"] ;

                        $newqty = $stocks - $qty;

                       
						$query = "UPDATE medicine SET instock='$stocks' WHERE id=$id";
                       
						$update_result = mysqli_query($conn, $query);
                       
						if ($update_result) {
							header("Refresh:0");    
						} else {
							echo "Error updating record: " . mysqli_error($conn);
						}
                        
					}
                   
				}
                
			} else {
				echo "0 results";
			}

			mysqli_close($conn);
		?>
                                           
                                           
                
                                          
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                        </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
           
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>

        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
       

<?php 

    $this->load->view('backend/footer');

?>