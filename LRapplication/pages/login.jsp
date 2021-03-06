<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>

<f:view>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<head>
<title>Login and Registration</title>
</head>

<body leftmargin="0" rightmargin="0" topmargin="40" bottommargin="0">
  <center><h:form>
  				<h:panelGrid width="375px" bgcolor="#e6edfd" columns="2" border="0">
					<f:facet name="header">
					<h:outputText value="User Login"/>
				    </f:facet>
					
					<h:outputText value="Enter Login ID:"/>
					<h:inputText id="loginname" value="#{SimpleLogin.loginname}" />

					<h:outputText value="Enter Password: "/>
					<h:inputSecret id="password" value="#{SimpleLogin.password}" />

					<h:outputText value=" "/>
					<h:commandButton value="Login" action="#{SimpleLogin.CheckValidUser}" />

					<h:outputText value="New User?"/>					
					<h:commandLink value="Register Here" action="newuser" />
				</h:panelGrid>
    </h:form>
	</center>
  </body>
 </html>
</f:view>