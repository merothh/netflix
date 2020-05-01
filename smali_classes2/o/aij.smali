.class public Lo/aij;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aik$ActionBar;


# static fields
.field private static final b:[B

.field private static final d:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Lo/aij;->c()[C

    move-result-object v0

    sput-object v0, Lo/aij;->d:[C

    .line 35
    invoke-static {}, Lo/aij;->b()[B

    move-result-object v0

    sput-object v0, Lo/aij;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b()[B
    .locals 4

    const/16 v0, 0x80

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, -0x1

    .line 70
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v2, 0x5a

    if-gt v0, v2, :cond_1

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    .line 73
    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x61

    :goto_2
    const/16 v2, 0x7a

    if-gt v0, v2, :cond_2

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    .line 75
    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x30

    :goto_3
    const/16 v2, 0x39

    if-gt v0, v2, :cond_3

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    .line 77
    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const/16 v0, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v1, v0

    const/16 v0, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v1, v0

    const/16 v0, 0x3d

    const/16 v2, 0x7f

    aput-byte v2, v1, v0

    return-object v1
.end method

.method private static c()[C
    .locals 3

    const/16 v0, 0x40

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x41

    int-to-char v2, v2

    .line 53
    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v1, 0x34

    if-ge v2, v1, :cond_1

    add-int/lit8 v1, v2, -0x1a

    add-int/lit8 v1, v1, 0x61

    int-to-char v1, v1

    .line 55
    aput-char v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/16 v2, 0x3e

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, -0x34

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 57
    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/16 v1, 0x2b

    aput-char v1, v0, v2

    const/16 v1, 0x3f

    const/16 v2, 0x2f

    aput-char v2, v0, v1

    return-object v0
.end method

.method private static e(I)C
    .locals 1

    .line 90
    sget-object v0, Lo/aij;->d:[C

    and-int/lit8 p0, p0, 0x3f

    aget-char p0, v0, p0

    return p0
.end method


# virtual methods
.method public b([B)Ljava/lang/String;
    .locals 10

    .line 99
    array-length v0, p1

    const/4 v1, 0x2

    add-int/2addr v0, v1

    const/4 v2, 0x3

    div-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [C

    .line 103
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    add-int/lit8 v6, v4, 0x1

    .line 106
    aget-byte v7, p1, v5

    shr-int/2addr v7, v1

    invoke-static {v7}, Lo/aij;->e(I)C

    move-result v7

    aput-char v7, v0, v4

    add-int/lit8 v4, v6, 0x1

    .line 107
    aget-byte v7, p1, v5

    and-int/2addr v7, v2

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v5, 0x1

    aget-byte v9, p1, v8

    shr-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v7, v9

    invoke-static {v7}, Lo/aij;->e(I)C

    move-result v7

    aput-char v7, v0, v6

    add-int/lit8 v6, v4, 0x1

    .line 108
    aget-byte v7, p1, v8

    and-int/lit8 v7, v7, 0xf

    shl-int/2addr v7, v1

    add-int/lit8 v8, v5, 0x2

    aget-byte v9, p1, v8

    shr-int/lit8 v9, v9, 0x6

    and-int/2addr v9, v2

    or-int/2addr v7, v9

    invoke-static {v7}, Lo/aij;->e(I)C

    move-result v7

    aput-char v7, v0, v4

    add-int/lit8 v4, v6, 0x1

    .line 109
    aget-byte v7, p1, v8

    and-int/lit8 v7, v7, 0x3f

    invoke-static {v7}, Lo/aij;->e(I)C

    move-result v7

    aput-char v7, v0, v6

    add-int/lit8 v3, v3, -0x3

    add-int/lit8 v5, v5, 0x3

    goto :goto_0

    :cond_0
    const/16 v6, 0x3d

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    add-int/lit8 v3, v4, 0x1

    .line 113
    aget-byte v7, p1, v5

    shr-int/lit8 v1, v7, 0x2

    invoke-static {v1}, Lo/aij;->e(I)C

    move-result v1

    aput-char v1, v0, v4

    add-int/lit8 v1, v3, 0x1

    .line 114
    aget-byte p1, p1, v5

    and-int/2addr p1, v2

    shl-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Lo/aij;->e(I)C

    move-result p1

    aput-char p1, v0, v3

    add-int/lit8 p1, v1, 0x1

    .line 115
    aput-char v6, v0, v1

    .line 116
    aput-char v6, v0, p1

    goto :goto_1

    :cond_1
    if-ne v3, v1, :cond_2

    add-int/lit8 v3, v4, 0x1

    .line 120
    aget-byte v8, p1, v5

    shr-int/2addr v8, v1

    invoke-static {v8}, Lo/aij;->e(I)C

    move-result v8

    aput-char v8, v0, v4

    add-int/lit8 v4, v3, 0x1

    .line 121
    aget-byte v8, p1, v5

    and-int/2addr v2, v8

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v5, v7

    aget-byte v7, p1, v5

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v2, v7

    invoke-static {v2}, Lo/aij;->e(I)C

    move-result v2

    aput-char v2, v0, v3

    add-int/lit8 v2, v4, 0x1

    .line 122
    aget-byte p1, p1, v5

    and-int/lit8 p1, p1, 0xf

    shl-int/2addr p1, v1

    invoke-static {p1}, Lo/aij;->e(I)C

    move-result p1

    aput-char p1, v0, v4

    .line 123
    aput-char v6, v0, v2

    .line 127
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public c(Ljava/lang/String;)[B
    .locals 18

    move-object/from16 v0, p1

    .line 140
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 144
    array-length v2, v1

    mul-int/lit8 v3, v2, 0x3

    const/4 v4, 0x4

    .line 145
    div-int/2addr v3, v4

    .line 146
    new-array v3, v3, [B

    new-array v5, v4, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/4 v12, 0x1

    if-ge v7, v2, :cond_b

    .line 154
    aget-byte v13, v1, v7

    if-gez v13, :cond_0

    :goto_1
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 163
    :cond_0
    sget-object v14, Lo/aij;->b:[B

    aget-byte v14, v14, v13

    const/4 v15, -0x1

    if-ne v14, v15, :cond_1

    const/16 v14, 0x20

    if-eq v13, v14, :cond_a

    const/16 v14, 0x9

    if-eq v13, v14, :cond_a

    const/16 v14, 0xa

    if-eq v13, v14, :cond_a

    const/16 v14, 0xd

    if-eq v13, v14, :cond_a

    goto :goto_1

    :cond_1
    if-eqz v11, :cond_2

    const/4 v9, 0x1

    :cond_2
    add-int/lit8 v13, v8, 0x1

    .line 178
    aput-byte v14, v5, v8

    if-ne v13, v4, :cond_9

    .line 183
    aget-byte v8, v5, v6

    const/16 v13, 0x7f

    if-eq v8, v13, :cond_3

    aget-byte v8, v5, v12

    if-ne v8, v13, :cond_4

    :cond_3
    const/4 v9, 0x1

    :cond_4
    const/4 v8, 0x2

    .line 188
    aget-byte v14, v5, v8

    const/4 v15, 0x3

    if-eq v14, v13, :cond_5

    aget-byte v14, v5, v15

    if-ne v14, v13, :cond_6

    :cond_5
    const/4 v11, 0x1

    :cond_6
    add-int/lit8 v14, v10, 0x1

    .line 192
    aget-byte v16, v5, v6

    shl-int/lit8 v16, v16, 0x2

    aget-byte v17, v5, v12

    shr-int/lit8 v17, v17, 0x4

    or-int v6, v16, v17

    int-to-byte v6, v6

    aput-byte v6, v3, v10

    .line 193
    aget-byte v6, v5, v8

    if-eq v6, v13, :cond_7

    add-int/lit8 v6, v14, 0x1

    .line 194
    aget-byte v10, v5, v12

    shl-int/2addr v10, v4

    aget-byte v12, v5, v8

    shr-int/2addr v12, v8

    or-int/2addr v10, v12

    int-to-byte v10, v10

    aput-byte v10, v3, v14

    move v14, v6

    .line 195
    :cond_7
    aget-byte v6, v5, v15

    if-eq v6, v13, :cond_8

    add-int/lit8 v6, v14, 0x1

    .line 196
    aget-byte v8, v5, v8

    shl-int/lit8 v8, v8, 0x6

    aget-byte v10, v5, v15

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v3, v14

    move v14, v6

    :cond_8
    move v10, v14

    const/4 v8, 0x0

    goto :goto_2

    :cond_9
    move v8, v13

    :cond_a
    :goto_2
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_0

    :cond_b
    if-eqz v8, :cond_c

    const/4 v9, 0x1

    :cond_c
    if-nez v9, :cond_d

    .line 213
    new-array v0, v10, [B

    const/4 v1, 0x0

    .line 214
    invoke-static {v3, v1, v0, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 209
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Base64 encoded string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
