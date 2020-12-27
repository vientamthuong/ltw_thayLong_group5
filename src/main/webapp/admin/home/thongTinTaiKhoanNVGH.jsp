<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 22/12/2020
  Time: 9:11 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TVTSHOP ADMIN | Tài khoản nhân viên giao hàng</title>
    <link rel="stylesheet" href="../../fonts/font-awesome-4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="../../css/indexAdmin.css">
    <script src="../../js/indexAdmin.js"></script>

    <link rel="stylesheet" href="../../css/thongTinTaiKhoanNVGHAdmin.css">
    <script src="../../js/thongTinTaiKhoanNVGHAdmin.js"></script>

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
                <div>
                    <i class="fa fa-file-text-o"></i>
                    <p>Quản lý đơn hàng</p>
                </div>
            </a>
            <a href="thongTinTaiKhoanNVGH.html" class="indexleftselectitem  ">
                <div class="active">
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

        <div id="div2">
            <div class="div1">
                <div>
                    <div>
                        <p>Nguyễn Đại Sơn</p>
                        <p>Nhân viên giao hàng</p>
                    </div>
                </div>

                <div class="headeright">
                    <div>
                        <button id="motchutvetoi" class="activebutton" onclick="motchutvetoi()">Một chút về
                            tôi
                        </button>
                        <button id="thongtinchitiet" onclick="thongtinchitiet()">Thông tin chi tiết</button>
                    </div>
                    <div>
                        <button onclick="thaydoithongtin()"><i class="fa fa-cog"></i>Thay đổi thông tin</button>
                    </div>
                </div>
                <div class="hinhdaidien">
                    <div>
                        <img src="../../img/product/avatar3.jpg" alt="">
                    </div>
                </div>
            </div>
            <div class="adiv12">
                <div class="div121" id="div121">
                    <div>
                        <h3>Giới thiệu: </h3>
                        <p>Xin chào, tui là một người giao hàng thân thiện đẹp trai provjp :V"</p>
                    </div>
                    <div>
                        <div>
                            <p>84</p>
                            <p>Thao tác đơn hàng</p>
                        </div>
                    </div>
                </div>
                <div class="div122" id="div122">
                    <div class="div122item">
                        <p>Họ và tên: </p>
                        <p>Nguyễn Đại Sơn</p>
                    </div>
                    <div class="div122item">
                        <p>Email: </p>
                        <p>daison@gmail.com</p>
                    </div>
                    <div class="div122item">
                        <p>Số điện thoại: </p>
                        <p>0833-369-146</p>
                    </div>
                    <div class="div122item">
                        <p>Tên hiển thị: </p>
                        <p>Đại Sơn</p>
                    </div>
                    <div class="div122item">
                        <p>Tài khoản: </p>
                        <p>daisongh</p>
                    </div>
                    <div class="div122item">
                        <p>Mật khẩu: </p>
                        <p>Không hiển thị</p>
                    </div>
                    <div class="div122item">
                        <p>Địa chỉ: </p>
                        <p>Xã Đa Lộc - Huyển Đồng Xuân - Tỉnh Phú Yên</p>
                    </div>
                    <div class="div122item">
                        <p>Lương: </p>
                        <p>9,000,000 VND</p>
                    </div>
                </div>
            </div>

            <div class="adiv13">
                <div class="div31">
                    <h3>
                        <div class="iconheader"></div>
                        Lịch sử hành động của bạn
                        <div class="lineh3header"></div>
                    </h3>
                    <div>
                        <div>
                            <div class="div31item">
                                <div class="div31itemcolor1">
                                    <i class="fa fa-circle"></i>
                                    <div></div>
                                </div>
                                <div>
                                    <p>5 giây trước</p>
                                    <p><strong>Bạn</strong> vừa duyệt đơn hàng
                                        <strong>DH1003</strong> có trạng thái <strong>Thành Công</strong>
                                    </p>
                                </div>
                            </div>
                            <div class="div31item">
                                <div class="div31itemcolor2">
                                    <i class="fa fa-circle"></i>
                                    <div></div>
                                </div>
                                <div>
                                    <p>24 giây trước</p>
                                    <p><strong>Bạn</strong> vừa duyệt đơn hàng
                                        <strong>DH1002</strong> có trạng thái <strong>Thành Công</strong>
                                    </p>
                                </div>
                            </div>
                            <div class="div31item">
                                <div class="div31itemcolor3">
                                    <i class="fa fa-circle"></i>
                                    <div></div>
                                </div>
                                <div>
                                    <p>58 giây trước</p>
                                    <p><strong>Bạn</strong> vừa duyệt đơn hàng
                                        <strong>DH1001</strong> có trạng thái <strong>Thành Công</strong>
                                    </p>
                                </div>
                            </div>
                            <div class="div31item">
                                <div class="div31itemcolor4">
                                    <i class="fa fa-circle"></i>
                                    <div></div>
                                </div>
                                <div>
                                    <p>1 phút trước</p>
                                    <p><strong>Bạn</strong> vừa duyệt đơn hàng
                                        <strong>DH1000</strong> có trạng thái <strong>Không Thành Công</strong>
                                    </p>
                                </div>
                            </div>
                            <div class="div31item">
                                <div class="div31itemcolor1">
                                    <i class="fa fa-circle"></i>
                                    <div></div>
                                </div>
                                <div>
                                    <p>3 phút trước</p>
                                    <p><strong>Bạn</strong> vừa duyệt đơn hàng
                                        <strong>DH0999</strong> có trạng thái <strong>Không Thành Công</strong>
                                    </p>
                                </div>
                            </div>
                            <div class="div31item">
                                <div class="div31itemcolor2">
                                    <i class="fa fa-circle"></i>
                                    <div></div>
                                </div>
                                <div>
                                    <p>12 phút trước</p>
                                    <p><strong>Bạn</strong> vừa duyệt đơn hàng
                                        <strong>DH0998</strong> có trạng thái <strong>Thành Công</strong>
                                    </p>
                                </div>
                            </div>
                            <div class="div31item">
                                <div class="div31itemcolor3">
                                    <i class="fa fa-circle"></i>
                                    <div></div>
                                </div>
                                <div>
                                    <p>14 phút trước</p>
                                    <p><strong>Bạn</strong> vừa duyệt đơn hàng
                                        <strong>DH0997</strong> có trạng thái <strong>Thành Công</strong>
                                    </p>
                                </div>
                            </div>
                            <div class="div31item">
                                <div class="div31itemcolor4">
                                    <i class="fa fa-circle"></i>
                                    <div></div>
                                </div>
                                <div>
                                    <p>17 phút trước</p>
                                    <p><strong>Bạn</strong> vừa duyệt đơn hàng
                                        <strong>DH0996</strong> có trạng thái <strong>Thành Công</strong>
                                    </p>
                                </div>
                            </div>
                            <div class="div31item">
                                <div class="div31itemcolor1">
                                    <i class="fa fa-circle"></i>
                                    <div></div>
                                </div>
                                <div>
                                    <p>22 phút trước</p>
                                    <p><strong>Bạn</strong> vừa duyệt đơn hàng
                                        <strong>DH0995</strong> có trạng thái <strong>Thành Công</strong>
                                    </p>
                                </div>
                            </div>
                            <div class="div31item">
                                <div class="div31itemcolor2">
                                    <i class="fa fa-circle"></i>
                                    <div></div>
                                </div>
                                <div>
                                    <p>42 phút trước</p>
                                    <p><strong>Bạn</strong> vừa duyệt đơn hàng
                                        <strong>DH0994</strong> có trạng thái <strong>Không Thành Công</strong>
                                    </p>
                                </div>
                            </div>
                            <div class="div31item">
                                <div class="div31itemcolor3">
                                    <i class="fa fa-circle"></i>
                                    <div></div>
                                </div>
                                <div>
                                    <p>58 phút trước</p>
                                    <p><strong>Bạn</strong> vừa duyệt đơn hàng
                                        <strong>DH0993</strong> có trạng thái <strong>Thành Công</strong>
                                    </p>
                                </div>
                            </div>
                            <div class="div31item">
                                <div class="div31itemcolor4">
                                    <i class="fa fa-circle"></i>
                                    <div></div>
                                </div>
                                <div>
                                    <p>1 giờ trước</p>
                                    <p><strong>Bạn</strong> vừa duyệt đơn hàng
                                        <strong>DH0992</strong> có trạng thái <strong>Thành Công</strong>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="div3">
            <div>
                <div class="div11">
                    <h3>Hồ sơ của bạn</h3>
                    <input id="fileInput1" type="file" style="display:none;" onchange="loadIMG2(event,this)"/>
                    <div class="div11daidien" onclick="document.getElementById('fileInput1').click()">
                        <div>
                            <img src="../../img/product/avatar3.jpg" alt="">
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
                        <input type="text" placeholder="Nhập họ và tên ở đây" value="Nguyễn Đại Sơn">
                    </div>
                    <div class="div12input">
                        <label for="">Tên hiển thị</label>
                        <input type="text" placeholder="Nhập tên hiển thị ở đây" value="Đại Sơn">
                    </div>
                    <div class="div12input">
                        <label for="">* Email</label>
                        <input type="text" placeholder="Nhập email ở đây" value="daison@gmail.com" disabled>
                    </div>
                    <div class="div12input">
                        <label for="">* Số điện thoại</label>
                        <input type="text" placeholder="Nhập số điện thoại ở đây" value="0833-369-146" disabled>
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
                        <input type="text" placeholder="Nhập tên tài khoản ở đây" value="daisongh" disabled>
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
                               value="Xin chào, tui là một người giao hàng thân thiện đẹp trai provjp :V">
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

    <!-- Quan tâm nhiêu đây thôi-->
</div>

</body>

</html>