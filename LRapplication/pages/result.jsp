<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<f:view>
	<html>
		<head><title>Complete Person Information</title></head>
		<body leftmargin="0" rightmargin="0" topmargin="40" bottommargin="0">
  <center><h:form>
  				<h:panelGrid width="375px" bgcolor="#e6edfd" columns="2" border="0">
				<f:facet name="header">
					<h:outputText value="You have entered information :"/>
				    </f:facet>
				
				<h:outputText value="Name: " />
				<h:outputText value="#{persondetails.name}" />

				<h:outputText value="Father's Name: " />
				<h:outputText value="#{persondetails.fname}" />

				<h:outputText value="Mother's Name: " />
				<h:outputText value="#{persondetails.mname}" />

				<h:outputText value="Current Address: " />
				<h:outputText value="#{persondetails.caddress}" />

				<h:outputText value="Parmanent Address: " />
				<h:outputText value="#{persondetails.paddress}" />

				<h:outputText value="Sex: " />
				<h:outputText value="#{persondetails.sex}" />

				<h:outputText value="Date Of Birth: " />
				<h:outputText value="#{persondetails.dob}">
					<f:convertDateTime pattern="dd-MM-yyyy"/>
				</h:outputText></td>

				<h:outputText value="Phone No.: " />
				<h:outputText value="#{persondetails.phoneno}" />

				<h:outputText value="Mobile No.: " />
				<h:outputText value="#{persondetails.mobileno}" />

				<h:outputText value=" " />
				<h:commandButton value="Modify" action="details" />

				</h:panelGrid>

				
			</h:form></center>
		</body>
	</html>
</f:view>