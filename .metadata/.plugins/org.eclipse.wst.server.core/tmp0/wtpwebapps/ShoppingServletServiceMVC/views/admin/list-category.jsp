<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý danh mục - Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container-fluid p-0">
        <jsp:include page="/common/topbar.jsp"></jsp:include>
    </div>

    <div class="container-fluid px-4 py-3">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-3 col-lg-2 mb-4">
                <div class="list-group shadow-sm border-0">
                    <a href="${pageContext.request.contextPath}/admin/home" class="list-group-item list-group-item-action">
                        <i class="fa fa-tachometer-alt me-2 text-primary"></i> Dashboard
                    </a>
                    <a href="${pageContext.request.contextPath}/admin/category/list" class="list-group-item list-group-item-action active">
                        <i class="fa fa-folder-open me-2"></i> Quản lý Danh mục
                    </a>
                    <a href="${pageContext.request.contextPath}/admin/category/add" class="list-group-item list-group-item-action ps-4">
                        <i class="fa fa-plus-circle me-2 text-success"></i> Thêm danh mục mới
                    </a>
                    <a href="#" class="list-group-item list-group-item-action">
                        <i class="fa fa-box me-2 text-warning"></i> Quản lý sản phẩm
                    </a>
                    <a href="#" class="list-group-item list-group-item-action">
                        <i class="fa fa-users me-2 text-info"></i> Quản lý tài khoản
                    </a>
                </div>
            </div>

            <!-- Main Content -->
            <div class="col-md-9 col-lg-10">
                <div class="card shadow-sm border-0 rounded-3">
                    <div class="card-header bg-white py-3 border-0">
                        <div class="d-flex justify-content-between align-items-center flex-wrap gap-2">
                            <div>
                                <h4 class="mb-1 text-primary fw-bold"><i class="fa fa-list"></i> Quản lý danh mục</h4>
                                <small class="text-muted">Nơi bạn có thể quản lý danh mục của mình</small>
                            </div>
                            <div class="d-flex gap-2">
                                <form action="${pageContext.request.contextPath}/admin/category/list" method="get" class="d-flex gap-1">
                                    <input type="text" name="keyword" class="form-control form-control-sm" placeholder="Tìm kiếm danh mục..." value="${keyword}">
                                    <button type="submit" class="btn btn-sm btn-outline-primary"><i class="fa fa-search"></i></button>
                                </form>
                                <a href="${pageContext.request.contextPath}/admin/category/add" class="btn btn-sm btn-success">
                                    <i class="fa fa-plus"></i> Thêm mới
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-hover table-striped align-middle mb-0">
                                <thead class="table-light">
                                    <tr>
                                        <th scope="col" style="width: 80px;" class="text-center">STT</th>
                                        <th scope="col" style="width: 150px;">Hình ảnh</th>
                                        <th scope="col">Tên danh mục</th>
                                        <th scope="col" style="width: 160px;" class="text-center">Hành động</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:choose>
                                        <c:when test="${not empty cateList}">
                                            <c:forEach items="${cateList}" var="cate" varStatus="STT">
                                                <tr class="odd gradeX">
                                                    <td class="text-center fw-bold">${STT.index + 1}</td>
                                                    <td>
                                                        <c:choose>
                                                            <c:when test="${not empty cate.icon}">
                                                                <c:url value="/image?fname=${cate.icon}" var="imgUrl"></c:url>
                                                                <img height="80" width="110" src="${imgUrl}" class="rounded border object-fit-cover shadow-sm" alt="${cate.name}">
                                                            </c:when>
                                                            <c:otherwise>
                                                                <div class="bg-secondary text-white rounded d-flex align-items-center justify-content-center" style="height: 80px; width: 110px;">
                                                                    <i class="fa fa-image fa-2x"></i>
                                                                </div>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </td>
                                                    <td class="fw-semibold text-dark fs-6">${cate.name}</td>
                                                    <td class="text-center">
                                                        <a href="<c:url value='/admin/category/edit?id=${cate.id}'/>" class="btn btn-sm btn-outline-warning">
                                                            <i class="fa fa-edit"></i> Sửa
                                                        </a>
                                                        <a href="<c:url value='/admin/category/delete?id=${cate.id}'/>" onclick="return confirm('Bạn có chắc chắn muốn xóa danh mục này?');" class="btn btn-sm btn-outline-danger ms-1">
                                                            <i class="fa fa-trash"></i> Xóa
                                                        </a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </c:when>
                                        <c:otherwise>
                                            <tr>
                                                <td colspan="4" class="text-center py-4 text-muted">
                                                    <i class="fa fa-inbox fa-3x mb-2 d-block"></i> Chưa có danh mục nào. Hãy thêm danh mục mới!
                                                </td>
                                            </tr>
                                        </c:otherwise>
                                    </c:choose>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
