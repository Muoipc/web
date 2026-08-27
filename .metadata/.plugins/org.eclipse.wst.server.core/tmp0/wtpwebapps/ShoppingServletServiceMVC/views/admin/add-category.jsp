<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm danh mục mới - Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container-fluid p-0">
        <jsp:include page="/common/topbar.jsp"></jsp:include>
    </div>

    <div class="container py-4">
        <div class="row justify-content-center">
            <div class="col-md-7 col-lg-6">
                <div class="card shadow-sm border-0 rounded-3">
                    <div class="card-header bg-white py-3 border-0">
                        <h4 class="mb-0 text-success fw-bold"><i class="fa fa-plus-circle"></i> Thêm danh mục mới</h4>
                    </div>

                    <div class="card-body p-4">
                        <c:if test="${alert != null}">
                            <div class="alert alert-danger mb-3">${alert}</div>
                        </c:if>

                        <form role="form" action="${pageContext.request.contextPath}/admin/category/add" method="post" enctype="multipart/form-data">
                            <div class="mb-3">
                                <label class="form-label fw-semibold">Tên danh mục:</label>
                                <input class="form-control" placeholder="Nhập tên danh mục (ví dụ: Quần Áo Nam)" name="name" required autofocus />
                            </div>

                            <div class="mb-4">
                                <label class="form-label fw-semibold">Ảnh đại diện (Icon):</label>
                                <input class="form-control" type="file" name="icon" accept="image/*" />
                                <small class="text-muted">Chọn file ảnh (.jpg, .png, .gif)</small>
                            </div>

                            <div class="d-flex gap-2">
                                <button type="submit" class="btn btn-success px-4"><i class="fa fa-save"></i> Thêm</button>
                                <a href="${pageContext.request.contextPath}/admin/category/list" class="btn btn-outline-secondary px-4">Hủy / Quay lại</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
