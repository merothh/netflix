.class public Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;
.super Lcom/ibm/icu/impl/number/Rounder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder$IProperties;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/Rounder;-><init>(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)V

    return-void
.end method

.method public static getInstance(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;
    .locals 1

    .line 18
    new-instance v0, Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;-><init>(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)V

    return-object v0
.end method

.method public static useFractionFormat(Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder$IProperties;)Z
    .locals 2

    .line 13
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder$IProperties;->getMinimumFractionDigits()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 14
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder$IProperties;->getMaximumFractionDigits()I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/number/FormatQuantity;)V
    .locals 2

    .line 27
    iget v0, p0, Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;->maxFrac:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;->mathContext:Ljava/math/MathContext;

    invoke-interface {p1, v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantity;->roundToMagnitude(ILjava/math/MathContext;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;->applyDefaults(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    return-void
.end method
