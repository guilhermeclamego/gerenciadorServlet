<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Empresas</title>
</head>
<body>
	<c:if test= "${not empty empresa}">		
        Empresa ${ empresa } cadastrada com sucesso!
    </c:if>
    </br>
    Lista de Empresas:
	<ul>
		<c:forEach items="${empresas}" var="empresa"> 
			</li>
				${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/> <a href="/gerenciador/removeEmpresa">remove</a>
			</li></br>
		</c:forEach>
	</ul>
    <ul>
</body>
</html>