<a id="homeLink" class="navbar-brand" href="<c:url value="/" />">
    <span class="glyphicon glyphicon-home"></span>
    <spring:message code="home" />
</a>
<span id="clock" class="navbar-brand">
    {{navBarCtrl.currentDateTime | date }} {{navBarCtrl.currentDateTime | date:'(EEE) HH:mm:ss' }}
</span>
