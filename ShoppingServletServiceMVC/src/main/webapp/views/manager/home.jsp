<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang Quản Lý - Manager Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container-fluid p-0">
        <jsp:include page="/common/topbar.jsp"></jsp:include>
    </div>

    <div class="container my-4">
        <div class="card shadow-sm border-0 bg-warning text-dark p-4 rounded-3 mb-4">
            <h2><i class="fa fa-user-tie"></i> Khu vực Quản Lý / Seller (Manager)</h2>
            <p class="mb-0">Xin chào <strong>${sessionScope.account.fullName}</strong>! Bạn đang đăng nhập với quyền Manager (Role ID: 2).</p>
        </div>
    </div>
</body>
</html>
