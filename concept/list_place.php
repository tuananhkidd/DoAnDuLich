<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendor/fonts/flag-icon-css/flag-icon.min.css">


    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="ajax/ajax.js"></script>
    <title>Địa điểm</title>
</head>

<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <?php include 'header.php'?>
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
        <?php include 'side_bar.php'?>
        </div>
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content ">
                    <div class="ecommerce-widget">

                        <div class="row">
                            <!-- ============================================================== -->
                      
                            <!-- ============================================================== -->

                                          <!-- List Hotel  -->
                            <!-- ============================================================== -->
                            <div class="col-xl-12 col-lg-12 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <h5 class="card-header">Danh sách địa điểm</h5>
                                     <div class="col-sm-12" style="margin: 10px 0px 10px 0px;">
                                        <a href="#addPlace" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Thêm Địa Điểm</span></a>
                                    </div>
                                    <div class="card-body p-0">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead class="bg-light">
                                                    <tr class="border-0">
                                                        <th class="border-0 ">#</th>
                                                        <th class="border-0 ">Logo</th>
                                                        <th class="border-0" style="width: 300px;">Tên</th>
                                                        <th class="border-0"  style="width: 300px;">Địa chỉ</th>
                                                        <th class="border-0"style="width: 800px;">Chi tiết</th>
                                                        <th class="border-0"></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <?php
                                                include 'DBHelper.php';
                                                $user = mysqli_query($con,"SELECT * FROM place" ); 
                                                $count = 1;
                                                while($row = mysqli_fetch_array($user)){
                                                $imageUrl = $row["place_image"];
                                                ?>
                                                <tr>
                                                <td><?php echo $count++; ?></td>
                                                <td><div class="m-r-10"><img src="<?php echo $imageUrl; ?>"; alt="user" class="rounded" width="45"></div></td>
                                                <td><?php echo $row["place_name"]; ?></td>
                                                <td><?php echo $row["place_address"]; ?></td>
                                                <td><?php echo $row["place_detail"]; ?></td>
                                                <td><div class="col-auto"> 
                                                    <a href="#editPlace" class="edit" data-toggle="modal">
                                                        <i class="material-icons update_place" data-toggle="tooltip" 
                                                        data-id="<?php echo $row["id"]; ?>"
                                                        data-name="<?php echo $row["place_name"]; ?>"
                                                        data-address="<?php echo $row["place_address"];?>"
                                                        data-detail="<?php echo $row["place_detail"]; ?>"
                                                        title="Edit">&#xE254;</i>
                                                    </a>
                                                <a  href="#deletePlace"class="delete_place" data-id="<?php echo $row["id"]; ?>" data-toggle="modal">
                                                    <i class="material-icons" data-toggle="tooltip"  title="Delete">&#xE872;</i>
                                                </a></div></td>
                                                </tr>
                                                <?php
                                                }
                                                    ?>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- ============================================================== -->
                            <!-- end recent orders  -->

    
     <!-- Add Modal HTML -->
                            <div id="addPlace" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form id="user_form">
                                            <div class="modal-header">                      
                                                <h4 class="modal-title">Thêm Địa Điểm</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            </div>
                                            <div class="modal-body">                    
                                                <div class="form-group">
                                                    <label>Tên</label>
                                                    <input type="text" id="name" name="name" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Địa chỉ</label>
                                                    <input type="email" id="address" name="address" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Chi tiết</label>
                                                    <input type="detail" id="detail" name="detail" class="form-control" required>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <input type="hidden" value="4" name="type">
                                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                                <button type="button" class="btn btn-success" id="btn-add-place">Add</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <!-- Edit Modal HTML -->
                            <div id="editPlace" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form id="update_form">
                                            <div class="modal-header">                      
                                                <h4 class="modal-title">Sửa Địa điểm</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                                <input type="hidden" id="id_u" name="id" class="form-control" required>                 
                                                <div class="form-group">
                                                    <label>Tên</label>
                                                    <input type="text" id="name_u" name="name" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Địa chỉ</label>
                                                    <input type="email" id="address_u" name="address" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Chi tiết</label>
                                                    <input type="detail" id="detail_u" name="detail" class="form-control" required>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <input type="hidden" value="5" name="type">
                                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                                <button type="button" class="btn btn-info" id="update_place">Update</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

    
                            <div id="deletePlace" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form>

                                            <div class="modal-header">                      
                                                <h4 class="modal-title">Delete</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                                <input type="hidden" id="id_d" name="place_id" class="form-control">                  
                                                <p>Bạn có chắc chắn xóa bản ghi này không?</p>
                                            </div>
                                            <div class="modal-footer">
                                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy">
                                                <button type="button" class="btn btn-danger" id="delete_place">Xóa</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- customer acquistion  -->
                            <!-- ============================================================== -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <?php include 'footer.php'?>
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- end wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <!-- jquery 3.3.1 -->
    <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <!-- bootstap bundle js -->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <!-- slimscroll js -->
    <script src="assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <!-- main js -->
    <script src="assets/libs/js/main-js.js"></script>
   
</body>
 
</html>