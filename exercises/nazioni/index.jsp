<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Lista nazioni</title>

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
    <div class="uk-container uk-container-small uk-padding-large">
        <h3>Lista nazioni</h3>
        <table id="table" class="uk-table uk-table-striped uk-table-hover">
            <thead>
                <tr>
                    <c:forEach items="${campi}" var="campo">
                        <th>${campo}</th>
                    </c:forEach>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${lista}" var="nazione">
                    <tr>
                        <td>${nazione.sigla}</td>
                        <td>${nazione.nome}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>