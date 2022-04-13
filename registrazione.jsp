<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<title>Nuovo elemento - Registro voti</title>
        <!-- UIkit CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.11.1/dist/css/uikit.min.css" />

        <!-- UIkit JS -->
        <script src="https://cdn.jsdelivr.net/npm/uikit@3.11.1/dist/js/uikit.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/uikit@3.11.1/dist/js/uikit-icons.min.js"></script>
	</head>
	<body>
        <div class="uk-grid-collapse" uk-grid>
			<div class="uk-width-1-5@s">
				<div>
					<div class="uk-card uk-card-secondary uk-card-body uk-position-fixed uk-width-1-5" uk-height-viewport>
						<ul class="uk-nav-default uk-nav-parent-icon uk-margin-small-top" uk-nav>
							<li><a href="registro-voti.html"><span class="uk-margin-small-right" uk-icon="icon: home"></span>Dashboard</a></li>
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
					<div class="uk-card uk-card-body uk-margin-medium-left uk-margin-medium-right" uk-height-viewport>
						<h1 id="form-title" class="uk-margin-medium"></h1>
                        <form id="form" class="uk-form-stacked uk-form-width-large" method="post" action="nuovo">
                            <c:choose>
                                <c:when test="${nome_elenco=='materia'}">
                                    <div class="uk-margin">
                                        <label class="uk-form-label" for="nome">Nome</label>
                                        <div class="uk-form-controls">
                                            <input class="uk-input" id="nome" name="nome" type="text" placeholder="Italiano" required>
                                        </div>
                                    </div>
        
                                    <div class="uk-margin">
                                        <label class="uk-form-label" for="descrizione">Descrizione</label>
                                        <div class="uk-form-controls">
                                            <textarea class="uk-textarea" id="descrizione" name="descrizione" rows="5" placeholder="Una breve descrizione opzionale"></textarea>
                                        </div>
                                    </div>
                                </c:when>    
                                <c:otherwise>
                                    <div class="uk-margin">
                                        <label class="uk-form-label" for="nome">Nome</label>
                                        <div class="uk-form-controls">
                                            <input class="uk-input" id="nome" name="nome" type="text" placeholder="Mario" required>
                                        </div>
                                    </div>
                                    <div class="uk-margin">
                                        <label class="uk-form-label" for="cognome">Cognome</label>
                                        <div class="uk-form-controls">
                                            <input class="uk-input" id="cognome" name="cognome" type="text" placeholder="Rossi" required>
                                        </div>
                                    </div>
                                    <div class="uk-margin">
                                        <label class="uk-form-label" for="email">Email</label>
                                        <div class="uk-form-controls">
                                            <input class="uk-input" id="email" name="email" type="email" placeholder="esempio@mail.it" required>
                                        </div>
                                    </div>
                                
                                    <div class="uk-margin">
                                        <div class="uk-form-label">Genere</div>
                                        <div class="uk-form-controls">
                                            <label><input class="uk-radio" type="radio" name="genere" value="M" required> Maschio</label><br>
                                            <label><input class="uk-radio" type="radio" name="genere" value="F"> Femmina</label><br>
                                            <label><input class="uk-radio" type="radio" name="genere" value="X"> Preferisco non specificare</label>
                                        </div>
                                    </div>
                                </c:otherwise>
                            </c:choose>

                            <div class="uk-margin-medium">
                                <a href="elenco?tipo=${nome_elenco}" class="uk-button uk-button-default uk-margin-small-right">Indietro</a>
                                <input class="uk-button uk-button-primary" id="submit" type="submit" value="Registrati">
                            </div>

                        </form>
					</div>
				</div>
			</div>
		</div>
        <script>
            // Controllo per il parametro 'tipo'

            var url = new URL(window.location.href);
            var value = url.searchParams.get("tipo");

            if(value === "docente" || value === "studente" || value === "materia")
            {
                let input = document.createElement("input");
                input.setAttribute("type", "hidden");
                input.setAttribute("name", "tipo");
                input.setAttribute("value", value);

                let s = (value === "materia") ? "Nuova " : "Nuovo ";
                document.title = s + value + " - Registro voti";
                document.getElementById("form-title").innerText += s + " " + value;
                document.getElementById("form").appendChild(input);
            }
            else {
                window.location.replace("registro-voti.html");
            }
        </script>
	</body>
</html>