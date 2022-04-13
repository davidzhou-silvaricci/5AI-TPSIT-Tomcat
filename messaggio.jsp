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
                window.location.replace("registro-voti.html");
            }, 5000);
        </script>
	</body>
</html>