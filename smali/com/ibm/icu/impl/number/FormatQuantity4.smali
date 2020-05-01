.class public final Lcom/ibm/icu/impl/number/FormatQuantity4;
.super Lcom/ibm/icu/impl/number/FormatQuantityBCD;
.source ""


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bcdBytes:[B

.field private bcdLong:J

.field private usingBytes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 29
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setBcdToZero()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToDouble(D)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 37
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToInt(I)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToLong(J)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/number/FormatQuantity4;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 53
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->copyFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 57
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToLong(J)V

    goto :goto_0

    .line 59
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToInt(I)V

    goto :goto_0

    .line 61
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToDouble(D)V

    goto :goto_0

    .line 63
    :cond_2
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_3

    .line 64
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToBigInteger(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 65
    :cond_3
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_4

    .line 66
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToBigDecimal(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 67
    :cond_4
    instance-of v0, p1, Lcom/ibm/icu/math/BigDecimal;

    if-eqz v0, :cond_5

    .line 68
    check-cast p1, Lcom/ibm/icu/math/BigDecimal;

    invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToBigDecimal(Ljava/math/BigDecimal;)V

    :goto_0
    return-void

    .line 70
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number is of an unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 49
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToBigDecimal(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 45
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToBigInteger(Ljava/math/BigInteger;)V

    return-void
.end method

.method private ensureCapacity()V
    .locals 1

    const/16 v0, 0x28

    .line 283
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->ensureCapacity(I)V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    if-nez v0, :cond_1

    .line 289
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    goto :goto_0

    .line 290
    :cond_1
    array-length v1, v0

    if-ge v1, p1, :cond_2

    mul-int/lit8 p1, p1, 0x2

    .line 291
    new-array p1, p1, [B

    .line 292
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    iput-object p1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    :cond_2
    :goto_0
    return-void
.end method

.method private switchStorage()V
    .locals 8

    .line 299
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-wide/16 v4, 0x0

    .line 301
    iput-wide v4, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 302
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_0

    .line 303
    iget-wide v4, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    shl-long/2addr v4, v1

    iput-wide v4, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 304
    iget-wide v4, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    aget-byte v6, v2, v0

    int-to-long v6, v6

    or-long/2addr v4, v6

    iput-wide v4, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 305
    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 307
    :cond_0
    iput-boolean v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    goto :goto_2

    .line 310
    :cond_1
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->ensureCapacity()V

    .line 311
    :goto_1
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    if-ge v3, v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    iget-wide v4, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    const-wide/16 v6, 0xf

    and-long/2addr v6, v4

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v0, v3

    ushr-long/2addr v4, v1

    .line 313
    iput-wide v4, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 315
    :cond_2
    iput-boolean v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    :goto_2
    return-void
.end method


# virtual methods
.method protected bcdToBigDecimal()Ljava/math/BigDecimal;
    .locals 5

    .line 215
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    if-eqz v0, :cond_3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    :cond_0
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 221
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->getDigitPos(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 223
    :cond_1
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    if-eqz v1, :cond_2

    const/16 v1, 0x45

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    :cond_2
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_3
    const-wide/16 v0, 0x0

    .line 230
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_4

    const-wide/16 v3, 0xa

    mul-long v0, v0, v3

    .line 231
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/number/FormatQuantity4;->getDigitPos(I)B

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 233
    :cond_4
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 234
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v0

    .line 235
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method protected compact()V
    .locals 6

    .line 242
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 244
    :goto_0
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    if-ne v0, v2, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setBcdToZero()V

    return-void

    .line 251
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->shiftRight(I)V

    .line 255
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 256
    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 257
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    .line 260
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    if-gt v0, v1, :cond_5

    .line 261
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->switchStorage()V

    goto :goto_2

    .line 265
    :cond_3
    iget-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 267
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setBcdToZero()V

    return-void

    .line 272
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 273
    iget-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    mul-int/lit8 v4, v0, 0x4

    ushr-long/2addr v2, v4

    iput-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 274
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    .line 277
    iget-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    :cond_5
    :goto_2
    return-void
.end method

.method protected copyBcdFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V
    .locals 3

    .line 321
    check-cast p1, Lcom/ibm/icu/impl/number/FormatQuantity4;

    .line 322
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 323
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 324
    iget v0, p1, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->ensureCapacity(I)V

    .line 325
    iget-object v0, p1, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    iget p1, p1, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    invoke-static {v0, v1, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 327
    :cond_0
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 328
    iget-wide v0, p1, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    :goto_0
    return-void
.end method

.method protected getDigitPos(I)B
    .locals 4

    .line 77
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    .line 78
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    aget-byte p1, v0, p1

    return p1

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-ltz p1, :cond_4

    const/16 v0, 0x10

    if-lt p1, v0, :cond_3

    goto :goto_1

    .line 82
    :cond_3
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    mul-int/lit8 p1, p1, 0x4

    ushr-long/2addr v0, p1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int p1, v0

    int-to-byte p1, p1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method protected readBigIntegerToBcd(Ljava/math/BigInteger;)V
    .locals 5

    .line 200
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->ensureCapacity()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 202
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 203
    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v2, v1, 0x1

    .line 204
    invoke-direct {p0, v2}, Lcom/ibm/icu/impl/number/FormatQuantity4;->ensureCapacity(I)V

    .line 205
    iget-object v4, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->byteValue()B

    move-result v3

    aput-byte v3, v4, v1

    .line 206
    aget-object p1, p1, v0

    move v1, v2

    goto :goto_0

    .line 208
    :cond_0
    iput-boolean v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 209
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    .line 210
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

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

    .line 163
    rem-long/2addr v4, v6

    const/16 v6, 0x3c

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 162
    div-int/lit8 p1, p1, 0xa

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 165
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    mul-int/lit8 v4, v3, 0x4

    ushr-long/2addr v0, v4

    .line 166
    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 167
    iput p1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    sub-int/2addr v2, v3

    .line 168
    iput v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    return-void
.end method

.method protected readLongToBcd(J)V
    .locals 12

    const-wide v0, 0x2386f26fc10000L

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    const/4 v6, 0x0

    cmp-long v7, p1, v0

    if-ltz v7, :cond_1

    .line 175
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->ensureCapacity()V

    const/4 v0, 0x0

    :goto_0
    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    rem-long v7, p1, v4

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v1, v0

    .line 177
    div-long/2addr p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 180
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 181
    iput v6, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    .line 182
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    goto :goto_2

    :cond_1
    const/16 v0, 0x10

    move-wide v7, v2

    const/16 v1, 0x10

    :goto_1
    cmp-long v9, p1, v2

    if-eqz v9, :cond_2

    const/4 v9, 0x4

    ushr-long/2addr v7, v9

    .line 187
    rem-long v9, p1, v4

    const/16 v11, 0x3c

    shl-long/2addr v9, v11

    add-long/2addr v7, v9

    .line 186
    div-long/2addr p1, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 190
    :cond_2
    iput-boolean v6, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    mul-int/lit8 p1, v1, 0x4

    ushr-long p1, v7, p1

    .line 191
    iput-wide p1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 192
    iput v6, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    sub-int/2addr v0, v1

    .line 193
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    :goto_2
    return-void
.end method

.method protected setBcdToZero()V
    .locals 4

    .line 142
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 143
    :goto_0
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    if-ge v0, v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    const-wide/16 v2, 0x0

    .line 148
    iput-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 149
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    .line 150
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    .line 151
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->isApproximate:Z

    const-wide/16 v2, 0x0

    .line 152
    iput-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->origDouble:D

    .line 153
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->origDelta:I

    return-void
.end method

.method protected setDigitPos(IB)V
    .locals 4

    .line 89
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 90
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->ensureCapacity(I)V

    .line 91
    iget-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    aput-byte p2, v0, p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    if-lt p1, v0, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->switchStorage()V

    add-int/lit8 v0, p1, 0x1

    .line 94
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->ensureCapacity(I)V

    .line 95
    iget-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    aput-byte p2, v0, p1

    goto :goto_0

    :cond_1
    mul-int/lit8 p1, p1, 0x4

    .line 98
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    const-wide/16 v2, 0xf

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    int-to-long v2, p2

    shl-long p1, v2, p1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    :goto_0
    return-void
.end method

.method protected shiftLeft(I)V
    .locals 3

    .line 104
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    add-int/2addr v0, p1

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->switchStorage()V

    .line 107
    :cond_0
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    if-eqz v0, :cond_2

    .line 108
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->ensureCapacity(I)V

    .line 109
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, p1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    sub-int v2, v0, p1

    aget-byte v2, v1, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz v0, :cond_3

    .line 114
    iget-object v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 117
    :cond_2
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    mul-int/lit8 v2, p1, 0x4

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 119
    :cond_3
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    .line 120
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    return-void
.end method

.method protected shiftRight(I)V
    .locals 4

    .line 125
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 127
    :goto_0
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    sub-int/2addr v2, p1

    if-ge v1, v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    add-int v3, v1, p1

    aget-byte v3, v2, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_0
    :goto_1
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    if-ge v1, v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 134
    :cond_1
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    mul-int/lit8 v2, p1, 0x4

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 136
    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    .line 137
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 394
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 395
    iget-object v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    aget-byte v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 398
    :cond_0
    iget-wide v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 400
    iget v4, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->lOptPos:I

    const/16 v5, 0x3e8

    if-le v4, v5, :cond_2

    const-string v4, "max"

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->lOptPos:I

    .line 402
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, v1, v3

    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->lReqPos:I

    .line 403
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->rReqPos:I

    .line 404
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->rOptPos:I

    const/16 v4, -0x3e8

    if-ge v3, v4, :cond_3

    const-string v3, "min"

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->rOptPos:I

    .line 405
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    if-eqz v3, :cond_4

    const-string v3, "bytes"

    goto :goto_3

    :cond_4
    const-string v3, "long"

    :goto_3
    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const/4 v0, 0x6

    const-string v2, "E"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    .line 409
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "<FormatQuantity4 %s:%d:%d:%s %s %s%s%d>"

    .line 400
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
