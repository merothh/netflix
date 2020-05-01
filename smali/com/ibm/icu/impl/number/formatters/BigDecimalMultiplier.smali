.class public Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier;
.super Lcom/ibm/icu/impl/number/Format$BeforeFormat;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;
    }
.end annotation


# instance fields
.field private final multiplier:Ljava/math/BigDecimal;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Format$BeforeFormat;-><init>()V

    .line 45
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;->getMultiplier()Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier;->multiplier:Ljava/math/BigDecimal;

    return-void
.end method

.method public static getInstance(Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;)Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier;
    .locals 1

    .line 37
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;->getMultiplier()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier;-><init>(Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;)V

    return-object v0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The multiplier must be present for MultiplierFormat"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static useMultiplier(Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;)Z
    .locals 1

    .line 31
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;->getMultiplier()Ljava/math/BigDecimal;

    move-result-object p0

    sget-object v0, Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;->DEFAULT_MULTIPLIER:Ljava/math/BigDecimal;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public before(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;)V
    .locals 0

    .line 50
    iget-object p2, p0, Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier;->multiplier:Ljava/math/BigDecimal;

    invoke-interface {p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantity;->multiplyBy(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public export(Lcom/ibm/icu/impl/number/Properties;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier;->multiplier:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMultiplier(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/Properties;

    return-void
.end method
