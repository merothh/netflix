.class public Lcom/ibm/icu/impl/number/formatters/MeasureFormat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/formatters/MeasureFormat$IProperties;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/MeasureFormat$IProperties;)Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;
    .locals 7

    .line 51
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    .line 52
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/formatters/MeasureFormat$IProperties;->getMeasureUnit()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    .line 53
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/formatters/MeasureFormat$IProperties;->getMeasureFormatWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object p1

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 59
    sget-object p1, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->WIDE:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    .line 64
    :cond_0
    invoke-static {p0, p1}, Lcom/ibm/icu/text/MeasureFormat;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)Lcom/ibm/icu/text/MeasureFormat;

    move-result-object p0

    .line 65
    new-instance v1, Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;

    invoke-direct {v1}, Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;-><init>()V

    .line 66
    sget-object v2, Lcom/ibm/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/impl/StandardPlural;

    .line 68
    invoke-virtual {v3}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v4

    invoke-virtual {p0, v0, p1, v4}, Lcom/ibm/icu/text/MeasureFormat;->getPluralFormatter(Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    .line 69
    new-instance v4, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v5}, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/NumberFormat$Field;Z)V

    invoke-virtual {v1, v3, v4}, Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;->put(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/number/Modifier;)V

    goto :goto_0

    :cond_1
    return-object v1

    .line 56
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A measure unit is required for MeasureFormat"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static useMeasureFormat(Lcom/ibm/icu/impl/number/formatters/MeasureFormat$IProperties;)Z
    .locals 1

    .line 47
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/MeasureFormat$IProperties;->getMeasureUnit()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object p0

    sget-object v0, Lcom/ibm/icu/impl/number/formatters/MeasureFormat$IProperties;->DEFAULT_MEASURE_UNIT:Lcom/ibm/icu/util/MeasureUnit;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
