<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chỉnh sửa danh mục - Admin Dashboard</title>
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
                        <h4 class="mb-0 text-warning fw-bold text-dark"><i class="fa fa-edit"></i> Chỉnh sửa danh mục</h4>
                    </div>

                    <div class="card-body p-4">
                        <c:if test="${alert != null}">
                            <div class="alert alert-danger mb-3">${alert}</div>
                        </c:if>

                        <c:url value="/admin/category/edit" var="editUrl"></c:url>
                        <form role="form" action="${editUrl}" method="post" enctype="multipart/form-data">
                            <input type="hidden" name="id" value="${category.id}">

                            <div class="mb-3">
                                <label class="form-label fw-semibold">Mã danh mục (ID):</label>
                                <input type="text" class="form-control bg-light" value="${category.id}" readonly>
                            </div>

                            <div class="mb-3">
                                <label class="form-label fw-semibold">Tên danh sách:</label>
                                <input type="text" class="form-control" value="${category.name}" name="name" required />
                            </div>

                            <div class="mb-3">
                                <label class="form-label fw-semibold d-block">Ảnh đại diện hiện tại:</label>
                                <c:choose>
                                    <c:when test="${not empty category.icon}">
                                        <c:url value="/image?fname=${category.icon}" var="imgUrl"></c:url>
                                        <img class="img-thumbnail mb-2" style="max-height: 120px; max-width: 160px;" src="${imgUrl}" alt="${category.name}">
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge bg-secondary p-2 mb-2">Chưa có ảnh</span>
                                    </c:otherwise>
                                </c:choose>
                                
                                <label class="form-label fw-semibold d-block mt-2">Thay đổi ảnh đại diện (Tùy chọn):</label>
                                <input class="form-control" type="file" name="icon" accept="image/*" />
                                <small class="text-muted">Để trống nếu muốn giữ ảnh cũ</small>
                            </div>

                            <div class="d-flex gap-2 mt-4">
                                <button type="submit" class="btn btn-warning px-4 fw-semibold"><i class="fa fa-save"></i> Cập nhật (Edit)</button>
                                <button type="reset" class="btn btn-secondary px-3">Reset</button>
                                <a href="${pageContext.request.contextPath}/admin/category/list" class="btn btn-outline-secondary px-3">Quay lại</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
