<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập vào Hệ thống</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-md-5 col-lg-4">
                <div class="card shadow-sm border-0 rounded-3">
                    <div class="card-body p-4">
                        <h3 class="card-title text-center mb-4 fw-bold text-primary">Đăng Nhập Vào Hệ Thống</h3>
                        
                        <c:if test="${alert != null}">
                            <div class="alert alert-danger py-2 mb-3 text-center">
                                <i class="fa fa-exclamation-triangle"></i> ${alert}
                            </div>
                        </c:if>
                        
                        <form action="${pageContext.request.contextPath}/login" method="post">
                            <div class="mb-3">
                                <label class="form-label text-secondary small fw-bold">Tài khoản</label>
                                <div class="input-group">
                                    <span class="input-group-text bg-white"><i class="fa fa-user text-secondary"></i></span>
                                    <input type="text" class="form-control" name="username" placeholder="Nhập tài khoản" required autofocus>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label text-secondary small fw-bold">Mật khẩu</label>
                                <div class="input-group">
                                    <span class="input-group-text bg-white"><i class="fa fa-lock text-secondary"></i></span>
                                    <input type="password" class="form-control" name="password" placeholder="Nhập mật khẩu" required>
                                </div>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="remember" name="remember">
                                    <label class="form-check-label small text-secondary" for="remember">Nhớ tôi</label>
                                </div>
                                <a href="#" class="small text-decoration-none">Quên mật khẩu?</a>
                            </div>
                            <button type="submit" class="btn btn-primary w-100 py-2 fw-semibold">Đăng nhập</button>
                        </form>

                        <hr class="my-4">
                        <div class="text-center">
                            <span class="small text-secondary">Nếu bạn chưa có tài khoản trên hệ thống, thì hãy </span>
                            <a href="${pageContext.request.contextPath}/register" class="small fw-bold text-decoration-none">Đăng ký</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
