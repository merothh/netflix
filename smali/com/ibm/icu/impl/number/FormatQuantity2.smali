.class public final Lcom/ibm/icu/impl/number/FormatQuantity2;
.super Lcom/ibm/icu/impl/number/FormatQuantityBCD;
.source ""


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bcd:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/number/FormatQuantity2;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity2;->copyFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    return-void
.end method


# virtual methods
.method protected bcdToBigDecimal()Ljava/math/BigDecimal;
    .locals 5

    .line 132
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->precision:I

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    const-wide/16 v3, 0xa

    mul-long v1, v1, v3

    .line 133
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity2;->getDigitPos(I)B

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 136
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantity2;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected compact()V
    .locals 5

    .line 144
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    .line 146
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->precision:I

    return-void

    .line 151
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 152
    iget-wide v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    mul-int/lit8 v3, v0, 0x4

    ushr-long/2addr v1, v3

    iput-wide v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    .line 153
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    .line 156
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    rsub-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->precision:I

    return-void
.end method

.method protected copyBcdFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V
    .locals 2

    .line 161
    check-cast p1, Lcom/ibm/icu/impl/number/FormatQuantity2;

    .line 162
    iget-wide v0, p1, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    return-void
.end method

.method protected getDigitPos(I)B
    .locals 4

    if-ltz p1, :cond_1

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    mul-int/lit8 p1, p1, 0x4

    ushr-long/2addr v0, p1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int p1, v0

    int-to-byte p1, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected readBigIntegerToBcd(Ljava/math/BigInteger;)V
    .locals 7

    const-wide/16 v0, 0x0

    const/16 v2, 0x10

    .line 119
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 120
    sget-object v3, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p1

    ushr-long/2addr v0, v4

    const/4 v3, 0x1

    .line 121
    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    const/16 v6, 0x3c

    shl-long/2addr v3, v6

    add-long/2addr v0, v3

    .line 122
    aget-object p1, p1, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    mul-int/lit8 p1, p1, 0x4

    ushr-long/2addr v0, p1

    .line 125
    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    if-gez v2, :cond_2

    neg-int v5, v2

    .line 126
    :cond_2
    iput v5, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    return-void
.end method

.method protected readIntToBcd(I)V
    .locals 8

    const-wide/16 v0, 0x0

    const/16 v2, 0x10

    const/16 v3, 0x10

    :goto_0
    if-eqz p1, :cond_0

    const/4 v4, 0x4

    ushr-long/2addr v0, v4

    int-to-long v4, p1

    const-wide/16 v6, 0xa

    .line 92
    rem-long/2addr v4, v6

    const/16 v6, 0x3c

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 91
    div-int/lit8 p1, p1, 0xa

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, v3, 0x4

    ushr-long/2addr v0, p1

    .line 95
    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    const/4 p1, 0x0

    .line 96
    iput p1, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    sub-int/2addr v2, v3

    .line 97
    iput v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->precision:I

    return-void
.end method

.method protected readLongToBcd(J)V
    .locals 11

    const/16 v0, 0x10

    const-wide/16 v1, 0x0

    move-wide v4, v1

    const/16 v3, 0x10

    :goto_0
    const/4 v6, 0x4

    cmp-long v7, p1, v1

    if-eqz v7, :cond_0

    ushr-long/2addr v4, v6

    const-wide/16 v6, 0xa

    .line 106
    rem-long v8, p1, v6

    const/16 v10, 0x3c

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 105
    div-long/2addr p1, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    if-lez v3, :cond_1

    move p2, v3

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    mul-int/lit8 p2, p2, 0x4

    ushr-long v1, v4, p2

    .line 109
    iput-wide v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    if-gez v3, :cond_2

    neg-int p1, v3

    .line 110
    :cond_2
    iput p1, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    sub-int/2addr v0, v3

    .line 111
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->precision:I

    return-void
.end method

.method protected setBcdToZero()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 78
    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    .line 80
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->precision:I

    .line 81
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->isApproximate:Z

    const-wide/16 v1, 0x0

    .line 82
    iput-wide v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->origDouble:D

    .line 83
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->origDelta:I

    return-void
.end method

.method protected setDigitPos(IB)V
    .locals 4

    mul-int/lit8 p1, p1, 0x4

    .line 58
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    const-wide/16 v2, 0xf

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    int-to-long v2, p2

    shl-long p1, v2, p1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    return-void
.end method

.method protected shiftLeft(I)V
    .locals 3

    .line 64
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    mul-int/lit8 v2, p1, 0x4

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    .line 65
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    .line 66
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->precision:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->precision:I

    return-void
.end method

.method protected shiftRight(I)V
    .locals 3

    .line 71
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    mul-int/lit8 v2, p1, 0x4

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    .line 72
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    .line 73
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->precision:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->precision:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 167
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->lOptPos:I

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    const-string v1, "max"

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->lOptPos:I

    .line 169
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->lReqPos:I

    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->rReqPos:I

    .line 171
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->rOptPos:I

    const/16 v3, -0x3e8

    if-ge v2, v3, :cond_1

    const-string v2, "min"

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->rOptPos:I

    .line 172
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    .line 173
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    .line 174
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "<FormatQuantity2 %s:%d:%d:%s %016XE%d>"

    .line 167
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
