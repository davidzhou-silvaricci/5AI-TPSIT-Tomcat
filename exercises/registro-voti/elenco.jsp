<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<title>${nome_elenco_plurale} - Registro voti</title>
        <!-- UIkit CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.11.1/dist/css/uikit.min.css" />

        <!-- UIkit JS -->
        <script src="https://cdn.jsdelivr.net/npm/uikit@3.11.1/dist/js/uikit.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/uikit@3.11.1/dist/js/uikit-icons.min.js"></script>

        <!-- DataTables CSS -->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.uikit.min.css" />

        <!-- DataTables JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.11.5/js/dataTables.uikit.min.js"></script>

        <script>
            $(document).ready(function() {
                $('#table').DataTable();
            });
        </script>
	</head>
	<body>
        <div class="uk-grid-collapse" uk-grid>
			<div class="uk-width-1-5@s">
				<div>
					<%@ include file="menu.jsp" %>
				</div>
			</div>
			<div class="uk-width-expand">
				<div>
					<div class="uk-card uk-card-body uk-margin-medium-left uk-margin-medium-right" uk-height-viewport>
                        <div class="uk-flex uk-flex-between uk-flex-top uk-margin-bottom">
                            <h1 id="title">${nome_elenco_plurale}</h1>
                            <a class="uk-button uk-button-primary uk-margin-small-right" href="nuovo?tipo=${nome_elenco}">Aggiungi</a>
                        </div>
                        <table id="table" class="uk-table uk-table-striped uk-table-hover">
                            <thead>
                                <tr>
                                    <c:forEach items="${campi}" var="campo">
                                        <th>${campo}</th>
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
					</div>
				</div>
			</div>
		</div>
	</body>
</html>