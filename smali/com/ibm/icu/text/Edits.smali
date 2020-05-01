.class public final Lcom/ibm/icu/text/Edits;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/Edits$Iterator;
    }
.end annotation


# instance fields
.field private array:[C

.field private delta:I

.field private length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    new-array v0, v0, [C

    .line 46
    iput-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    return-void
.end method

.method private append(I)V
    .locals 3

    .line 169
    iget v0, p0, Lcom/ibm/icu/text/Edits;->length:I

    iget-object v1, p0, Lcom/ibm/icu/text/Edits;->array:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/ibm/icu/text/Edits;->growArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    iget v1, p0, Lcom/ibm/icu/text/Edits;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/text/Edits;->length:I

    int-to-char p1, p1

    aput-char p1, v0, v1

    :cond_1
    return-void
.end method

.method private growArray()Z
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    array-length v1, v0

    const v2, 0x7fffffff

    const/16 v3, 0x64

    if-ne v1, v3, :cond_0

    const/16 v2, 0x7d0

    goto :goto_0

    .line 178
    :cond_0
    array-length v1, v0

    if-eq v1, v2, :cond_3

    .line 180
    array-length v1, v0

    const v3, 0x3fffffff    # 1.9999999f

    if-lt v1, v3, :cond_1

    goto :goto_0

    .line 183
    :cond_1
    array-length v0, v0

    mul-int/lit8 v2, v0, 0x2

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    array-length v1, v0

    sub-int v1, v2, v1

    const/4 v3, 0x5

    if-lt v1, v3, :cond_2

    .line 189
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    const/4 v0, 0x1

    return v0

    .line 187
    :cond_2
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 179
    :cond_3
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method private lastUnit()I
    .locals 2

    .line 62
    iget v0, p0, Lcom/ibm/icu/text/Edits;->length:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/text/Edits;->array:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v0, v1, v0

    goto :goto_0

    :cond_0
    const v0, 0xffff

    :goto_0
    return v0
.end method

.method private setLastUnit(I)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    iget v1, p0, Lcom/ibm/icu/text/Edits;->length:I

    add-int/lit8 v1, v1, -0x1

    int-to-char p1, p1

    aput-char p1, v0, v1

    return-void
.end method


# virtual methods
.method public addReplace(II)V
    .locals 8

    const/4 v0, 0x6

    if-ne p1, p2, :cond_1

    if-lez p1, :cond_1

    if-gt p1, v0, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits;->lastUnit()I

    move-result p2

    const/16 v0, 0xfff

    if-ge v0, p2, :cond_0

    const/16 v1, 0x6fff

    if-ge p2, v1, :cond_0

    shr-int/lit8 v1, p2, 0xc

    if-ne v1, p1, :cond_0

    and-int/lit16 v1, p2, 0xfff

    if-ge v1, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 111
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/Edits;->setLastUnit(I)V

    return-void

    :cond_0
    shl-int/lit8 p1, p1, 0xc

    .line 114
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/Edits;->append(I)V

    return-void

    :cond_1
    if-ltz p1, :cond_e

    if-ltz p2, :cond_e

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    return-void

    :cond_2
    sub-int v1, p2, p1

    if-eqz v1, :cond_6

    if-lez v1, :cond_3

    .line 128
    iget v2, p0, Lcom/ibm/icu/text/Edits;->delta:I

    if-ltz v2, :cond_3

    const v3, 0x7fffffff

    sub-int/2addr v3, v2

    if-gt v1, v3, :cond_4

    :cond_3
    if-gez v1, :cond_5

    iget v2, p0, Lcom/ibm/icu/text/Edits;->delta:I

    if-gez v2, :cond_5

    const/high16 v3, -0x80000000

    sub-int/2addr v3, v2

    if-lt v1, v3, :cond_4

    goto :goto_0

    .line 131
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 133
    :cond_5
    :goto_0
    iget v2, p0, Lcom/ibm/icu/text/Edits;->delta:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/ibm/icu/text/Edits;->delta:I

    :cond_6
    const/16 v1, 0x7000

    const/16 v2, 0x3d

    if-ge p1, v2, :cond_7

    if-ge p2, v2, :cond_7

    shl-int/2addr p1, v0

    or-int/2addr p1, v1

    or-int/2addr p1, p2

    .line 140
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/Edits;->append(I)V

    goto/16 :goto_3

    .line 141
    :cond_7
    iget-object v3, p0, Lcom/ibm/icu/text/Edits;->array:[C

    array-length v3, v3

    iget v4, p0, Lcom/ibm/icu/text/Edits;->length:I

    sub-int/2addr v3, v4

    const/4 v4, 0x5

    if-ge v3, v4, :cond_8

    invoke-direct {p0}, Lcom/ibm/icu/text/Edits;->growArray()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 142
    :cond_8
    iget v3, p0, Lcom/ibm/icu/text/Edits;->length:I

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x7fff

    const v5, 0x8000

    if-ge p1, v2, :cond_9

    shl-int/2addr p1, v0

    or-int/2addr p1, v1

    move v0, p1

    goto :goto_1

    :cond_9
    if-gt p1, v4, :cond_a

    const/16 v0, 0x7f40

    .line 147
    iget-object v1, p0, Lcom/ibm/icu/text/Edits;->array:[C

    add-int/lit8 v6, v3, 0x1

    or-int/2addr p1, v5

    int-to-char p1, p1

    aput-char p1, v1, v3

    move v3, v6

    goto :goto_1

    :cond_a
    shr-int/lit8 v6, p1, 0x1e

    add-int/lit8 v6, v6, 0x3e

    shl-int/lit8 v0, v6, 0x6

    or-int/2addr v0, v1

    .line 150
    iget-object v1, p0, Lcom/ibm/icu/text/Edits;->array:[C

    add-int/lit8 v6, v3, 0x1

    shr-int/lit8 v7, p1, 0xf

    or-int/2addr v7, v5

    int-to-char v7, v7

    aput-char v7, v1, v3

    add-int/lit8 v3, v6, 0x1

    or-int/2addr p1, v5

    int-to-char p1, p1

    .line 151
    aput-char p1, v1, v6

    :goto_1
    if-ge p2, v2, :cond_b

    or-int p1, v0, p2

    goto :goto_2

    :cond_b
    if-gt p2, v4, :cond_c

    or-int/lit8 p1, v0, 0x3d

    .line 157
    iget-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    add-int/lit8 v1, v3, 0x1

    or-int/2addr p2, v5

    int-to-char p2, p2

    aput-char p2, v0, v3

    move v3, v1

    goto :goto_2

    :cond_c
    shr-int/lit8 p1, p2, 0x1e

    add-int/lit8 p1, p1, 0x3e

    or-int/2addr p1, v0

    .line 160
    iget-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    add-int/lit8 v1, v3, 0x1

    shr-int/lit8 v2, p2, 0xf

    or-int/2addr v2, v5

    int-to-char v2, v2

    aput-char v2, v0, v3

    add-int/lit8 v3, v1, 0x1

    or-int/2addr p2, v5

    int-to-char p2, p2

    .line 161
    aput-char p2, v0, v1

    .line 163
    :goto_2
    iget-object p2, p0, Lcom/ibm/icu/text/Edits;->array:[C

    iget v0, p0, Lcom/ibm/icu/text/Edits;->length:I

    int-to-char p1, p1

    aput-char p1, p2, v0

    .line 164
    iput v3, p0, Lcom/ibm/icu/text/Edits;->length:I

    :cond_d
    :goto_3
    return-void

    .line 119
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addReplace("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): both lengths must be non-negative"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addUnchanged(I)V
    .locals 3

    if-ltz p1, :cond_4

    .line 77
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits;->lastUnit()I

    move-result v0

    const/16 v1, 0xfff

    if-ge v0, v1, :cond_1

    rsub-int v2, v0, 0xfff

    if-lt v2, p1, :cond_0

    add-int/2addr v0, p1

    .line 81
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/Edits;->setLastUnit(I)V

    return-void

    .line 84
    :cond_0
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/Edits;->setLastUnit(I)V

    sub-int/2addr p1, v2

    :cond_1
    :goto_0
    const/16 v0, 0x1000

    if-lt p1, v0, :cond_2

    .line 89
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/Edits;->append(I)V

    add-int/lit16 p1, p1, -0x1000

    goto :goto_0

    :cond_2
    if-lez p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 94
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/Edits;->append(I)V

    :cond_3
    return-void

    .line 73
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addUnchanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): length must not be negative"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCoarseIterator()Lcom/ibm/icu/text/Edits$Iterator;
    .locals 7

    .line 471
    new-instance v6, Lcom/ibm/icu/text/Edits$Iterator;

    iget-object v1, p0, Lcom/ibm/icu/text/Edits;->array:[C

    iget v2, p0, Lcom/ibm/icu/text/Edits;->length:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/Edits$Iterator;-><init>([CIZZLcom/ibm/icu/text/Edits$1;)V

    return-object v6
.end method

.method public hasChanges()Z
    .locals 5

    .line 206
    iget v0, p0, Lcom/ibm/icu/text/Edits;->delta:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 209
    :goto_0
    iget v3, p0, Lcom/ibm/icu/text/Edits;->length:I

    if-ge v2, v3, :cond_2

    .line 210
    iget-object v3, p0, Lcom/ibm/icu/text/Edits;->array:[C

    aget-char v3, v3, v2

    const/16 v4, 0xfff

    if-le v3, v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public lengthDelta()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/ibm/icu/text/Edits;->delta:I

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/ibm/icu/text/Edits;->delta:I

    iput v0, p0, Lcom/ibm/icu/text/Edits;->length:I

    return-void
.end method
