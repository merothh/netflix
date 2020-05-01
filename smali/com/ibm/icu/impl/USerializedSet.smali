.class public final Lcom/ibm/icu/impl/USerializedSet;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private array:[C

.field private arrayOffset:I

.field private bmpLength:I

.field private length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [C

    .line 184
    iput-object v0, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    return-void
.end method


# virtual methods
.method public final countRanges()I
    .locals 2

    .line 181
    iget v0, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    iget v1, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final getRange(I[I)Z
    .locals 9

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    if-nez v1, :cond_1

    const/16 v1, 0x8

    new-array v1, v1, [C

    .line 107
    iput-object v1, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    :cond_1
    if-eqz p2, :cond_7

    .line 109
    array-length v1, p2

    const/4 v2, 0x2

    if-lt v1, v2, :cond_7

    mul-int/lit8 p1, p1, 0x2

    .line 113
    iget v1, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    const v3, 0x10ffff

    const/4 v4, 0x1

    if-ge p1, v1, :cond_4

    .line 114
    iget-object v2, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    add-int/lit8 v5, p1, 0x1

    aget-char p1, v2, p1

    aput p1, p2, v0

    if-ge v5, v1, :cond_2

    .line 116
    aget-char p1, v2, v5

    sub-int/2addr p1, v4

    aput p1, p2, v4

    goto :goto_0

    .line 117
    :cond_2
    iget p1, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    if-ge v5, p1, :cond_3

    .line 118
    aget-char p1, v2, v5

    shl-int/lit8 p1, p1, 0x10

    add-int/2addr v5, v4

    aget-char v0, v2, v5

    or-int/2addr p1, v0

    sub-int/2addr p1, v4

    aput p1, p2, v4

    goto :goto_0

    .line 120
    :cond_3
    aput v3, p2, v4

    :goto_0
    return v4

    :cond_4
    sub-int/2addr p1, v1

    mul-int/lit8 p1, p1, 0x2

    .line 126
    iget v5, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    sub-int/2addr v5, v1

    if-ge p1, v5, :cond_6

    .line 128
    iget v6, p0, Lcom/ibm/icu/impl/USerializedSet;->arrayOffset:I

    add-int/2addr v6, v1

    .line 129
    iget-object v1, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    add-int v7, v6, p1

    aget-char v8, v1, v7

    shl-int/lit8 v8, v8, 0x10

    add-int/2addr v7, v4

    aget-char v7, v1, v7

    or-int/2addr v7, v8

    aput v7, p2, v0

    add-int/2addr p1, v2

    if-ge p1, v5, :cond_5

    add-int/2addr v6, p1

    .line 132
    aget-char p1, v1, v6

    shl-int/lit8 p1, p1, 0x10

    add-int/2addr v6, v4

    aget-char v0, v1, v6

    or-int/2addr p1, v0

    sub-int/2addr p1, v4

    aput p1, p2, v4

    goto :goto_1

    .line 134
    :cond_5
    aput v3, p2, v4

    :goto_1
    return v4

    :cond_6
    return v0

    .line 110
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final getSet([CI)Z
    .locals 4

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    iput v0, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    iput v0, p0, Lcom/ibm/icu/impl/USerializedSet;->arrayOffset:I

    add-int/lit8 v1, p2, 0x1

    .line 35
    aget-char p2, p1, p2

    iput p2, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    .line 37
    iget p2, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    const v2, 0x8000

    and-int/2addr v2, p2

    if-eqz v2, :cond_1

    and-int/lit16 p2, p2, 0x7fff

    .line 39
    iput p2, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    .line 40
    array-length p2, p1

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    add-int/2addr v3, v2

    if-lt p2, v3, :cond_0

    .line 44
    aget-char p2, p1, v1

    iput p2, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    move v1, v2

    goto :goto_0

    .line 41
    :cond_0
    iput v0, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    .line 42
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 47
    :cond_1
    array-length v2, p1

    add-int v3, v1, p2

    if-lt v2, v3, :cond_2

    .line 51
    iput p2, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    .line 53
    :goto_0
    iget p2, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    new-array v2, p2, [C

    iput-object v2, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    .line 54
    iget-object v2, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    invoke-static {p1, v1, v2, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1

    .line 48
    :cond_2
    iput v0, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    .line 49
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
