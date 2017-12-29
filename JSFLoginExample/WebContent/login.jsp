<%@ page contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<f:view>
<html>
<head><title>JSF Simple Login Example</title></head>
<body>
<h:form>
<table>
<tr>
<td><h:outputText value="Enter Login ID: " /></td>
<td><h:inputText id="userName" 
value="#{loginBean.userName}" />
</td>
</tr>
<tr>
<td><h:outputText value="Enter Password: " /></td>
<td><h:inputSecret id="password" 
value="#{loginBean.password}" />
</td>
</tr>
<tr>
<td> </td>
<td><h:commandButton value="Login" 
action="#{loginBean.checkValidUser}"/>
</td>
</tr>
</table>
</h:form>
</body>
</html>
</f:view>