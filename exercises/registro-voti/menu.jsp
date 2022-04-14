<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<div class="uk-card uk-card-secondary uk-card-body uk-position-fixed uk-width-1-5" uk-height-viewport>
    <ul class="uk-nav-default uk-nav-parent-icon uk-margin-small-top" uk-nav>
        <li><a href="index.jsp"><span class="uk-margin-small-right" uk-icon="icon: home"></span>Dashboard</a></li>
        <li class="uk-nav-header">Elenchi</li>
        <li><a href="elenco?tipo=studente"><span class="uk-margin-small-right" uk-icon="icon: table"></span>Studenti</a></li>
        <li><a href="elenco?tipo=docente"><span class="uk-margin-small-right" uk-icon="icon: table"></span>Docenti</a></li>
        <li><a href="elenco?tipo=materia"><span class="uk-margin-small-right" uk-icon="icon: table"></span>Materie</a></li>
    </ul>
</div>