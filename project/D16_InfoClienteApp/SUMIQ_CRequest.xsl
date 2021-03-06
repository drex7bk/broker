<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="SUMIQ_CRequest.map" md5sum="312d95e53bdf95c816ac45066b1995e6" version="7.6.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		SUMIQ_CRequest.map
*   Map declaration(s):	SUMIQ_CRequest
*   Input file(s):		../D16_M2KFlowsLib/SiantelSchema.xsd, /infoCliente/GestionTramitesInfoCliente.xsd
*   Output file(s):		../D16_M2KFlowsLib/m2kSchema.xsd
*
*   Note: Do not modify the contents of this file as it is overwritten
*         each time the mapping model is updated.
*****************************************************************************
-->
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xalan="http://xml.apache.org/xslt"
    xmlns:str="http://exslt.org/strings"
    xmlns:set="http://exslt.org/sets"
    xmlns:math="http://exslt.org/math"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    xmlns:exsl="http://exslt.org/common"
    xmlns:date="http://exslt.org/dates-and-times"
    xmlns:in="http://www.telcel.com.mx/gestiontramites/wmb/infoCliente/schema"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:MapUtils="xalan://com.ibm.wbiserver.transform.util.MapUtils"
    xmlns:map="http://www.example.org/SUMIQ_CRequest"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="in str set math fn exsl date MapUtils map xalan msl"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root wrapper template  -->
  <xsl:template match="/">
    <xsl:choose>
      <xsl:when test="msl:datamap">
        <msl:datamap>
          <xsl:element name="dataObject">
            <xsl:attribute name="xsi:type">
              <xsl:value-of select="'requestType'"/>
            </xsl:attribute>
            <xsl:call-template name="map:SUMIQ_CRequest2">
              <xsl:with-param name="PerfilTelefono" select="msl:datamap/dataObject[1]"/>
              <xsl:with-param name="consultarDatosClienteRequest" select="msl:datamap/dataObject[2]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:call-template name="map:SUMIQ_CRequest">
          <xsl:with-param name="PerfilTelefono" select="document('../D16_M2KFlowsLib/SiantelSchema.xml')/PerfilTelefono"/>
          <xsl:with-param name="consultarDatosClienteRequest" select="document('infoCliente/GestionTramitesInfoCliente.xml')/in:consultarDatosClienteRequest"/>
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "PerfilTelefono" to "Request".  -->
  <xsl:template name="map:SUMIQ_CRequest">
    <xsl:param name="PerfilTelefono"/>
    <xsl:param name="consultarDatosClienteRequest"/>
    <Request>
      <!-- a simple data mapping: "$consultarDatosClienteRequest/in:request/in:usuarioM2K"(string) to "user"(string) -->
      <user>
        <xsl:value-of select="$consultarDatosClienteRequest/in:request/in:usuarioM2K"/>
      </user>
      <!-- a simple data mapping: "$PerfilTelefono/Region"(string) to "region"(integer) -->
      <region>
        <!-- variables for custom code -->
        <xsl:variable name="Region" select="$PerfilTelefono/Region"/>
        <xsl:value-of select="MapUtils:stringToInteger($Region, '0')"/>
      </region>
      <!-- a simple mapping with no associated source:  to "function"(string) -->
      <function>
        <xsl:text>I*7E</xsl:text>
      </function>
      <!-- a simple mapping with no associated source:  to "action"(string) -->
      <action>
        <xsl:text>C</xsl:text>
      </action>
      <inputParameters>
        <servicio>
          <p01telefono>
            <!-- a simple mapping with no associated source:  to "longitud"(integer) -->
            <xsl:attribute name="longitud">
              <xsl:value-of select="'10'"/>
            </xsl:attribute>
            <!-- a simple content mapping -->
            <xsl:value-of select="$consultarDatosClienteRequest/in:request/in:telefono"/>
          </p01telefono>
          <xsl:element name="p02cuenta">
            <!-- a simple mapping with no associated source:  to "longitud"(integer) -->
            <xsl:attribute name="longitud">
              <xsl:value-of select="'9'"/>
            </xsl:attribute>
          </xsl:element>
        </servicio>
      </inputParameters>
    </Request>
  </xsl:template>

  <!-- This rule represents a type mapping: "PerfilTelefono" to "Request".  -->
  <xsl:template name="map:SUMIQ_CRequest2">
    <xsl:param name="PerfilTelefono"/>
    <xsl:param name="consultarDatosClienteRequest"/>
    <!-- a simple data mapping: "$consultarDatosClienteRequest/in:request/in:usuarioM2K"(string) to "user"(string) -->
    <user>
      <xsl:value-of select="$consultarDatosClienteRequest/in:request/in:usuarioM2K"/>
    </user>
    <!-- a simple data mapping: "$PerfilTelefono/Region"(string) to "region"(integer) -->
    <region>
      <!-- variables for custom code -->
      <xsl:variable name="Region" select="$PerfilTelefono/Region"/>
      <xsl:value-of select="MapUtils:stringToInteger($Region, '0')"/>
    </region>
    <!-- a simple mapping with no associated source:  to "function"(string) -->
    <function>
      <xsl:text>I*7E</xsl:text>
    </function>
    <!-- a simple mapping with no associated source:  to "action"(string) -->
    <action>
      <xsl:text>C</xsl:text>
    </action>
    <inputParameters>
      <servicio>
        <p01telefono>
          <!-- a simple mapping with no associated source:  to "longitud"(integer) -->
          <xsl:attribute name="longitud">
            <xsl:value-of select="'10'"/>
          </xsl:attribute>
          <!-- a simple content mapping -->
          <xsl:value-of select="$consultarDatosClienteRequest/in:request/in:telefono"/>
        </p01telefono>
        <xsl:element name="p02cuenta">
          <!-- a simple mapping with no associated source:  to "longitud"(integer) -->
          <xsl:attribute name="longitud">
            <xsl:value-of select="'9'"/>
          </xsl:attribute>
        </xsl:element>
      </servicio>
    </inputParameters>
  </xsl:template>

  <!-- *****************    Utility Templates    ******************  -->
  <!-- copy the namespace declarations from the source to the target -->
  <xsl:template name="copyNamespaceDeclarations">
    <xsl:param name="root"/>
    <xsl:for-each select="$root/namespace::*[not(name() = '')]">
      <xsl:copy/>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
