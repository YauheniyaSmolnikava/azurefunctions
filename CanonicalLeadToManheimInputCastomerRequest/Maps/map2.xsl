<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0 userCSharp" version="1.0" xmlns:s0="http://Lookers.ESB.LeadServer.Schemas.Lead" xmlns:ns0="http://webservices" xmlns:userCSharp="http://schemas.microsoft.com/BizTalk/2003/userCSharp">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/s0:Lead" />
  </xsl:template>
  <xsl:template match="/s0:Lead">
    <xsl:variable name="var:v1" select="userCSharp:StringConcat(&quot;LookersHubTest&quot;)" />
    <xsl:variable name="var:v2" select="userCSharp:StringConcat(&quot;JQ3zdqfMNLQf6UZKxYwz&quot;)" />
    <xsl:variable name="var:v3" select="userCSharp:StringConcat(&quot;0&quot;)" />
    <xsl:variable name="var:v4" select="userCSharp:StringConcat(&quot;Visit&quot;)" />
    <xsl:variable name="var:v5" select="userCSharp:StringConcat(&quot;Mr&quot;)" />
    <xsl:variable name="var:v6" select="userCSharp:LogicalExistence(boolean(s0:Person/s0:Forename))" />
    <xsl:variable name="var:v7" select="userCSharp:LogicalNot(string($var:v6))" />
    <xsl:variable name="var:v10" select="userCSharp:LogicalExistence(boolean(s0:Person/s0:Surname))" />
    <xsl:variable name="var:v11" select="userCSharp:LogicalNot(string($var:v10))" />
    <xsl:variable name="var:v15" select="userCSharp:LogicalExistence(boolean(s0:Person/s0:ContactMechanisms/s0:Mechanism/s0:ContactPostalAddress/s0:AddressLine2))" />
    <xsl:variable name="var:v16" select="userCSharp:LogicalNot(string($var:v15))" />
    <xsl:variable name="var:v19" select="userCSharp:LogicalExistence(boolean(s0:Person/s0:ContactMechanisms/s0:Mechanism/s0:ContactPostalAddress/s0:AddressLine3))" />
    <xsl:variable name="var:v20" select="userCSharp:LogicalNot(string($var:v19))" />
    <xsl:variable name="var:v23" select="userCSharp:LogicalExistence(boolean(s0:Person/s0:ContactMechanisms/s0:Mechanism/s0:ContactPostalAddress/s0:City))" />
    <xsl:variable name="var:v24" select="userCSharp:LogicalNot(string($var:v23))" />
    <xsl:variable name="var:v27" select="userCSharp:LogicalExistence(boolean(s0:Person/s0:ContactMechanisms/s0:Mechanism/s0:ContactPostalAddress/s0:PostalCode))" />
    <xsl:variable name="var:v28" select="userCSharp:LogicalNot(string($var:v27))" />
    <xsl:variable name="var:v31" select="userCSharp:LogicalExistence(boolean(s0:Person/s0:ContactMechanisms/s0:Mechanism/s0:ContactElectronicAddress/s0:ElectronicAddress))" />
    <xsl:variable name="var:v32" select="userCSharp:LogicalNot(string($var:v31))" />
    <xsl:variable name="var:v35" select="userCSharp:StringConcat(&quot;&quot;)" />
    <xsl:variable name="var:v36" select="userCSharp:StringConcat(&quot;242656&quot;)" />
    <xsl:variable name="var:v37" select="userCSharp:StringConcat(&quot;1&quot;)" />
    <xsl:variable name="var:v38" select="userCSharp:LogicalExistence(boolean(s0:Message))" />
    <xsl:variable name="var:v39" select="userCSharp:LogicalNot(string($var:v38))" />
    <xsl:variable name="var:v42" select="userCSharp:StringConcat(&quot;New&quot;)" />
    <xsl:variable name="var:v43" select="userCSharp:LogicalExistence(boolean(s0:VehiclesOfInterest/s0:StockVehicle/s0:Derivative))" />
    <xsl:variable name="var:v44" select="userCSharp:LogicalNot(string($var:v43))" />
    <xsl:variable name="var:v47" select="userCSharp:LogicalExistence(boolean(s0:VehiclesOfInterest/s0:StockVehicle/s0:VRM))" />
    <xsl:variable name="var:v48" select="userCSharp:LogicalNot(string($var:v47))" />
    <xsl:variable name="var:v51" select="userCSharp:LogicalExistence(boolean(s0:VehiclesOfInterest/s0:StockVehicle/s0:RegistrationDate))" />
    <xsl:variable name="var:v52" select="userCSharp:LogicalNot(string($var:v51))" />
    <xsl:variable name="var:v55" select="userCSharp:LogicalExistence(boolean(s0:PartExchange/s0:Derivative))" />
    <xsl:variable name="var:v56" select="userCSharp:LogicalNot(string($var:v55))" />
    <xsl:variable name="var:v59" select="userCSharp:StringConcat(&quot;123&quot;)" />
    <xsl:variable name="var:v60" select="userCSharp:StringLowerCase(string(s0:Person/s0:PreferredContactMethod/text()))" />
    <xsl:variable name="var:v61" select="userCSharp:StringConcat(&quot;Anytime&quot;)" />
    <xsl:variable name="var:v62" select="userCSharp:LogicalExistence(boolean(s0:PartExchange/s0:Odometer/s0:Reading))" />
    <xsl:variable name="var:v63" select="userCSharp:LogicalNot(string($var:v62))" />
    <xsl:variable name="var:v66" select="userCSharp:LogicalExistence(boolean(s0:PartExchange/s0:EngineSize))" />
    <xsl:variable name="var:v67" select="userCSharp:LogicalNot(string($var:v66))" />
    <ns0:inputcustomer>
      <username>
        <xsl:value-of select="$var:v1" />
      </username>
      <password>
        <xsl:value-of select="$var:v2" />
      </password>
      <egmcustid>
        <xsl:value-of select="$var:v3" />
      </egmcustid>
      <moc>
        <xsl:value-of select="$var:v4" />
      </moc>
      <enqsource>
        <xsl:value-of select="s0:LeadSource/text()" />
      </enqsource>
      <title>
        <xsl:value-of select="$var:v5" />
      </title>
      <xsl:if test="string($var:v7)='true'">
        <xsl:variable name="var:v8" select="&quot;&quot;" />
        <forename>
          <xsl:value-of select="$var:v8" />
        </forename>
      </xsl:if>
      <xsl:if test="string($var:v6)='true'">
        <xsl:variable name="var:v9" select="s0:Person/s0:Forename/text()" />
        <forename>
          <xsl:value-of select="$var:v9" />
        </forename>
      </xsl:if>
      <xsl:if test="string($var:v11)='true'">
        <xsl:variable name="var:v12" select="&quot;&quot;" />
        <surname>
          <xsl:value-of select="$var:v12" />
        </surname>
      </xsl:if>
      <xsl:if test="string($var:v10)='true'">
        <xsl:variable name="var:v13" select="s0:Person/s0:Surname/text()" />
        <surname>
          <xsl:value-of select="$var:v13" />
        </surname>
      </xsl:if>
      <xsl:variable name="var:v14" select="userCSharp:MyConcat(string(s0:Person/s0:ContactMechanisms/s0:Mechanism/s0:ContactPostalAddress/s0:HouseNumber/text()) , string(s0:Person/s0:ContactMechanisms/s0:Mechanism/s0:ContactPostalAddress/s0:HouseName/text()) , string(s0:Person/s0:ContactMechanisms/s0:Mechanism/s0:ContactPostalAddress/s0:AddressLine1/text()))" />
      <address1>
        <xsl:value-of select="$var:v14" />
      </address1>
      <xsl:if test="string($var:v16)='true'">
        <xsl:variable name="var:v17" select="&quot;&quot;" />
        <address2>
          <xsl:value-of select="$var:v17" />
        </address2>
      </xsl:if>
      <xsl:if test="string($var:v15)='true'">
        <xsl:variable name="var:v18" select="s0:Person/s0:ContactMechanisms/s0:Mechanism/s0:ContactPostalAddress/s0:AddressLine2/text()" />
        <address2>
          <xsl:value-of select="$var:v18" />
        </address2>
      </xsl:if>
      <xsl:if test="string($var:v20)='true'">
        <xsl:variable name="var:v21" select="&quot;&quot;" />
        <address3>
          <xsl:value-of select="$var:v21" />
        </address3>
      </xsl:if>
      <xsl:if test="string($var:v19)='true'">
        <xsl:variable name="var:v22" select="s0:Person/s0:ContactMechanisms/s0:Mechanism/s0:ContactPostalAddress/s0:AddressLine3/text()" />
        <address3>
          <xsl:value-of select="$var:v22" />
        </address3>
      </xsl:if>
      <xsl:if test="string($var:v24)='true'">
        <xsl:variable name="var:v25" select="&quot;&quot;" />
        <town>
          <xsl:value-of select="$var:v25" />
        </town>
      </xsl:if>
      <xsl:if test="string($var:v23)='true'">
        <xsl:variable name="var:v26" select="s0:Person/s0:ContactMechanisms/s0:Mechanism/s0:ContactPostalAddress/s0:City/text()" />
        <town>
          <xsl:value-of select="$var:v26" />
        </town>
      </xsl:if>
      <xsl:if test="string($var:v28)='true'">
        <xsl:variable name="var:v29" select="&quot;&quot;" />
        <postcode>
          <xsl:value-of select="$var:v29" />
        </postcode>
      </xsl:if>
      <xsl:if test="string($var:v27)='true'">
        <xsl:variable name="var:v30" select="s0:Person/s0:ContactMechanisms/s0:Mechanism/s0:ContactPostalAddress/s0:PostalCode/text()" />
        <postcode>
          <xsl:value-of select="$var:v30" />
        </postcode>
      </xsl:if>
      <tel>
<xsl:for-each select="//s0:Person/s0:ContactMechanisms/s0:Mechanism">
    <xsl:if test="s0:ContactTelecommsNumber/s0:PhoneType = 'LandlinePhone'">
    	<xsl:if test="s0:Usage = 'Personal'">
				<xsl:value-of select="s0:ContactTelecommsNumber/s0:TelecommsNumber/text()" />
			</xsl:if>
	</xsl:if>
 </xsl:for-each>
</tel>
      <workno>
<xsl:for-each select="//s0:Person/s0:ContactMechanisms/s0:Mechanism">
	<xsl:if test="s0:ContactTelecommsNumber/s0:PhoneType = 'LandlinePhone'">
			<xsl:if test="s0:Usage = 'Business'">
				<xsl:value-of select="s0:ContactTelecommsNumber/s0:TelecommsNumber/text()" />
		   </xsl:if>
	</xsl:if>
 </xsl:for-each>
</workno>
      <mobile>
 <xsl:for-each select="//s0:Person/s0:ContactMechanisms/s0:Mechanism">
	<xsl:if test="s0:ContactTelecommsNumber/s0:PhoneType = 'MobilePhone'">
			<xsl:value-of select="s0:ContactTelecommsNumber/s0:TelecommsNumber/text()" />
	</xsl:if>

 </xsl:for-each>
</mobile>
      <fax>
<xsl:for-each select="//s0:Person/s0:ContactMechanisms/s0:Mechanism">
    <xsl:if test="s0:ContactTelecommsNumber/ns0:PhoneType = 'FaxPhone'">
			<xsl:value-of select="s0:ContactTelecommsNumber/s0:TelecommsNumber/text()" />
	</xsl:if>
 </xsl:for-each>
</fax>
      <xsl:if test="string($var:v32)='true'">
        <xsl:variable name="var:v33" select="&quot;&quot;" />
        <email>
          <xsl:value-of select="$var:v33" />
        </email>
      </xsl:if>
      <xsl:if test="string($var:v31)='true'">
        <xsl:variable name="var:v34" select="s0:Person/s0:ContactMechanisms/s0:Mechanism/s0:ContactElectronicAddress/s0:ElectronicAddress/text()" />
        <email>
          <xsl:value-of select="$var:v34" />
        </email>
      </xsl:if>
      <website>
        <xsl:value-of select="$var:v35" />
      </website>
      <salesmanname>
        <xsl:value-of select="$var:v35" />
      </salesmanname>
      <salesmanid>
        <xsl:value-of select="$var:v36" />
      </salesmanid>
      <iscentrallead>
        <xsl:value-of select="$var:v37" />
      </iscentrallead>
      <budgeted>
        <xsl:value-of select="$var:v3" />
      </budgeted>
      <changemonth>
        <xsl:value-of select="$var:v3" />
      </changemonth>
      <xsl:if test="string($var:v39)='true'">
        <xsl:variable name="var:v40" select="&quot;&quot;" />
        <notes>
          <xsl:value-of select="$var:v40" />
        </notes>
      </xsl:if>
      <xsl:if test="string($var:v38)='true'">
        <xsl:variable name="var:v41" select="s0:Message/text()" />
        <notes>
          <xsl:value-of select="$var:v41" />
        </notes>
      </xsl:if>
      <newused>
        <xsl:value-of select="$var:v42" />
      </newused>
      <xsl:if test="s0:VehiclesOfInterest/s0:StockVehicle/s0:Manufacturer">
        <nextmake>
          <xsl:value-of select="s0:VehiclesOfInterest/s0:StockVehicle/s0:Manufacturer/text()" />
        </nextmake>
      </xsl:if>
      <xsl:if test="s0:VehiclesOfInterest/s0:StockVehicle/s0:Model">
        <nextmodel>
          <xsl:value-of select="s0:VehiclesOfInterest/s0:StockVehicle/s0:Model/text()" />
        </nextmodel>
      </xsl:if>
      <xsl:if test="string($var:v44)='true'">
        <xsl:variable name="var:v45" select="&quot;&quot;" />
        <nextspec>
          <xsl:value-of select="$var:v45" />
        </nextspec>
      </xsl:if>
      <xsl:if test="string($var:v43)='true'">
        <xsl:variable name="var:v46" select="s0:VehiclesOfInterest/s0:StockVehicle/s0:Derivative/text()" />
        <nextspec>
          <xsl:value-of select="$var:v46" />
        </nextspec>
      </xsl:if>
      <nextcolour>
        <xsl:value-of select="$var:v35" />
      </nextcolour>
      <xsl:if test="string($var:v48)='true'">
        <xsl:variable name="var:v49" select="&quot;&quot;" />
        <nextreg>
          <xsl:value-of select="$var:v49" />
        </nextreg>
      </xsl:if>
      <xsl:if test="string($var:v47)='true'">
        <xsl:variable name="var:v50" select="s0:VehiclesOfInterest/s0:StockVehicle/s0:VRM/text()" />
        <nextreg>
          <xsl:value-of select="$var:v50" />
        </nextreg>
      </xsl:if>
      <xsl:if test="string($var:v52)='true'">
        <xsl:variable name="var:v53" select="&quot;&quot;" />
        <nextcarrequireddate>
          <xsl:value-of select="$var:v53" />
        </nextcarrequireddate>
      </xsl:if>
      <xsl:if test="string($var:v51)='true'">
        <xsl:variable name="var:v54" select="s0:VehiclesOfInterest/s0:StockVehicle/s0:RegistrationDate/text()" />
        <nextcarrequireddate>
          <xsl:value-of select="$var:v54" />
        </nextcarrequireddate>
      </xsl:if>
      <xsl:if test="s0:PartExchange/s0:Manufacturer">
        <presmake>
          <xsl:value-of select="s0:PartExchange/s0:Manufacturer/text()" />
        </presmake>
      </xsl:if>
      <xsl:if test="s0:PartExchange/s0:Model">
        <presmodel>
          <xsl:value-of select="s0:PartExchange/s0:Model/text()" />
        </presmodel>
      </xsl:if>
      <xsl:if test="string($var:v56)='true'">
        <xsl:variable name="var:v57" select="&quot;&quot;" />
        <presmodelspec>
          <xsl:value-of select="$var:v57" />
        </presmodelspec>
      </xsl:if>
      <xsl:if test="string($var:v55)='true'">
        <xsl:variable name="var:v58" select="s0:PartExchange/s0:Derivative/text()" />
        <presmodelspec>
          <xsl:value-of select="$var:v58" />
        </presmodelspec>
      </xsl:if>
      <extdburn>
        <xsl:value-of select="$var:v59" />
      </extdburn>
      <extdburn2>
        <xsl:value-of select="$var:v35" />
      </extdburn2>
      <dpagroup>
        <xsl:value-of select="$var:v3" />
      </dpagroup>
      <dpathirdparty>
        <xsl:value-of select="$var:v3" />
      </dpathirdparty>
      <dpatel>
        <xsl:value-of select="$var:v3" />
      </dpatel>
      <dpaemail>
        <xsl:value-of select="$var:v3" />
      </dpaemail>
      <dpapostal>
        <xsl:value-of select="$var:v3" />
      </dpapostal>
      <dpasms>
        <xsl:value-of select="$var:v3" />
      </dpasms>
      <prefcontactmethod>
        <xsl:value-of select="$var:v60" />
      </prefcontactmethod>
      <prefcontacttime>
        <xsl:value-of select="$var:v61" />
      </prefcontacttime>
      <xsl:if test="s0:VehiclesOfInterest/s0:StockVehicle/s0:FuelType">
        <nextfuel>
          <xsl:value-of select="s0:VehiclesOfInterest/s0:StockVehicle/s0:FuelType/text()" />
        </nextfuel>
      </xsl:if>
      <xsl:if test="s0:PartExchange/s0:FuelType">
        <presfuel>
          <xsl:value-of select="s0:PartExchange/s0:FuelType/text()" />
        </presfuel>
      </xsl:if>
      <xsl:if test="string($var:v63)='true'">
        <xsl:variable name="var:v64" select="&quot;&quot;" />
        <presmileage>
          <xsl:value-of select="$var:v64" />
        </presmileage>
      </xsl:if>
      <xsl:if test="string($var:v62)='true'">
        <xsl:variable name="var:v65" select="s0:PartExchange/s0:Odometer/s0:Reading/text()" />
        <presmileage>
          <xsl:value-of select="$var:v65" />
        </presmileage>
      </xsl:if>
      <xsl:if test="string($var:v67)='true'">
        <xsl:variable name="var:v68" select="&quot;&quot;" />
        <presenginesize>
          <xsl:value-of select="$var:v68" />
        </presenginesize>
      </xsl:if>
      <xsl:if test="string($var:v66)='true'">
        <xsl:variable name="var:v69" select="s0:PartExchange/s0:EngineSize/text()" />
        <presenginesize>
          <xsl:value-of select="$var:v69" />
        </presenginesize>
      </xsl:if>
    </ns0:inputcustomer>
  </xsl:template>
  <msxsl:script language="C#" implements-prefix="userCSharp"><![CDATA[
public string StringConcat(string param0)
{
   return param0;
}


public bool LogicalExistence(bool val)
{
	return val;
}


public bool LogicalNot(string val)
{
	return !ValToBool(val);
}


public string StringLowerCase(string str)
{
	if (str == null)
	{
		return "";
	}
	return str.ToLower(System.Globalization.CultureInfo.InvariantCulture);
}


        public string MyConcat(string houseNu, string houseNa, string line1)
        {
            if (line1 != string.Empty)
            {
                if (houseNu != string.Empty)
                {
                    if (houseNa != string.Empty)
                    {
                        return houseNu + " " + houseNa + " " + line1;
                    }

                    return houseNu + " " + line1;
                }
                if (houseNa != string.Empty)
                {
                    return houseNa + " " + line1;
                }
            }

            return "";
        }


public bool IsNumeric(string val)
{
	if (val == null)
	{
		return false;
	}
	double d = 0;
	return Double.TryParse(val, System.Globalization.NumberStyles.AllowThousands | System.Globalization.NumberStyles.Float, System.Globalization.CultureInfo.InvariantCulture, out d);
}

public bool IsNumeric(string val, ref double d)
{
	if (val == null)
	{
		return false;
	}
	return Double.TryParse(val, System.Globalization.NumberStyles.AllowThousands | System.Globalization.NumberStyles.Float, System.Globalization.CultureInfo.InvariantCulture, out d);
}

public bool ValToBool(string val)
{
	if (val != null)
	{
		if (string.Compare(val, bool.TrueString, StringComparison.OrdinalIgnoreCase) == 0)
		{
			return true;
		}
		if (string.Compare(val, bool.FalseString, StringComparison.OrdinalIgnoreCase) == 0)
		{
			return false;
		}
		val = val.Trim();
		if (string.Compare(val, bool.TrueString, StringComparison.OrdinalIgnoreCase) == 0)
		{
			return true;
		}
		if (string.Compare(val, bool.FalseString, StringComparison.OrdinalIgnoreCase) == 0)
		{
			return false;
		}
		double d = 0;
		if (IsNumeric(val, ref d))
		{
			return (d > 0);
		}
	}
	return false;
}


]]></msxsl:script>
</xsl:stylesheet>