.class public Lcom/ibm/icu/impl/number/rounders/IncrementRounder;
.super Lcom/ibm/icu/impl/number/Rounder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/rounders/IncrementRounder$IProperties;
    }
.end annotation


# instance fields
.field private final roundingIncrement:Ljava/math/BigDecimal;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/impl/number/rounders/IncrementRounder$IProperties;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/Rounder;-><init>(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)V

    .line 50
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/rounders/IncrementRounder$IProperties;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_0

    .line 53
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/rounders/IncrementRounder$IProperties;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/number/rounders/IncrementRounder;->roundingIncrement:Ljava/math/BigDecimal;

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Rounding interval must be greater than zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Lcom/ibm/icu/impl/number/rounders/IncrementRounder$IProperties;)Lcom/ibm/icu/impl/number/rounders/IncrementRounder;
    .locals 1

    .line 45
    new-instance v0, Lcom/ibm/icu/impl/number/rounders/IncrementRounder;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/rounders/IncrementRounder;-><init>(Lcom/ibm/icu/impl/number/rounders/IncrementRounder$IProperties;)V

    return-object v0
.end method

.method public static useRoundingIncrement(Lcom/ibm/icu/impl/number/rounders/IncrementRounder$IProperties;)Z
    .locals 1

    .line 39
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/rounders/IncrementRounder$IProperties;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object p0

    sget-object v0, Lcom/ibm/icu/impl/number/rounders/IncrementRounder$IProperties;->DEFAULT_ROUNDING_INCREMENT:Ljava/math/BigDecimal;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/number/FormatQuantity;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/ibm/icu/impl/number/rounders/IncrementRounder;->roundingIncrement:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/rounders/IncrementRounder;->mathContext:Ljava/math/MathContext;

    invoke-interface {p1, v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantity;->roundToIncrement(Ljava/math/BigDecimal;Ljava/math/MathContext;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/rounders/IncrementRounder;->applyDefaults(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    return-void
.end method

.method public export(Lcom/ibm/icu/impl/number/Properties;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/ibm/icu/impl/number/Rounder;->export(Lcom/ibm/icu/impl/number/Properties;)V

    .line 65
    iget-object v0, p0, Lcom/ibm/icu/impl/number/rounders/IncrementRounder;->roundingIncrement:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setRoundingIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/Properties;

    return-void
.end method
