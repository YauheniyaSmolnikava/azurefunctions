<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0 userCSharp" version="1.0" xmlns:ns0="http://Lookers.ESB.LeadServer.Schemas.Lead" xmlns:s0="http://Lookers.AsbManheim.CrmLead/1.0.0.0" xmlns:userCSharp="http://schemas.microsoft.com/BizTalk/2003/userCSharp" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/s0:CrmLead" />
  </xsl:template>
  <xsl:template match="/s0:CrmLead">
    <xsl:variable name="var:v1" select="userCSharp:StringConcat(&quot;Web&quot;)" />
    <xsl:variable name="var:v2" select="userCSharp:StringConcat(&quot;Email&quot;)" />
    <xsl:variable name="var:v3" select="userCSharp:StringConcat(&quot;AUDI&quot;)" />
    <xsl:variable name="var:v4" select="userCSharp:StringConcat(&quot;A1 HATCHBACK SPECIAL EDITIONS&quot;)" />
    <xsl:variable name="var:v5" select="userCSharp:StringConcat(&quot;1.4 TFSI 150 Black Edition 3dr&quot;)" />
    <xsl:variable name="var:v6" select="userCSharp:StringConcat(&quot;Diesel&quot;)" />
    <xsl:variable name="var:v7" select="userCSharp:StringConcat(&quot;A3 SPORTBACK&quot;)" />
    <xsl:variable name="var:v8" select="userCSharp:StringConcat(&quot;S3 TFSI Quattro 5dr S Tronic [Nav]&quot;)" />
    <ns0:Lead>
      <ns0:LeadChannel>
        <ns0:Channel>
          <xsl:value-of select="$var:v1" />
        </ns0:Channel>
      </ns0:LeadChannel>
      <xsl:if test="Source">
        <ns0:LeadSource>
          <xsl:value-of select="Source/text()" />
        </ns0:LeadSource>
      </xsl:if>
      <ns0:Person>
        <xsl:if test="Title">
          <ns0:Title>
            <xsl:value-of select="Title/text()" />
          </ns0:Title>
        </xsl:if>
        <xsl:if test="Firstname">
          <ns0:Forename>
            <xsl:value-of select="Firstname/text()" />
          </ns0:Forename>
        </xsl:if>
        <xsl:if test="Lastname">
          <ns0:Surname>
            <xsl:value-of select="Lastname/text()" />
          </ns0:Surname>
        </xsl:if>
        <xsl:variable name="PostCode" select="//ns1:CrmLead/Address1Postalcode/text()" xmlns:ns1="http://Lookers.AsbManheim.CrmLead/1.0.0.0" />
        <xsl:variable name="Address" select="//ns1:CrmLead/Address1Line1/text()" xmlns:ns1="http://Lookers.AsbManheim.CrmLead/1.0.0.0" />
        <xsl:variable name="City" select="//ns1:CrmLead/Address1City/text()" xmlns:ns1="http://Lookers.AsbManheim.CrmLead/1.0.0.0" />
        <ns0:ContactMechanisms xmlns:ns0="http://Lookers.ESB.LeadServer.Schemas.Lead">

        <xsl:if test="//ns1:CrmLead/Emailaddress1!=''" xmlns:ns1="http://Lookers.AsbManheim.CrmLead/1.0.0.0">
          <ns0:Mechanism>
            <ns0:ContactElectronicAddress>
              <ns0:ElectronicType>Email</ns0:ElectronicType>
              <ns0:ElectronicAddress>
                <xsl:value-of select="//ns1:CrmLead/Emailaddress1/text()" />
              </ns0:ElectronicAddress>
            </ns0:ContactElectronicAddress>
            <ns0:Type>ElectronicAddress</ns0:Type>
          </ns0:Mechanism>
        </xsl:if>
		
        <xsl:if test="//ns1:CrmLead/Mobilephone!=''" xmlns:ns1="http://Lookers.AsbManheim.CrmLead/1.0.0.0">
          <ns0:Mechanism>
            <ns0:ContactTelecommsNumber>
              <ns0:PhoneType>MobilePhone</ns0:PhoneType>
              <ns0:TelecommsNumber>
                <xsl:value-of select="//ns1:CrmLead/Mobilephone/text()" />
              </ns0:TelecommsNumber>
            </ns0:ContactTelecommsNumber>
            <ns0:Type>PhoneNumber</ns0:Type>
            <ns0:Usage>Personal</ns0:Usage>
          </ns0:Mechanism>
        </xsl:if>
		
		<xsl:if test="//ns1:CrmLead/Telephone1!=''" xmlns:ns1="http://Lookers.AsbManheim.CrmLead/1.0.0.0">
          <ns0:Mechanism>
            <ns0:ContactTelecommsNumber>
              <ns0:PhoneType>LandlinePhone</ns0:PhoneType>
              <ns0:TelecommsNumber>
                <xsl:value-of select="//ns1:CrmLead/Telephone1/text()" />
              </ns0:TelecommsNumber>
            </ns0:ContactTelecommsNumber>
            <ns0:Type>PhoneNumber</ns0:Type>
            <ns0:Usage>Personal</ns0:Usage>
          </ns0:Mechanism>
        </xsl:if>
		
		<xsl:if test="//ns1:CrmLead/Telephone2!=''" xmlns:ns1="http://Lookers.AsbManheim.CrmLead/1.0.0.0">
          <ns0:Mechanism>
            <ns0:ContactTelecommsNumber>
              <ns0:PhoneType>LandlinePhone</ns0:PhoneType>
              <ns0:TelecommsNumber>
                <xsl:value-of select="//ns1:CrmLead/Telephone2/text()" />
              </ns0:TelecommsNumber>
            </ns0:ContactTelecommsNumber>
            <ns0:Type>PhoneNumber</ns0:Type>
            <ns0:Usage>Business</ns0:Usage>
          </ns0:Mechanism>
        </xsl:if>
		
		<xsl:if test="//ns1:CrmLead/Address1Fax!=''" xmlns:ns1="http://Lookers.AsbManheim.CrmLead/1.0.0.0">
          <ns0:Mechanism>
            <ns0:ContactTelecommsNumber>
              <ns0:PhoneType>FaxPhone</ns0:PhoneType>
              <ns0:TelecommsNumber>
                <xsl:value-of select="//ns1:CrmLead/Address1Fax/text()" />
              </ns0:TelecommsNumber>
            </ns0:ContactTelecommsNumber>
          </ns0:Mechanism>
        </xsl:if>
		
        <xsl:if test="$PostCode!='' or $Address!='' or $City!=''" xmlns:ns1="http://Lookers.AsbManheim.CrmLead/1.0.0.0">
          <ns0:Mechanism>
            <ns0:ContactPostalAddress>

			<xsl:if test="//ns1:CrmLead/Address1housename!=''">
                <ns0:HouseName>
                  <xsl:value-of select="//ns1:CrmLead/Address1housename/text()" />
                </ns0:HouseName>
              </xsl:if>
			
			<xsl:if test="//ns1:CrmLead/Address1housenumber!=''">
                <ns0:HouseNumber>
                  <xsl:value-of select="//ns1:CrmLead/Address1housenumber/text()" />
                </ns0:HouseNumber>
              </xsl:if>			 
			  
              <xsl:if test="$Address!=''">
                <ns0:AddressLine1>
                  <xsl:value-of select="$Address" />
                </ns0:AddressLine1>
              </xsl:if>
			  
				<xsl:if test="//ns1:CrmLead/Address1Line2!=''">
                <ns0:AddressLine2>
                  <xsl:value-of select="//ns1:CrmLead/Address1Line2/text()" />
                </ns0:AddressLine2>
              </xsl:if>
			  
				<xsl:if test="//ns1:CrmLead/Address1Line3!=''">
                <ns0:AddressLine3>
                  <xsl:value-of select="//ns1:CrmLead/Address1Line3/text()" />
                </ns0:AddressLine3>
              </xsl:if>
			  
			  <xsl:if test="$City!=''">
                <ns0:City>
                  <xsl:value-of select="$City" />
                </ns0:City>
              </xsl:if>

			<xsl:if test="$PostCode!=''">
                <ns0:PostalCode>
                  <xsl:value-of select="$PostCode" />
                </ns0:PostalCode>
              </xsl:if>

            </ns0:ContactPostalAddress>
            <ns0:Type>PostalAddress</ns0:Type>
          </ns0:Mechanism>
        </xsl:if>
      </ns0:ContactMechanisms>
        <ns0:PreferredContactMethod>
          <xsl:value-of select="$var:v2" />
        </ns0:PreferredContactMethod>
      </ns0:Person>
      <ns0:VehiclesOfInterest>
        <ns0:StockVehicle>
          <xsl:if test="VRM">
            <ns0:VRM>
              <xsl:value-of select="VRM/text()" />
            </ns0:VRM>
          </xsl:if>
          <ns0:Manufacturer>
            <xsl:value-of select="$var:v3" />
          </ns0:Manufacturer>
          <ns0:Model>
            <xsl:value-of select="$var:v4" />
          </ns0:Model>
          <ns0:Derivative>
            <xsl:value-of select="$var:v5" />
          </ns0:Derivative>
          <xsl:if test="Daterequired">
            <ns0:RegistrationDate>
              <xsl:value-of select="Daterequired/text()" />
            </ns0:RegistrationDate>
          </xsl:if>
          <ns0:FuelType>
            <xsl:value-of select="$var:v6" />
          </ns0:FuelType>
        </ns0:StockVehicle>
        <ns0:VehicleLookup>
          <xsl:if test="Newused">
            <ns0:NewOrUsed>
              <xsl:value-of select="Newused/text()" />
            </ns0:NewOrUsed>
          </xsl:if>
        </ns0:VehicleLookup>
      </ns0:VehiclesOfInterest>
      <ns0:PartExchange>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'ns0:StockVehicleType'" />
        </xsl:attribute>
        <ns0:Manufacturer>
          <xsl:value-of select="$var:v3" />
        </ns0:Manufacturer>
        <ns0:Model>
          <xsl:value-of select="$var:v7" />
        </ns0:Model>
        <ns0:Derivative>
          <xsl:value-of select="$var:v8" />
        </ns0:Derivative>
        <ns0:FuelType>
          <xsl:value-of select="$var:v6" />
        </ns0:FuelType>
      </ns0:PartExchange>
      <ns0:ManufacturerLead>
        <xsl:if test="Manufacturerleadid">
          <ns0:ManufacturerLeadID>
            <xsl:value-of select="Manufacturerleadid/text()" />
          </ns0:ManufacturerLeadID>
        </xsl:if>
      </ns0:ManufacturerLead>
    </ns0:Lead>
  </xsl:template>
  <msxsl:script language="C#" implements-prefix="userCSharp"><![CDATA[
public string StringConcat(string param0)
{
   return param0;
}



]]></msxsl:script>
</xsl:stylesheet>