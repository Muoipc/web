<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tạo tài khoản mới</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-5">
                <div class="card shadow-sm border-0 rounded-3">
                    <div class="card-body p-4">
                        <h3 class="card-title text-center mb-4 fw-bold text-success">Tạo tài khoản mới</h3>
                        
                        <c:if test="${alert != null}">
                            <div class="alert alert-danger py-2 mb-3 text-center">
                                <i class="fa fa-exclamation-triangle"></i> ${alert}
                            </div>
                        </c:if>
                        
                        <form action="${pageContext.request.contextPath}/register" method="post">
                            <div class="mb-3">
                                <label class="form-label text-secondary small fw-bold">Tài khoản</label>
                                <div class="input-group">
                                    <span class="input-group-text bg-white"><i class="fa fa-user text-secondary"></i></span>
                                    <input type="text" class="form-control" name="username" placeholder="Tài khoản" required autofocus>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label text-secondary small fw-bold">Họ tên</label>
                                <div class="input-group">
                                    <span class="input-group-text bg-white"><i class="fa fa-id-card text-secondary"></i></span>
                                    <input type="text" class="form-control" name="fullname" placeholder="Họ tên" required>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label text-secondary small fw-bold">Nhập Email</label>
                                <div class="input-group">
                                    <span class="input-group-text bg-white"><i class="fa fa-envelope text-secondary"></i></span>
                                    <input type="email" class="form-control" name="email" placeholder="Nhập Email" required>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label text-secondary small fw-bold">Số điện thoại</label>
                                <div class="input-group">
                                    <span class="input-group-text bg-white"><i class="fa fa-phone text-secondary"></i></span>
                                    <input type="text" class="form-control" name="phone" placeholder="Số điện thoại">
                                </div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label text-secondary small fw-bold">Mật khẩu</label>
                                <div class="input-group">
                                    <span class="input-group-text bg-white"><i class="fa fa-lock text-secondary"></i></span>
                                    <input type="password" class="form-control" name="password" placeholder="Mật khẩu" required>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-success w-100 py-2 fw-semibold">Tạo tài khoản</button>
                        </form>

                        <hr class="my-4">
                        <div class="text-center">
                            <span class="small text-secondary">Nếu bạn đã có tài khoản? </span>
                            <a href="${pageContext.request.contextPath}/login" class="small fw-bold text-decoration-none">Đăng nhập</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
