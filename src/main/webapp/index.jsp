<%@ page import="com.blogia.blogiafrontoffice.modele.Article" %>
<%@ page import="java.util.List" %><%
    List<Article> articles = (List<Article>) request.getAttribute("liste");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Liste des articles - BLOG I.A</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="Liste des articles - BLOG I.A">
    <link rel="stylesheet" href="public/assets/css/graindashboard.css">
</head>

<body class="has-sidebar has-fixed-sidebar-and-header">
<header class="header bg-body">
    <nav class="navbar flex-nowrap p-0">
        <div class="navbar-brand-wrapper d-flex align-items-center col-auto">
            <img class="side-nav-show-on-closed" src="public/assets/img/logo-mini.png" alt="Graindashboard"
                 style="width: auto; height: 33px;">
            <img class="side-nav-hide-on-closed" src="public/assets/img/logo.png" alt="Graindashboard"
                 style="width: auto; height: 33px;">
        </div>

        <div class="header-content col px-md-3">
            <div class="d-flex align-items-center">
                <i class="gd-align-left"></i>
            </div>
        </div>
    </nav>
</header>
<main class="main">
    <aside id="sidebar" class="js-custom-scroll side-nav">
        <ul id="sideNav" class="side-nav-menu side-nav-menu-top-level mb-0">
            <li class="sidebar-heading h6">Article</li>
            <li class="side-nav-menu-item" disabled>
                <a class="side-nav-menu-link media align-items-center" href="<%=request.getContextPath()%>/Liste_Blog_ia.html">
                        <span class="side-nav-menu-icon d-flex mr-3">
                            <i class="gd-home"></i>
                        </span>
                    <span class="side-nav-fadeout-on-closed media-body">Liste des Articles</span>
                </a>
            </li>
        </ul>
    </aside>

    <div class="content">
        <a href="<%=request.getContextPath()%>/Liste_Blog_ia.html"><button type="button" class="btn btn-outline-primary">Voir les articles</button></a>

    </div>
</main>


<script src="public/assets/js/graindashboard.js"></script>
<script src="public/assets/js/graindashboard.vendor.js"></script>

</body>

</html>