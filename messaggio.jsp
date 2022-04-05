<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<html>
	<head>
		<title>Risultato - Registro voti</title>
        <!-- UIkit CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.11.1/dist/css/uikit.min.css" />

        <!-- UIkit JS -->
        <script src="https://cdn.jsdelivr.net/npm/uikit@3.11.1/dist/js/uikit.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/uikit@3.11.1/dist/js/uikit-icons.min.js"></script>
	</head>
	<body>
        <div class="uk-container uk-padding-large">
            <h3>${stato}</h3>
            <p>
                ${messaggio}
                <br />Verrai reindirizzato alla pagina iniziale tra 5 secondi.
            </p>
        </div>
        <script>
            setTimeout(function() {
                window.location.replace("registro-voti.html");
            }, 5000);
        </script>
	</body>
</html>