<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:aieps="http://www.sat.gob.mx/acreditamiento" version="2.0"><xsl:template match="aieps:acreditamientoIEPS"><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@Version"/></xsl:call-template><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@TAR"/></xsl:call-template></xsl:template></xsl:stylesheet>