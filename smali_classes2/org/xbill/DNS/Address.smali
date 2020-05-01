.class public final Lorg/xbill/DNS/Address;
.super Ljava/lang/Object;
.source "Address.java"


# static fields
.field public static final IPv4:I = 0x1

.field public static final IPv6:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addrFromRecord(Ljava/lang/String;Lorg/xbill/DNS/Record;)Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 265
    instance-of v0, p1, Lorg/xbill/DNS/ARecord;

    if-eqz v0, :cond_0

    .line 266
    check-cast p1, Lorg/xbill/DNS/ARecord;

    invoke-virtual {p1}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 270
    :goto_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 268
    :cond_0
    check-cast p1, Lorg/xbill/DNS/AAAARecord;

    invoke-virtual {p1}, Lorg/xbill/DNS/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public static addressLength(I)I
    .locals 2

    .prologue
    .line 385
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 386
    const/4 v0, 0x4

    .line 388
    :goto_0
    return v0

    .line 387
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 388
    const/16 v0, 0x10

    goto :goto_0

    .line 389
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static familyOf(Ljava/net/InetAddress;)I
    .locals 2

    .prologue
    .line 371
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 372
    const/4 v0, 0x1

    .line 374
    :goto_0
    return v0

    .line 373
    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 374
    const/4 v0, 0x2

    goto :goto_0

    .line 375
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 298
    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 299
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/InetAddress;

    const/4 v3, 0x0

    aput-object v2, v1, v3
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 305
    :goto_0
    return-object v0

    .line 300
    :catch_0
    move-exception v1

    .line 301
    invoke-static {p0, v4}, Lorg/xbill/DNS/Address;->lookupHostName(Ljava/lang/String;Z)[Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 302
    array-length v1, v2

    new-array v1, v1, [Ljava/net/InetAddress;

    .line 303
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 304
    aget-object v3, v2, v0

    invoke-static {p0, v3}, Lorg/xbill/DNS/Address;->addrFromRecord(Ljava/lang/String;Lorg/xbill/DNS/Record;)Ljava/net/InetAddress;

    move-result-object v3

    aput-object v3, v1, v0

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move-object v0, v1

    .line 305
    goto :goto_0
.end method

.method public static getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3

    .prologue
    .line 319
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 320
    if-eqz v0, :cond_0

    .line 321
    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    .line 322
    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 323
    if-eqz v0, :cond_1

    .line 324
    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    .line 325
    :cond_1
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getByAddress(Ljava/lang/String;I)Ljava/net/InetAddress;
    .locals 3

    .prologue
    .line 339
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    invoke-static {p0, p1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 343
    if-eqz v0, :cond_1

    .line 344
    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 345
    :cond_1
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 282
    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    invoke-static {p0, v1}, Lorg/xbill/DNS/Address;->lookupHostName(Ljava/lang/String;Z)[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 285
    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->addrFromRecord(Ljava/lang/String;Lorg/xbill/DNS/Record;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public static getHostName(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 356
    invoke-static {p0}, Lorg/xbill/DNS/ReverseMap;->fromAddress(Ljava/net/InetAddress;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 357
    new-instance v1, Lorg/xbill/DNS/Lookup;

    const/16 v2, 0xc

    invoke-direct {v1, v0, v2}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v1}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 358
    if-nez v0, :cond_0

    .line 359
    new-instance v0, Ljava/net/UnknownHostException;

    const-string/jumbo v1, "unknown address"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/xbill/DNS/PTRRecord;

    .line 361
    invoke-virtual {v0}, Lorg/xbill/DNS/PTRRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDottedQuad(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 209
    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v1

    .line 210
    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lookupHostName(Ljava/lang/String;Z)[Lorg/xbill/DNS/Record;
    .locals 6

    .prologue
    .line 237
    :try_start_0
    new-instance v1, Lorg/xbill/DNS/Lookup;

    const/4 v0, 0x1

    invoke-direct {v1, p0, v0}, Lorg/xbill/DNS/Lookup;-><init>(Ljava/lang/String;I)V

    .line 238
    invoke-virtual {v1}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 239
    if-nez v0, :cond_2

    .line 240
    invoke-virtual {v1}, Lorg/xbill/DNS/Lookup;->getResult()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 241
    new-instance v0, Lorg/xbill/DNS/Lookup;

    const/16 v1, 0x1c

    invoke-direct {v0, p0, v1}, Lorg/xbill/DNS/Lookup;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-object v0

    .line 245
    :cond_1
    new-instance v0, Ljava/net/UnknownHostException;

    const-string/jumbo v1, "unknown host"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    new-instance v0, Ljava/net/UnknownHostException;

    const-string/jumbo v1, "invalid name"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_2
    if-eqz p1, :cond_0

    .line 249
    :try_start_1
    new-instance v1, Lorg/xbill/DNS/Lookup;

    const/16 v2, 0x1c

    invoke-direct {v1, p0, v2}, Lorg/xbill/DNS/Lookup;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 250
    if-eqz v2, :cond_0

    .line 252
    array-length v1, v0

    array-length v3, v2

    add-int/2addr v1, v3

    new-array v1, v1, [Lorg/xbill/DNS/Record;

    .line 253
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    const/4 v3, 0x0

    array-length v0, v0

    array-length v4, v2

    invoke-static {v2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 255
    goto :goto_0
.end method

.method private static parseV4(Ljava/lang/String;)[B
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 27
    const/4 v0, 0x4

    new-array v5, v0, [B

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    move v6, v1

    move v7, v1

    move v2, v1

    move v3, v1

    .line 34
    :goto_0
    if-ge v6, v8, :cond_7

    .line 35
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 36
    const/16 v9, 0x30

    if-lt v0, v9, :cond_2

    const/16 v9, 0x39

    if-gt v0, v9, :cond_2

    .line 38
    if-ne v3, v10, :cond_0

    move-object v0, v4

    .line 69
    :goto_1
    return-object v0

    .line 41
    :cond_0
    if-lez v3, :cond_1

    if-nez v7, :cond_1

    move-object v0, v4

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 44
    mul-int/lit8 v7, v7, 0xa

    .line 45
    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v7

    .line 47
    const/16 v7, 0xff

    if-le v0, v7, :cond_5

    move-object v0, v4

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/16 v9, 0x2e

    if-ne v0, v9, :cond_6

    .line 51
    if-ne v2, v10, :cond_3

    move-object v0, v4

    .line 52
    goto :goto_1

    .line 54
    :cond_3
    if-nez v3, :cond_4

    move-object v0, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_4
    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, v7

    aput-byte v3, v5, v2

    move v2, v0

    move v3, v1

    move v0, v1

    .line 34
    :cond_5
    add-int/lit8 v6, v6, 0x1

    move v7, v0

    goto :goto_0

    :cond_6
    move-object v0, v4

    .line 60
    goto :goto_1

    .line 63
    :cond_7
    if-eq v2, v10, :cond_8

    move-object v0, v4

    .line 64
    goto :goto_1

    .line 66
    :cond_8
    if-nez v3, :cond_9

    move-object v0, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_9
    int-to-byte v0, v7

    aput-byte v0, v5, v2

    move-object v0, v5

    .line 69
    goto :goto_1
.end method

.method private static parseV6(Ljava/lang/String;)[B
    .locals 13

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/16 v12, 0x10

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 74
    .line 75
    new-array v5, v12, [B

    .line 77
    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 80
    array-length v0, v9

    add-int/lit8 v6, v0, -0x1

    .line 82
    aget-object v0, v9, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    .line 86
    sub-int v0, v6, v2

    if-lez v0, :cond_0

    aget-object v0, v9, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 92
    :goto_0
    aget-object v7, v9, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_10

    .line 96
    sub-int v7, v6, v0

    if-lez v7, :cond_1

    add-int/lit8 v7, v6, -0x1

    aget-object v7, v9, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 97
    add-int/lit8 v6, v6, -0x1

    move v8, v6

    .line 102
    :goto_1
    sub-int v6, v8, v0

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x8

    if-le v6, v7, :cond_2

    move-object v0, v4

    .line 156
    :goto_2
    return-object v0

    :cond_0
    move-object v0, v4

    .line 89
    goto :goto_2

    :cond_1
    move-object v0, v4

    .line 99
    goto :goto_2

    :cond_2
    move v7, v0

    move v0, v2

    .line 106
    :goto_3
    if-gt v7, v8, :cond_d

    .line 107
    aget-object v6, v9, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 108
    if-ltz v3, :cond_3

    move-object v0, v4

    .line 109
    goto :goto_2

    :cond_3
    move v3, v0

    .line 106
    :goto_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_3

    .line 114
    :cond_4
    aget-object v6, v9, v7

    const/16 v10, 0x2e

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_8

    .line 116
    if-ge v7, v8, :cond_5

    move-object v0, v4

    .line 117
    goto :goto_2

    .line 119
    :cond_5
    const/4 v6, 0x6

    if-le v7, v6, :cond_6

    move-object v0, v4

    .line 120
    goto :goto_2

    .line 121
    :cond_6
    aget-object v6, v9, v7

    invoke-static {v6, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v7

    .line 122
    if-nez v7, :cond_7

    move-object v0, v4

    .line 123
    goto :goto_2

    :cond_7
    move v1, v2

    .line 124
    :goto_5
    const/4 v6, 0x4

    if-ge v1, v6, :cond_d

    .line 125
    add-int/lit8 v6, v0, 0x1

    aget-byte v8, v7, v1

    aput-byte v8, v5, v0

    .line 124
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v6

    goto :goto_5

    :cond_8
    move v6, v2

    .line 130
    :goto_6
    :try_start_0
    aget-object v10, v9, v7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_a

    .line 131
    aget-object v10, v9, v7

    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 132
    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    if-gez v10, :cond_9

    move-object v0, v4

    .line 133
    goto :goto_2

    .line 130
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 135
    :cond_a
    aget-object v6, v9, v7

    const/16 v10, 0x10

    invoke-static {v6, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 136
    const v10, 0xffff

    if-gt v6, v10, :cond_b

    if-gez v6, :cond_c

    :cond_b
    move-object v0, v4

    .line 137
    goto :goto_2

    .line 138
    :cond_c
    add-int/lit8 v10, v0, 0x1

    ushr-int/lit8 v11, v6, 0x8

    int-to-byte v11, v11

    aput-byte v11, v5, v0

    .line 139
    add-int/lit8 v0, v10, 0x1

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 141
    :catch_0
    move-exception v0

    move-object v0, v4

    .line 142
    goto/16 :goto_2

    .line 146
    :cond_d
    if-ge v0, v12, :cond_e

    if-gez v3, :cond_e

    move-object v0, v4

    .line 147
    goto/16 :goto_2

    .line 149
    :cond_e
    if-ltz v3, :cond_f

    .line 150
    rsub-int/lit8 v1, v0, 0x10

    .line 151
    add-int v4, v3, v1

    sub-int/2addr v0, v3

    invoke-static {v5, v3, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v3

    .line 152
    :goto_7
    add-int v4, v3, v1

    if-ge v0, v4, :cond_f

    .line 153
    aput-byte v2, v5, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_f
    move-object v0, v5

    .line 156
    goto/16 :goto_2

    :cond_10
    move v8, v6

    goto/16 :goto_1

    :cond_11
    move v0, v2

    goto/16 :goto_0
.end method

.method public static toArray(Ljava/lang/String;)[I
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->toArray(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public static toArray(Ljava/lang/String;I)[I
    .locals 4

    .prologue
    .line 167
    invoke-static {p0, p1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v2

    .line 168
    if-nez v2, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    .line 170
    :cond_0
    array-length v0, v2

    new-array v1, v0, [I

    .line 171
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 172
    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 173
    goto :goto_0
.end method

.method public static toByteArray(Ljava/lang/String;I)[B
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 195
    invoke-static {p0}, Lorg/xbill/DNS/Address;->parseV4(Ljava/lang/String;)[B

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 196
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 197
    invoke-static {p0}, Lorg/xbill/DNS/Address;->parseV6(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toDottedQuad([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toDottedQuad([I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static truncate(Ljava/net/InetAddress;I)Ljava/net/InetAddress;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 401
    invoke-static {p0}, Lorg/xbill/DNS/Address;->familyOf(Ljava/net/InetAddress;)I

    move-result v0

    .line 402
    invoke-static {v0}, Lorg/xbill/DNS/Address;->addressLength(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    .line 403
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 404
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid mask length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_1
    if-ne p1, v0, :cond_2

    .line 416
    :goto_0
    return-object p0

    .line 407
    :cond_2
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 408
    div-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 409
    aput-byte v1, v2, v0

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 410
    :cond_3
    rem-int/lit8 v3, p1, 0x8

    move v0, v1

    .line 412
    :goto_2
    if-ge v0, v3, :cond_4

    .line 413
    const/4 v4, 0x1

    rsub-int/lit8 v5, v0, 0x7

    shl-int/2addr v4, v5

    or-int/2addr v1, v4

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 414
    :cond_4
    div-int/lit8 v0, p1, 0x8

    aget-byte v3, v2, v0

    and-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 416
    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
