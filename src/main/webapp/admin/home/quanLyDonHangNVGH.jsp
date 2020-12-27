<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 22/12/2020
  Time: 9:01 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TVTSHOP ADMIN | Quản lý đơn hàng - NVGH</title>
    <link rel="stylesheet" href="../../fonts/font-awesome-4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="../../css/indexAdmin.css">
    <script src="../../js/indexAdmin.js"></script>

    <link rel="stylesheet" href="../../css/quanLyDonHangAdmin.css">
    <script src="../../js/quanLyDonHangAdmin.js"></script>

</head>

<body>


<div class="indexleft">
    <div class="indexleftlogo">
        <i class="fa fa-android"></i>
    </div>
    <div class="indexleftselect">
        <div>
            <a href="indexNVGH.html" class="indexleftselectitem  ">
                <div>
                    <i class="fa fa-linode"></i>
                    <p>Trang chủ</p>
                </div>
            </a>
            <a href="quanLyDonHangNVGH.html" class="indexleftselectitem  ">
                <div class="active">
                    <i class="fa fa-file-text-o"></i>
                    <p>Quản lý đơn hàng</p>
                </div>
            </a>
            <a href="thongTinTaiKhoanNVGH.html" class="indexleftselectitem  ">
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
                                        <img src="../../img/product/avatar2.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong> Nguyễn Hữu Đa</strong> vừa duyệt cho bạn đơn hàng #DH1022
                                        </p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar2.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong> Nguyễn Hữu Đa</strong> vừa duyệt cho bạn đơn hàng #DH1015
                                        </p>
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
                    <img src="../../img/product/avatar3.jpg" alt="">
                </div>
                <div>
                    <h3>Nguyễn Đại Sơn</h3>
                    <p>Nhân viên giao hàng</p>
                </div>
            </a>
        </div>
    </div>

    <div class="backgroundindexmain">
    </div>

    <!-- Code trang ở đây-->

    <div class="indexmain">
        <div>
            <div class="left">
                <div class="leftheader">
                    <select name="" id="">
                        <option value="" selected>Ngày tạo</option>
                        <option value="">Giá</option>
                        <option value="">Hoàn thành</option>
                        <option value="">Chờ duyệt</option>
                        <option value="">Đóng gói</option>
                        <option value="">Vận chuyển</option>
                        <option value="">Bị hủy</option>
                    </select>
                    <div>
                        <div class="leftheadersort" onclick="changesort(this)">
                            <i class=" fa fa-sort-amount-desc" id="leftheadersort1"></i>
                            <i class=" fa fa-sort-amount-asc" id="leftheadersort2"></i>
                            <input type="checkbox" style="display: none;">
                        </div>
                        <div class="leftheadersearch" id="leftheadersearch">
                            <i class="fa fa-search" onclick="showsearch()"></i>
                            <div>
                                <i class="fa fa-search" onclick="hiddensearch()"></i>
                                <input type="text" placeholder="Tìm kiếm">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="leftnextpage">
                    <button><i class="fa fa-caret-left"></i></button>
                    <ul>
                        <li>1</li>
                        <li>2</li>
                        <li>3</li>
                        <li class="none">...</li>
                        <li>11</li>
                    </ul>
                    <button><i class="fa fa-caret-right"></i></button>
                </div>
                <div>
                    <div id="listleftitem">
                        <div class="leftitem" onclick="changerightdonhang(this)">
                            <div>
                                <img src="../../img/product/avatar2.jpg" alt="">
                            </div>
                            <div>
                                <p>Nguyễn Văn A</p>
                                <div class="vanchuyen">
                                    <i class="fa fa-circle"></i>
                                    <p>Vận chuyển</p>
                                </div>
                            </div>
                            <div>
                                <p> 499,000 VND</p>
                                <p>DH1022</p>
                            </div>
                            <div>
                                <h3>Đơn Đặt Hàng</h3>
                                <p>#DH1022</p>
                                <p><i class="fa fa-circle"></i>Đang vận chuyển</p>
                                <div>
                                    <div class="dateright">
                                        <i class="fa fa-file-text"></i>
                                        <div>
                                            <p>Ngày đặt hàng</p>
                                            <p>13 Tháng Tám 2020</p>
                                        </div>
                                    </div>
                                    <div class="dateright">
                                        <i class="fa fa-truck"></i>
                                        <div>
                                            <p>Ngày giao hàng dự kiến</p>
                                            <p>24 Tháng Tám 2020</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="table">

                                    <div class="tableheader">
                                        <p>Sản phẩm & mô tả</p>
                                        <p>Duyệt</p>
                                        <p>Đóng gói</p>
                                        <p>Vận chuyển</p>
                                        <p>Giá lẻ</p>
                                        <p>Tổng giá</p>
                                    </div>

                                    <div>
                                        <div>
                                            <div class="tableitem">
                                                <div class="tableitemimg">
                                                    <div>
                                                        <img src="../../img/product/pro2.webp" alt="">
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <p>2</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tablenitemame">
                                                    <p>Áo Sweater Nam Stay Together Cánh Đồng MSW 1005</p>
                                                    <p>Mã sản phẩm: SP1453419</p>
                                                </div>
                                                <div class="tableitemicon hoanthanh">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <div class="tableitemicon hoanthanh">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <div class="tableitemicon choxuly">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <p>299,000 VND</p>
                                                <p>598,000 VND</p>
                                            </div>
                                            <div class="tableitem">
                                                <div class="tableitemimg">
                                                    <div>
                                                        <img src="../../img/product/pro3.webp" alt="">
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <p>1</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tablenitemame">
                                                    <p>Áo Sweater Nam Basic MSW 1004</p>
                                                    <p>Mã sản phẩm: SP2253419</p>
                                                </div>
                                                <div class="tableitemicon hoanthanh">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <div class="tableitemicon hoanthanh">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <div class="tableitemicon choxuly">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <p>399,000 VND</p>
                                                <p>399,000 VND</p>
                                            </div>
                                            <div class="tableitem">
                                                <div class="tableitemimg">
                                                    <div>
                                                        <img src="../../img/product/pro5.webp" alt="">
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <p>2</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tablenitemame">
                                                    <p>Áo Thun MTS 1011</p>
                                                    <p>Mã sản phẩm: SP2353419</p>
                                                </div>
                                                <div class="tableitemicon hoanthanh">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <div class="tableitemicon hoanthanh">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <div class="tableitemicon choxuly">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <p>199,000 VND</p>
                                                <p>398,000 VND</p>
                                            </div>
                                            <div class="tableitem">
                                                <div class="tableitemimg">
                                                    <div>
                                                        <img src="../../img/product/pro4.webp" alt="">
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <p>1</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tablenitemame">
                                                    <p>Áo Sweater Logo Sài Gòn MSW 1003</p>
                                                    <p>Mã sản phẩm: SP2153419</p>
                                                </div>
                                                <div class="tableitemicon hoanthanh">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <div class="tableitemicon hoanthanh">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <div class="tableitemicon choxuly">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <p>199,000 VND</p>
                                                <p>199,000 VND</p>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <div class="nguoimua">
                                    <h3>Người đặt</h3>
                                    <div>
                                        <img src="../../img/product/avatar2.jpg" alt="">
                                    </div>
                                    <p>Nguyễn Văn A</p>
                                    <p><strong>Email: </strong>nguyena@gmail.com</p>
                                    <p><strong>Số điện thoại: </strong>033412209</p>
                                    <p><strong>Địa chỉ: </strong>KP6, Linh Trung, Thủ Đức, TP HCM</p>
                                </div>

                                <div class="nguoimua">
                                    <h3>Người đóng gói</h3>
                                    <div>
                                        <img src="../../img/product/avatar4.jpg" alt="">
                                    </div>
                                    <p>Nguyễn Văn Đa</p>
                                    <p><strong>Email: </strong>danguyen@gmail.com</p>
                                    <p><strong>Số điện thoại: </strong>0971134509</p>
                                    <p><strong>Địa chỉ: </strong>KP6, Linh Trung, Thủ Đức, TP HCM</p>
                                </div>

                                <div class="nguoimua">
                                    <h3>Người giao hàng</h3>
                                    <div>
                                        <img src="../../img/product/avatar2.jpg" alt="">
                                    </div>
                                    <p>Xuân Thanh</p>
                                    <p><strong>Email: </strong>xuanthanh@gmail.com</p>
                                    <p><strong>Số điện thoại: </strong>033427103</p>
                                    <p><strong>Địa chỉ: </strong>KP6, Linh Trung, Thủ Đức, TP HCM</p>
                                </div>

                                <div class="kiemduyet xulynvgh">
                                    <div>
                                        <select name="" id="">
                                            <option value="">NVK1001 Nguyễn Văn Đa</option>
                                            <option value="">NVK1002 Nguyễn Văn A</option>
                                            <option value="">NVK1003 Xuân Trường</option>
                                            <option value="">NVK1004 Trọng Tấn</option>
                                        </select>
                                        <button>Duyệt</button>
                                    </div>
                                    <div>
                                        <select name="" id="">
                                            <option value="">NVGH1001 Nguyễn Văn Anh</option>
                                            <option value="">NVGH1002 Nguyễn Văn B</option>
                                            <option value="">NVGH1003 Từ Khuyết</option>
                                            <option value="">NVGH1004 Mạc Phàm</option>
                                        </select>
                                        <button>Duyệt</button>
                                    </div>
                                    <div>
                                        <select name="" id="">
                                            <option value="">Hoàn thành</option>
                                            <option value="">Không hoàn thành</option>
                                        </select>
                                        <button>Duyệt</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="leftitem" onclick="changerightdonhang(this)">
                            <div>
                                <img src="../../img/user.jpg" alt="">
                            </div>
                            <div>
                                <p>Từ Khuyết</p>
                                <div class="vanchuyen">
                                    <i class="fa fa-circle"></i>
                                    <p>Vận chuyển</p>
                                </div>
                            </div>
                            <div>
                                <p> 222,000 VND</p>
                                <p>DH1015</p>
                            </div>
                            <div>
                                <h3>Đơn Đặt Hàng</h3>
                                <p>#DH1022</p>
                                <p><i class="fa fa-circle"></i>Đang vận chuyển</p>
                                <div>
                                    <div class="dateright">
                                        <i class="fa fa-file-text"></i>
                                        <div>
                                            <p>Ngày đặt hàng</p>
                                            <p>13 Tháng Tám 2020</p>
                                        </div>
                                    </div>
                                    <div class="dateright">
                                        <i class="fa fa-truck"></i>
                                        <div>
                                            <p>Ngày giao hàng dự kiến</p>
                                            <p>24 Tháng Tám 2020</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="table">

                                    <div class="tableheader">
                                        <p>Sản phẩm & mô tả</p>
                                        <p>Duyệt</p>
                                        <p>Đóng gói</p>
                                        <p>Vận chuyển</p>
                                        <p>Giá lẻ</p>
                                        <p>Tổng giá</p>
                                    </div>

                                    <div>
                                        <div>
                                            <div class="tableitem">
                                                <div class="tableitemimg">
                                                    <div>
                                                        <img src="../../img/product/pro2.webp" alt="">
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <p>2</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tablenitemame">
                                                    <p>Áo Sweater Nam Stay Together Cánh Đồng MSW 1005</p>
                                                    <p>Mã sản phẩm: SP1453419</p>
                                                </div>
                                                <div class="tableitemicon hoanthanh">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <div class="tableitemicon hoanthanh">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <div class="tableitemicon choxuly">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <p>299,000 VND</p>
                                                <p>598,000 VND</p>
                                            </div>
                                            <div class="tableitem">
                                                <div class="tableitemimg">
                                                    <div>
                                                        <img src="../../img/product/pro3.webp" alt="">
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <p>1</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tablenitemame">
                                                    <p>Áo Sweater Nam Basic MSW 1004</p>
                                                    <p>Mã sản phẩm: SP2253419</p>
                                                </div>
                                                <div class="tableitemicon hoanthanh">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <div class="tableitemicon hoanthanh">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <div class="tableitemicon choxuly">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <p>399,000 VND</p>
                                                <p>399,000 VND</p>
                                            </div>
                                            <div class="tableitem">
                                                <div class="tableitemimg">
                                                    <div>
                                                        <img src="../../img/product/pro5.webp" alt="">
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <p>2</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tablenitemame">
                                                    <p>Áo Thun MTS 1011</p>
                                                    <p>Mã sản phẩm: SP2353419</p>
                                                </div>
                                                <div class="tableitemicon hoanthanh">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <div class="tableitemicon hoanthanh">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <div class="tableitemicon choxuly">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <p>199,000 VND</p>
                                                <p>398,000 VND</p>
                                            </div>
                                            <div class="tableitem">
                                                <div class="tableitemimg">
                                                    <div>
                                                        <img src="../../img/product/pro4.webp" alt="">
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <p>1</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tablenitemame">
                                                    <p>Áo Sweater Logo Sài Gòn MSW 1003</p>
                                                    <p>Mã sản phẩm: SP2153419</p>
                                                </div>
                                                <div class="tableitemicon hoanthanh">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <div class="tableitemicon hoanthanh">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <div class="tableitemicon choxuly">
                                                    <div>
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                    <div>
                                                        <i class="fa fa-close"></i>
                                                    </div>
                                                </div>
                                                <p>199,000 VND</p>
                                                <p>199,000 VND</p>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <div class="nguoimua">
                                    <h3>Người đặt</h3>
                                    <div>
                                        <img src="../../img/user.jpg" alt="">
                                    </div>
                                    <p>Từ Khuyết</p>
                                    <p><strong>Email: </strong>nguyena@gmail.com</p>
                                    <p><strong>Số điện thoại: </strong>033412209</p>
                                    <p><strong>Địa chỉ: </strong>KP6, Linh Trung, Thủ Đức, TP HCM</p>
                                </div>

                                <div class="nguoimua">
                                    <h3>Người đóng gói</h3>
                                    <div>
                                        <img src="../../img/product/avatar4.jpg" alt="">
                                    </div>
                                    <p>Nguyễn Văn Đa</p>
                                    <p><strong>Email: </strong>danguyen@gmail.com</p>
                                    <p><strong>Số điện thoại: </strong>0971134509</p>
                                    <p><strong>Địa chỉ: </strong>KP6, Linh Trung, Thủ Đức, TP HCM</p>
                                </div>

                                <div class="nguoimua">
                                    <h3>Người giao hàng</h3>
                                    <div>
                                        <img src="../../img/product/avatar2.jpg" alt="">
                                    </div>
                                    <p>Xuân Thanh</p>
                                    <p><strong>Email: </strong>xuanthanh@gmail.com</p>
                                    <p><strong>Số điện thoại: </strong>033427103</p>
                                    <p><strong>Địa chỉ: </strong>KP6, Linh Trung, Thủ Đức, TP HCM</p>
                                </div>

                                <div class="kiemduyet xulynvgh">
                                    <div>
                                        <select name="" id="">
                                            <option value="">NVK1001 Nguyễn Văn Đa</option>
                                            <option value="">NVK1002 Nguyễn Văn A</option>
                                            <option value="">NVK1003 Xuân Trường</option>
                                            <option value="">NVK1004 Trọng Tấn</option>
                                        </select>
                                        <button>Duyệt</button>
                                    </div>
                                    <div>
                                        <select name="" id="">
                                            <option value="">NVGH1001 Nguyễn Văn Anh</option>
                                            <option value="">NVGH1002 Nguyễn Văn B</option>
                                            <option value="">NVGH1003 Từ Khuyết</option>
                                            <option value="">NVGH1004 Mạc Phàm</option>
                                        </select>
                                        <button>Duyệt</button>
                                    </div>
                                    <div>
                                        <select name="" id="">
                                            <option value="">Hoàn thành</option>
                                            <option value="">Không hoàn thành</option>
                                        </select>
                                        <button>Duyệt</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="right" id="right">
            </div>
        </div>
    </div>

    <!-- Quan tâm nhiêu đây thôi-->
</div>

</body>

</html>