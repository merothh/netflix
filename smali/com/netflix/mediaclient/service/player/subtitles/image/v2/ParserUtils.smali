.class public final Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;
.super Ljava/lang/Object;
.source "ParserUtils.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_subtitles_imv2"

.field public static final UTF8_CHARSET:Ljava/lang/String; = "UTF-8"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decode([B)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;->decode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final decode([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isType([B[B)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p0

    array-length v2, p1

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-byte v2, p1, v0

    aget-byte v3, p0, v0

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static readByteArray(Ljava/io/DataInputStream;I)[B
    .locals 1

    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->read([B)I

    return-object v0
.end method

.method public static readUUID(Ljava/io/DataInputStream;)Ljava/util/UUID;
    .locals 5

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->read([B)I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v2, v3, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readUUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static readUint16([B)I
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Byte array is bad!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;->readUint16([BI)I

    move-result v0

    return v0
.end method

.method public static readUint16([BI)I
    .locals 3

    const/4 v0, 0x0

    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static readUint32([B)J
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Byte array is bad!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;->readUint32([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readUint32([BI)J
    .locals 4

    const-wide/16 v0, 0x0

    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    int-to-long v2, v2

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    int-to-long v2, v2

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    int-to-long v2, v2

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static readUint64([B)J
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;->readUint64([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readUint64([BI)J
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    add-int v1, v0, p1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    mul-int/lit8 v1, v0, 0x8

    rsub-int/lit8 v1, v1, 0x38

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public static readUint8(B)S
    .locals 1

    and-int/lit16 v0, p0, 0xff

    int-to-short v0, v0

    return v0
.end method
