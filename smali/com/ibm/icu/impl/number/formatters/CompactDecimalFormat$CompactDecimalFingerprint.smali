.class Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompactDecimalFingerprint"
.end annotation


# instance fields
.field final compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

.field final compactType:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;

.field final currencySymbol:Ljava/lang/String;

.field final uloc:Lcom/ibm/icu/util/ULocale;


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;)V
    .locals 2

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$ICurrencyProperties;->DEFAULT_CURRENCY:Lcom/ibm/icu/util/Currency;

    if-eq v0, v1, :cond_0

    .line 345
    sget-object v0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;->CURRENCY:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->compactType:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;

    .line 346
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat;->getCurrencySymbol(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$ICurrencyProperties;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->currencySymbol:Ljava/lang/String;

    goto :goto_0

    .line 348
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;->DECIMAL:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->compactType:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;

    const-string v0, ""

    .line 349
    iput-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->currencySymbol:Ljava/lang/String;

    .line 351
    :goto_0
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;->getCompactStyle()Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    move-result-object p2

    iput-object p2, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    .line 352
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->uloc:Lcom/ibm/icu/util/ULocale;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 358
    :cond_0
    check-cast p1, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;

    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 360
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    if-eq v2, v3, :cond_2

    return v0

    .line 361
    :cond_2
    iget-object v2, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->compactType:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->compactType:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;

    if-eq v2, v3, :cond_3

    return v0

    .line 362
    :cond_3
    iget-object v2, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->currencySymbol:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->currencySymbol:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    if-eqz v2, :cond_5

    if-nez v3, :cond_4

    goto :goto_0

    .line 365
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    :goto_0
    return v0

    .line 367
    :cond_6
    iget-object v2, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->uloc:Lcom/ibm/icu/util/ULocale;

    iget-object p1, p1, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->uloc:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v0

    :cond_7
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->compactType:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->uloc:Lcom/ibm/icu/util/ULocale;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->currencySymbol:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    :cond_3
    return v1
.end method
