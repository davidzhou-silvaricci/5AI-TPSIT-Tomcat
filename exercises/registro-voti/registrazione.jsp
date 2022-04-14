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

        <script src="lorem-ipsum.js"></script>
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
                                        <a class="uk-button uk-width-expand" onclick="generaDescrizione()"><span class="uk-margin-small-right" uk-icon="icon: bolt"></span>Genera descrizione</a>
                                    </div>
                                </c:when>    
                                <c:otherwise>
                                    <div class="uk-margin">
                                        <label class="uk-form-label" for="nome">Codice fiscale</label>
                                        <div class="uk-form-controls uk-inline uk-width-expand">
                                            <a class="uk-form-icon uk-form-icon-flip" onclick="generaCF()" uk-icon="icon: bolt" uk-tooltip="title: Genera; pos: right; delay: 250"></a>
                                            <input class="uk-input" id="codice_fiscale" name="codice_fiscale" type="text" placeholder="RSSMRA80A01E512X" pattern="^[A-Z]{6}\d{2}[A-Z]\d{2}[A-Z]\d{3}[A-Z]$" required>
                                        </div>
                                    </div>
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
                                        <div class="uk-form-controls uk-inline uk-width-expand">
                                            <a class="uk-form-icon uk-form-icon-flip uk-padding-remove-left" onclick="generaEmail()" uk-icon="icon: bolt" uk-tooltip="title: Genera; pos: right; delay: 250"></a>
                                            <input class="uk-input" id="email" name="email" type="email" placeholder="rossi@mail.it" required>
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
                window.location.replace("index.jsp");
            }
            // Generazione email casuale
            function generaEmail()
            {
                var chars = "abcdefghijklmnopqrstuvwxyz1234567890";
                var string = "";
                for(var i=0; i<15; i++) {
                    string += chars[Math.floor(Math.random() * chars.length)];
                }
                document.getElementById("email").value = string + "@mail.com";
            }
            function generaCF()
            {
                var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
                var nums = "1234567890";
                var string = "";
                for(var i=0; i<16; i++)
                {
                    // X   X   X   X   X   X   D   D   X   D   D   X   D   D   D   X
                    // 0   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15
                    // X = carattere alfabetico
                    // D = carattere numerico
                    if(i==6 || i==7 || i==9 || i==10 || (i>11 && i<15)) {
                        string += nums[Math.floor(Math.random() * nums.length)];
                    }
                    else {
                        string += chars[Math.floor(Math.random() * chars.length)];
                    }
                    console.log(i);
                }
                document.getElementById("codice_fiscale").value = string;
            }
            function generaDescrizione() {
                var ipsum = new LoremIpsum();
                document.getElementById("descrizione").value = ipsum.paragraph();
            }
        </script>
	</body>
</html>