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
        <div class="uk-grid-collapse" uk-grid>
			<div class="uk-width-1-5@s">
				<div>
					<%@ include file="menu.jsp" %>
				</div>
			</div>
			<div class="uk-width-expand">
				<div>
					<div class="uk-card uk-card-body uk-margin-medium-left uk-margin-medium-right" uk-height-viewport>
						<h3>${stato}</h3>
                        <p>
                            ${messaggio}
                            <br />Verrai reindirizzato alla pagina iniziale tra 5 secondi.
                        </p>
					</div>
				</div>
			</div>
		</div>
        <script>
            setTimeout(function() {
                window.location.replace("index.jsp");
            }, 5000);
        </script>
	</body>
</html>