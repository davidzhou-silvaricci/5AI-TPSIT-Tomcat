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
        <div class="uk-container uk-padding-large">
            <h1 id="title" class="uk-margin-medium">Elenco</h1>
            <table class="uk-table uk-table-striped uk-table-hover">
                <thead>
                    <tr>
                        <c:forEach items="${campi}" var="campo">
                            <th>${campo}</th>
                        </c:forEach>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <c:forEach items="${elenco}" var="dati">
                            <c:forEach items="${dati}" var="dato">
                                <td>${dato}</td>
                            </c:forEach>
                        </c:forEach>
                    </tr>
                </tbody>
            </table>

            <div class="uk-margin-medium">
                <a class="uk-button uk-button-default uk-margin-small-right" href="registro-voti.html">Indietro</a>
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

                document.getElementById("title").innerText += " " + value;
            }
            else {
                window.location.replace("registro-voti.html");
            }
        </script>
	</body>
</html>