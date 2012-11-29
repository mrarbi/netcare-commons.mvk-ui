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
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<body>
	<div id="bodyContainer">
		<a href="#menuContainer" class="assistiveObject">Direkt till navigationsmenyn</a>
		<a href="#contentContainer" class="assistiveObject">Direkt till innehållet</a>
		<jsp:doBody />
		<div class="push"></div>
	</div>
	<div id="footerContainer">
		<div id="footer">
			<!-- <div class="functionRow onlyOnNarrow"><a href="/mvk/settings.xhtml">Inställningar</a>
				<span class="divider">|</span>
				<a href="http://www.minavardkontakter.se/C125755F00329208/p/KONT-8R5HF6?opendocument">Hjälp</a>
			</div> -->
		</div>
	</div>
</body>
