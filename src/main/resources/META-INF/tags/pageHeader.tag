<%--

    Copyright (C) 2011,2012 Callista Enterprise AB <info@callistaenterprise.se>

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program. If not, see <http://www.gnu.org/licenses/>.

--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="empty" isELIgnored="false" %>
<%@ attribute name="title" required="true" %>
<%@ attribute name="loggedInUser" required="true" %>
<%@ attribute name="loggedInAsText" required="false" %>
<%@ attribute name="logoutUrl" required="true" %>
<%@ attribute name="logoutText" required="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${loggedInAsText == null}">
	<c:set var="loggedInAsText" value="Du är inloggad som : " />
</c:if>

<c:if test="${logoutText == null}">
	<c:set var="logoutText" value="Logga ut" />
</c:if>

<div id="headerContainer">
	<div id="header">
		<div class="wrapper">
			<a href="<c:out value="${GLOB_CTX_PATH}" />/home">
				<h1 class="assistiveText">${title}</h1>
			</a>
			<!-- 
			<div class="functionRow notOnNarrow"><a href="/mvk/settings.xhtml">Inställningar</a>
				<span class="divider">|</span>
				<a href="http://minavardkontakter.se/inloggningssatt">Hjälp</a>
			</div>
			 -->
			<div class="clear"></div>
			
			<div class="userRow">
				<span class="activeUser">
					<span class="notOnNarrowInline extraText">${loggedInAsText}</span> <span class="bold uname">${loggedInUser}</span></span>
				<span class="divider bold notOnNarrowInline">|</span>
				<a class="logoutButton" href="${logoutUrl}">${logoutText}</a>
			</div>
			<div class="leftCorner"></div>
			<div class="rightCorner"></div>
			<div class="idCard"></div>
		</div>
	</div>
</div>
