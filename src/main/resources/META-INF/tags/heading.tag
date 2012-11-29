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
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" %>
<%@ attribute name="title" required="true" %>
<%@ attribute name="description" required="false" %>
<div class="heading-container">
	<div class="toggleInfoBox">
		<h3 class="title">${title}</h3>
		<a href="#">
			<img src="images/icons/info_iconblue.png" align="top" class="open" />
		</a>
	</div>
	<div class="infoBox" style="display: block;">
		<jsp:doBody />
	</div>
</div>
