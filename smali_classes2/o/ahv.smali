.class public Lo/ahv;
.super Ljava/io/Reader;
.source ""


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:Ljava/io/InputStream;

.field private final e:[B

.field private g:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 42
    iput-object v0, p0, Lo/ahv;->e:[B

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lo/ahv;->b:I

    .line 46
    iput v0, p0, Lo/ahv;->c:I

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lo/ahv;->a:I

    .line 50
    iput v0, p0, Lo/ahv;->g:I

    .line 59
    iput-object p1, p0, Lo/ahv;->d:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public mark(I)V
    .locals 4

    mul-int/lit8 p1, p1, 0x6

    int-to-long v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    long-to-int p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x7fffffff

    .line 342
    :goto_1
    iget-object v0, p0, Lo/ahv;->d:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 331
    iget-object v0, p0, Lo/ahv;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 10

    .line 65
    iget v0, p0, Lo/ahv;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 67
    iput v1, p0, Lo/ahv;->g:I

    return v0

    .line 73
    :cond_0
    iget v0, p0, Lo/ahv;->a:I

    if-eq v0, v1, :cond_1

    .line 75
    iput v1, p0, Lo/ahv;->a:I

    goto :goto_1

    .line 77
    :cond_1
    iget v0, p0, Lo/ahv;->b:I

    iget v2, p0, Lo/ahv;->c:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lo/ahv;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lo/ahv;->e:[B

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lo/ahv;->b:I

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    if-ne v0, v1, :cond_3

    return v1

    :cond_3
    :goto_1
    const/16 v2, 0x80

    if-ge v0, v2, :cond_4

    int-to-char v0, v0

    return v0

    :cond_4
    and-int/lit16 v3, v0, 0xe0

    const/16 v4, 0x3f

    const/16 v5, 0xc0

    const v6, 0xfffd

    if-ne v3, v5, :cond_9

    .line 90
    iget v3, p0, Lo/ahv;->b:I

    iget v5, p0, Lo/ahv;->c:I

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Lo/ahv;->d:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lo/ahv;->e:[B

    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Lo/ahv;->b:I

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    :goto_2
    if-ne v3, v1, :cond_6

    return v6

    :cond_6
    and-int/lit16 v1, v3, 0xc0

    if-eq v1, v2, :cond_7

    .line 94
    iput v3, p0, Lo/ahv;->a:I

    return v6

    :cond_7
    and-int/lit8 v1, v0, 0x1e

    if-nez v1, :cond_8

    return v6

    :cond_8
    shl-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0x7c0

    and-int/lit8 v1, v3, 0x3f

    or-int/2addr v0, v1

    return v0

    :cond_9
    and-int/lit16 v3, v0, 0xf0

    const/16 v5, 0xe0

    if-ne v3, v5, :cond_14

    .line 107
    iget v3, p0, Lo/ahv;->b:I

    iget v5, p0, Lo/ahv;->c:I

    if-ne v3, v5, :cond_a

    iget-object v3, p0, Lo/ahv;->d:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    goto :goto_3

    :cond_a
    iget-object v5, p0, Lo/ahv;->e:[B

    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Lo/ahv;->b:I

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    :goto_3
    if-ne v3, v1, :cond_b

    return v6

    :cond_b
    and-int/lit16 v5, v3, 0xc0

    if-eq v5, v2, :cond_c

    .line 111
    iput v3, p0, Lo/ahv;->a:I

    return v6

    .line 114
    :cond_c
    iget v5, p0, Lo/ahv;->b:I

    iget v7, p0, Lo/ahv;->c:I

    if-ne v5, v7, :cond_d

    iget-object v5, p0, Lo/ahv;->d:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    goto :goto_4

    :cond_d
    iget-object v7, p0, Lo/ahv;->e:[B

    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Lo/ahv;->b:I

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    :goto_4
    if-ne v5, v1, :cond_e

    return v6

    :cond_e
    and-int/lit16 v1, v5, 0xc0

    if-eq v1, v2, :cond_f

    .line 118
    iput v5, p0, Lo/ahv;->a:I

    return v6

    :cond_f
    const/16 v1, 0xed

    if-ne v0, v1, :cond_10

    const/16 v1, 0xa0

    if-ge v3, v1, :cond_12

    :cond_10
    and-int/lit8 v1, v0, 0xf

    if-nez v1, :cond_11

    and-int/lit8 v1, v3, 0x20

    if-eqz v1, :cond_12

    :cond_11
    const/16 v1, 0xef

    if-ne v0, v1, :cond_13

    and-int/lit8 v1, v3, 0x3f

    if-ne v1, v4, :cond_13

    and-int/lit8 v1, v5, 0x3e

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_13

    :cond_12
    return v6

    :cond_13
    shl-int/lit8 v0, v0, 0xc

    const v1, 0xf000

    and-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x6

    and-int/lit16 v1, v1, 0xfc0

    or-int/2addr v0, v1

    and-int/lit8 v1, v5, 0x3f

    or-int/2addr v0, v1

    return v0

    :cond_14
    and-int/lit16 v3, v0, 0xf8

    const/16 v5, 0xf0

    if-ne v3, v5, :cond_20

    .line 140
    iget v3, p0, Lo/ahv;->b:I

    iget v5, p0, Lo/ahv;->c:I

    if-ne v3, v5, :cond_15

    iget-object v3, p0, Lo/ahv;->d:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    goto :goto_5

    :cond_15
    iget-object v5, p0, Lo/ahv;->e:[B

    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Lo/ahv;->b:I

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    :goto_5
    if-ne v3, v1, :cond_16

    return v6

    :cond_16
    and-int/lit16 v5, v3, 0xc0

    if-eq v5, v2, :cond_17

    .line 144
    iput v3, p0, Lo/ahv;->a:I

    return v6

    .line 147
    :cond_17
    iget v5, p0, Lo/ahv;->b:I

    iget v7, p0, Lo/ahv;->c:I

    if-ne v5, v7, :cond_18

    iget-object v5, p0, Lo/ahv;->d:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    goto :goto_6

    :cond_18
    iget-object v7, p0, Lo/ahv;->e:[B

    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Lo/ahv;->b:I

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    :goto_6
    if-ne v5, v1, :cond_19

    return v6

    :cond_19
    and-int/lit16 v7, v5, 0xc0

    if-eq v7, v2, :cond_1a

    .line 151
    iput v5, p0, Lo/ahv;->a:I

    return v6

    .line 154
    :cond_1a
    iget v7, p0, Lo/ahv;->b:I

    iget v8, p0, Lo/ahv;->c:I

    if-ne v7, v8, :cond_1b

    iget-object v7, p0, Lo/ahv;->d:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    goto :goto_7

    :cond_1b
    iget-object v8, p0, Lo/ahv;->e:[B

    add-int/lit8 v9, v7, 0x1

    iput v9, p0, Lo/ahv;->b:I

    aget-byte v7, v8, v7

    and-int/lit16 v7, v7, 0xff

    :goto_7
    if-ne v7, v1, :cond_1c

    return v6

    :cond_1c
    and-int/lit16 v1, v7, 0xc0

    if-eq v1, v2, :cond_1d

    .line 158
    iput v7, p0, Lo/ahv;->a:I

    return v6

    :cond_1d
    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_1e

    and-int/lit8 v1, v3, 0x30

    if-nez v1, :cond_1e

    return v6

    :cond_1e
    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x1c

    shr-int/lit8 v1, v3, 0x4

    and-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    const/16 v1, 0x10

    if-le v0, v1, :cond_1f

    return v6

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    const v1, 0xd800

    shl-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0x3c0

    or-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x2

    and-int/lit8 v1, v1, 0x3c

    or-int/2addr v0, v1

    shr-int/lit8 v1, v5, 0x4

    and-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    const v1, 0xdc00

    shl-int/lit8 v2, v5, 0x6

    and-int/lit16 v2, v2, 0x3c0

    or-int/2addr v1, v2

    and-int/lit8 v2, v7, 0x3f

    or-int/2addr v1, v2

    .line 174
    iput v1, p0, Lo/ahv;->g:I

    return v0

    :cond_20
    and-int/lit16 v3, v0, 0xfc

    const/16 v4, 0xf8

    if-ne v3, v4, :cond_2d

    .line 181
    iget v0, p0, Lo/ahv;->b:I

    iget v3, p0, Lo/ahv;->c:I

    if-ne v0, v3, :cond_21

    iget-object v0, p0, Lo/ahv;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_8

    :cond_21
    iget-object v3, p0, Lo/ahv;->e:[B

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lo/ahv;->b:I

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    :goto_8
    if-ne v0, v1, :cond_22

    return v6

    :cond_22
    and-int/lit16 v3, v0, 0xc0

    if-eq v3, v2, :cond_23

    .line 185
    iput v0, p0, Lo/ahv;->a:I

    return v6

    .line 188
    :cond_23
    iget v0, p0, Lo/ahv;->b:I

    iget v3, p0, Lo/ahv;->c:I

    if-ne v0, v3, :cond_24

    iget-object v0, p0, Lo/ahv;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_9

    :cond_24
    iget-object v3, p0, Lo/ahv;->e:[B

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lo/ahv;->b:I

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    :goto_9
    if-ne v0, v1, :cond_25

    return v6

    :cond_25
    and-int/lit16 v3, v0, 0xc0

    if-eq v3, v2, :cond_26

    .line 192
    iput v0, p0, Lo/ahv;->a:I

    return v6

    .line 195
    :cond_26
    iget v0, p0, Lo/ahv;->b:I

    iget v3, p0, Lo/ahv;->c:I

    if-ne v0, v3, :cond_27

    iget-object v0, p0, Lo/ahv;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_a

    :cond_27
    iget-object v3, p0, Lo/ahv;->e:[B

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lo/ahv;->b:I

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    :goto_a
    if-ne v0, v1, :cond_28

    return v6

    :cond_28
    and-int/lit16 v3, v0, 0xc0

    if-eq v3, v2, :cond_29

    .line 199
    iput v0, p0, Lo/ahv;->a:I

    return v6

    .line 202
    :cond_29
    iget v0, p0, Lo/ahv;->b:I

    iget v3, p0, Lo/ahv;->c:I

    if-ne v0, v3, :cond_2a

    iget-object v0, p0, Lo/ahv;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_b

    :cond_2a
    iget-object v3, p0, Lo/ahv;->e:[B

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lo/ahv;->b:I

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    :goto_b
    if-ne v0, v1, :cond_2b

    return v6

    :cond_2b
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v2, :cond_2c

    .line 206
    iput v0, p0, Lo/ahv;->a:I

    :cond_2c
    return v6

    :cond_2d
    and-int/lit16 v0, v0, 0xfe

    const/16 v3, 0xfc

    if-ne v0, v3, :cond_3c

    .line 215
    iget v0, p0, Lo/ahv;->b:I

    iget v3, p0, Lo/ahv;->c:I

    if-ne v0, v3, :cond_2e

    iget-object v0, p0, Lo/ahv;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_c

    :cond_2e
    iget-object v3, p0, Lo/ahv;->e:[B

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lo/ahv;->b:I

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    :goto_c
    if-ne v0, v1, :cond_2f

    return v6

    :cond_2f
    and-int/lit16 v3, v0, 0xc0

    if-eq v3, v2, :cond_30

    .line 219
    iput v0, p0, Lo/ahv;->a:I

    return v6

    .line 222
    :cond_30
    iget v0, p0, Lo/ahv;->b:I

    iget v3, p0, Lo/ahv;->c:I

    if-ne v0, v3, :cond_31

    iget-object v0, p0, Lo/ahv;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_d

    :cond_31
    iget-object v3, p0, Lo/ahv;->e:[B

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lo/ahv;->b:I

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    :goto_d
    if-ne v0, v1, :cond_32

    return v6

    :cond_32
    and-int/lit16 v3, v0, 0xc0

    if-eq v3, v2, :cond_33

    .line 226
    iput v0, p0, Lo/ahv;->a:I

    return v6

    .line 229
    :cond_33
    iget v0, p0, Lo/ahv;->b:I

    iget v3, p0, Lo/ahv;->c:I

    if-ne v0, v3, :cond_34

    iget-object v0, p0, Lo/ahv;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_e

    :cond_34
    iget-object v3, p0, Lo/ahv;->e:[B

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lo/ahv;->b:I

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    :goto_e
    if-ne v0, v1, :cond_35

    return v6

    :cond_35
    and-int/lit16 v3, v0, 0xc0

    if-eq v3, v2, :cond_36

    .line 233
    iput v0, p0, Lo/ahv;->a:I

    return v6

    .line 236
    :cond_36
    iget v0, p0, Lo/ahv;->b:I

    iget v3, p0, Lo/ahv;->c:I

    if-ne v0, v3, :cond_37

    iget-object v0, p0, Lo/ahv;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_f

    :cond_37
    iget-object v3, p0, Lo/ahv;->e:[B

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lo/ahv;->b:I

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    :goto_f
    if-ne v0, v1, :cond_38

    return v6

    :cond_38
    and-int/lit16 v3, v0, 0xc0

    if-eq v3, v2, :cond_39

    .line 240
    iput v0, p0, Lo/ahv;->a:I

    return v6

    .line 243
    :cond_39
    iget v0, p0, Lo/ahv;->b:I

    iget v3, p0, Lo/ahv;->c:I

    if-ne v0, v3, :cond_3a

    iget-object v0, p0, Lo/ahv;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_10

    :cond_3a
    iget-object v3, p0, Lo/ahv;->e:[B

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lo/ahv;->b:I

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    :goto_10
    if-ne v0, v1, :cond_3b

    return v6

    :cond_3b
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v2, :cond_3c

    .line 247
    iput v0, p0, Lo/ahv;->a:I

    :cond_3c
    return v6
.end method

.method public read([CII)I
    .locals 5

    .line 262
    iget v0, p0, Lo/ahv;->g:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v3, p2, 0x1

    int-to-char v0, v0

    .line 263
    aput-char v0, p1, p2

    .line 264
    iput v2, p0, Lo/ahv;->g:I

    add-int/lit8 p3, p3, -0x1

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move v3, p2

    const/4 p2, 0x0

    .line 270
    :goto_0
    iget v0, p0, Lo/ahv;->b:I

    iget v4, p0, Lo/ahv;->c:I

    if-lt v0, v4, :cond_4

    .line 272
    iget-object v0, p0, Lo/ahv;->e:[B

    array-length v4, v0

    if-le p3, v4, :cond_1

    .line 273
    array-length p3, v0

    .line 274
    :cond_1
    iget-object v0, p0, Lo/ahv;->d:Ljava/io/InputStream;

    iget-object v4, p0, Lo/ahv;->e:[B

    invoke-virtual {v0, v4, v1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_3

    if-lez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, -0x1

    :goto_1
    return p2

    .line 283
    :cond_3
    iput v1, p0, Lo/ahv;->b:I

    .line 284
    iput v0, p0, Lo/ahv;->c:I

    .line 289
    :cond_4
    :goto_2
    iget v0, p0, Lo/ahv;->b:I

    iget v1, p0, Lo/ahv;->c:I

    if-ge v0, v1, :cond_7

    if-ge p2, p3, :cond_7

    .line 290
    invoke-virtual {p0}, Lo/ahv;->read()I

    move-result v0

    if-ne v0, v2, :cond_6

    if-lez p2, :cond_5

    goto :goto_3

    :cond_5
    const/4 p2, -0x1

    :goto_3
    return p2

    :cond_6
    add-int/lit8 v1, v3, 0x1

    int-to-char v0, v0

    .line 298
    aput-char v0, p1, v3

    add-int/lit8 p2, p2, 0x1

    move v3, v1

    goto :goto_2

    :cond_7
    return p2
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 347
    iput v0, p0, Lo/ahv;->c:I

    const/4 v0, -0x1

    .line 348
    iput v0, p0, Lo/ahv;->g:I

    .line 349
    iget-object v0, p0, Lo/ahv;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 6

    .line 312
    iget-object v0, p0, Lo/ahv;->e:[B

    array-length v0, v0

    new-array v0, v0, [C

    move-wide v1, p1

    .line 314
    :cond_0
    array-length v3, v0

    int-to-long v3, v3

    cmp-long v5, v3, v1

    if-gez v5, :cond_1

    array-length v3, v0

    goto :goto_0

    :cond_1
    long-to-int v3, v1

    :goto_0
    const/4 v4, 0x0

    .line 315
    invoke-virtual {p0, v0, v4, v3}, Lo/ahv;->read([CII)I

    move-result v3

    if-lez v3, :cond_2

    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    :cond_2
    sub-long/2addr p1, v1

    return-wide p1
.end method
