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
<%@ attribute name="menuText" required="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${menuText == null}">
	<c:set var="menuText" value="Meny" />
</c:if>

<div id="menuContainer">
	<div id="leftMenu">
		<div class="wrapper" style="">
			<div class="listWrapper">
				<h2 class="assistiveObject">Fasta Tjänster</h2>
				<ul id="permanent">
					<jsp:doBody />
					<!-- <li class=""><a href="start.html">
							<span class="icon start"></span>
							<span class="iconLabel">Start</span></a>
					</li>
					
					<li class="active "><a href="inboxCaseList.html">
							<span class="icon cases"></span>
							<span class="iconLabel">Inkorg</span></a>
					</li>
					<li><a href="paminnelser.html">
							<span class="icon reminders"></span>
							<span class="iconLabel">Påminnelser</span></a>
					</li>
					<li class=""><a href="myFacilities.html">
							<span class="icon facilities"></span>
							<span class="iconLabel">Vårdmottagningar</span></a>
					</li>
					<li class=""><a href="otherServices.html">
					 		<span class="icon services"></span>
							<span class="iconLabel">Övriga tjänster</span></a>
					</li> -->
				</ul>
			</div>
		</div>
		<div class="topBorder"></div>
		<div class="bottomBorder"></div>
		<a class="toggleMenuButton onlyOnNarrow bold">${menuText}</a>
	</div>
</div>
