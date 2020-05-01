.class public Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;
.super Lcom/ibm/icu/impl/number/Rounder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;
    }
.end annotation


# instance fields
.field private final maxSig:I

.field private final minSig:I

.field private final mode:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;)V
    .locals 4

    .line 101
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/Rounder;-><init>(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)V

    .line 102
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;->getMinimumSignificantDigits()I

    move-result v0

    .line 103
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;->getMaximumSignificantDigits()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-le v0, v3, :cond_1

    const/16 v0, 0x3e8

    .line 104
    :cond_1
    :goto_0
    iput v0, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->minSig:I

    if-gez v1, :cond_2

    goto :goto_1

    .line 105
    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->minSig:I

    if-ge v1, v0, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    if-le v1, v3, :cond_4

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    iput v3, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->maxSig:I

    .line 106
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;->getSignificantDigitsMode()Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    move-result-object p1

    if-nez p1, :cond_5

    .line 107
    sget-object p1, Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;->OVERRIDE_MAXIMUM_FRACTION:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    :cond_5
    iput-object p1, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->mode:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    return-void
.end method

.method public static getInstance(Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;)Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;
    .locals 1

    .line 93
    new-instance v0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;-><init>(Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;)V

    return-object v0
.end method

.method public static useSignificantDigits(Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;)Z
    .locals 2

    .line 85
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;->getMinimumSignificantDigits()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 87
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;->getMaximumSignificantDigits()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 89
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;->getSignificantDigitsMode()Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    move-result-object p0

    sget-object v0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;->DEFAULT_SIGNIFICANT_DIGITS_MODE:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    if-eq p0, v0, :cond_0

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
    .locals 6

    .line 115
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->isZero()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 117
    iget v0, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->minInt:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->getMagnitude()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 121
    iget v2, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->maxInt:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 122
    iget v2, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->minSig:I

    sub-int v2, v0, v2

    .line 123
    iget v3, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->maxSig:I

    sub-int/2addr v0, v3

    .line 127
    sget-object v3, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$1;->$SwitchMap$com$ibm$icu$text$DecimalFormat$SignificantDigitsMode:[I

    iget-object v4, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->mode:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    invoke-virtual {v4}, Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v3, v1, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    .line 162
    iget v3, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->maxFrac:I

    neg-int v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 165
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 151
    :cond_2
    iget v2, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->maxFrac:I

    neg-int v2, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 167
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->mathContext:Ljava/math/MathContext;

    invoke-interface {p1, v0, v2}, Lcom/ibm/icu/impl/number/FormatQuantity;->roundToMagnitude(ILjava/math/MathContext;)V

    .line 170
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->isZero()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    iget v0, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->minInt:I

    sub-int/2addr v0, v1

    goto :goto_2

    .line 173
    :cond_4
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->getMagnitude()I

    move-result v0

    :goto_2
    add-int/2addr v0, v1

    .line 175
    iget v2, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->maxInt:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 176
    iget v2, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->minSig:I

    sub-int/2addr v0, v2

    .line 177
    iget v2, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->maxSig:I

    .line 180
    sget-object v2, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$1;->$SwitchMap$com$ibm$icu$text$DecimalFormat$SignificantDigitsMode:[I

    iget-object v3, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->mode:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    invoke-virtual {v3}, Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const v3, 0x7fffffff

    if-eq v2, v1, :cond_7

    if-eq v2, v5, :cond_6

    if-eq v2, v4, :cond_5

    goto :goto_3

    .line 193
    :cond_5
    iget v0, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->minInt:I

    iget v1, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->maxInt:I

    iget v2, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->minFrac:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/ibm/icu/impl/number/FormatQuantity;->setIntegerFractionLength(IIII)V

    goto :goto_3

    .line 188
    :cond_6
    iget v1, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->minInt:I

    iget v2, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->maxInt:I

    iget v3, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->maxFrac:I

    iget v4, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->minFrac:I

    neg-int v0, v0

    .line 189
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v3, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->maxFrac:I

    .line 188
    invoke-interface {p1, v1, v2, v0, v3}, Lcom/ibm/icu/impl/number/FormatQuantity;->setIntegerFractionLength(IIII)V

    goto :goto_3

    .line 183
    :cond_7
    iget v1, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->minInt:I

    iget v2, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->maxInt:I

    iget v4, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->minFrac:I

    neg-int v0, v0

    .line 184
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 183
    invoke-interface {p1, v1, v2, v0, v3}, Lcom/ibm/icu/impl/number/FormatQuantity;->setIntegerFractionLength(IIII)V

    :goto_3
    return-void
.end method

.method public export(Lcom/ibm/icu/impl/number/Properties;)V
    .locals 1

    .line 200
    invoke-super {p0, p1}, Lcom/ibm/icu/impl/number/Rounder;->export(Lcom/ibm/icu/impl/number/Properties;)V

    .line 201
    iget v0, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->minSig:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMinimumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 202
    iget v0, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->maxSig:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMaximumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 203
    iget-object v0, p0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->mode:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setSignificantDigitsMode(Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;)Lcom/ibm/icu/impl/number/Properties;

    return-void
.end method
