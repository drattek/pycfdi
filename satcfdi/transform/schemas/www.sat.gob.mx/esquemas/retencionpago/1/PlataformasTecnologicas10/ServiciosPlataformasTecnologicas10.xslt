<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:plataformasTecnologicas="http://www.sat.gob.mx/esquemas/retencionpago/1/PlataformasTecnologicas10" version="2.0"><xsl:output method="text" version="1.0" encoding="UTF-8" indent="no"/><xsl:template match="plataformasTecnologicas:ServiciosPlataformasTecnologicas"><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@Version"/></xsl:call-template><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@Periodicidad"/></xsl:call-template><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@NumServ"/></xsl:call-template><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@MonTotServSIVA"/></xsl:call-template><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@TotalIVATrasladado"/></xsl:call-template><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@TotalIVARetenido"/></xsl:call-template><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@TotalISRRetenido"/></xsl:call-template><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@DifIVAEntregadoPrestServ"/></xsl:call-template><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@MonTotalporUsoPlataforma"/></xsl:call-template><xsl:call-template name="Opcional"><xsl:with-param name="valor" select="./@MonTotalContribucionGubernamental"/></xsl:call-template><xsl:apply-templates select="./plataformasTecnologicas:Servicios"/></xsl:template><xsl:template match="plataformasTecnologicas:Servicios"><xsl:for-each select="./plataformasTecnologicas:DetallesDelServicio"><xsl:apply-templates select="."/></xsl:for-each></xsl:template><xsl:template match="plataformasTecnologicas:DetallesDelServicio"><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@FormaPagoServ"/></xsl:call-template><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@TipoDeServ"/></xsl:call-template><xsl:call-template name="Opcional"><xsl:with-param name="valor" select="./@SubTipServ"/></xsl:call-template><xsl:call-template name="Opcional"><xsl:with-param name="valor" select="./@RFCTerceroAutorizado"/></xsl:call-template><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@FechaServ"/></xsl:call-template><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@PrecioServSinIVA"/></xsl:call-template><xsl:if test="./plataformasTecnologicas:ImpuestosTrasladadosdelServicio"><xsl:apply-templates select="./plataformasTecnologicas:ImpuestosTrasladadosdelServicio"/></xsl:if><xsl:if test="./plataformasTecnologicas:ContribucionGubernamental"><xsl:apply-templates select="./plataformasTecnologicas:ContribucionGubernamental"/></xsl:if><xsl:if test="./plataformasTecnologicas:ComisionDelServicio"><xsl:apply-templates select="./plataformasTecnologicas:ComisionDelServicio"/></xsl:if></xsl:template><xsl:template match="plataformasTecnologicas:ImpuestosTrasladadosdelServicio"><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@Base"/></xsl:call-template><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@Impuesto"/></xsl:call-template><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@TipoFactor"/></xsl:call-template><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@TasaCuota"/></xsl:call-template><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@Importe"/></xsl:call-template></xsl:template><xsl:template match="plataformasTecnologicas:ContribucionGubernamental"><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@ImpContrib"/></xsl:call-template><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@EntidadDondePagaLaContribucion"/></xsl:call-template></xsl:template><xsl:template match="plataformasTecnologicas:ComisionDelServicio"><xsl:call-template name="Opcional"><xsl:with-param name="valor" select="./@Base"/></xsl:call-template><xsl:call-template name="Opcional"><xsl:with-param name="valor" select="./@Porcentaje"/></xsl:call-template><xsl:call-template name="Requerido"><xsl:with-param name="valor" select="./@Importe"/></xsl:call-template></xsl:template></xsl:stylesheet>