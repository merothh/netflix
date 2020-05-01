.class public final Lcom/ibm/icu/impl/number/FormatQuantity3;
.super Lcom/ibm/icu/impl/number/FormatQuantityBCD;
.source ""


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LONG_MIN_VALUE:[B


# instance fields
.field private bcd:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [B

    .line 111
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/impl/number/FormatQuantity3;->LONG_MIN_VALUE:[B

    return-void

    :array_0
    .array-data 1
        0x8t
        0x0t
        0x8t
        0x5t
        0x7t
        0x7t
        0x4t
        0x5t
        0x8t
        0x6t
        0x3t
        0x0t
        0x2t
        0x7t
        0x3t
        0x3t
        0x2t
        0x2t
        0x9t
    .end array-data
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/number/FormatQuantity3;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;-><init>()V

    const/16 v0, 0x64

    new-array v0, v0, [B

    .line 17
    iput-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    .line 45
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity3;->copyFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    array-length v1, v0

    if-lt v1, p1, :cond_0

    return-void

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    .line 198
    new-array p1, p1, [B

    .line 199
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iput-object p1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    return-void
.end method

.method private toDumbString()Ljava/lang/String;
    .locals 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantity3;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    if-nez v1, :cond_1

    const/16 v1, 0x30

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :cond_1
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 160
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/number/FormatQuantity3;->getDigitPos(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 162
    :cond_2
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    if-eqz v1, :cond_3

    const/16 v1, 0x45

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bcdToBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    .line 149
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantity3;->toDumbString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected compact()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 173
    :goto_0
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    aget-byte v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 180
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    .line 181
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    return-void

    .line 187
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    aget-byte v1, v1, v0

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 188
    :cond_3
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity3;->shiftRight(I)V

    .line 191
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    sub-int/2addr v0, v3

    :goto_3
    if-ltz v0, :cond_4

    .line 192
    iget-object v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    aget-byte v1, v1, v0

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_4
    add-int/2addr v0, v3

    .line 193
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    return-void
.end method

.method protected copyBcdFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V
    .locals 3

    .line 205
    check-cast p1, Lcom/ibm/icu/impl/number/FormatQuantity3;

    .line 206
    iget-object p1, p1, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    iget-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected getDigitPos(I)B
    .locals 1

    if-ltz p1, :cond_1

    .line 50
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    aget-byte p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected readBigIntegerToBcd(Ljava/math/BigInteger;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 136
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v2, v1, 0x1

    .line 138
    invoke-direct {p0, v2}, Lcom/ibm/icu/impl/number/FormatQuantity3;->ensureCapacity(I)V

    .line 139
    iget-object v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->byteValue()B

    move-result v4

    aput-byte v4, v3, v1

    .line 140
    aget-object p1, p1, v0

    move v1, v2

    goto :goto_0

    .line 142
    :cond_0
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    .line 143
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    return-void
.end method

.method protected readIntToBcd(I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    int-to-long v2, p1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 105
    iget-object v4, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    rem-int/lit8 p1, p1, 0xa

    int-to-byte p1, p1

    aput-byte p1, v4, v1

    const-wide/16 v4, 0xa

    .line 104
    div-long/2addr v2, v4

    long-to-int p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_0
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    .line 108
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    return-void
.end method

.method protected readLongToBcd(J)V
    .locals 7

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    .line 119
    sget-object p1, Lcom/ibm/icu/impl/number/FormatQuantity3;->LONG_MIN_VALUE:[B

    iget-object p2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    array-length v0, p1

    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iput v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    .line 121
    sget-object p1, Lcom/ibm/icu/impl/number/FormatQuantity3;->LONG_MIN_VALUE:[B

    array-length p1, p1

    iput p1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    const-wide/16 v3, 0xa

    rem-long v5, p1, v3

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v1, v0

    .line 125
    div-long/2addr p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    iput v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    .line 129
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    return-void
.end method

.method protected setBcdToZero()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 90
    :goto_0
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    if-ge v1, v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    .line 94
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    .line 95
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->isApproximate:Z

    const-wide/16 v1, 0x0

    .line 96
    iput-wide v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->origDouble:D

    .line 97
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->origDelta:I

    return-void
.end method

.method protected setDigitPos(IB)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 57
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity3;->ensureCapacity(I)V

    .line 58
    iget-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    aput-byte p2, v0, p1

    return-void
.end method

.method protected shiftLeft(I)V
    .locals 3

    .line 63
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity3;->ensureCapacity(I)V

    .line 64
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, p1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    sub-int v2, v0, p1

    aget-byte v2, v1, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ltz v0, :cond_1

    .line 69
    iget-object v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 71
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    .line 72
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    return-void
.end method

.method protected shiftRight(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 78
    :goto_0
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    sub-int/2addr v2, p1

    if-ge v1, v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    add-int v3, v1, p1

    aget-byte v3, v2, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    :goto_1
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    if-ge v1, v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 84
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    .line 85
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1e

    :goto_0
    if-ltz v1, :cond_0

    .line 213
    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    aget-byte v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 215
    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->lOptPos:I

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_1

    const-string v3, "max"

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->lOptPos:I

    .line 217
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->lReqPos:I

    .line 218
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->rReqPos:I

    .line 219
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->rOptPos:I

    const/16 v4, -0x3e8

    if-ge v3, v4, :cond_2

    const-string v3, "min"

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->rOptPos:I

    .line 220
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const/4 v0, 0x5

    const-string v2, "E"

    aput-object v2, v1, v0

    const/4 v0, 0x6

    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    .line 223
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "<FormatQuantity3 %s:%d:%d:%s %s%s%d>"

    .line 215
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
