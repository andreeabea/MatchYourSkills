<!DOCTYPE html>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<sec:authorize access="hasRole('PERSON')" var="isPerson" />
<sec:authorize access="hasRole('ADMIN')" var="isAdmin" />
<sec:authorize access="hasRole('COMPANY')" var="isCompany" />

<c:choose>
	<c:when test="${isAdmin}">
		<jsp:include page="navigationAdmin.jsp" />
	</c:when>

	<c:when test="${isPerson}">
    		<jsp:include page="navigationPerson.jsp" />
    	</c:when>

    <c:when test="${isCompany}">
    		<jsp:include page="navigationCompany.jsp" />
    	</c:when>

	<c:otherwise>
	        <jsp:include page="navigationDefault.jsp" />
	</c:otherwise>
</c:choose>