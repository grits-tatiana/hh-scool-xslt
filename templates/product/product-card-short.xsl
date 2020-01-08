<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="product-card/product-sizes.xsl"/>
    <xsl:import href="product-card/product-image.xsl"/>
    <xsl:import href="product-card/product-sale.xsl"/>
    <xsl:import href="product-card/product-name.xsl"/>
    <xsl:import href="product-card/product-price.xsl"/>
    <xsl:import href="product-card/product-desription.xsl"/>

    <xsl:template match="product" mode="product-card-short">
        <div class="product-card">
            <div class="product-card__image-container">
                <xsl:apply-templates select="." mode="product-image"/>
                <xsl:if test="price/current/@sale=1">
                    <xsl:apply-templates select="." mode="product-sale-short"/>
                </xsl:if>
            </div>
            <xsl:apply-templates select="." mode="product-name-short"/>
            <xsl:apply-templates select="." mode="product-price"/>
        </div>
    </xsl:template>

</xsl:stylesheet>
