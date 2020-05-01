.class public abstract Lcom/ibm/icu/impl/number/FormatQuantityBCD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/impl/number/FormatQuantity;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DOUBLE_MULTIPLIERS:[D


# instance fields
.field public explicitExactDouble:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected flags:I

.field protected isApproximate:Z

.field protected lOptPos:I

.field protected lReqPos:I

.field protected origDelta:I

.field protected origDouble:D

.field protected precision:I

.field protected rOptPos:I

.field protected rReqPos:I

.field protected scale:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [D

    .line 411
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->DOUBLE_MULTIPLIERS:[D

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 105
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lOptPos:I

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lReqPos:I

    .line 107
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rReqPos:I

    const/high16 v1, -0x80000000

    .line 108
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rOptPos:I

    .line 506
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->explicitExactDouble:Z

    return-void
.end method

.method private _setToBigDecimal(Ljava/math/BigDecimal;)V
    .locals 1

    .line 527
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 528
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object p1

    .line 529
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    .line 530
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToBigInteger(Ljava/math/BigInteger;)V

    .line 531
    iget p1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    return-void
.end method

.method private _setToBigInteger(Ljava/math/BigInteger;)V
    .locals 2

    .line 379
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 380
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->readIntToBcd(I)V

    goto :goto_0

    .line 381
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_1

    .line 382
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->readLongToBcd(J)V

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->readBigIntegerToBcd(Ljava/math/BigInteger;)V

    :goto_0
    return-void
.end method

.method private _setToDoubleFast(D)V
    .locals 7

    .line 421
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v0, v2

    const/16 v2, 0x34

    shr-long/2addr v0, v2

    long-to-int v1, v0

    add-int/lit16 v1, v1, -0x3ff

    if-gt v1, v2, :cond_0

    double-to-long v3, p1

    long-to-double v5, v3

    cmpl-double v0, v5, p1

    if-nez v0, :cond_0

    .line 426
    invoke-direct {p0, v3, v4}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToLong(J)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 430
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    .line 431
    iput-wide p1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDouble:D

    const/4 v0, 0x0

    .line 432
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDelta:I

    sub-int/2addr v2, v1

    int-to-double v0, v2

    const-wide v2, 0x400a934f0979baa5L    # 3.32192809489

    div-double/2addr v0, v2

    double-to-int v0, v0

    const-wide v1, 0x4480f0cf064dd592L    # 1.0E22

    if-ltz v0, :cond_2

    move-wide v3, p1

    move p1, v0

    :goto_0
    const/16 p2, 0x16

    if-lt p1, p2, :cond_1

    mul-double v3, v3, v1

    add-int/lit8 p1, p1, -0x16

    goto :goto_0

    .line 440
    :cond_1
    sget-object p2, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->DOUBLE_MULTIPLIERS:[D

    aget-wide p1, p2, p1

    mul-double v3, v3, p1

    goto :goto_2

    :cond_2
    move-wide v3, p1

    move p1, v0

    :goto_1
    const/16 p2, -0x16

    if-gt p1, p2, :cond_3

    div-double/2addr v3, v1

    add-int/lit8 p1, p1, 0x16

    goto :goto_1

    .line 445
    :cond_3
    sget-object p2, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->DOUBLE_MULTIPLIERS:[D

    neg-int p1, p1

    aget-wide p1, p2, p1

    div-double/2addr v3, p1

    .line 447
    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_4

    .line 449
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToLong(J)V

    .line 450
    iget p1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    :cond_4
    return-void
.end method

.method private _setToInt(I)V
    .locals 2

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    int-to-long v0, p1

    neg-long v0, v0

    .line 336
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->readLongToBcd(J)V

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->readIntToBcd(I)V

    :goto_0
    return-void
.end method

.method private _setToLong(J)V
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 357
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->readBigIntegerToBcd(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    long-to-int p2, p1

    .line 359
    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->readIntToBcd(I)V

    goto :goto_0

    .line 361
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->readLongToBcd(J)V

    :goto_0
    return-void
.end method

.method private convertToAccurateDouble()V
    .locals 8

    .line 460
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDouble:D

    .line 462
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDelta:I

    .line 463
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setBcdToZero()V

    .line 466
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x45

    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v3, v4, :cond_0

    .line 471
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToLong(J)V

    .line 473
    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v7

    sub-int/2addr v0, v1

    add-int/2addr v0, v7

    add-int/2addr v3, v0

    iput v3, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    goto :goto_0

    .line 474
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x30

    if-ne v1, v3, :cond_1

    .line 477
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToLong(J)V

    .line 478
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v5, v0

    add-int/2addr v1, v5

    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    goto :goto_0

    .line 479
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    .line 485
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToLong(J)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x2e

    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToLong(J)V

    .line 491
    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v1, v0

    add-int/2addr v1, v7

    add-int/2addr v3, v1

    iput v3, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    .line 493
    :goto_0
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    .line 494
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->compact()V

    .line 495
    iput-boolean v7, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->explicitExactDouble:Z

    return-void
.end method

.method private fractionCount()I
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getLowerDisplayMagnitude()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method private fractionCountWithoutTrailingZeros()I
    .locals 2

    .line 285
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static safeSubtract(II)I
    .locals 1

    sub-int v0, p0, p1

    if-gez p1, :cond_0

    if-ge v0, p0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    if-lez p1, :cond_1

    if-le v0, p0, :cond_1

    const/high16 p0, -0x80000000

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public adjustMagnitude(I)V
    .locals 1

    .line 195
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    if-eqz v0, :cond_0

    .line 196
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    .line 197
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDelta:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDelta:I

    :cond_0
    return-void
.end method

.method public appendDigit(BIZ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    .line 814
    iget p1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    if-eqz p1, :cond_0

    .line 815
    iget p1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    add-int/lit8 p2, p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    :cond_0
    return-void

    .line 821
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    add-int/2addr p2, v0

    if-eqz p3, :cond_2

    .line 824
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 829
    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->shiftLeft(I)V

    .line 830
    invoke-virtual {p0, v1, p1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setDigitPos(IB)V

    if-eqz p3, :cond_3

    .line 834
    iget p1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    :cond_3
    return-void
.end method

.method protected abstract bcdToBigDecimal()Ljava/math/BigDecimal;
.end method

.method public clear()Lcom/ibm/icu/impl/number/FormatQuantityBCD;
    .locals 2

    const v0, 0x7fffffff

    .line 127
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lOptPos:I

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lReqPos:I

    .line 129
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rReqPos:I

    const/high16 v1, -0x80000000

    .line 130
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rOptPos:I

    .line 131
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    .line 132
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setBcdToZero()V

    return-object p0
.end method

.method protected abstract compact()V
.end method

.method protected abstract copyBcdFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V
.end method

.method public copyFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V
    .locals 2

    .line 112
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->copyBcdFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    .line 113
    check-cast p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;

    .line 114
    iget v0, p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lOptPos:I

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lOptPos:I

    .line 115
    iget v0, p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lReqPos:I

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lReqPos:I

    .line 116
    iget v0, p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rReqPos:I

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rReqPos:I

    .line 117
    iget v0, p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rOptPos:I

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rOptPos:I

    .line 118
    iget v0, p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    .line 119
    iget v0, p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    .line 120
    iget v0, p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    .line 121
    iget-wide v0, p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDouble:D

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDouble:D

    .line 122
    iget v0, p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDelta:I

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDelta:I

    .line 123
    iget-boolean p1, p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    return-void
.end method

.method public createCopy()Lcom/ibm/icu/impl/number/FormatQuantity;
    .locals 3

    .line 310
    instance-of v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity2;

    move-object v1, p0

    check-cast v1, Lcom/ibm/icu/impl/number/FormatQuantity2;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantity2;-><init>(Lcom/ibm/icu/impl/number/FormatQuantity2;)V

    return-object v0

    .line 312
    :cond_0
    instance-of v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;

    if-eqz v0, :cond_1

    .line 313
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity3;

    move-object v1, p0

    check-cast v1, Lcom/ibm/icu/impl/number/FormatQuantity3;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantity3;-><init>(Lcom/ibm/icu/impl/number/FormatQuantity3;)V

    return-object v0

    .line 314
    :cond_1
    instance-of v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    if-eqz v0, :cond_2

    .line 315
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    move-object v1, p0

    check-cast v1, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(Lcom/ibm/icu/impl/number/FormatQuantity4;)V

    return-object v0

    .line 317
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to copy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDigit(I)B
    .locals 1

    .line 277
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result p1

    return p1
.end method

.method protected abstract getDigitPos(I)B
.end method

.method public getLowerDisplayMagnitude()I
    .locals 2

    .line 266
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    .line 267
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rReqPos:I

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rOptPos:I

    if-le v1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1
.end method

.method public getMagnitude()I
    .locals 2

    .line 186
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    if-eqz v0, :cond_0

    .line 189
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Magnitude is not well-defined for zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPluralOperand(Lcom/ibm/icu/text/PluralRules$Operand;)D
    .locals 2

    .line 219
    sget-object v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD$1;->$SwitchMap$com$ibm$icu$text$PluralRules$Operand:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/PluralRules$Operand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->toDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->fractionCountWithoutTrailingZeros()I

    move-result p1

    int-to-double v0, p1

    return-wide v0

    .line 227
    :cond_1
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->fractionCount()I

    move-result p1

    int-to-double v0, p1

    return-wide v0

    :cond_2
    const/4 p1, 0x0

    .line 225
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->toFractionLong(Z)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 223
    :cond_3
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->toFractionLong(Z)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 221
    :cond_4
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->toLong()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public getStandardPlural(Lcom/ibm/icu/text/PluralRules;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 0

    if-nez p1, :cond_0

    .line 205
    sget-object p1, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    return-object p1

    .line 208
    :cond_0
    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/PluralRules;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-static {p1}, Lcom/ibm/icu/impl/StandardPlural;->orOtherFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p1

    return-object p1
.end method

.method public getUpperDisplayMagnitude()I
    .locals 2

    .line 255
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    add-int/2addr v0, v1

    .line 256
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lReqPos:I

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lOptPos:I

    if-ge v1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public isInfinite()Z
    .locals 1

    .line 295
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNaN()Z
    .locals 1

    .line 300
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNegative()Z
    .locals 2

    .line 290
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isZero()Z
    .locals 1

    .line 305
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public multiplyBy(Ljava/math/BigDecimal;)V
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setToBigDecimal(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public populateUFieldPosition(Ljava/text/FieldPosition;)V
    .locals 3

    .line 243
    instance-of v0, p1, Lcom/ibm/icu/text/UFieldPosition;

    if-eqz v0, :cond_0

    .line 244
    check-cast p1, Lcom/ibm/icu/text/UFieldPosition;

    sget-object v0, Lcom/ibm/icu/text/PluralRules$Operand;->v:Lcom/ibm/icu/text/PluralRules$Operand;

    .line 245
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getPluralOperand(Lcom/ibm/icu/text/PluralRules$Operand;)D

    move-result-wide v0

    double-to-int v0, v0

    sget-object v1, Lcom/ibm/icu/text/PluralRules$Operand;->f:Lcom/ibm/icu/text/PluralRules$Operand;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getPluralOperand(Lcom/ibm/icu/text/PluralRules$Operand;)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/ibm/icu/text/UFieldPosition;->setFractionDigits(IJ)V

    :cond_0
    return-void
.end method

.method protected abstract readBigIntegerToBcd(Ljava/math/BigInteger;)V
.end method

.method protected abstract readIntToBcd(I)V
.end method

.method protected abstract readLongToBcd(J)V
.end method

.method public roundToIncrement(Ljava/math/BigDecimal;Ljava/math/MathContext;)V
    .locals 3

    .line 165
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    .line 167
    invoke-virtual {p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 168
    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 169
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result p2

    if-nez p2, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setBcdToZero()V

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setToBigDecimal(Ljava/math/BigDecimal;)V

    :goto_0
    return-void
.end method

.method public roundToInfinity()V
    .locals 1

    .line 785
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    if-eqz v0, :cond_0

    .line 786
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->convertToAccurateDouble()V

    :cond_0
    return-void
.end method

.method public roundToMagnitude(ILjava/math/MathContext;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 643
    iget v2, v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->safeSubtract(II)I

    move-result v2

    .line 646
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v3

    const v4, 0x7fffffff

    if-eq v1, v4, :cond_0

    if-lez v3, :cond_1

    .line 647
    iget v4, v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    sub-int/2addr v4, v2

    if-le v4, v3, :cond_1

    .line 649
    :cond_0
    iget v2, v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    sub-int/2addr v2, v3

    :cond_1
    if-gtz v2, :cond_2

    .line 652
    iget-boolean v3, v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    if-nez v3, :cond_2

    goto/16 :goto_d

    .line 654
    :cond_2
    iget v3, v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    if-nez v3, :cond_3

    goto/16 :goto_d

    :cond_3
    const/4 v3, 0x1

    .line 660
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->safeSubtract(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v4

    .line 661
    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v5

    .line 669
    iget-boolean v6, v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    const/4 v7, 0x5

    const/16 v8, 0x9

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x0

    if-nez v6, :cond_8

    if-ge v4, v7, :cond_4

    const/4 v10, 0x1

    goto/16 :goto_9

    :cond_4
    if-le v4, v7, :cond_5

    goto/16 :goto_9

    .line 675
    :cond_5
    invoke-static {v2, v9}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->safeSubtract(II)I

    move-result v4

    :goto_0
    if-ltz v4, :cond_7

    .line 676
    invoke-virtual {v0, v4}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v6

    if-eqz v6, :cond_6

    const/4 v9, 0x3

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_7
    :goto_1
    move v10, v9

    goto/16 :goto_9

    .line 683
    :cond_8
    invoke-static {v2, v9}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->safeSubtract(II)I

    move-result v6

    .line 684
    iget v12, v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    add-int/lit8 v12, v12, -0xe

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v13, -0x2

    const/4 v14, -0x1

    if-nez v4, :cond_b

    :goto_2
    if-lt v6, v12, :cond_a

    .line 688
    invoke-virtual {v0, v6}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_a
    const/4 v4, -0x1

    goto :goto_8

    :cond_b
    const/4 v15, 0x4

    if-ne v4, v15, :cond_d

    :goto_3
    if-lt v6, v12, :cond_10

    .line 695
    invoke-virtual {v0, v6}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v4

    if-eq v4, v8, :cond_c

    :goto_4
    const/4 v4, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_d
    if-ne v4, v7, :cond_11

    :goto_5
    if-lt v6, v12, :cond_10

    .line 702
    invoke-virtual {v0, v6}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v4

    if-eqz v4, :cond_f

    :cond_e
    :goto_6
    const/4 v4, 0x3

    goto :goto_8

    :cond_f
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_10
    const/4 v4, 0x2

    goto :goto_8

    :cond_11
    if-ne v4, v8, :cond_14

    :goto_7
    if-lt v6, v12, :cond_13

    .line 710
    invoke-virtual {v0, v6}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v4

    if-eq v4, v8, :cond_12

    goto :goto_6

    :cond_12
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    :cond_13
    const/4 v4, -0x2

    goto :goto_8

    :cond_14
    if-ge v4, v7, :cond_e

    goto :goto_4

    .line 722
    :goto_8
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/RoundingMode;->ordinal()I

    move-result v6

    invoke-static {v6}, Lcom/ibm/icu/impl/number/RoundingUtils;->roundsAtMidpoint(I)Z

    move-result v6

    .line 723
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->safeSubtract(II)I

    move-result v7

    iget v12, v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    add-int/lit8 v12, v12, -0xe

    if-lt v7, v12, :cond_1f

    if-eqz v6, :cond_15

    if-eq v4, v9, :cond_1f

    :cond_15
    if-nez v6, :cond_16

    if-gez v4, :cond_16

    goto :goto_e

    .line 734
    :cond_16
    iput-boolean v11, v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    const-wide/16 v6, 0x0

    .line 735
    iput-wide v6, v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDouble:D

    .line 736
    iput v11, v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDelta:I

    if-gtz v2, :cond_17

    return-void

    :cond_17
    if-ne v4, v14, :cond_18

    const/4 v4, 0x1

    :cond_18
    if-ne v4, v13, :cond_19

    goto :goto_9

    :cond_19
    move v10, v4

    .line 748
    :goto_9
    rem-int/lit8 v4, v5, 0x2

    if-nez v4, :cond_1a

    const/4 v4, 0x1

    goto :goto_a

    :cond_1a
    const/4 v4, 0x0

    .line 751
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isNegative()Z

    move-result v6

    .line 753
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    .line 749
    invoke-static {v4, v6, v10, v7, v0}, Lcom/ibm/icu/impl/number/RoundingUtils;->getRoundingDirection(ZZIILjava/lang/Object;)Z

    move-result v4

    .line 757
    iget v6, v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    if-lt v2, v6, :cond_1b

    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setBcdToZero()V

    .line 759
    iput v1, v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    goto :goto_b

    .line 761
    :cond_1b
    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->shiftRight(I)V

    :goto_b
    if-nez v4, :cond_1e

    if-ne v5, v8, :cond_1d

    const/4 v1, 0x0

    .line 770
    :goto_c
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v2

    if-ne v2, v8, :cond_1c

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 771
    :cond_1c
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->shiftRight(I)V

    .line 773
    :cond_1d
    invoke-virtual {v0, v11}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v1

    add-int/2addr v1, v3

    int-to-byte v1, v1

    .line 775
    invoke-virtual {v0, v11, v1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setDigitPos(IB)V

    .line 776
    iget v1, v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    .line 779
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->compact()V

    :goto_d
    return-void

    .line 728
    :cond_1f
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->convertToAccurateDouble()V

    .line 729
    invoke-virtual/range {p0 .. p2}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->roundToMagnitude(ILjava/math/MathContext;)V

    return-void
.end method

.method protected abstract setBcdToZero()V
.end method

.method protected abstract setDigitPos(IB)V
.end method

.method public setIntegerFractionLength(IIII)V
    .locals 0

    .line 146
    iput p2, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lOptPos:I

    .line 147
    iput p1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lReqPos:I

    neg-int p1, p3

    .line 148
    iput p1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rReqPos:I

    neg-int p1, p4

    .line 149
    iput p1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rOptPos:I

    return-void
.end method

.method public setToBigDecimal(Ljava/math/BigDecimal;)V
    .locals 2

    .line 514
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setBcdToZero()V

    const/4 v0, 0x0

    .line 515
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    .line 516
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 517
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    .line 518
    invoke-virtual {p1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p1

    .line 520
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToBigDecimal(Ljava/math/BigDecimal;)V

    .line 522
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->compact()V

    :cond_1
    return-void
.end method

.method public setToBigInteger(Ljava/math/BigInteger;)V
    .locals 2

    .line 366
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setBcdToZero()V

    const/4 v0, 0x0

    .line 367
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    .line 368
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 369
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    .line 370
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    .line 372
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToBigInteger(Ljava/math/BigInteger;)V

    .line 374
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->compact()V

    :cond_1
    return-void
.end method

.method public setToDouble(D)V
    .locals 3

    .line 394
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setBcdToZero()V

    const/4 v0, 0x0

    .line 395
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    const-wide/16 v0, 0x0

    .line 397
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-gez v2, :cond_0

    .line 398
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    neg-double p1, p1

    .line 401
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    iget p1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    goto :goto_0

    .line 403
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 404
    iget p1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    goto :goto_0

    :cond_2
    cmpl-double v2, p1, v0

    if-eqz v2, :cond_3

    .line 406
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToDoubleFast(D)V

    .line 407
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->compact()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setToInt(I)V
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setBcdToZero()V

    const/4 v0, 0x0

    .line 323
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    if-gez p1, :cond_0

    .line 325
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    neg-int p1, p1

    :cond_0
    if-eqz p1, :cond_1

    .line 329
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToInt(I)V

    .line 330
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->compact()V

    :cond_1
    return-void
.end method

.method public setToLong(J)V
    .locals 3

    .line 343
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setBcdToZero()V

    const/4 v0, 0x0

    .line 344
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 346
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    neg-long p1, p1

    :cond_0
    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 350
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToLong(J)V

    .line 351
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->compact()V

    :cond_1
    return-void
.end method

.method protected abstract shiftLeft(I)V
.end method

.method protected abstract shiftRight(I)V
.end method

.method public toBigDecimal()Ljava/math/BigDecimal;
    .locals 1

    .line 607
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    if-eqz v0, :cond_0

    .line 609
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->convertToAccurateDouble()V

    .line 611
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->bcdToBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public toDouble()D
    .locals 6

    .line 573
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->toDoubleFromOriginal()D

    move-result-wide v0

    return-wide v0

    .line 577
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 579
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 580
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    :cond_2
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    return-wide v0

    :cond_3
    const-wide/16 v0, 0x0

    .line 584
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    const/16 v3, 0x11

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v2, v3

    .line 585
    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-lt v3, v2, :cond_4

    const-wide/16 v4, 0xa

    mul-long v0, v0, v4

    .line 586
    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    long-to-double v0, v0

    .line 589
    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    add-int/2addr v3, v2

    const-wide v4, 0x4480f0cf064dd592L    # 1.0E22

    if-ltz v3, :cond_6

    :goto_2
    const/16 v2, 0x16

    if-lt v3, v2, :cond_5

    mul-double v0, v0, v4

    add-int/lit8 v3, v3, -0x16

    goto :goto_2

    .line 594
    :cond_5
    sget-object v2, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->DOUBLE_MULTIPLIERS:[D

    aget-wide v3, v2, v3

    mul-double v0, v0, v3

    goto :goto_4

    :cond_6
    :goto_3
    const/16 v2, -0x16

    if-gt v3, v2, :cond_7

    div-double/2addr v0, v4

    add-int/lit8 v3, v3, 0x16

    goto :goto_3

    .line 599
    :cond_7
    sget-object v2, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->DOUBLE_MULTIPLIERS:[D

    neg-int v3, v3

    aget-wide v3, v2, v3

    div-double/2addr v0, v3

    .line 601
    :goto_4
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_8

    neg-double v0, v0

    :cond_8
    return-wide v0
.end method

.method protected toDoubleFromOriginal()D
    .locals 6

    .line 615
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDouble:D

    .line 616
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDelta:I

    const-wide v3, 0x4480f0cf064dd592L    # 1.0E22

    if-ltz v2, :cond_1

    :goto_0
    const/16 v5, 0x16

    if-lt v2, v5, :cond_0

    mul-double v0, v0, v3

    add-int/lit8 v2, v2, -0x16

    goto :goto_0

    .line 620
    :cond_0
    sget-object v3, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->DOUBLE_MULTIPLIERS:[D

    aget-wide v2, v3, v2

    mul-double v0, v0, v2

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v5, -0x16

    if-gt v2, v5, :cond_2

    div-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x16

    goto :goto_1

    .line 624
    :cond_2
    sget-object v3, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->DOUBLE_MULTIPLIERS:[D

    neg-int v2, v2

    aget-wide v2, v3, v2

    div-double/2addr v0, v2

    .line 626
    :goto_2
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double v0, v0, v2

    :cond_3
    return-wide v0
.end method

.method protected toFractionLong(Z)J
    .locals 5

    const/4 v0, -0x1

    const-wide/16 v1, 0x0

    .line 558
    :goto_0
    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    if-ge v0, v3, :cond_0

    if-eqz p1, :cond_1

    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rReqPos:I

    if-lt v0, v3, :cond_1

    :cond_0
    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rOptPos:I

    if-lt v0, v3, :cond_1

    const-wide/16 v3, 0xa

    mul-long v1, v1, v3

    .line 560
    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method protected toLong()J
    .locals 5

    .line 542
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    const-wide/16 v3, 0xa

    mul-long v1, v1, v3

    .line 543
    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method
