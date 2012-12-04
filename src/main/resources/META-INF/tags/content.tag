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
<%@ attribute name="title" required="false" %>
<%@ attribute name="backTitle" required="false" %>
<%@ attribute name="backUrl" required="false" %>
<%@ attribute name="backToWhat" required="false" %>
<%@ attribute name="plain" required="false" %>
<%@ attribute name="noMenu" required="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${not empty noMenu}">
	<c:set var="style" value="margin-left: 0" />
</c:if>

<div id="contentContainer" style="${style}">
	<c:choose>
		<c:when test="${not empty plain}">
		
			<c:if test="${not empty title}">
				<h2>${title}</h2>
			</c:if>
		
			<div>
				<jsp:doBody />
			</div>
		</c:when>
		<c:otherwise>
		
			<div class="topRow">
				<c:if test="${not empty title}">
					<h2>${title}</h2>
				</c:if>
				
				<c:if test="${not empty backTitle and not empty backUrl and not empty backToWhat}">
					<a href="${backUrl}" class="backButton">
						${backTitle} <span>${backToWhat}</span>
					</a>
				</c:if>
			</div>
			
			<div class="containerBoxShadow paperSheet">
				
				<div class="top">
					<div class="wrapper"></div>
					<div class="left"></div>
					<div class="right"></div>
				</div>
				
				<div class="wrapper">
					<div class="boxShadowBody">
						<div class="row-fluid">
							<div class="span12">
								<jsp:doBody />
							</div>
						</div>
					</div>
				</div>
				
				<div class="bottom">
					<div class="wrapper"></div>
					<div class="left"></div>
					<div class="right"></div>
				</div>
				
			</div>
		</c:otherwise>
	</c:choose>
</div>
		
