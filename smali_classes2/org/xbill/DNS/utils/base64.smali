.class public Lorg/xbill/DNS/utils/base64;
.super Ljava/lang/Object;
.source "base64.java"


# static fields
.field private static final Base64:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatString([BILjava/lang/String;Z)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int v3, v0, p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_0

    const-string/jumbo v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_1
    add-int/2addr v0, p1

    goto :goto_0

    :cond_1
    add-int v3, v0, p1

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)[B
    .locals 14

    const/4 v2, 0x0

    const/4 v13, 0x3

    const/4 v1, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x2

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    aget-byte v5, v3, v0

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_0

    aget-byte v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    array-length v0, v5

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move v0, v1

    :goto_2
    array-length v3, v5

    add-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    if-ge v0, v3, :cond_9

    const/4 v3, 0x4

    new-array v7, v3, [S

    new-array v8, v13, [S

    move v3, v1

    :goto_3
    const/4 v9, 0x4

    if-ge v3, v9, :cond_3

    const-string/jumbo v9, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    mul-int/lit8 v10, v0, 0x4

    add-int/2addr v10, v3

    aget-byte v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    int-to-short v9, v9

    aput-short v9, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    aget-short v3, v7, v1

    shl-int/lit8 v3, v3, 0x2

    aget-short v9, v7, v12

    shr-int/lit8 v9, v9, 0x4

    add-int/2addr v3, v9

    int-to-short v3, v3

    aput-short v3, v8, v1

    aget-short v3, v7, v11

    const/16 v9, 0x40

    if-ne v3, v9, :cond_4

    const/4 v3, -0x1

    aput-short v3, v8, v11

    aput-short v3, v8, v12

    aget-short v3, v7, v12

    and-int/lit8 v3, v3, 0xf

    if-eqz v3, :cond_6

    move-object v0, v2

    goto :goto_1

    :cond_4
    aget-short v3, v7, v13

    const/16 v9, 0x40

    if-ne v3, v9, :cond_5

    aget-short v3, v7, v12

    shl-int/lit8 v3, v3, 0x4

    aget-short v9, v7, v11

    shr-int/lit8 v9, v9, 0x2

    add-int/2addr v3, v9

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v8, v12

    const/4 v3, -0x1

    aput-short v3, v8, v11

    aget-short v3, v7, v11

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_6

    move-object v0, v2

    goto :goto_1

    :cond_5
    aget-short v3, v7, v12

    shl-int/lit8 v3, v3, 0x4

    aget-short v9, v7, v11

    shr-int/lit8 v9, v9, 0x2

    add-int/2addr v3, v9

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v8, v12

    aget-short v3, v7, v11

    shl-int/lit8 v3, v3, 0x6

    aget-short v7, v7, v13

    add-int/2addr v3, v7

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v8, v11

    :cond_6
    move v3, v1

    :goto_4
    if-ge v3, v13, :cond_8

    :try_start_0
    aget-short v7, v8, v3

    if-ltz v7, :cond_7

    aget-short v7, v8, v3

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catch_0
    move-exception v3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto/16 :goto_1
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v0, v1

    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_6

    new-array v4, v10, [S

    const/4 v2, 0x4

    new-array v5, v2, [S

    move v2, v1

    :goto_1
    if-ge v2, v10, :cond_1

    mul-int/lit8 v6, v0, 0x3

    add-int/2addr v6, v2

    array-length v7, p0

    if-ge v6, v7, :cond_0

    mul-int/lit8 v6, v0, 0x3

    add-int/2addr v6, v2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    aput-short v6, v4, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    aput-short v11, v4, v2

    goto :goto_2

    :cond_1
    aget-short v2, v4, v1

    shr-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    aput-short v2, v5, v1

    aget-short v2, v4, v8

    if-ne v2, v11, :cond_2

    aget-short v2, v4, v1

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x4

    int-to-short v2, v2

    aput-short v2, v5, v8

    :goto_3
    aget-short v2, v4, v8

    if-ne v2, v11, :cond_3

    const/16 v2, 0x40

    aput-short v2, v5, v10

    aput-short v2, v5, v9

    :goto_4
    move v2, v1

    :goto_5
    const/4 v4, 0x4

    if-ge v2, v4, :cond_5

    const-string/jumbo v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    aget-short v6, v5, v2

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_2
    aget-short v2, v4, v1

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x4

    aget-short v6, v4, v8

    shr-int/lit8 v6, v6, 0x4

    add-int/2addr v2, v6

    int-to-short v2, v2

    aput-short v2, v5, v8

    goto :goto_3

    :cond_3
    aget-short v2, v4, v9

    if-ne v2, v11, :cond_4

    aget-short v2, v4, v8

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    aput-short v2, v5, v9

    const/16 v2, 0x40

    aput-short v2, v5, v10

    goto :goto_4

    :cond_4
    aget-short v2, v4, v8

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x2

    aget-short v6, v4, v9

    shr-int/lit8 v6, v6, 0x6

    add-int/2addr v2, v6

    int-to-short v2, v2

    aput-short v2, v5, v9

    aget-short v2, v4, v9

    and-int/lit8 v2, v2, 0x3f

    int-to-short v2, v2

    aput-short v2, v5, v10

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
