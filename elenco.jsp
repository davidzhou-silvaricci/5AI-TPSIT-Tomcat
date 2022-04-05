<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<title>Elenco - Registro voti</title>
        <!-- UIkit CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.11.1/dist/css/uikit.min.css" />

        <!-- UIkit JS -->
        <script src="https://cdn.jsdelivr.net/npm/uikit@3.11.1/dist/js/uikit.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/uikit@3.11.1/dist/js/uikit-icons.min.js"></script>
	</head>
	<body>
        <!-- Nella servlet Elenco aggiungere il controllo del parametro tipo (studente, docente, materia) -->

        <div class="uk-container uk-padding-large">
            <h1 id="title" class="uk-margin-medium">Elenco</h1>
            <table class="uk-table uk-table-striped uk-table-hover">
                <thead>
                    <tr>
                        <c:forEach items="${campi}" var="campo">
                            <th><c:out value="${campo}"/></th>
                        </c:forEach>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${elenco}" var="dati">
                        <tr>
                            <c:forEach items="${dati}" var="dato">
                                <td>${dato}</td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <div class="uk-margin-medium">
                <a class="uk-button uk-button-default uk-margin-small-right" href="registro-voti.html">Indietro</a>
            </div>
        </div>
	</body>
</html>