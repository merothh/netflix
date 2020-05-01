.class public abstract Lcom/ibm/icu/impl/number/Rounder;
.super Lcom/ibm/icu/impl/number/Format$BeforeFormat;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/Rounder$MultiplierGenerator;,
        Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final mathContext:Ljava/math/MathContext;

.field protected final maxFrac:I

.field protected final maxInt:I

.field protected final minFrac:I

.field protected final minInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)V
    .locals 6

    .line 158
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Format$BeforeFormat;-><init>()V

    .line 159
    invoke-static {p1}, Lcom/ibm/icu/impl/number/RoundingUtils;->getMathContextOrUnlimited(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)Ljava/math/MathContext;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Rounder;->mathContext:Ljava/math/MathContext;

    .line 161
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;->getMaximumIntegerDigits()I

    move-result v0

    .line 162
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;->getMinimumIntegerDigits()I

    move-result v1

    .line 163
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;->getMaximumFractionDigits()I

    move-result v2

    .line 164
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;->getMinimumFractionDigits()I

    move-result p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x7fffffff

    if-nez v1, :cond_4

    if-eqz v2, :cond_4

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    .line 171
    :cond_0
    iput p1, p0, Lcom/ibm/icu/impl/number/Rounder;->minFrac:I

    if-gez v2, :cond_1

    const p1, 0x7fffffff

    goto :goto_0

    .line 172
    :cond_1
    iget p1, p0, Lcom/ibm/icu/impl/number/Rounder;->minFrac:I

    if-ge v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    iput p1, p0, Lcom/ibm/icu/impl/number/Rounder;->maxFrac:I

    .line 173
    iput v4, p0, Lcom/ibm/icu/impl/number/Rounder;->minInt:I

    if-gez v0, :cond_3

    const v0, 0x7fffffff

    .line 174
    :cond_3
    iput v0, p0, Lcom/ibm/icu/impl/number/Rounder;->maxInt:I

    goto :goto_3

    :cond_4
    if-gez p1, :cond_5

    const/4 p1, 0x0

    .line 177
    :cond_5
    iput p1, p0, Lcom/ibm/icu/impl/number/Rounder;->minFrac:I

    if-gez v2, :cond_6

    const p1, 0x7fffffff

    goto :goto_1

    .line 178
    :cond_6
    iget p1, p0, Lcom/ibm/icu/impl/number/Rounder;->minFrac:I

    if-ge v2, p1, :cond_7

    goto :goto_1

    :cond_7
    move p1, v2

    :goto_1
    iput p1, p0, Lcom/ibm/icu/impl/number/Rounder;->maxFrac:I

    if-gtz v1, :cond_8

    const/4 v1, 0x1

    .line 179
    :cond_8
    iput v1, p0, Lcom/ibm/icu/impl/number/Rounder;->minInt:I

    if-gez v0, :cond_9

    const p1, 0x7fffffff

    goto :goto_2

    .line 180
    :cond_9
    iget p1, p0, Lcom/ibm/icu/impl/number/Rounder;->minInt:I

    if-ge v0, p1, :cond_a

    goto :goto_2

    :cond_a
    move p1, v0

    :goto_2
    iput p1, p0, Lcom/ibm/icu/impl/number/Rounder;->maxInt:I

    :goto_3
    return-void
.end method


# virtual methods
.method public abstract apply(Lcom/ibm/icu/impl/number/FormatQuantity;)V
.end method

.method protected applyDefaults(Lcom/ibm/icu/impl/number/FormatQuantity;)V
    .locals 4

    .line 231
    iget v0, p0, Lcom/ibm/icu/impl/number/Rounder;->minInt:I

    iget v1, p0, Lcom/ibm/icu/impl/number/Rounder;->maxInt:I

    iget v2, p0, Lcom/ibm/icu/impl/number/Rounder;->minFrac:I

    iget v3, p0, Lcom/ibm/icu/impl/number/Rounder;->maxFrac:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/ibm/icu/impl/number/FormatQuantity;->setIntegerFractionLength(IIII)V

    return-void
.end method

.method public before(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;)V
    .locals 0

    .line 236
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/Rounder;->apply(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    return-void
.end method

.method public chooseMultiplierAndApply(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/Rounder$MultiplierGenerator;)I
    .locals 5

    .line 205
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->createCopy()Lcom/ibm/icu/impl/number/FormatQuantity;

    move-result-object v0

    .line 207
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->getMagnitude()I

    move-result v1

    .line 208
    invoke-interface {p2, v1}, Lcom/ibm/icu/impl/number/Rounder$MultiplierGenerator;->getMultiplier(I)I

    move-result v2

    .line 209
    invoke-interface {p1, v2}, Lcom/ibm/icu/impl/number/FormatQuantity;->adjustMagnitude(I)V

    .line 210
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/Rounder;->apply(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    .line 211
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->getMagnitude()I

    move-result v3

    add-int v4, v1, v2

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 213
    invoke-interface {p1, v0}, Lcom/ibm/icu/impl/number/FormatQuantity;->copyFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    .line 214
    invoke-interface {p2, v1}, Lcom/ibm/icu/impl/number/Rounder$MultiplierGenerator;->getMultiplier(I)I

    move-result v2

    .line 215
    invoke-interface {p1, v2}, Lcom/ibm/icu/impl/number/FormatQuantity;->adjustMagnitude(I)V

    .line 217
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/Rounder;->apply(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    :cond_0
    return v2
.end method

.method public export(Lcom/ibm/icu/impl/number/Properties;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Rounder;->mathContext:Ljava/math/MathContext;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMathContext(Ljava/math/MathContext;)Lcom/ibm/icu/impl/number/Properties;

    .line 242
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Rounder;->mathContext:Ljava/math/MathContext;

    invoke-virtual {v0}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setRoundingMode(Ljava/math/RoundingMode;)Lcom/ibm/icu/impl/number/Properties;

    .line 243
    iget v0, p0, Lcom/ibm/icu/impl/number/Rounder;->minFrac:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 244
    iget v0, p0, Lcom/ibm/icu/impl/number/Rounder;->minInt:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMinimumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 245
    iget v0, p0, Lcom/ibm/icu/impl/number/Rounder;->maxFrac:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 246
    iget v0, p0, Lcom/ibm/icu/impl/number/Rounder;->maxInt:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMaximumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;

    return-void
.end method
