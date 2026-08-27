<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang Chủ - Shopping Online</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container-fluid p-0">
        <jsp:include page="/common/topbar.jsp"></jsp:include>
    </div>

    <div class="container my-4">
        <div class="p-5 mb-4 bg-white rounded-3 shadow-sm text-center">
            <h1 class="display-5 fw-bold text-primary"><i class="fa fa-store"></i> Chào mừng đến với IoTStar Shopping!</h1>
            <p class="lead text-muted mt-3">Hệ thống ứng dụng Java Web MVC 3 tầng (Presentation - Business Logic - Data Access Layer)</p>
            
            <c:choose>
                <c:when test="${sessionScope.account != null}">
                    <div class="alert alert-success mt-4 d-inline-block px-4">
                        <i class="fa fa-check-circle"></i> Bạn đã đăng nhập với tài khoản: <strong>${sessionScope.account.userName}</strong> (${sessionScope.account.fullName})
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="mt-4">
                        <a href="${pageContext.request.contextPath}/login" class="btn btn-primary btn-lg me-2"><i class="fa fa-sign-in-alt"></i> Đăng nhập</a>
                        <a href="${pageContext.request.contextPath}/register" class="btn btn-success btn-lg"><i class="fa fa-user-plus"></i> Đăng ký tài khoản</a>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</body>
</html>
