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
	</head>
	<body>
        <!-- Nella servlet Elenco aggiungere il controllo del parametro tipo (studente, docente, materia) -->

        <div class="uk-grid-collapse" uk-grid>
			<div class="uk-width-1-5@s">
				<div>
					<div class="uk-card uk-card-body" uk-height-viewport>
						<ul class="uk-nav-default uk-nav-parent-icon uk-margin-small-top" uk-nav>
							<li class="uk-active"><a href="registro-voti.html"><span class="uk-margin-small-right" uk-icon="icon: home"></span>Dashboard</a></li>
							<li class="uk-nav-header">Elenchi</li>
							<li><a href="elenco?tipo=studente"><span class="uk-margin-small-right" uk-icon="icon: table"></span>Studenti</a></li>
							<li><a href="elenco?tipo=docente"><span class="uk-margin-small-right" uk-icon="icon: table"></span>Docenti</a></li>
							<li><a href="elenco?tipo=materia"><span class="uk-margin-small-right" uk-icon="icon: table"></span>Materie</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="uk-width-expand">
				<div>
					<div class="uk-card uk-card-default uk-card-body" uk-height-viewport>
                        <div class="uk-flex uk-flex-between uk-flex-top">
                            <h1 id="title">${nome_elenco_plurale}</h1>
                            <c:choose>
                                <c:when test="${nome_elenco=='materia'}">
                                    <a class="uk-button uk-button-primary uk-margin-small-right" href="nuova-materia.html">Aggiungi</a>
                                </c:when>    
                                <c:otherwise>
                                    <a class="uk-button uk-button-primary uk-margin-small-right" href="registrazione.html?tipo=${nome_elenco}">Aggiungi</a>
                                </c:otherwise>
                            </c:choose>
                        </div>
                        <table class="uk-table uk-table-striped uk-table-hover">
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