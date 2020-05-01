.class public final Lcom/ibm/icu/impl/coll/CollationSettings;
.super Lcom/ibm/icu/impl/coll/SharedObject;
.source ""


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_INT_ARRAY:[I


# instance fields
.field public fastLatinOptions:I

.field public fastLatinPrimaries:[C

.field minHighNoReorder:J

.field public options:I

.field public reorderCodes:[I

.field reorderRanges:[J

.field public reorderTable:[B

.field public variableTop:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 482
    sput-object v0, Lcom/ibm/icu/impl/coll/CollationSettings;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/SharedObject;-><init>()V

    const/16 v0, 0x2010

    .line 441
    iput v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    .line 475
    sget-object v0, Lcom/ibm/icu/impl/coll/CollationSettings;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderCodes:[I

    const/4 v0, -0x1

    .line 485
    iput v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    const/16 v0, 0x180

    new-array v0, v0, [C

    .line 488
    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    return-void
.end method

.method static getStrength(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0xc

    return p0
.end method

.method static getTertiaryMask(I)I
    .locals 0

    .line 418
    invoke-static {p0}, Lcom/ibm/icu/impl/coll/CollationSettings;->isTertiaryWithCaseBits(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0xff3f

    goto :goto_0

    :cond_0
    const/16 p0, 0x3f3f

    :goto_0
    return p0
.end method

.method static isTertiaryWithCaseBits(I)Z
    .locals 1

    and-int/lit16 p0, p0, 0x600

    const/16 v0, 0x200

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reorderEx(J)J
    .locals 6

    .line 296
    iget-wide v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    return-wide p1

    :cond_0
    const-wide/32 v0, 0xffff

    or-long/2addr v0, p1

    const/4 v2, 0x0

    .line 302
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderRanges:[J

    aget-wide v4, v3, v2

    cmp-long v3, v0, v4

    if-ltz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    long-to-int v0, v4

    int-to-short v0, v0

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    add-long/2addr p1, v0

    return-wide p1
.end method

.method private static reorderTableHasSplitBytes([B)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_1

    .line 278
    aget-byte v2, p0, v1

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private setReorderArrays([I[III[B)V
    .locals 0

    if-nez p1, :cond_0

    .line 242
    sget-object p1, Lcom/ibm/icu/impl/coll/CollationSettings;->EMPTY_INT_ARRAY:[I

    .line 245
    :cond_0
    iput-object p5, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderTable:[B

    .line 246
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderCodes:[I

    .line 247
    invoke-direct {p0, p2, p3, p4}, Lcom/ibm/icu/impl/coll/CollationSettings;->setReorderRanges([III)V

    return-void
.end method

.method private setReorderRanges([III)V
    .locals 8

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 252
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderRanges:[J

    goto :goto_1

    .line 254
    :cond_0
    new-array v0, p3, [J

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderRanges:[J

    const/4 v0, 0x0

    .line 257
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderRanges:[J

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, p2, 0x1

    aget p2, p1, p2

    int-to-long v4, p2

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    aput-wide v4, v1, v0

    if-lt v2, p3, :cond_1

    :goto_1
    return-void

    :cond_1
    move v0, v2

    move p2, v3

    goto :goto_0
.end method

.method static sortsTertiaryUpperCaseFirst(I)Z
    .locals 1

    and-int/lit16 p0, p0, 0x700

    const/16 v0, 0x300

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method aliasReordering(Lcom/ibm/icu/impl/coll/CollationData;[II[B)V
    .locals 6

    .line 137
    array-length v0, p2

    if-ne p3, v0, :cond_0

    move-object v0, p2

    goto :goto_0

    .line 141
    :cond_0
    new-array v0, p3, [I

    const/4 v1, 0x0

    .line 142
    invoke-static {p2, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    :goto_0
    array-length v1, p2

    sub-int v2, v1, p3

    if-eqz p4, :cond_4

    if-nez v2, :cond_1

    .line 149
    invoke-static {p4}, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderTableHasSplitBytes([B)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    aget v2, p2, p3

    const v3, 0xffff

    and-int/2addr v2, v3

    if-nez v2, :cond_4

    add-int/lit8 v2, v1, -0x1

    aget v2, p2, v2

    and-int/2addr v2, v3

    if-eqz v2, :cond_4

    .line 154
    :goto_1
    iput-object p4, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderTable:[B

    .line 155
    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderCodes:[I

    :goto_2
    if-ge p3, v1, :cond_2

    .line 159
    aget p1, p2, p3

    const/high16 p4, 0xff0000

    and-int/2addr p1, p4

    if-nez p1, :cond_2

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    if-ne p3, v1, :cond_3

    const-wide/16 p1, 0x0

    .line 166
    iput-wide p1, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    const/4 p1, 0x0

    .line 167
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderRanges:[J

    goto :goto_3

    :cond_3
    add-int/lit8 p1, v1, -0x1

    .line 170
    aget p1, p2, p1

    int-to-long v2, p1

    const-wide v4, 0xffff0000L

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    sub-int/2addr v1, p3

    .line 171
    invoke-direct {p0, p2, p3, v1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setReorderRanges([III)V

    :goto_3
    return-void

    .line 177
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->setReordering(Lcom/ibm/icu/impl/coll/CollationData;[I)V

    return-void
.end method

.method public clone()Lcom/ibm/icu/impl/coll/CollationSettings;
    .locals 2

    .line 97
    invoke-super {p0}, Lcom/ibm/icu/impl/coll/SharedObject;->clone()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    .line 100
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/ibm/icu/impl/coll/SharedObject;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationSettings;->clone()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationSettings;->clone()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    return-object v0
.end method

.method public copyReorderingFrom(Lcom/ibm/icu/impl/coll/CollationSettings;)V
    .locals 2

    .line 263
    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationSettings;->resetReordering()V

    return-void

    .line 267
    :cond_0
    iget-wide v0, p1, Lcom/ibm/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    iput-wide v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    .line 268
    iget-object v0, p1, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderTable:[B

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderTable:[B

    .line 269
    iget-object v0, p1, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderRanges:[J

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderRanges:[J

    .line 270
    iget-object p1, p1, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderCodes:[I

    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderCodes:[I

    return-void
.end method

.method public dontCheckFCD()Z
    .locals 2

    .line 429
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 108
    :cond_1
    check-cast p1, Lcom/ibm/icu/impl/coll/CollationSettings;

    .line 109
    iget v1, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    iget v2, p1, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    and-int/lit8 v1, v1, 0xc

    if-eqz v1, :cond_3

    .line 110
    iget-wide v1, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->variableTop:J

    iget-wide v3, p1, Lcom/ibm/icu/impl/coll/CollationSettings;->variableTop:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    return v0

    .line 111
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderCodes:[I

    iget-object p1, p1, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderCodes:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public getAlternateHandling()Z
    .locals 1

    .line 386
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCaseFirst()I
    .locals 1

    .line 368
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 v0, v0, 0x300

    return v0
.end method

.method public getFlag(I)Z
    .locals 1

    .line 353
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getMaxVariable()I
    .locals 1

    .line 407
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, 0x70

    shr-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getStrength()I
    .locals 1

    .line 336
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    invoke-static {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v0

    return v0
.end method

.method public hasReordering()Z
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderTable:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 117
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    shl-int/lit8 v1, v0, 0x8

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    int-to-long v0, v1

    .line 118
    iget-wide v2, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->variableTop:J

    xor-long/2addr v0, v2

    long-to-int v1, v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderCodes:[I

    array-length v0, v0

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderCodes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 121
    aget v2, v2, v1

    shl-int/2addr v2, v1

    xor-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isNumeric()Z
    .locals 1

    .line 437
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reorder(J)J
    .locals 5

    .line 286
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderTable:[B

    long-to-int v1, p1

    const/16 v2, 0x18

    ushr-int/2addr v1, v2

    aget-byte v0, v0, v1

    if-nez v0, :cond_1

    const-wide/16 v3, 0x1

    cmp-long v1, p1, v3

    if-gtz v1, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderEx(J)J

    move-result-wide p1

    return-wide p1

    :cond_1
    :goto_0
    int-to-long v0, v0

    const-wide/16 v3, 0xff

    and-long/2addr v0, v3

    shl-long/2addr v0, v2

    const-wide/32 v2, 0xffffff

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public resetReordering()V
    .locals 3

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderTable:[B

    const-wide/16 v1, 0x0

    .line 130
    iput-wide v1, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    .line 131
    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderRanges:[J

    .line 132
    sget-object v0, Lcom/ibm/icu/impl/coll/CollationSettings;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderCodes:[I

    return-void
.end method

.method public setAlternateHandlingShifted(Z)V
    .locals 1

    .line 372
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, -0xd

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x4

    .line 374
    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    goto :goto_0

    .line 376
    :cond_0
    iput v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    :goto_0
    return-void
.end method

.method public setCaseFirst(I)V
    .locals 1

    .line 358
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 v0, v0, -0x301

    or-int/2addr p1, v0

    .line 359
    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    return-void
.end method

.method public setFlag(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 342
    iget p2, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    goto :goto_0

    .line 344
    :cond_0
    iget p2, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    :goto_0
    return-void
.end method

.method public setMaxVariable(II)V
    .locals 2

    .line 390
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, -0x71

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal maxVariable value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p1, v0

    .line 396
    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    goto :goto_1

    :cond_2
    and-int/lit8 p1, p2, 0x70

    or-int/2addr p1, v0

    .line 399
    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    :goto_1
    return-void
.end method

.method public setReordering(Lcom/ibm/icu/impl/coll/CollationData;[I)V
    .locals 9

    .line 181
    array-length v0, p2

    if-eqz v0, :cond_8

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget v0, p2, v1

    const/16 v2, 0x67

    if-ne v0, v2, :cond_0

    goto/16 :goto_4

    .line 185
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/coll/UVector32;

    invoke-direct {v0}, Lcom/ibm/icu/impl/coll/UVector32;-><init>()V

    .line 186
    invoke-virtual {p1, p2, v0}, Lcom/ibm/icu/impl/coll/CollationData;->makeReorderRanges([ILcom/ibm/icu/impl/coll/UVector32;)V

    .line 187
    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/UVector32;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationSettings;->resetReordering()V

    return-void

    .line 192
    :cond_1
    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/UVector32;->getBuffer()[I

    move-result-object v4

    add-int/lit8 v0, p1, -0x1

    .line 199
    aget v0, v4, v0

    int-to-long v2, v0

    const-wide v5, 0xffff0000L

    and-long/2addr v2, v5

    iput-wide v2, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    const/16 v0, 0x100

    new-array v7, v0, [B

    const/4 v0, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    if-ge v0, p1, :cond_5

    .line 207
    aget v5, v4, v0

    ushr-int/lit8 v6, v5, 0x18

    :goto_1
    if-ge v2, v6, :cond_2

    add-int v8, v2, v5

    int-to-byte v8, v8

    .line 210
    aput-byte v8, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/high16 v8, 0xff0000

    and-int/2addr v5, v8

    if-eqz v5, :cond_4

    .line 215
    aput-byte v1, v7, v6

    add-int/lit8 v6, v6, 0x1

    if-gez v3, :cond_3

    move v3, v0

    :cond_3
    move v2, v6

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    const/16 v0, 0xff

    if-gt v2, v0, :cond_6

    int-to-byte v0, v2

    .line 223
    aput-byte v0, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    if-gez v3, :cond_7

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_3

    :cond_7
    sub-int v1, p1, v3

    move v6, v1

    move v5, v3

    :goto_3
    move-object v2, p0

    move-object v3, p2

    .line 235
    invoke-direct/range {v2 .. v7}, Lcom/ibm/icu/impl/coll/CollationSettings;->setReorderArrays([I[III[B)V

    return-void

    .line 182
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationSettings;->resetReordering()V

    return-void
.end method

.method public setStrength(I)V
    .locals 3

    .line 312
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    const v1, -0xf001

    and-int/2addr v0, v1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/16 v1, 0xf

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal strength value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p1, v0

    .line 319
    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    return-void
.end method
