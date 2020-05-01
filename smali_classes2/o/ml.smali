.class public Lo/ml;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string v0, "encrypt exception %s"

    const-string v1, "MdxTargetCryptContext"

    .line 54
    invoke-static {p0}, Lo/ml;->b([B)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 58
    :try_start_0
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 59
    array-length v5, p1

    if-nez v5, :cond_1

    const-string p0, "encrypt input data size is 0"

    .line 60
    invoke-static {v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    const-string v5, "AES/CBC/PKCS5Padding"

    .line 63
    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 64
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v7, 0x20

    const-string v8, "AES"

    const/16 v9, 0x10

    invoke-direct {v6, p0, v7, v9, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 66
    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    new-array v7, v9, [B

    .line 68
    invoke-virtual {p0, v7}, Ljava/util/Random;->nextBytes([B)V

    .line 69
    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 70
    invoke-virtual {v5, v4, v6, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 72
    invoke-virtual {v5, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 73
    array-length p1, p0

    if-eqz p1, :cond_5

    const/16 v5, 0x7fff

    if-le p1, v5, :cond_2

    goto :goto_1

    .line 78
    :cond_2
    invoke-static {v9}, Lo/ml;->b(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v5, v9

    invoke-static {p1}, Lo/ml;->b(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, p1

    const-string v6, "data length %d, envelop length %d"

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v1, v6, v10}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 80
    new-array v5, v5, [B

    .line 81
    aput-byte v8, v5, v2

    .line 82
    aput-byte v9, v5, v4

    .line 83
    invoke-static {v7, v2, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v6, 0x12

    const/16 v7, 0x3fff

    if-gt p1, v7, :cond_4

    const/16 v7, 0x7f

    const/16 v8, 0x13

    if-gt p1, v7, :cond_3

    int-to-byte v7, p1

    .line 92
    aput-byte v7, v5, v6

    const/16 v6, 0x13

    goto :goto_0

    :cond_3
    shr-int/lit8 v7, p1, 0x8

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 94
    aput-byte v7, v5, v6

    const/16 v6, 0x14

    and-int/lit16 v7, p1, 0xff

    int-to-byte v7, v7

    .line 95
    aput-byte v7, v5, v8

    .line 97
    :goto_0
    invoke-static {p0, v2, v5, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    invoke-static {v5}, Lo/aik;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v3

    :cond_5
    :goto_1
    const-string p0, "incorrect encrypt ciphertext data size %x"

    new-array v5, v4, [Ljava/lang/Object;

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-static {v1, p0, v5}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p0, p1, v2

    .line 113
    invoke-static {v1, v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    :catch_1
    move-exception p0

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p0, p1, v2

    .line 111
    invoke-static {v1, v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    :catch_2
    move-exception p0

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p0, p1, v2

    .line 109
    invoke-static {v1, v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    :catch_3
    move-exception p0

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p0, p1, v2

    .line 107
    invoke-static {v1, v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    :catch_4
    move-exception p0

    goto :goto_2

    :catch_5
    move-exception p0

    :goto_2
    new-array p1, v4, [Ljava/lang/Object;

    aput-object p0, p1, v2

    .line 105
    invoke-static {v1, v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_3
    return-object v3
.end method

.method private static b(I)I
    .locals 1

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method static b([BLjava/lang/String;)Ljava/lang/String;
    .locals 14

    const-string v0, "decrypt exception %s"

    .line 124
    invoke-static {p0}, Lo/ml;->b([B)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 127
    :cond_0
    invoke-static {p1}, Lo/aik;->b(Ljava/lang/String;)[B

    move-result-object p1

    .line 128
    array-length v1, p1

    const/16 v3, 0x11

    const-string v4, "MdxTargetCryptContext"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gt v1, v3, :cond_1

    new-array p0, v5, [Ljava/lang/Object;

    .line 129
    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v6

    const-string p1, "decrypt input not enough for IV %d"

    invoke-static {v4, p1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v2

    .line 131
    :cond_1
    aget-byte v1, p1, v6

    const/16 v3, 0x10

    const/4 v7, 0x2

    if-eq v1, v7, :cond_2

    aget-byte v1, p1, v5

    if-eq v1, v3, :cond_2

    new-array p0, v7, [Ljava/lang/Object;

    .line 132
    aget-byte v0, p1, v6

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, p0, v6

    aget-byte p1, p1, v5

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, p0, v5

    const-string p1, "decrypt input has wrong version/iv_siz %d %d"

    invoke-static {v4, p1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v2

    :cond_2
    :try_start_0
    const-string v1, "AES/CBC/PKCS5Padding"

    .line 137
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 138
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v9, 0x20

    const-string v10, "AES"

    invoke-direct {v8, p0, v9, v3, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 139
    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0, p1, v7, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .line 140
    invoke-virtual {v1, v7, v8, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/16 p0, 0x12

    .line 144
    array-length v3, p1

    sub-int/2addr v3, p0

    new-array v3, v3, [B

    const/4 v8, 0x0

    .line 145
    :goto_0
    array-length v9, p1

    if-ge p0, v9, :cond_8

    add-int/lit8 v9, p0, 0x1

    .line 146
    aget-byte p0, p1, p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p0, p0, 0xff

    const-string v10, "has invlid chunk size %x"

    const/16 v11, 0xc0

    if-le p0, v11, :cond_3

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/high16 p0, 0x10000

    goto :goto_2

    :pswitch_1
    const p0, 0xc000

    goto :goto_2

    :pswitch_2
    const p0, 0x8000

    goto :goto_2

    :pswitch_3
    const/16 p0, 0x4000

    goto :goto_2

    :goto_1
    :try_start_1
    new-array p1, v5, [Ljava/lang/Object;

    .line 162
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v6

    invoke-static {v4, v10, p1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v2

    :cond_3
    and-int/lit16 v11, p0, 0xc0

    const/16 v12, 0x80

    if-ne v11, v12, :cond_5

    .line 166
    array-length v11, p1

    if-ne v9, v11, :cond_4

    goto :goto_3

    :cond_4
    and-int/lit8 p0, p0, 0x3f

    shl-int/lit8 p0, p0, 0x8

    add-int/lit8 v11, v9, 0x1

    .line 171
    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr p0, v9

    move v9, v11

    :cond_5
    :goto_2
    const-string v11, "has chunck size 0x%x"

    new-array v12, v5, [Ljava/lang/Object;

    .line 173
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-static {v4, v11, v12}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-gtz p0, :cond_6

    goto :goto_3

    :cond_6
    const-string v11, "copy buffer data from offset %d to %d"

    new-array v12, v7, [Ljava/lang/Object;

    .line 177
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-static {v4, v11, v12}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    add-int v11, v9, p0

    .line 178
    array-length v12, p1

    if-le v11, v12, :cond_7

    new-array p1, v5, [Ljava/lang/Object;

    .line 179
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v6

    invoke-static {v4, v10, p1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v2

    .line 182
    :cond_7
    invoke-static {p1, v9, v3, v8, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, p0

    move p0, v11

    goto :goto_0

    :cond_8
    :goto_3
    if-lez v8, :cond_9

    .line 187
    invoke-virtual {v1, v3, v6, v8}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0

    .line 188
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-array p1, v5, [Ljava/lang/Object;

    aput-object p0, p1, v6

    .line 199
    invoke-static {v4, v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_5

    :catch_1
    move-exception p0

    new-array p1, v5, [Ljava/lang/Object;

    aput-object p0, p1, v6

    .line 197
    invoke-static {v4, v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_5

    :catch_2
    move-exception p0

    new-array p1, v5, [Ljava/lang/Object;

    aput-object p0, p1, v6

    .line 195
    invoke-static {v4, v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_5

    :catch_3
    move-exception p0

    new-array p1, v5, [Ljava/lang/Object;

    aput-object p0, p1, v6

    .line 193
    invoke-static {v4, v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_5

    :catch_4
    move-exception p0

    goto :goto_4

    :catch_5
    move-exception p0

    :goto_4
    new-array p1, v5, [Ljava/lang/Object;

    aput-object p0, p1, v6

    .line 191
    invoke-static {v4, v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_9
    :goto_5
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0xc1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b([B)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 225
    array-length p0, p0

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static d([BLjava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "HmacSHA256"

    .line 211
    invoke-static {p0}, Lo/ml;->b([B)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    .line 215
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 216
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v5, 0x20

    invoke-direct {v4, p0, v1, v5, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 217
    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 218
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    invoke-static {p0}, Lo/aik;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "MdxTargetCryptContext"

    const-string v0, "hmac has exception %s"

    .line 220
    invoke-static {p0, v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v2
.end method
