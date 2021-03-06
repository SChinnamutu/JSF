<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>

<f:view>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<head>
<title>Registration details</title>
<link rel="stylesheet" type="text/css" href="main.css" />
</head>

<body leftmargin="0" rightmargin="0" topmargin="40" bottommargin="0">
  <center><h:form>
  				<h:panelGrid width="475px" bgcolor="#e6edfd" columns="2" border="0">
					<f:facet name="header">
					<h:outputText value="Personal Details"/>
				    </f:facet>

					
					<h:outputText value="Your Name: " />					
					<h:panelGroup>
						<h:inputText id="name" value="#{persondetails.name}" required="true">
								<f:validateLength minimum="3" maximum="20"/>
						</h:inputText><f:verbatim><br/></f:verbatim>
						<h:message for="name"/>
					</h:panelGroup>

					<h:outputText value="Father's Name: "  />					
					<h:inputText id="fname" value="#{persondetails.fname}" />
							
					<h:outputText value="Mother's Name: " />
					<h:inputText id="mname" value="#{persondetails.mname}" />
										
					<h:outputText value="Current Address: " />
					<h:inputTextarea id="caddress" value="#{persondetails.caddress}" />
					
					<h:outputText value="Permanent Address: " />
					<h:inputTextarea id="paddress" value="#{persondetails.paddress}" />
					
					<h:outputText value="Sex: " />
					<h:panelGroup>
					<h:selectOneRadio id="sex" value="#{persondetails.sex}" required="true">
						<f:selectItem itemLabel="Male" itemValue="male"/>
						<f:selectItem itemLabel="Female" itemValue="female"/>
					</h:selectOneRadio>
						<h:message for="sex"/>
					</h:panelGroup>
					
					<h:outputText value="Date Of Birth: " />
					<h:panelGroup>
						<h:inputText id="dob" value="#{persondetails.dob}" required="true">
								<f:convertDateTime pattern="dd-MM-yyyy"/>
						</h:inputText><h:outputText value="(dd-MM-yyyy)" />
						<f:verbatim><br/></f:verbatim>
						<h:message for="dob"/>
					</h:panelGroup>

					<h:outputText value="Phone No.: " />
					<h:panelGroup>
						<h:inputText id="phoneno" value="#{persondetails.phoneno}" required="true"/>
							<f:verbatim><br/></f:verbatim>
							<h:message for="phoneno"/>
					</h:panelGroup>

					<h:outputText value="Mobile No.: " />
					<h:panelGroup>
						<h:inputText id="mobileno" value="#{persondetails.mobileno}" required="true"/>
							<f:verbatim><br/></f:verbatim>
							<h:message for="mobileno"/>
					</h:panelGroup>

					<h:outputText value=" " />
					<h:panelGroup>
						<h:commandButton value="Add" action="result"/>
					</h:panelGroup>

				</h:panelGrid>
    </h:form>
	</center>
  </body>
 </html>
</f:view>