<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<div class="p-3 mb-2 bg-light">
  <div class="row">
    <c:forEach var="product" items="${productList}">
      <div class="col-xl-3 col-lg-4 col-md-6 col-12">
        <img class="img-fluid" alt="${product.name}" src="${product.src}" onclick="location.href='/PRJ321x_Assignment3_datnvfx13833/InformationProductController?id=${product.id}';">
        <p class="p3 mb-2 text-uppercase text-center">${product.type}</p>
        <p class="fw-bold text-center">${product.name}</p>
        <p class="fw-bold text-danger text-center">${product.price}</p>
      </div>
    </c:forEach>
  </div>
  <div class="row justify-content-center">
    <div class="col-3 col-lg-2 col-xl-1">
      <c:forEach var="i" begin="1" end="${noOfPage}">
        <c:choose>
          <c:when test="${currentPage eq i }">
            <button class="btn btn-outline-info" disabled>${i}></button>
          </c:when>
          <c:otherwise>
            <a class="btn btn-out-line-info" href="/PRJ321x_Assignment3_datnvfx13833/HomeProductController?page=${i}">${i}</a>
          </c:otherwise>
        </c:choose>
      </c:forEach>
    </div>
  </div>
</div>