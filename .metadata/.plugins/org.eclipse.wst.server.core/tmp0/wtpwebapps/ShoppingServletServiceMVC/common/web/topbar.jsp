<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<div class="row bg-light border-bottom py-2 px-3 align-items-center mb-4">
    <div class="col-sm-6">
        <a href="${pageContext.request.contextPath}/home" class="text-decoration-none fw-bold fs-5 text-primary">
            <i class="fa fa-shopping-bag"></i> IoTStar Shopping
        </a>
    </div>
    <div class="col-sm-6 text-end">
        <c:choose>
            <c:when test="${sessionScope.account == null}">
                <ul class="list-inline mb-0">
                    <li class="list-inline-item">
                        <a href="${pageContext.request.contextPath}/login" class="btn btn-sm btn-outline-primary">
                            <i class="fa fa-sign-in-alt"></i> Đăng nhập
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a href="${pageContext.request.contextPath}/register" class="btn btn-sm btn-outline-success">
                            <i class="fa fa-user-plus"></i> Đăng ký
                        </a>
                    </li>
                </ul>
            </c:when>
            <c:otherwise>
                <ul class="list-inline mb-0">
                    <li class="list-inline-item">
                        <span class="text-secondary me-1">Xin chào,</span>
                        <a href="${pageContext.request.contextPath}/home" class="text-decoration-none fw-bold text-dark me-2">
                            <i class="fa fa-user-circle"></i> ${sessionScope.account.fullName} (${sessionScope.account.userName})
                        </a>
                    </li>
                    <c:if test="${sessionScope.account.roleid == 1}">
                        <li class="list-inline-item">
                            <a href="${pageContext.request.contextPath}/admin/home" class="badge bg-danger text-decoration-none">Admin Panel</a>
                        </li>
                    </c:if>
                    <c:if test="${sessionScope.account.roleid == 2}">
                        <li class="list-inline-item">
                            <a href="${pageContext.request.contextPath}/manager/home" class="badge bg-warning text-dark text-decoration-none">Manager Panel</a>
                        </li>
                    </c:if>
                    <li class="list-inline-item ms-2">
                        <a href="${pageContext.request.contextPath}/logout" class="btn btn-sm btn-danger">
                            <i class="fa fa-sign-out-alt"></i> Đăng Xuất
                        </a>
                    </li>
                </ul>
            </c:otherwise>
        </c:choose>
    </div>
</div>
