.class public Lo/NetworkScorerAppData;
.super Ljava/io/FilterInputStream;
.source ""


# static fields
.field private static final a:[B

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I


# instance fields
.field private final f:[I

.field private final g:I

.field private final h:[B

.field private final i:[[B

.field private final j:[I

.field private k:I

.field private final l:[B

.field private m:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lo/NetworkRecommendationProvider;->b:[B

    sput-object v0, Lo/NetworkScorerAppData;->a:[B

    .line 24
    sget-object v0, Lo/NetworkRecommendationProvider;->c:[I

    sput-object v0, Lo/NetworkScorerAppData;->b:[I

    .line 25
    sget-object v0, Lo/NetworkRecommendationProvider;->d:[I

    sput-object v0, Lo/NetworkScorerAppData;->d:[I

    .line 26
    sget-object v0, Lo/NetworkRecommendationProvider;->e:[I

    sput-object v0, Lo/NetworkScorerAppData;->e:[I

    .line 27
    sget-object v0, Lo/NetworkRecommendationProvider;->j:[I

    sput-object v0, Lo/NetworkScorerAppData;->c:[I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I[B[[B)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 35
    iput-object p1, p0, Lo/NetworkScorerAppData;->f:[I

    const/16 p1, 0x10

    new-array v0, p1, [B

    .line 38
    iput-object v0, p0, Lo/NetworkScorerAppData;->h:[B

    new-array v0, p1, [B

    .line 39
    iput-object v0, p0, Lo/NetworkScorerAppData;->l:[B

    const v0, 0x7fffffff

    .line 41
    iput v0, p0, Lo/NetworkScorerAppData;->k:I

    .line 42
    iput p1, p0, Lo/NetworkScorerAppData;->n:I

    .line 43
    iput p1, p0, Lo/NetworkScorerAppData;->m:I

    .line 62
    iput p2, p0, Lo/NetworkScorerAppData;->g:I

    .line 63
    invoke-static {p3, p2}, Lo/NetworkRecommendationProvider;->b([BI)[I

    move-result-object p1

    iput-object p1, p0, Lo/NetworkScorerAppData;->j:[I

    .line 64
    invoke-direct {p0, p4}, Lo/NetworkScorerAppData;->a([[B)[[B

    move-result-object p1

    iput-object p1, p0, Lo/NetworkScorerAppData;->i:[[B

    return-void
.end method

.method private a([[B)[[B
    .locals 7

    .line 170
    array-length v0, p1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 171
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 173
    aget-object v3, p1, v2

    array-length v3, v3

    new-array v3, v3, [B

    aput-object v3, v0, v2

    const/4 v3, 0x0

    .line 174
    :goto_1
    aget-object v4, p1, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 176
    aget-object v4, v0, v2

    aget-object v5, p1, v2

    aget-byte v5, v5, v3

    int-to-byte v6, v3

    aput-byte v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private b()I
    .locals 7

    .line 189
    iget v0, p0, Lo/NetworkScorerAppData;->k:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lo/NetworkScorerAppData;->k:I

    .line 195
    :cond_0
    iget v0, p0, Lo/NetworkScorerAppData;->n:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 198
    iget-object v0, p0, Lo/NetworkScorerAppData;->h:[B

    iget v2, p0, Lo/NetworkScorerAppData;->k:I

    int-to-byte v3, v2

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    const-string v0, "unexpected block size"

    if-ltz v2, :cond_5

    const/4 v2, 0x1

    .line 212
    :cond_1
    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lo/NetworkScorerAppData;->h:[B

    rsub-int/lit8 v6, v2, 0x10

    invoke-virtual {v3, v5, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_2

    add-int/2addr v2, v3

    if-lt v2, v1, :cond_1

    :cond_2
    if-lt v2, v1, :cond_4

    .line 235
    iget-object v0, p0, Lo/NetworkScorerAppData;->h:[B

    iget-object v2, p0, Lo/NetworkScorerAppData;->l:[B

    invoke-direct {p0, v0, v4, v2, v4}, Lo/NetworkScorerAppData;->d([BI[BI)V

    .line 238
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lo/NetworkScorerAppData;->k:I

    .line 241
    iput v4, p0, Lo/NetworkScorerAppData;->n:I

    .line 245
    iget v0, p0, Lo/NetworkScorerAppData;->k:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lo/NetworkScorerAppData;->l:[B

    const/16 v2, 0xf

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr v1, v0

    :cond_3
    iput v1, p0, Lo/NetworkScorerAppData;->m:I

    goto :goto_0

    .line 231
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_6
    :goto_0
    iget v0, p0, Lo/NetworkScorerAppData;->m:I

    return v0
.end method

.method private d([BI[BI)V
    .locals 17

    move-object/from16 v0, p0

    .line 270
    iget-object v1, v0, Lo/NetworkScorerAppData;->f:[I

    add-int/lit8 v2, p2, 0x1

    aget-byte v3, p1, p2

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    iget-object v3, v0, Lo/NetworkScorerAppData;->j:[I

    const/4 v5, 0x0

    aget v6, v3, v5

    xor-int/2addr v2, v6

    aput v2, v1, v5

    add-int/lit8 v2, v4, 0x1

    .line 274
    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v2, v6

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    const/4 v4, 0x1

    aget v7, v3, v4

    xor-int/2addr v2, v7

    aput v2, v1, v4

    add-int/lit8 v2, v6, 0x1

    .line 278
    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x18

    add-int/lit8 v7, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v2, v7

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    const/4 v6, 0x2

    aget v8, v3, v6

    xor-int/2addr v2, v8

    aput v2, v1, v6

    add-int/lit8 v2, v7, 0x1

    .line 282
    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x18

    add-int/lit8 v8, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v7

    add-int/lit8 v7, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v2, v8

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v2, v7

    const/4 v7, 0x3

    aget v3, v3, v7

    xor-int/2addr v2, v3

    aput v2, v1, v7

    const/4 v1, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x4

    .line 291
    :goto_0
    iget v3, v0, Lo/NetworkScorerAppData;->g:I

    if-ge v1, v3, :cond_0

    .line 293
    sget-object v3, Lo/NetworkScorerAppData;->b:[I

    iget-object v8, v0, Lo/NetworkScorerAppData;->f:[I

    iget-object v9, v0, Lo/NetworkScorerAppData;->i:[[B

    aget-object v10, v9, v5

    aget-byte v10, v10, v5

    aget v10, v8, v10

    ushr-int/lit8 v10, v10, 0x18

    aget v10, v3, v10

    sget-object v11, Lo/NetworkScorerAppData;->d:[I

    aget-object v12, v9, v4

    aget-byte v12, v12, v5

    aget v12, v8, v12

    ushr-int/lit8 v12, v12, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v12, v11, v12

    xor-int/2addr v10, v12

    sget-object v12, Lo/NetworkScorerAppData;->e:[I

    aget-object v13, v9, v6

    aget-byte v13, v13, v5

    aget v13, v8, v13

    ushr-int/lit8 v13, v13, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v12, v13

    xor-int/2addr v10, v13

    sget-object v13, Lo/NetworkScorerAppData;->c:[I

    aget-object v14, v9, v7

    aget-byte v14, v14, v5

    aget v14, v8, v14

    and-int/lit16 v14, v14, 0xff

    aget v14, v13, v14

    xor-int/2addr v10, v14

    iget-object v14, v0, Lo/NetworkScorerAppData;->j:[I

    aget v15, v14, v2

    xor-int/2addr v10, v15

    .line 297
    aget-object v15, v9, v5

    aget-byte v15, v15, v4

    aget v15, v8, v15

    ushr-int/lit8 v15, v15, 0x18

    aget v15, v3, v15

    aget-object v16, v9, v4

    aget-byte v16, v16, v4

    aget v16, v8, v16

    ushr-int/lit8 v5, v16, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v5, v11, v5

    xor-int/2addr v5, v15

    aget-object v15, v9, v6

    aget-byte v15, v15, v4

    aget v15, v8, v15

    ushr-int/lit8 v15, v15, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v12, v15

    xor-int/2addr v5, v15

    aget-object v15, v9, v7

    aget-byte v15, v15, v4

    aget v15, v8, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v13, v15

    xor-int/2addr v5, v15

    add-int/lit8 v15, v2, 0x1

    aget v15, v14, v15

    xor-int/2addr v5, v15

    const/4 v15, 0x0

    .line 301
    aget-object v16, v9, v15

    aget-byte v15, v16, v6

    aget v15, v8, v15

    ushr-int/lit8 v15, v15, 0x18

    aget v15, v3, v15

    aget-object v16, v9, v4

    aget-byte v16, v16, v6

    aget v16, v8, v16

    ushr-int/lit8 v4, v16, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v4, v11, v4

    xor-int/2addr v4, v15

    aget-object v15, v9, v6

    aget-byte v15, v15, v6

    aget v15, v8, v15

    ushr-int/lit8 v15, v15, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v12, v15

    xor-int/2addr v4, v15

    aget-object v15, v9, v7

    aget-byte v15, v15, v6

    aget v15, v8, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v13, v15

    xor-int/2addr v4, v15

    add-int/lit8 v15, v2, 0x2

    aget v15, v14, v15

    xor-int/2addr v4, v15

    const/4 v15, 0x0

    .line 305
    aget-object v16, v9, v15

    aget-byte v15, v16, v7

    aget v15, v8, v15

    ushr-int/lit8 v15, v15, 0x18

    aget v3, v3, v15

    const/4 v15, 0x1

    aget-object v16, v9, v15

    aget-byte v15, v16, v7

    aget v15, v8, v15

    ushr-int/lit8 v15, v15, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v11, v11, v15

    xor-int/2addr v3, v11

    aget-object v11, v9, v6

    aget-byte v11, v11, v7

    aget v11, v8, v11

    ushr-int/lit8 v11, v11, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v12, v11

    xor-int/2addr v3, v11

    aget-object v9, v9, v7

    aget-byte v9, v9, v7

    aget v9, v8, v9

    and-int/lit16 v9, v9, 0xff

    aget v9, v13, v9

    xor-int/2addr v3, v9

    add-int/lit8 v9, v2, 0x3

    aget v9, v14, v9

    xor-int/2addr v3, v9

    const/4 v9, 0x0

    .line 309
    aput v10, v8, v9

    const/4 v9, 0x1

    .line 310
    aput v5, v8, v9

    .line 311
    aput v4, v8, v6

    .line 312
    aput v3, v8, v7

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 320
    :cond_0
    iget-object v1, v0, Lo/NetworkScorerAppData;->j:[I

    aget v3, v1, v2

    add-int/lit8 v4, p4, 0x1

    .line 321
    sget-object v5, Lo/NetworkScorerAppData;->a:[B

    iget-object v8, v0, Lo/NetworkScorerAppData;->f:[I

    iget-object v9, v0, Lo/NetworkScorerAppData;->i:[[B

    const/4 v10, 0x0

    aget-object v11, v9, v10

    aget-byte v11, v11, v10

    aget v10, v8, v11

    ushr-int/lit8 v10, v10, 0x18

    aget-byte v10, v5, v10

    ushr-int/lit8 v11, v3, 0x18

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p3, p4

    add-int/lit8 v10, v4, 0x1

    const/4 v11, 0x1

    .line 322
    aget-object v12, v9, v11

    const/4 v11, 0x0

    aget-byte v12, v12, v11

    aget v11, v8, v12

    ushr-int/lit8 v11, v11, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v5, v11

    ushr-int/lit8 v12, v3, 0x10

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, p3, v4

    add-int/lit8 v4, v10, 0x1

    .line 323
    aget-object v11, v9, v6

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    aget v11, v8, v11

    ushr-int/lit8 v11, v11, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v5, v11

    ushr-int/lit8 v12, v3, 0x8

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, p3, v10

    add-int/lit8 v10, v4, 0x1

    .line 324
    aget-object v11, v9, v7

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    aget v11, v8, v11

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v5, v11

    xor-int/2addr v3, v11

    int-to-byte v3, v3

    aput-byte v3, p3, v4

    add-int/lit8 v3, v2, 0x1

    .line 326
    aget v3, v1, v3

    add-int/lit8 v4, v10, 0x1

    const/4 v11, 0x0

    .line 327
    aget-object v12, v9, v11

    const/4 v11, 0x1

    aget-byte v12, v12, v11

    aget v12, v8, v12

    ushr-int/lit8 v12, v12, 0x18

    aget-byte v12, v5, v12

    ushr-int/lit8 v13, v3, 0x18

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p3, v10

    add-int/lit8 v10, v4, 0x1

    .line 328
    aget-object v12, v9, v11

    aget-byte v12, v12, v11

    aget v11, v8, v12

    ushr-int/lit8 v11, v11, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v5, v11

    ushr-int/lit8 v12, v3, 0x10

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, p3, v4

    add-int/lit8 v4, v10, 0x1

    .line 329
    aget-object v11, v9, v6

    const/4 v12, 0x1

    aget-byte v11, v11, v12

    aget v11, v8, v11

    ushr-int/lit8 v11, v11, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v5, v11

    ushr-int/lit8 v12, v3, 0x8

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, p3, v10

    add-int/lit8 v10, v4, 0x1

    .line 330
    aget-object v11, v9, v7

    const/4 v12, 0x1

    aget-byte v11, v11, v12

    aget v11, v8, v11

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v5, v11

    xor-int/2addr v3, v11

    int-to-byte v3, v3

    aput-byte v3, p3, v4

    add-int/lit8 v3, v2, 0x2

    .line 332
    aget v3, v1, v3

    add-int/lit8 v4, v10, 0x1

    const/4 v11, 0x0

    .line 333
    aget-object v12, v9, v11

    aget-byte v11, v12, v6

    aget v11, v8, v11

    ushr-int/lit8 v11, v11, 0x18

    aget-byte v11, v5, v11

    ushr-int/lit8 v12, v3, 0x18

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, p3, v10

    add-int/lit8 v10, v4, 0x1

    const/4 v11, 0x1

    .line 334
    aget-object v12, v9, v11

    aget-byte v11, v12, v6

    aget v11, v8, v11

    ushr-int/lit8 v11, v11, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v5, v11

    ushr-int/lit8 v12, v3, 0x10

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, p3, v4

    add-int/lit8 v4, v10, 0x1

    .line 335
    aget-object v11, v9, v6

    aget-byte v11, v11, v6

    aget v11, v8, v11

    ushr-int/lit8 v11, v11, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v5, v11

    ushr-int/lit8 v12, v3, 0x8

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, p3, v10

    add-int/lit8 v10, v4, 0x1

    .line 336
    aget-object v11, v9, v7

    aget-byte v11, v11, v6

    aget v11, v8, v11

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v5, v11

    xor-int/2addr v3, v11

    int-to-byte v3, v3

    aput-byte v3, p3, v4

    add-int/2addr v2, v7

    .line 338
    aget v1, v1, v2

    add-int/lit8 v2, v10, 0x1

    const/4 v3, 0x0

    .line 339
    aget-object v3, v9, v3

    aget-byte v3, v3, v7

    aget v3, v8, v3

    ushr-int/lit8 v3, v3, 0x18

    aget-byte v3, v5, v3

    ushr-int/lit8 v4, v1, 0x18

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v10

    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    .line 340
    aget-object v4, v9, v4

    aget-byte v4, v4, v7

    aget v4, v8, v4

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v5, v4

    ushr-int/lit8 v10, v1, 0x10

    xor-int/2addr v4, v10

    int-to-byte v4, v4

    aput-byte v4, p3, v2

    add-int/lit8 v2, v3, 0x1

    .line 341
    aget-object v4, v9, v6

    aget-byte v4, v4, v7

    aget v4, v8, v4

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v5, v4

    ushr-int/lit8 v6, v1, 0x8

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    .line 342
    aget-object v3, v9, v7

    aget-byte v3, v3, v7

    aget v3, v8, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v5, v3

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v2

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 130
    invoke-direct {p0}, Lo/NetworkScorerAppData;->b()I

    .line 131
    iget v0, p0, Lo/NetworkScorerAppData;->m:I

    iget v1, p0, Lo/NetworkScorerAppData;->n:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 0

    .line 138
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    .line 151
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3

    .line 72
    invoke-direct {p0}, Lo/NetworkScorerAppData;->b()I

    .line 75
    iget v0, p0, Lo/NetworkScorerAppData;->n:I

    iget v1, p0, Lo/NetworkScorerAppData;->m:I

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 80
    :cond_0
    iget-object v1, p0, Lo/NetworkScorerAppData;->l:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lo/NetworkScorerAppData;->n:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 86
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 6

    add-int v0, p2, p3

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 99
    invoke-direct {p0}, Lo/NetworkScorerAppData;->b()I

    .line 102
    iget v2, p0, Lo/NetworkScorerAppData;->n:I

    iget v3, p0, Lo/NetworkScorerAppData;->m:I

    if-lt v2, v3, :cond_1

    if-ne v1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sub-int/2addr v0, v1

    sub-int/2addr p3, v0

    return p3

    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 108
    iget-object v4, p0, Lo/NetworkScorerAppData;->l:[B

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lo/NetworkScorerAppData;->n:I

    aget-byte v2, v4, v2

    aput-byte v2, p1, v1

    move v1, v3

    goto :goto_0

    :cond_2
    return p3
.end method

.method public declared-synchronized reset()V
    .locals 0

    monitor-enter p0

    .line 157
    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .locals 4

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    .line 119
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method
