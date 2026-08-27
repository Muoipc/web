<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang Quản Trị - Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container-fluid p-0">
        <jsp:include page="/common/topbar.jsp"></jsp:include>
    </div>

    <div class="container my-4">
        <div class="row">
            <div class="col-12">
                <div class="card shadow-sm border-0 mb-4 bg-primary text-white p-4 rounded-3">
                    <div class="d-flex justify-content-between align-items-center flex-wrap gap-2">
                        <div>
                            <h2><i class="fa fa-shield-alt"></i> Khu vực Quản Trị Viên (Admin)</h2>
                            <p class="mb-0">Chào mừng <strong>${sessionScope.account.fullName}</strong> đến với trang quản trị hệ thống!</p>
                        </div>
                        <div>
                            <span class="badge bg-danger fs-6 px-3 py-2">Role ID: 1 (ADMIN)</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row g-4">
            <div class="col-md-4">
                <div class="card shadow-sm border-0 h-100 p-3">
                    <div class="card-body">
                        <h5 class="card-title text-primary"><i class="fa fa-user"></i> Thông tin tài khoản</h5>
                        <ul class="list-group list-group-flush mt-3">
                            <li class="list-group-item"><strong>Username:</strong> ${sessionScope.account.userName}</li>
                            <li class="list-group-item"><strong>Email:</strong> ${sessionScope.account.email}</li>
                            <li class="list-group-item"><strong>Họ tên:</strong> ${sessionScope.account.fullName}</li>
                            <li class="list-group-item"><strong>Điện thoại:</strong> ${sessionScope.account.phone}</li>
                            <li class="list-group-item"><strong>Ngày tạo:</strong> ${sessionScope.account.createdDate}</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-md-8">
                <div class="card shadow-sm border-0 h-100 p-3">
                    <div class="card-body">
                        <h5 class="card-title text-primary"><i class="fa fa-cogs"></i> Chức năng quản trị CRUD</h5>
                        <p class="text-muted">Các module quản lý theo kiến trúc 3 tầng và mô hình MVC:</p>
                        <div class="row g-3 mt-2">
                            <div class="col-sm-6">
                                <a href="${pageContext.request.contextPath}/admin/category/list" class="text-decoration-none">
                                    <div class="p-3 border rounded bg-white shadow-sm text-center h-100 hover-shadow transition">
                                        <i class="fa fa-list fa-2x text-success mb-2"></i>
                                        <h6 class="text-dark fw-bold">Quản lý Danh mục (Category)</h6>
                                        <p class="small text-muted mb-0">Xem danh sách, Thêm, Sửa, Xóa danh mục</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-sm-6">
                                <a href="${pageContext.request.contextPath}/admin/category/add" class="text-decoration-none">
                                    <div class="p-3 border rounded bg-white shadow-sm text-center h-100 hover-shadow transition">
                                        <i class="fa fa-plus-circle fa-2x text-primary mb-2"></i>
                                        <h6 class="text-dark fw-bold">Thêm Danh mục Mới</h6>
                                        <p class="small text-muted mb-0">Tạo danh mục kèm upload ảnh icon</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-sm-6">
                                <div class="p-3 border rounded bg-light text-center h-100">
                                    <i class="fa fa-users fa-2x text-info mb-2"></i>
                                    <h6 class="text-dark">Quản lý Người dùng</h6>
                                    <p class="small text-muted mb-0">Quản lý phân quyền và tài khoản</p>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="p-3 border rounded bg-light text-center h-100">
                                    <i class="fa fa-box fa-2x text-warning mb-2"></i>
                                    <h6 class="text-dark">Quản lý Sản phẩm</h6>
                                    <p class="small text-muted mb-0">Danh sách sản phẩm mua sắm</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
