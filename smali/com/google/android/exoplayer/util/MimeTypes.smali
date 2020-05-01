.class public final Lcom/google/android/exoplayer/util/MimeTypes;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# direct methods
.method public static getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string/jumbo v0, "audio/x-unknown"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_c

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mp4a"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v0, "audio/mp4a-latm"

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "ac-3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "dac3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string/jumbo v0, "audio/ac3"

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "ec-3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "dec3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const-string/jumbo v0, "audio/eac3"

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "dtsc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v0, "audio/vnd.dts"

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "dtsh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "dtsl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    const-string/jumbo v0, "audio/vnd.dts.hd"

    goto :goto_0

    :cond_8
    const-string/jumbo v4, "dtse"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v0, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_0

    :cond_9
    const-string/jumbo v4, "opus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v0, "audio/opus"

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v4, "vorbis"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string/jumbo v0, "audio/vorbis"

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v0, "audio/x-unknown"

    goto/16 :goto_0
.end method

.method private static getTopLevelType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid mime type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string/jumbo v0, "video/x-unknown"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_7

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "avc1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "avc3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string/jumbo v0, "video/avc"

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "hev1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "hvc1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const-string/jumbo v0, "video/hevc"

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "vp9"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "vp8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v0, "video/x-vnd.on2.vp8"

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    const-string/jumbo v0, "video/x-unknown"

    goto :goto_0
.end method

.method public static isAudio(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/android/exoplayer/util/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isText(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/android/exoplayer/util/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVideo(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/android/exoplayer/util/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
