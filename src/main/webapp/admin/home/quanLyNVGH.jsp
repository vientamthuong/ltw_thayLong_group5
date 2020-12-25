<%@ page import="beans.account.ErrorAccount" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 22/12/2020
  Time: 9:10 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TVTSHOP ADMIN | Quản lý nhân viên giao hàng</title>
    <link rel="stylesheet" href="../../fonts/font-awesome-4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="../../css/indexAdmin.css">
    <script src="../../js/indexAdmin.js"></script>

    <link rel="stylesheet" href="../../css/quanLyNVGHAdmin.css">


</head>

<body>


<div class="indexleft">
    <div class="indexleftlogo">
        <i class="fa fa-android"></i>
    </div>
    <div class="indexleftselect">
        <div>
            <a href="../index.html" class="indexleftselectitem  ">
                <div>
                    <i class="fa fa-linode"></i>
                    <p>Trang chủ</p>
                </div>
            </a>
            <a href="thuNhap.html" class="indexleftselectitem  ">
                <div>
                    <i class="fa fa-money"></i>
                    <p>Thu nhập</p>
                </div>
            </a>
            <div class="indexleftselectitemlv2" onclick="indexleftselectitemlv2(this)">
                <div class="indexleftselectitem">
                    <div>
                        <i class="fa fa-user-o"></i>
                        <p>Quản lý tài khoản</p>
                    </div>
                    <i class="fa fa-angle-right"></i>
                </div>
                <ul>
                    <li class="activelv2"><a href="quanLyNVGH.jsp"> <i class="fa fa-truck"></i> Nhân viên giao
                        hàng</a></li>
                    <li><a href="quanLyNVK.jsp"><i class="fa fa-cube"></i>Nhân viên kho</a></li>
                    <li><a href="quanLyKhachHang.jsp"><i class="fa fa-users"></i>Khách hàng</a>
                    </li>
                </ul>
                <input type="checkbox" style="display: none;" checked>
            </div>
            <a href="quanLyBinhLuan.html" class="indexleftselectitem  ">
                <div>
                    <i class="fa fa-comment-o"></i>
                    <p>Quản lý đánh giá</p>
                </div>
            </a>
            <a href="quanLyDonHang.html" class="indexleftselectitem  ">
                <div>
                    <i class="fa fa-file-text-o"></i>
                    <p>Quản lý đơn hàng</p>
                </div>
            </a>
            <div class="indexleftselectitemlv2 dontactiveindexleftselectitemlv2"
                 onclick="indexleftselectitemlv2(this)">
                <div class="indexleftselectitem">
                    <div>
                        <i class="fa fa-object-group"></i>
                        <p>Nhập hàng</p>
                    </div>
                    <i class="fa fa-angle-right"></i>
                </div>
                <ul>
                    <li><a href="nhapHang.html"> <i class="fa fa-cart-arrow-down"></i>Nhập hàng</a></li>
                    <li><a href="lichSuNhapHang.html"><i class="fa fa-history"></i>Lịch sử nhập hàng</a></li>
                </ul>
                <input type="checkbox" style="display: none;">
            </div>
            <div class="indexleftselectitemlv2 dontactiveindexleftselectitemlv2"
                 onclick="indexleftselectitemlv2(this)">
                <div class="indexleftselectitem">
                    <div>
                        <i class="fa fa-wpforms"></i>
                        <p>Quản lý sản phẩm</p>
                    </div>
                    <i class="fa fa-angle-right"></i>
                </div>
                <ul>
                    <li><a href="quanLySanPham.html"> <i class="fa fa-copy"></i>Sản phẩm</a></li>
                    <li><a href="quanLyDanhMuc.html"><i class="fa fa-sticky-note-o"></i>Danh mục</a></li>
                </ul>
                <input type="checkbox" style="display: none;">
            </div>
            <div class="indexleftselectitemlv2 dontactiveindexleftselectitemlv2"
                 onclick="indexleftselectitemlv2(this)">
                <div class="indexleftselectitem">
                    <div>
                        <i class="fa fa-envelope-o"></i>
                        <p>Liên hệ</p>
                    </div>
                    <i class="fa fa-angle-right"></i>
                </div>
                <ul>
                    <li><a href="guiEmailThongBao.html"> <i class="fa fa-bullhorn"></i>Thông báo</a></li>
                    <li><a href="phanHoiLienHe.html"><i class="fa fa-reply-all"></i>Phản hồi</a></li>
                </ul>
                <input type="checkbox" style="display: none;">
            </div>
            <a href="thongTinTaiKhoanAdmin.html" class="indexleftselectitem  ">
                <div>
                    <i class="fa fa-user-circle-o"></i>
                    <p>Thông tin tài khoản</p>
                </div>
            </a>
            <a href="../../index.html" class="indexleftselectitem  ">
                <div>
                    <i class="fa fa-shopping-cart"></i>
                    <p>Trở về trang mua sắm</p>
                </div>
            </a>
            <a href="login.html" class="indexleftselectitem  ">
                <div>
                    <i class="fa fa-power-off"></i>
                    <p>Đăng xuất</p>
                </div>
            </a>
        </div>
    </div>
</div>

<div class="indexright">
    <div class="indextop">
        <h3>TVT<span style="color: #2a2935;">S</span>hop</h3>
        <div class="indextopright">
            <div class="indextopsearch">
                <i class="fa fa-search"></i>
                <input type="text" placeholder="Tìm kiếm">
            </div>
            <div class="indextopbell  dontindextopbellinfor" onclick="indextopbellinfor(this)">
                <i class="fa fa-bell-o"></i>
                <div>
                    <i class="fa fa-circle"></i>
                </div>
                <div class="indextopbellinfor">
                    <i class="fa fa-caret-up"></i>
                    <div>
                        <h3>Thông báo</h3>
                        <div class="indextopbellinforcontent">
                            <div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar1.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong> Diệu Đặng</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar2.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Hoàng Nguyễn</strong> đánh giá trên trang của bạn</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar3.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Sơn</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar4.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Xinh Gái</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar5.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Lê Nguyễn</strong> vừa đánh giá trên trang của bạn</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar6.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Hồng Nhan</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar1.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong> Diệu Đặng</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar2.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Hoàng Nguyễn</strong> đánh giá trên trang của bạn</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar3.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Sơn</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar4.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Xinh Gái</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar5.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Lê Nguyễn</strong> vừa đánh giá trên trang của bạn</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar6.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Hồng Nhan</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <input type="checkbox" style="display: none;">
            </div>
            <a class="indextopaccount">
                <div>
                    <img src="../../img/product/avatar7.jpg" alt="">
                </div>
                <div>
                    <h3>Nguyễn Thị Hoa Hồng</h3>
                    <p>Admin</p>
                </div>
            </a>
        </div>
    </div>

    <div class="backgroundindexmain">
    </div>

    <!-- Code trang ở đây-->

    <div class="indexmain">
        <div id="div2">
            <div>
                <div class="header">
                    <div class="leftheader">
                        <select name="" id="">
                            <option value="" selected>Ngày tạo</option>
                            <option value="">Họ và tên</option>
                            <option value="">Tài khoản</option>
                            <option value="">Lương</option>
                            <option value="">Kích hoạt</option>
                            <option value="">Đánh giá</option>
                        </select>
                        <div>
                            <div class="leftheadersort" onclick="changesort2(this)">
                                <i class=" fa fa-sort-amount-desc"></i>
                                <i class=" fa fa-sort-amount-asc"></i>
                                <input type="checkbox" style="display: none;">
                            </div>
                            <div class="leftheadersearch">
                                <i class="fa fa-search" onclick="showsearch2(this)"></i>
                                <div>
                                    <i class="fa fa-search" onclick="hiddensearch2(this)"></i>
                                    <input type="text" placeholder="Tìm kiếm">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="leftnextpage">
                        <p>Hiển thị <strong> 10 </strong> trên tổng 93 nhân viên</p>
                        <button><i class="fa fa-caret-left"></i></button>
                        <ul>
                            <li>1</li>
                            <li>2</li>
                            <li>3</li>
                            <li>4</li>
                            <li>5</li>
                            <li class="none">...</li>
                            <li>9</li>
                        </ul>
                        <button><i class="fa fa-caret-right"></i></button>
                    </div>
                    <button onclick="themkhachhang()"><i class="fa fa-plus"></i>Thêm nhân viên mới</button>
                    <button onclick="xoacacmuadachon()"><i class="fa fa-trash-o"></i>Xóa các mục đã chọn</button>
                </div>
                <div class="maindiv2" id="maindiv2">
                    <div class="maindiv2header">
                        <button onclick="allselect()">+</button>
                        <p>Họ và tên</p>
                        <p>Email</p>
                        <p>Số điện thoại</p>
                        <p>Tài khoản</p>
                        <p>Lương</p>
                        <p>Ngày tạo</p>
                    </div>

                    <div class="item">
                        <label for="c1">
                            <input type="checkbox" name="" id="c1">
                        </label>
                        <div class="itemhdd">
                            <img src="../../img/user.jpg" alt="">
                        </div>
                        <p class="itemname">
                            Nguyễn Thị Hoa Hồng
                        </p>

                        <p class="itememail">
                            nguyenthihoahong@gmail.com
                        </p>

                        <p class="itemphone">
                            0971-122-209
                        </p>

                        <p class="itemtk">
                            iamarose258
                        </p>

                        <div></div>
                        <p class="luong">10,000,000 VND</p>

                        <p class="itemdate">
                            20 Tháng Hai 2020
                        </p>

                        <div class="itemsubmit" onclick="showselect(this)">
                            <input type="text" style="display: none;">
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <div>
                                <button onclick="editkhachhang(this)"><i class="fa fa-pencil"></i>Sửa</button>
                                <button onclick="removekhachhang(this)"><i class="fa fa-trash"></i>Xóa</button>
                            </div>
                        </div>


                        <div>
                            <div class="div11">
                                <h3>Hồ sơ của bạn</h3>
                                <input id="fileInput1" type="file" style="display:none;"
                                       onchange="loadIMG2(event,this)"/>
                                <div class="div11daidien" onclick="document.getElementById('fileInput1').click()">
                                    <div>
                                        <img src="../../img/user.jpg" alt="">
                                    </div>
                                </div>

                                <button onclick="document.getElementById('fileInput1').click()">Thay đổi
                                    ảnh đại diện
                                    mới
                                </button>
                                <button onclick="removeIMG2()">Xóa ảnh đại diện</button>

                            </div>


                                <div class="div12">
                                    <h3>Điền thông tin cá nhân</h3>
                                    <div class="linediv12"></div>
                                    <div class="div12input">
                                        <label for="">* Họ và tên</label>
                                        <input name="full-name" type="text" placeholder="Nhập họ và tên ở đây" value="Diệu Đặng">
                                    </div>
                                    <div class="div12input">
                                        <label for="">Tên hiển thị</label>
                                        <input name="display-name" type="text" placeholder="Nhập tên hiển thị ở đây" value="Diệu">
                                    </div>
                                    <div class="div12input">
                                        <label for="">* Email</label>
                                        <input name="email" type="text" placeholder="Nhập email ở đây"
                                               value="dieudangprovjp@gmail.com" disabled>
                                    </div>
                                    <div class="div12input">
                                        <label for="">* Số điện thoại</label>
                                        <input name="phone" type="text" placeholder="Nhập số điện thoại ở đây" value="0377-567-239"
                                               disabled>
                                    </div>
                                    <div class="linediv12"></div>
                                    <div class="trangthai">
                                        <div class="div12inputlv2">
                                            <label for="">Tỉnh / Thành</label>
                                            <select name="tinh" id="">
                                                <option value="">Chọn tỉnh / thành</option>
                                                <option value="" selected>Phú Yên</option>
                                            </select>
                                        </div>
                                        <div class="div12inputlv2">
                                            <label for="">Quận / huyện</label>
                                            <select name="huyen" id="">
                                                <option value="">Chọn quận / huyện</option>
                                                <option value="" selected>Huyện Đồng Xuân</option>
                                            </select>
                                        </div>
                                        <div class="div12inputlv2">
                                            <label for="">Phường / xã</label>
                                            <select name="xa" id="">
                                                <option value="">Chọn phường / xã</option>
                                                <option value="" selected>Xã Đa Lộc</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="linediv12"></div>
                                    <div class="div12input">
                                        <label for="">* Tài khoản</label>
                                        <input name="userName" type="text" placeholder="Nhập tên tài khoản ở đây" value="dieudangmuado"
                                               disabled>
                                    </div>
                                    <div class="div12input">
                                        <label for="">* Mật khẩu</label>
                                        <input name="passWord" type="password" placeholder="Nhập mật khẩu ở đây" value="mothaiba@@">
                                    </div>
                                    <div class="div12input">
                                        <label for="">* Xác nhận</label>
                                        <input name="rePassWord" type="password" placeholder="Xác nhận mật khẩu ở đây" value="mothaiba@@">
                                    </div>
                                </div>

                                <div class="div13">
                                    <div class="div12input">
                                        <label for="">* Lương</label>
                                        <input name="salary" type="text" placeholder="Nhập lương ở đây" value="10,000,000">
                                    </div>
                                    <div class="linediv12"></div>
                                    <div class="div12input">
                                        <label for="">Giới thiệu</label>
                                        <input name="gioi-thieu" type="text" placeholder="Nhập số giới thiệu ở đây"
                                               value="Thiên hạ tồn vong, đóng gói cũng như thế">
                                    </div>
                                    <div class="linediv12"></div>
                                    <button><i class="fa fa-save"></i>Lưu</button>
                                    <button type="submit" onclick="trove()"><i class="fa fa-arrow-left"></i> Trở về quản
                                        lý
                                    </button>
                                </div>




                        </div>
                    </div>
                    <div class="item">
                        <label for="">
                            <input type="checkbox" name="" id="">
                        </label>
                        <div class="itemhdd">
                            <img src="../../img/product/avatar1.jpg" alt="">
                        </div>
                        <p class="itemname">
                            Diệu Đặng
                        </p>

                        <p class="itememail">
                            dieudangprovjp@gmail.com
                        </p>

                        <p class="itemphone">
                            0377-567-239
                        </p>

                        <p class="itemtk">
                            dieudangmuado
                        </p>

                        <div></div>
                        <p class="luong">10,500,000 VND</p>

                        <p class="itemdate">
                            20 Tháng Hai 2020
                        </p>

                        <div class="itemsubmit" onclick="showselect(this)">
                            <input type="text" style="display: none;">
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <div>
                                <button onclick="editkhachhang(this)"><i class="fa fa-pencil"></i>Sửa</button>
                                <button onclick="removekhachhang(this)"><i class="fa fa-trash"></i>Xóa</button>
                            </div>
                        </div>

                        <div>
                            <div class="div11">
                                <h3>Hồ sơ của bạn</h3>
                                <input id="fileInput2" type="file" style="display:none;"
                                       onchange="loadIMG2(event,this)"/>
                                <div class="div11daidien" onclick="document.getElementById('fileInput2').click()">
                                    <div>
                                        <img src="../../img/product/avatar1.jpg" alt="">
                                    </div>
                                </div>

                                <button onclick="document.getElementById('fileInput2').click()">Thay đổi
                                    ảnh đại diện
                                    mới
                                </button>
                                <button onclick="removeIMG2()">Xóa ảnh đại diện</button>

                            </div>

                            <div class="div12">
                                <h3>Điền thông tin cá nhân</h3>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">* Họ và tên</label>
                                    <input type="text" placeholder="Nhập họ và tên ở đây" value="Diệu Đặng">
                                </div>
                                <div class="div12input">
                                    <label for="">Tên hiển thị</label>
                                    <input type="text" placeholder="Nhập tên hiển thị ở đây" value="Diệu">
                                </div>
                                <div class="div12input">
                                    <label for="">* Email</label>
                                    <input type="text" placeholder="Nhập email ở đây"
                                           value="dieudangprovjp@gmail.com" disabled>
                                </div>
                                <div class="div12input">
                                    <label for="">* Số điện thoại</label>
                                    <input type="text" placeholder="Nhập số điện thoại ở đây" value="0377-567-239"
                                           disabled>
                                </div>
                                <div class="linediv12"></div>
                                <div class="trangthai">
                                    <div class="div12inputlv2">
                                        <label for="">Tỉnh / Thành</label>
                                        <select name="" id="">
                                            <option value="">Chọn tỉnh / thành</option>
                                            <option value="" selected>Phú Yên</option>
                                        </select>
                                    </div>
                                    <div class="div12inputlv2">
                                        <label for="">Quận / huyện</label>
                                        <select name="" id="">
                                            <option value="">Chọn quận / huyện</option>
                                            <option value="" selected>Huyện Đồng Xuân</option>
                                        </select>
                                    </div>
                                    <div class="div12inputlv2">
                                        <label for="">Phường / xã</label>
                                        <select name="" id="">
                                            <option value="">Chọn phường / xã</option>
                                            <option value="" selected>Xã Đa Lộc</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">* Tài khoản</label>
                                    <input type="text" placeholder="Nhập tên tài khoản ở đây" value="dieudangmuado"
                                           disabled>
                                </div>
                                <div class="div12input">
                                    <label for="">* Mật khẩu</label>
                                    <input type="password" placeholder="Nhập mật khẩu ở đây" value="mothaiba@@">
                                </div>
                                <div class="div12input">
                                    <label for="">* Xác nhận</label>
                                    <input type="password" placeholder="Xác nhận mật khẩu ở đây" value="mothaiba@@">
                                </div>
                            </div>

                            <div class="div13">
                                <div class="div12input">
                                    <label for="">* Lương</label>
                                    <input type="text" placeholder="Nhập lương ở đây" value="10,500,000">
                                </div>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">Giới thiệu</label>
                                    <input type="text" placeholder="Nhập số giới thiệu ở đây" value="Xin chào!">
                                </div>
                                <div class="linediv12"></div>
                                <button><i class="fa fa-save"></i>Lưu</button>
                                <button onclick="trove()"><i class="fa fa-arrow-left"></i> Trở về quản
                                    lý
                                </button>
                            </div>
                        </div>

                    </div>
                    <div class="item">
                        <label for="">
                            <input type="checkbox" name="" id="">
                        </label>
                        <div class="itemhdd">
                            <img src="../../img/product/avatar3.jpg" alt="">
                        </div>
                        <p class="itemname">
                            Cao Mỹ Duyên
                        </p>

                        <p class="itememail">
                            duyencaomy@gmail.com
                        </p>

                        <p class="itemphone">
                            0838-478-838
                        </p>

                        <p class="itemtk">
                            mua20conga
                        </p>

                        <div></div>
                        <p class="luong">11,000,000 VND</p>

                        <p class="itemdate">
                            20 Tháng Hai 2020
                        </p>

                        <div class="itemsubmit" onclick="showselect(this)">
                            <input type="text" style="display: none;">
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <div>
                                <button onclick="editkhachhang(this)"><i class="fa fa-pencil"></i>Sửa</button>
                                <button onclick="removekhachhang(this)"><i class="fa fa-trash"></i>Xóa</button>
                            </div>
                        </div>

                        <div>
                            <div class="div11">
                                <h3>Hồ sơ của bạn</h3>
                                <input id="fileInput3" type="file" style="display:none;"
                                       onchange="loadIMG2(event,this)"/>
                                <div class="div11daidien" onclick="document.getElementById('fileInput3').click()">
                                    <div>
                                        <img src="../../img/product/avatar3.jpg" alt="">
                                    </div>
                                </div>

                                <button onclick="document.getElementById('fileInput3').click()">Thay đổi
                                    ảnh đại diện
                                    mới
                                </button>
                                <button onclick="removeIMG2()">Xóa ảnh đại diện</button>

                            </div>

                            <div class="div12">
                                <h3>Điền thông tin cá nhân</h3>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">* Họ và tên</label>
                                    <input type="text" placeholder="Nhập họ và tên ở đây" value="Cao Mỹ Duyên">
                                </div>
                                <div class="div12input">
                                    <label for="">Tên hiển thị</label>
                                    <input type="text" placeholder="Nhập tên hiển thị ở đây">
                                </div>
                                <div class="div12input">
                                    <label for="">* Email</label>
                                    <input type="text" placeholder="Nhập email ở đây" value="duyencaomy@gmail.com"
                                           disabled>
                                </div>
                                <div class="div12input">
                                    <label for="">* Số điện thoại</label>
                                    <input type="text" placeholder="Nhập số điện thoại ở đây" value="0838-478-838"
                                           disabled>
                                </div>
                                <div class="linediv12"></div>
                                <div class="trangthai">
                                    <div class="div12inputlv2">
                                        <label for="">Tỉnh / Thành</label>
                                        <select name="" id="">
                                            <option value="">Chọn tỉnh / thành</option>
                                            <option value="" selected>Phú Yên</option>
                                        </select>
                                    </div>
                                    <div class="div12inputlv2">
                                        <label for="">Quận / huyện</label>
                                        <select name="" id="">
                                            <option value="">Chọn quận / huyện</option>
                                            <option value="" selected>Huyện Đồng Xuân</option>
                                        </select>
                                    </div>
                                    <div class="div12inputlv2">
                                        <label for="">Phường / xã</label>
                                        <select name="" id="">
                                            <option value="">Chọn phường / xã</option>
                                            <option value="" selected>Xã Xuân Lãnh</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">* Tài khoản</label>
                                    <input type="text" placeholder="Nhập tên tài khoản ở đây" value="mua20conga"
                                           disabled>
                                </div>
                                <div class="div12input">
                                    <label for="">* Mật khẩu</label>
                                    <input type="password" placeholder="Nhập mật khẩu ở đây" value="mothaiba@@">
                                </div>
                                <div class="div12input">
                                    <label for="">* Xác nhận</label>
                                    <input type="password" placeholder="Xác nhận mật khẩu ở đây" value="mothaiba@@">
                                </div>
                            </div>

                            <div class="div13">
                                <div class="div12input">
                                    <label for="">* Lương</label>
                                    <input type="text" placeholder="Nhập lương ở đây" value="11,000,000">
                                </div>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">Giới thiệu</label>
                                    <input type="text" placeholder="Nhập số giới thiệu ở đây"
                                           value="Yêu công việc và gia đình">
                                </div>
                                <div class="linediv12"></div>
                                <button><i class="fa fa-save"></i>Lưu</button>
                                <button onclick="trove()"><i class="fa fa-arrow-left"></i> Trở về quản
                                    lý
                                </button>
                            </div>
                        </div>

                    </div>
                    <div class="item">
                        <label for="">
                            <input type="checkbox" name="" id="">
                        </label>
                        <div class="itemhdd">
                            <img src="../../img/product/avatar2.jpg" alt="">
                        </div>
                        <p class="itemname">
                            Nguyễn Văn A
                        </p>

                        <p class="itememail">
                            nguyenvana@gmail.com
                        </p>

                        <p class="itemphone">
                            0376-120-879
                        </p>

                        <p class="itemtk">
                            tuidimuadonva
                        </p>

                        <div></div>
                        <p class="luong">9,000,000 VND</p>

                        <p class="itemdate">
                            19 Tháng Hai 2020
                        </p>

                        <div class="itemsubmit" onclick="showselect(this)">
                            <input type="text" style="display: none;">
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <div>
                                <button onclick="editkhachhang(this)"><i class="fa fa-pencil"></i>Sửa</button>
                                <button onclick="removekhachhang(this)"><i class="fa fa-trash"></i>Xóa</button>
                            </div>
                        </div>


                        <div>
                            <div class="div11">
                                <h3>Hồ sơ của bạn</h3>
                                <input id="fileInput4" type="file" style="display:none;"
                                       onchange="loadIMG2(event,this)"/>
                                <div class="div11daidien" onclick="document.getElementById('fileInput4').click()">
                                    <div>
                                        <img src="../../img/product/avatar2.jpg" alt="">
                                    </div>
                                </div>

                                <button onclick="document.getElementById('fileInput4').click()">Thay đổi
                                    ảnh đại diện
                                    mới
                                </button>
                                <button onclick="removeIMG2()">Xóa ảnh đại diện</button>

                            </div>

                            <div class="div12">
                                <h3>Điền thông tin cá nhân</h3>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">* Họ và tên</label>
                                    <input type="text" placeholder="Nhập họ và tên ở đây" value="Nguyễn Văn A">
                                </div>
                                <div class="div12input">
                                    <label for="">Tên hiển thị</label>
                                    <input type="text" placeholder="Nhập tên hiển thị ở đây" value="Tui là A">
                                </div>
                                <div class="div12input">
                                    <label for="">* Email</label>
                                    <input type="text" placeholder="Nhập email ở đây" value="nguyenvana@gmail.com"
                                           disabled>
                                </div>
                                <div class="div12input">
                                    <label for="">* Số điện thoại</label>
                                    <input type="text" placeholder="Nhập số điện thoại ở đây" value="0376-120-879"
                                           disabled>
                                </div>
                                <div class="linediv12"></div>
                                <div class="trangthai">
                                    <div class="div12inputlv2">
                                        <label for="">Tỉnh / Thành</label>
                                        <select name="" id="">
                                            <option value="">Chọn tỉnh / thành</option>
                                            <option value="" selected>Phú Yên</option>
                                        </select>
                                    </div>
                                    <div class="div12inputlv2">
                                        <label for="">Quận / huyện</label>
                                        <select name="" id="">
                                            <option value="">Chọn quận / huyện</option>
                                            <option value="" selected>Huyện Sông Cầu</option>
                                        </select>
                                    </div>
                                    <div class="div12inputlv2">
                                        <label for="">Phường / xã</label>
                                        <select name="" id="">
                                            <option value="">Chọn phường / xã</option>
                                            <option value="" selected>Xã Bắc Nam</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">* Tài khoản</label>
                                    <input type="text" placeholder="Nhập tên tài khoản ở đây" value="tuidimuadonva"
                                           disabled>
                                </div>
                                <div class="div12input">
                                    <label for="">* Mật khẩu</label>
                                    <input type="password" placeholder="Nhập mật khẩu ở đây" value="mothaiba@@">
                                </div>
                                <div class="div12input">
                                    <label for="">* Xác nhận</label>
                                    <input type="password" placeholder="Xác nhận mật khẩu ở đây" value="mothaiba@@">
                                </div>
                            </div>

                            <div class="div13">
                                <div class="div12input">
                                    <label for="">* Lương</label>
                                    <input type="text" placeholder="Nhập lương ở đây" value="9,000,000">
                                </div>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">Giới thiệu</label>
                                    <input type="text" placeholder="Nhập số giới thiệu ở đây">
                                </div>
                                <div class="linediv12"></div>
                                <button><i class="fa fa-save"></i>Lưu</button>
                                <button onclick="trove()"><i class="fa fa-arrow-left"></i> Trở về quản
                                    lý
                                </button>
                            </div>
                        </div>

                    </div>
                    <div class="item">
                        <label for="">
                            <input type="checkbox" name="" id="">
                        </label>
                        <div class="itemhdd">
                            <img src="../../img/product/avatar4.jpg" alt="">
                        </div>
                        <p class="itemname">
                            Lưu Văn An
                        </p>

                        <p class="itememail">
                            anvanluu@gmail.com
                        </p>

                        <p class="itemphone">
                            0326-101-079
                        </p>

                        <p class="itemtk">
                            tuilaanhehe
                        </p>

                        <div></div>
                        <p class="luong">6,000,000 VND</p>

                        <p class="itemdate">
                            18 Tháng Hai 2020
                        </p>

                        <div class="itemsubmit" onclick="showselect(this)">
                            <input type="text" style="display: none;">
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <div>
                                <button onclick="editkhachhang(this)"><i class="fa fa-pencil"></i>Sửa</button>
                                <button onclick="removekhachhang(this)"><i class="fa fa-trash"></i>Xóa</button>
                            </div>
                        </div>


                        <div>
                            <div class="div11">
                                <h3>Hồ sơ của bạn</h3>
                                <input id="fileInput5" type="file" style="display:none;"
                                       onchange="loadIMG2(event,this)"/>
                                <div class="div11daidien" onclick="document.getElementById('fileInput5').click()">
                                    <div>
                                        <img src="../../img/product/avatar4.jpg" alt="">
                                    </div>
                                </div>

                                <button onclick="document.getElementById('fileInput5').click()">Thay đổi
                                    ảnh đại diện
                                    mới
                                </button>
                                <button onclick="removeIMG2()">Xóa ảnh đại diện</button>

                            </div>

                            <div class="div12">
                                <h3>Điền thông tin cá nhân</h3>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">* Họ và tên</label>
                                    <input type="text" placeholder="Nhập họ và tên ở đây" value="Lưu Văn An">
                                </div>
                                <div class="div12input">
                                    <label for="">Tên hiển thị</label>
                                    <input type="text" placeholder="Nhập tên hiển thị ở đây" value="An An">
                                </div>
                                <div class="div12input">
                                    <label for="">* Email</label>
                                    <input type="text" placeholder="Nhập email ở đây" value="anvanluu@gmail.com"
                                           disabled>
                                </div>
                                <div class="div12input">
                                    <label for="">* Số điện thoại</label>
                                    <input type="text" placeholder="Nhập số điện thoại ở đây" value="0326-101-079"
                                           disabled>
                                </div>
                                <div class="linediv12"></div>
                                <div class="trangthai">
                                    <div class="div12inputlv2">
                                        <label for="">Tỉnh / Thành</label>
                                        <select name="" id="">
                                            <option value="">Chọn tỉnh / thành</option>
                                            <option value="" selected>Phú Yên</option>
                                        </select>
                                    </div>
                                    <div class="div12inputlv2">
                                        <label for="">Quận / huyện</label>
                                        <select name="" id="">
                                            <option value="">Chọn quận / huyện</option>
                                            <option value="" selected>Huyện Đồng Xuân</option>
                                        </select>
                                    </div>
                                    <div class="div12inputlv2">
                                        <label for="">Phường / xã</label>
                                        <select name="" id="">
                                            <option value="">Chọn phường / xã</option>
                                            <option value="" selected>Thị Trấn La Hai</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">* Tài khoản</label>
                                    <input type="text" placeholder="Nhập tên tài khoản ở đây" value="tuilaanhehe"
                                           disabled>
                                </div>
                                <div class="div12input">
                                    <label for="">* Mật khẩu</label>
                                    <input type="password" placeholder="Nhập mật khẩu ở đây" value="mothaiba@@">
                                </div>
                                <div class="div12input">
                                    <label for="">* Xác nhận</label>
                                    <input type="password" placeholder="Xác nhận mật khẩu ở đây" value="mothaiba@@">
                                </div>
                            </div>

                            <div class="div13">
                                <div class="div12input">
                                    <label for="">* Lương</label>
                                    <input type="text" placeholder="Nhập lương ở đây" value="6,000,000">
                                </div>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">Giới thiệu</label>
                                    <input type="text" placeholder="Nhập số giới thiệu ở đây"
                                           value="Bình lặng giữa đời">
                                </div>
                                <div class="linediv12"></div>
                                <button><i class="fa fa-save"></i>Lưu</button>
                                <button onclick="trove()"><i class="fa fa-arrow-left"></i> Trở về quản
                                    lý
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <label for="">
                            <input type="checkbox" name="" id="">
                        </label>
                        <div class="itemhdd">
                            <img src="../../img/product/avatar5.jpg" alt="">
                        </div>
                        <p class="itemname">
                            Khương Hồng Nhan
                        </p>

                        <p class="itememail">
                            khuonghongnhan@gmail.com
                        </p>

                        <p class="itemphone">
                            0823-692-678
                        </p>

                        <p class="itemtk">
                            tukhuyetlacuata
                        </p>

                        <div></div>
                        <p class="luong">7,000,000 VND</p>

                        <p class="itemdate">
                            18 Tháng Hai 2020
                        </p>

                        <div class="itemsubmit" onclick="showselect(this)">
                            <input type="text" style="display: none;">
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <div>
                                <button onclick="editkhachhang(this)"><i class="fa fa-pencil"></i>Sửa</button>
                                <button onclick="removekhachhang(this)"><i class="fa fa-trash"></i>Xóa</button>
                            </div>
                        </div>


                        <div>
                            <div class="div11">
                                <h3>Hồ sơ của bạn</h3>
                                <input id="fileInput6" type="file" style="display:none;"
                                       onchange="loadIMG2(event,this)"/>
                                <div class="div11daidien" onclick="document.getElementById('fileInput6').click()">
                                    <div>
                                        <img src="../../img/product/avatar5.jpg" alt="">
                                    </div>
                                </div>

                                <button onclick="document.getElementById('fileInput6').click()">Thay đổi
                                    ảnh đại diện
                                    mới
                                </button>
                                <button onclick="removeIMG2()">Xóa ảnh đại diện</button>

                            </div>

                            <div class="div12">
                                <h3>Điền thông tin cá nhân</h3>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">* Họ và tên</label>
                                    <input type="text" placeholder="Nhập họ và tên ở đây" value="Khương Hồng Nhan"">
                                </div>
                                <div class=" div12input">
                                    <label for="">Tên hiển thị</label>
                                    <input type="text" placeholder="Nhập tên hiển thị ở đây">
                                </div>
                                <div class="div12input">
                                    <label for="">* Email</label>
                                    <input type="text" placeholder="Nhập email ở đây"
                                           value="khuonghongnhan@gmail.com" disabled>
                                </div>
                                <div class="div12input">
                                    <label for="">* Số điện thoại</label>
                                    <input type="text" placeholder="Nhập số điện thoại ở đây" value="0823-692-678"
                                           disabled>
                                </div>
                                <div class="linediv12"></div>
                                <div class="trangthai">
                                    <div class="div12inputlv2">
                                        <label for="">Tỉnh / Thành</label>
                                        <select name="" id="">
                                            <option value="">Chọn tỉnh / thành</option>
                                            <option value="" selected>TP Hồ Chí Minh</option>
                                        </select>
                                    </div>
                                    <div class="div12inputlv2">
                                        <label for="">Quận / huyện</label>
                                        <select name="" id="">
                                            <option value="">Chọn quận / huyện</option>
                                            <option value="" selected>Quận Thủ Đức</option>
                                        </select>
                                    </div>
                                    <div class="div12inputlv2">
                                        <label for="">Phường / xã</label>
                                        <select name="" id="">
                                            <option value="">Chọn phường / xã</option>
                                            <option value="" selected>Phường Linh trung</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">* Tài khoản</label>
                                    <input type="text" placeholder="Nhập tên tài khoản ở đây"
                                           value="tukhuyetlacuata" disabled>
                                </div>
                                <div class="div12input">
                                    <label for="">* Mật khẩu</label>
                                    <input type="password" placeholder="Nhập mật khẩu ở đây" value="mothaiba@@">
                                </div>
                                <div class="div12input">
                                    <label for="">* Xác nhận</label>
                                    <input type="password" placeholder="Xác nhận mật khẩu ở đây" value="mothaiba@@">
                                </div>
                            </div>

                            <div class="div13">
                                <div class="div12input">
                                    <label for="">* Lương</label>
                                    <input type="text" placeholder="Nhập lương ở đây" value="7,000,000">
                                </div>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">Giới thiệu</label>
                                    <input type="text" placeholder="Nhập số giới thiệu ở đây"
                                           value="Xinh đẹp như tên">
                                </div>
                                <div class="linediv12"></div>
                                <button><i class="fa fa-save"></i>Lưu</button>
                                <button onclick="trove()"><i class="fa fa-arrow-left"></i> Trở về quản
                                    lý
                                </button>
                            </div>
                        </div>

                    </div>
                    <div class="item">
                        <label for="">
                            <input type="checkbox" name="" id="">
                        </label>
                        <div class="itemhdd">
                            <img src="../../img/product/avatar6.jpg" alt="">
                        </div>
                        <p class="itemname">
                            Trần Phương Trang
                        </p>

                        <p class="itememail">
                            trangtranxinhgai@gmail.com
                        </p>

                        <p class="itemphone">
                            0829-183-279
                        </p>

                        <p class="itemtk">
                            trangtranxinhgai
                        </p>

                        <div></div>
                        <p class="luong">8,000,000 VND</p>

                        <p class="itemdate">
                            18 Tháng Hai 2020
                        </p>

                        <div class="itemsubmit" onclick="showselect(this)">
                            <input type="text" style="display: none;">
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <div>
                                <button onclick="editkhachhang(this)"><i class="fa fa-pencil"></i>Sửa</button>
                                <button onclick="removekhachhang(this)"><i class="fa fa-trash"></i>Xóa</button>
                            </div>
                        </div>


                        <div>
                            <div class="div11">
                                <h3>Hồ sơ của bạn</h3>
                                <input id="fileInput7" type="file" style="display:none;"
                                       onchange="loadIMG2(event,this)"/>
                                <div class="div11daidien" onclick="document.getElementById('fileInput7').click()">
                                    <div>
                                        <img src="../../img/product/avatar6.jpg" alt="">
                                    </div>
                                </div>

                                <button onclick="document.getElementById('fileInput7').click()">Thay đổi
                                    ảnh đại diện
                                    mới
                                </button>
                                <button onclick="removeIMG2()">Xóa ảnh đại diện</button>

                            </div>

                            <div class="div12">
                                <h3>Điền thông tin cá nhân</h3>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">* Họ và tên</label>
                                    <input type="text" placeholder="Nhập họ và tên ở đây" value="Trần Phương Trang">
                                </div>
                                <div class="div12input">
                                    <label for="">Tên hiển thị</label>
                                    <input type="text" placeholder="Nhập tên hiển thị ở đây"
                                           value="Trang Trần Xinh Gái">
                                </div>
                                <div class="div12input">
                                    <label for="">* Email</label>
                                    <input type="text" placeholder="Nhập email ở đây"
                                           value="trangtranxinhgai@gmail.com" disabled>
                                </div>
                                <div class="div12input">
                                    <label for="">* Số điện thoại</label>
                                    <input type="text" placeholder="Nhập số điện thoại ở đây" value="0829-183-279"
                                           disabled>
                                </div>
                                <div class="linediv12"></div>
                                <div class="trangthai">
                                    <div class="div12inputlv2">
                                        <label for="">Tỉnh / Thành</label>
                                        <select name="" id="">
                                            <option value="">Chọn tỉnh / thành</option>
                                            <option value="" selected>Vĩnh Long</option>
                                        </select>
                                    </div>
                                    <div class="div12inputlv2">
                                        <label for="">Quận / huyện</label>
                                        <select name="" id="">
                                            <option value="">Chọn quận / huyện</option>
                                            <option value="" selected>Huyện Sa Đét</option>
                                        </select>
                                    </div>
                                    <div class="div12inputlv2">
                                        <label for="">Phường / xã</label>
                                        <select name="" id="">
                                            <option value="">Chọn phường / xã</option>
                                            <option value="" selected>Xã Đồng Cau</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">* Tài khoản</label>
                                    <input type="text" placeholder="Nhập tên tài khoản ở đây"
                                           value="trangtranxinhgai" disabled>
                                </div>
                                <div class="div12input">
                                    <label for="">* Mật khẩu</label>
                                    <input type="password" placeholder="Nhập mật khẩu ở đây" value="mothaiba@@">
                                </div>
                                <div class="div12input">
                                    <label for="">* Xác nhận</label>
                                    <input type="password" placeholder="Xác nhận mật khẩu ở đây" value="mothaiba@@">
                                </div>
                            </div>

                            <div class="div13">
                                <div class="div12input">
                                    <label for="">* Lương</label>
                                    <input type="text" placeholder="Nhập lương ở đây" value="8,000,000">
                                </div>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">Giới thiệu</label>
                                    <input type="text" placeholder="Nhập số giới thiệu ở đây">
                                </div>
                                <div class="linediv12"></div>
                                <button><i class="fa fa-save"></i>Lưu</button>
                                <button onclick="trove()"><i class="fa fa-arrow-left"></i> Trở về quản
                                    lý
                                </button>
                            </div>
                        </div>

                    </div>
                    <div class="item">
                        <label for="">
                            <input type="checkbox" name="" id="">
                        </label>
                        <div class="itemhdd">
                            <img src="../../img/khbl1.jpg" alt="">
                        </div>
                        <p class="itemname">
                            Nguyễn Văn Huấn
                        </p>

                        <p class="itememail">
                            huanhoahongrose@gmail.com
                        </p>

                        <p class="itemphone">
                            0855-337-179
                        </p>

                        <p class="itemtk">
                            iamahuanrose123
                        </p>

                        <div></div>
                        <p class="luong">8,500,000 VND</p>

                        <p class="itemdate">
                            18 Tháng Hai 2020
                        </p>

                        <div class="itemsubmit" onclick="showselect(this)">
                            <input type="text" style="display: none;">
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <div>
                                <button onclick="editkhachhang(this)"><i class="fa fa-pencil"></i>Sửa</button>
                                <button onclick="removekhachhang(this)"><i class="fa fa-trash"></i>Xóa</button>
                            </div>
                        </div>


                        <div>
                            <div class="div11">
                                <h3>Hồ sơ của bạn</h3>
                                <input id="fileInput8" type="file" style="display:none;"
                                       onchange="loadIMG2(event,this)"/>
                                <div class="div11daidien" onclick="document.getElementById('fileInput8').click()">
                                    <div>
                                        <img src="../../img/khbl1.jpg" alt="">
                                    </div>
                                </div>

                                <button onclick="document.getElementById('fileInput8').click()">Thay đổi
                                    ảnh đại diện
                                    mới
                                </button>
                                <button onclick="removeIMG2()">Xóa ảnh đại diện</button>

                            </div>

                            <div class="div12">
                                <h3>Điền thông tin cá nhân</h3>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">* Họ và tên</label>
                                    <input type="text" placeholder="Nhập họ và tên ở đây" value="Nguyễn Văn Huấn">
                                </div>
                                <div class="div12input">
                                    <label for="">Tên hiển thị</label>
                                    <input type="text" placeholder="Nhập tên hiển thị ở đây" value="Huấn Hoa Hồng">
                                </div>
                                <div class="div12input">
                                    <label for="">* Email</label>
                                    <input type="text" placeholder="Nhập email ở đây"
                                           value="huanhoahongrose@gmail.com" disabled>
                                </div>
                                <div class="div12input">
                                    <label for="">* Số điện thoại</label>
                                    <input type="text" placeholder="Nhập số điện thoại ở đây" value="0855-337-179"
                                           disabled>
                                </div>
                                <div class="linediv12"></div>
                                <div class="trangthai">
                                    <div class="div12inputlv2">
                                        <label for="">Tỉnh / Thành</label>
                                        <select name="" id="">
                                            <option value="">Chọn tỉnh / thành</option>
                                            <option value="" selected>Phú Yên</option>
                                        </select>
                                    </div>
                                    <div class="div12inputlv2">
                                        <label for="">Quận / huyện</label>
                                        <select name="" id="">
                                            <option value="">Chọn quận / huyện</option>
                                            <option value="" selected>Huyện Đồng Xuân</option>
                                        </select>
                                    </div>
                                    <div class="div12inputlv2">
                                        <label for="">Phường / xã</label>
                                        <select name="" id="">
                                            <option value="">Chọn phường / xã</option>
                                            <option value="" selected>Xã Phú Mỡ</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">* Tài khoản</label>
                                    <input type="text" placeholder="Nhập tên tài khoản ở đây"
                                           value="iamahuanrose123" disabled>
                                </div>
                                <div class="div12input">
                                    <label for="">* Mật khẩu</label>
                                    <input type="password" placeholder="Nhập mật khẩu ở đây" value="mothaiba@@">
                                </div>
                                <div class="div12input">
                                    <label for="">* Xác nhận</label>
                                    <input type="password" placeholder="Xác nhận mật khẩu ở đây" value="mothaiba@@">
                                </div>
                            </div>

                            <div class="div13">
                                <div class="div12input">
                                    <label for="">* Lương</label>
                                    <input type="text" placeholder="Nhập lương ở đây" value="8,500,000">
                                </div>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">Giới thiệu</label>
                                    <input type="text" placeholder="Nhập số giới thiệu ở đây"
                                           value="Có làm mới có ăn">
                                </div>
                                <div class="linediv12"></div>
                                <button><i class="fa fa-save"></i>Lưu</button>
                                <button onclick="trove()"><i class="fa fa-arrow-left"></i> Trở về quản
                                    lý
                                </button>
                            </div>
                        </div>

                    </div>
                    <div class="item">
                        <label for="">
                            <input type="checkbox" name="" id="">
                        </label>
                        <div class="itemhdd">
                            <img src="../../img/user.jpg" alt="">
                        </div>
                        <p class="itemname">
                            Lê Mỹ Duyên
                        </p>

                        <p class="itememail">
                            myduyenlelele@gmail.com
                        </p>

                        <p class="itemphone">
                            0827-269-179
                        </p>

                        <p class="itemtk">
                            tuilamyduyenok
                        </p>

                        <div></div>
                        <p class="luong">9,300,000 VND</p>

                        <p class="itemdate">
                            17 Tháng Hai 2020
                        </p>

                        <div class="itemsubmit" onclick="showselect(this)">
                            <input type="text" style="display: none;">
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <div>
                                <button onclick="editkhachhang(this)"><i class="fa fa-pencil"></i>Sửa</button>
                                <button onclick="removekhachhang(this)"><i class="fa fa-trash"></i>Xóa</button>
                            </div>
                        </div>


                        <div>
                            <div class="div11">
                                <h3>Hồ sơ của bạn</h3>
                                <input id="fileInput9" type="file" style="display:none;"
                                       onchange="loadIMG2(event,this)"/>
                                <div class="div11daidien" onclick="document.getElementById('fileInput9').click()">
                                    <div>
                                        <img src="../../img/user.jpg" alt="">
                                    </div>
                                </div>

                                <button onclick="document.getElementById('fileInput9').click()">Thay đổi
                                    ảnh đại diện
                                    mới
                                </button>
                                <button onclick="removeIMG2()">Xóa ảnh đại diện</button>

                            </div>

                            <div class="div12">
                                <h3>Điền thông tin cá nhân</h3>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">* Họ và tên</label>
                                    <input type="text" placeholder="Nhập họ và tên ở đây" value="Lê Mỹ Duyên">
                                </div>
                                <div class="div12input">
                                    <label for="">Tên hiển thị</label>
                                    <input type="text" placeholder="Nhập tên hiển thị ở đây">
                                </div>
                                <div class="div12input">
                                    <label for="">* Email</label>
                                    <input type="text" placeholder="Nhập email ở đây"
                                           value="myduyenlelele@gmail.com" disabled>
                                </div>
                                <div class="div12input">
                                    <label for="">* Số điện thoại</label>
                                    <input type="text" placeholder="Nhập số điện thoại ở đây" value="0827-269-179"
                                           disabled>
                                </div>
                                <div class="linediv12"></div>
                                <div class="trangthai">
                                    <div class="div12inputlv2">
                                        <label for="">Tỉnh / Thành</label>
                                        <select name="" id="">
                                            <option value="">Chọn tỉnh / thành</option>
                                            <option value="" selected>Phú Yên</option>
                                        </select>
                                    </div>
                                    <div class="div12inputlv2">
                                        <label for="">Quận / huyện</label>
                                        <select name="" id="">
                                            <option value="">Chọn quận / huyện</option>
                                            <option value="" selected>Huyện Đồng Xuân</option>
                                        </select>
                                    </div>
                                    <div class="div12inputlv2">
                                        <label for="">Phường / xã</label>
                                        <select name="" id="">
                                            <option value="">Chọn phường / xã</option>
                                            <option value="" selected>Xã Kì Lộ</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">* Tài khoản</label>
                                    <input type="text" placeholder="Nhập tên tài khoản ở đây" value="tuilamyduyenok"
                                           disabled>
                                </div>
                                <div class="div12input">
                                    <label for="">* Mật khẩu</label>
                                    <input type="password" placeholder="Nhập mật khẩu ở đây" value="mothaiba@@">
                                </div>
                                <div class="div12input">
                                    <label for="">* Xác nhận</label>
                                    <input type="password" placeholder="Xác nhận mật khẩu ở đây" value="mothaiba@@">
                                </div>
                            </div>

                            <div class="div13">
                                <div class="div12input">
                                    <label for="">* Lương</label>
                                    <input type="text" placeholder="Nhập lương ở đây" value="9,300,000">
                                </div>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">Giới thiệu</label>
                                    <input type="text" placeholder="Nhập số giới thiệu ở đây">
                                </div>
                                <div class="linediv12"></div>
                                <button><i class="fa fa-save"></i>Lưu</button>
                                <button onclick="trove()"><i class="fa fa-arrow-left"></i> Trở về quản
                                    lý
                                </button>
                            </div>
                        </div>

                    </div>
                    <div class="item">
                        <label for="">
                            <input type="checkbox" name="" id="">
                        </label>
                        <div class="itemhdd">
                            <img src="../../img/khbl2.jpg" alt="">
                        </div>
                        <p class="itemname">
                            Nguyễn Hữu Đa
                        </p>

                        <p class="itememail">
                            onepuchman@gmail.com
                        </p>

                        <p class="itemphone">
                            0886-798-339
                        </p>

                        <p class="itemtk">
                            damcathegioi
                        </p>

                        <div></div>
                        <p class="luong">9,000,000 VND</p>

                        <p class="itemdate">
                            17 Tháng Hai 2020
                        </p>

                        <div class="itemsubmit" onclick="showselect(this)">
                            <input type="text" style="display: none;">
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <div>
                                <button onclick="editkhachhang(this)"><i class="fa fa-pencil"></i>Sửa</button>
                                <button onclick="removekhachhang(this)"><i class="fa fa-trash"></i>Xóa</button>
                            </div>
                        </div>


                        <div>
                            <div class="div11">
                                <h3>Hồ sơ của bạn</h3>
                                <input id="fileInput10" type="file" style="display:none;"
                                       onchange="loadIMG2(event,this)"/>
                                <div class="div11daidien" onclick="document.getElementById('fileInput10').click()">
                                    <div>
                                        <img src="../../img/khbl2.jpg" alt="">
                                    </div>
                                </div>

                                <button onclick="document.getElementById('fileInput10').click()">Thay đổi
                                    ảnh đại diện
                                    mới
                                </button>
                                <button onclick="removeIMG2()">Xóa ảnh đại diện</button>

                            </div>

                            <div class="div12">
                                <h3>Điền thông tin cá nhân</h3>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">* Họ và tên</label>
                                    <input type="text" placeholder="Nhập họ và tên ở đây" value="Nguyễn Hữu Đa">
                                </div>
                                <div class="div12input">
                                    <label for="">Tên hiển thị</label>
                                    <input type="text" placeholder="Nhập tên hiển thị ở đây"
                                           value="Đấm cả thế giới">
                                </div>
                                <div class="div12input">
                                    <label for="">* Email</label>
                                    <input type="text" placeholder="Nhập email ở đây" value="onepuchman@gmail.com"
                                           disabled>
                                </div>
                                <div class="div12input">
                                    <label for="">* Số điện thoại</label>
                                    <input type="text" placeholder="Nhập số điện thoại ở đây" value="0886-798-339"
                                           disabled>
                                </div>
                                <div class="linediv12"></div>
                                <div class="trangthai">
                                    <div class="div12inputlv2">
                                        <label for="">Tỉnh / Thành</label>
                                        <select name="" id="">
                                            <option value="">Chọn tỉnh / thành</option>
                                            <option value="" selected>Phú Yên</option>
                                        </select>
                                    </div>
                                    <div class="div12inputlv2">
                                        <label for="">Quận / huyện</label>
                                        <select name="" id="">
                                            <option value="">Chọn quận / huyện</option>
                                            <option value="" selected>Huyệt Đồng Xuân</option>
                                        </select>
                                    </div>
                                    <div class="div12inputlv2">
                                        <label for="">Phường / xã</label>
                                        <select name="" id="">
                                            <option value="">Chọn phường / xã</option>
                                            <option value="" selected>TP Tuy Hòa</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">* Tài khoản</label>
                                    <input type="text" placeholder="Nhập tên tài khoản ở đây" value="damcathegioi"
                                           disabled>
                                </div>
                                <div class="div12input">
                                    <label for="">* Mật khẩu</label>
                                    <input type="password" placeholder="Nhập mật khẩu ở đây" value="mothaiba@@">
                                </div>
                                <div class="div12input">
                                    <label for="">* Xác nhận</label>
                                    <input type="password" placeholder="Xác nhận mật khẩu ở đây" value="mothaiba@@">
                                </div>
                            </div>

                            <div class="div13">
                                <div class="div12input">
                                    <label for="">* Lương</label>
                                    <input type="text" placeholder="Nhập lương ở đây" value="9,000,000">
                                </div>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">Giới thiệu</label>
                                    <input type="text" placeholder="Nhập số giới thiệu ở đây"
                                           value="Phải tôi, tôi đấm cho mấy phát">
                                </div>
                                <div class="linediv12"></div>
                                <button><i class="fa fa-save"></i>Lưu</button>
                                <button onclick="trove()"><i class="fa fa-arrow-left"></i> Trở về quản
                                    lý
                                </button>
                            </div>
                        </div>

                    </div>
                    <div class="item">
                        <label for="">
                            <input type="checkbox" name="" id="">
                        </label>
                        <div class="itemhdd">
                            <img src="../../img/khbl3.jpg" alt="">
                        </div>
                        <p class="itemname">
                            Nguyễn Văn B
                        </p>

                        <p class="itememail">
                            nguyenvanb@gmail.com
                        </p>

                        <p class="itemphone">
                            0916-841-378
                        </p>

                        <p class="itemtk">
                            abcheyboyvip
                        </p>

                        <div></div>
                        <p class="luong">10,300,000 VND</p>

                        <p class="itemdate">
                            16 Tháng Hai 2020
                        </p>

                        <div class="itemsubmit" onclick="showselect(this)">
                            <input type="text" style="display: none;">
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <div>
                                <button onclick="editkhachhang(this)"><i class="fa fa-pencil"></i>Sửa</button>
                                <button onclick="removekhachhang(this)"><i class="fa fa-trash"></i>Xóa</button>
                            </div>
                        </div>


                        <div>
                            <div class="div11">
                                <h3>Hồ sơ của bạn</h3>
                                <input id="fileInput11" type="file" style="display:none;"
                                       onchange="loadIMG2(event,this)"/>
                                <div class="div11daidien" onclick="document.getElementById('fileInput11').click()">
                                    <div>
                                        <img src="../../img/khbl3.jpg" alt="">
                                    </div>
                                </div>

                                <button onclick="document.getElementById('fileInput11').click()">Thay đổi
                                    ảnh đại diện
                                    mới
                                </button>
                                <button onclick="removeIMG2()">Xóa ảnh đại diện</button>

                            </div>

                            <div class="div12">
                                <h3>Điền thông tin cá nhân</h3>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">* Họ và tên</label>
                                    <input type="text" placeholder="Nhập họ và tên ở đây" value="Nguyễn Văn B">
                                </div>
                                <div class="div12input">
                                    <label for="">Tên hiển thị</label>
                                    <input type="text" placeholder="Nhập tên hiển thị ở đây">
                                </div>
                                <div class="div12input">
                                    <label for="">* Email</label>
                                    <input type="text" placeholder="Nhập email ở đây" value="nguyenvanb@gmail.com"
                                           disabled>
                                </div>
                                <div class="div12input">
                                    <label for="">* Số điện thoại</label>
                                    <input type="text" placeholder="Nhập số điện thoại ở đây" value="0916-841-378"
                                           disabled>
                                </div>
                                <div class="linediv12"></div>
                                <div class="trangthai">
                                    <div class="div12inputlv2">
                                        <label for="">Tỉnh / Thành</label>
                                        <select name="" id="">
                                            <option value="">Chọn tỉnh / thành</option>
                                            <option value="" selected>Phú Yên</option>
                                        </select>
                                    </div>
                                    <div class="div12inputlv2">
                                        <label for="">Quận / huyện</label>
                                        <select name="" id="">
                                            <option value="">Chọn quận / huyện</option>
                                            <option value="" selected>Huyện Tuy An</option>
                                        </select>
                                    </div>
                                    <div class="div12inputlv2">
                                        <label for="">Phường / xã</label>
                                        <select name="" id="">
                                            <option value="">Chọn phường / xã</option>
                                            <option value="" selected>Xã Lưu Ly</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">* Tài khoản</label>
                                    <input type="text" placeholder="Nhập tên tài khoản ở đây" value="abcheyboyvip"
                                           disabled>
                                </div>
                                <div class="div12input">
                                    <label for="">* Mật khẩu</label>
                                    <input type="password" placeholder="Nhập mật khẩu ở đây" value="mothaiba@@">
                                </div>
                                <div class="div12input">
                                    <label for="">* Xác nhận</label>
                                    <input type="password" placeholder="Xác nhận mật khẩu ở đây" value="mothaiba@@">
                                </div>
                            </div>

                            <div class="div13">
                                <div class="div12input">
                                    <label for="">* Lương</label>
                                    <input type="text" placeholder="Nhập lương ở đây" value="10,300,000">
                                </div>
                                <div class="linediv12"></div>
                                <div class="div12input">
                                    <label for="">Giới thiệu</label>
                                    <input type="text" placeholder="Nhập số giới thiệu ở đây"
                                           value="Xin chào, tôi là Nguyễn Văn B">
                                </div>
                                <div class="linediv12"></div>
                                <button><i class="fa fa-save"></i>Lưu</button>
                                <button onclick="trove()"><i class="fa fa-arrow-left"></i> Trở về quản
                                    lý
                                </button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>


        <form action="../../them-tai-khoan-nhan-vien-van-chuyen" method="post">
            <div id="div1">
                <div>
                    <div class="div11">
                        <h3>Hồ sơ của bạn</h3>
                        <input id="fileInput12" type="file" style="display:none;" onchange="loadIMG(event,this)"/>
                        <div class="div11daidien" onclick="document.getElementById('fileInput12').click()">
                            <div>
                                <img src="../../img/user.jpg" alt="">
                            </div>
                        </div>

                        <button onclick="document.getElementById('fileInput12').click()">Thay đổi ảnh đại diện
                            mới
                        </button>
                        <button onclick="removeImg()">Xóa ảnh đại diện</button>

                    </div>

                    <div class="div12">
                        <h3>Điền thông tin cá nhân</h3>
                        <div class="linediv12"></div>
                        <div class="div12input">
                            <label for="">* Họ và tên</label>
                            <input name="full-name" value="${param["full-name"]}" type="text" placeholder="Nhập họ và tên ở đây">
                        </div>
                        <div class="div12input">
                            <label for="">Tên hiển thị</label>
                            <input name="display-name" value="${param["display-name"]}" type="text" placeholder="Nhập tên hiển thị ở đây">
                        </div>
                        <div class="div12input">
                            <label for="">* Email</label>
                            <input name="email" value="${param["email"]}" type="text" placeholder="Nhập email ở đây">
                        </div>
                        <div class="div12input">
                            <label for="">* Số điện thoại</label>
                            <input name="phone" value="${param["phone"]}" type="text" placeholder="Nhập số điện thoại ở đây">
                        </div>
                        <div class="linediv12"></div>
                        <div class="trangthai">
                            <div class="div12inputlv2">
                                <label for="">Tỉnh / Thành</label>
                                <select name="tinh" id="">
                                    <option value="">Chọn tỉnh / thành</option>
                                </select>
                            </div>
                            <div class="div12inputlv2">
                                <label for="">Quận / huyện</label>
                                <select name="huyen" id="">
                                    <option value="">Chọn quận / huyện</option>
                                </select>
                            </div>
                            <div class="div12inputlv2">
                                <label for="">Phường / xã</label>
                                <select name="xa" id="">
                                    <option value="">Chọn phường / xã</option>
                                </select>
                            </div>
                        </div>
                        <div class="linediv12"></div>
                        <div class="div12input">
                            <label for="">* Tài khoản</label>
                            <input name="userName" value="${param["userName"]}" type="text" placeholder="Nhập tên tài khoản ở đây">
                        </div>
                        <div class="div12input">
                            <label for="">* Mật khẩu</label>
                            <input name="passWord" type="password" placeholder="Nhập mật khẩu ở đây">
                        </div>
                        <div class="div12input">
                            <label for="">* Xác nhận</label>
                            <input name="rePassWord" type="text" placeholder="Xác nhận mật khẩu ở đây">
                        </div>
                    </div>

                    <div class="div13">
                        <div class="div12input">
                            <label for="">* Lương</label>
                            <input name="salary" value="${param["salary"]}" type="number" placeholder="Nhập lương ở đây">
                        </div>
                        <div class="linediv12"></div>
                        <div class="div12input">
                            <label for="">Giới thiệu</label>
                            <input name="gioi-thieu" type="number"  value="${param["gioi-thieu"]}" placeholder="Nhập số giới thiệu ở đây">
                        </div>
                        <div class="linediv12"></div>
                        <button type="submit"><i class="fa fa-plus"></i>Thêm nhân viên</button>
                        <button onclick="trove()"><i class="fa fa-arrow-left"></i> Trở về quản lý</button>
                    </div>
                </div>
            </div>
        </form>


        <!---------------------------------------check---------------------------!>
        <%
        //lấy status ra
            if (request.getAttribute("status") != null) {

                String status = (String) request.getAttribute("status");

                //truyển status vào để sử lí
                ErrorAccount errorAccount = new ErrorAccount(status);

        %>

        <!--lúc request lại thì về lại cái form-->
        <script>
            document.getElementById("div1").style.display = "flex";
            document.getElementById("div2").style.display = "none";
            document.getElementById("div3").style.display = "none";
        </script>

        <%request.setCharacterEncoding("utf-8");%>
        <jsp:include page="../NotifyErrorAccount/AccountStatus.jsp">
            <jsp:param name="title" value="<%=errorAccount.getTitle()%>"/>
            <jsp:param name="content" value="<%=errorAccount.getContent()%>"/>
        </jsp:include>

        <%
            }
        %>

        <div id="div3">
        </div>
    </div>

    <!-- Quan tâm nhiêu đây thôi-->
</div>

</body>

</html>

<script src="../../js/quanLyNVGHAdmin.js"></script>
