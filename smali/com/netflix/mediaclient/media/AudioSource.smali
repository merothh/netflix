.class public abstract Lcom/netflix/mediaclient/media/AudioSource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/netflix/mediaclient/media/AudioSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final ASSISTIVE_AUDIO:I = 0x2

.field protected static final ATTR_BITRATE:Ljava/lang/String; = "bitrate"

.field protected static final ATTR_DISSALOWED_TIMED_TEXT_TRACK:Ljava/lang/String; = "disallowedSubtitleTracks"

.field protected static final ATTR_DLID:Ljava/lang/String; = "downloadable_id"

.field protected static final ATTR_ID:Ljava/lang/String; = "id"

.field protected static final ATTR_IS_NATIVE:Ljava/lang/String; = "isNative"

.field protected static final ATTR_LANGUAGE:Ljava/lang/String; = "language"

.field protected static final ATTR_LANGUAGE_DESCRIPTION:Ljava/lang/String; = "languageDescription"

.field protected static final ATTR_NUM_CHANNELS:Ljava/lang/String; = "channels"

.field protected static final ATTR_ORDER:Ljava/lang/String; = "order"

.field protected static final ATTR_SELECTED:Ljava/lang/String; = "selected"

.field protected static final ATTR_TRACK_TYPE:Ljava/lang/String; = "trackType"

.field public static final COMMENTARY_AUDIO:I = 0x1

.field public static final DDPLUS_AUDIO:I = 0x4

.field public static final DOLBY_AC3_AUDIO:I = 0x1

.field public static final HEAAC_AUDIO:I = 0x3

.field protected static final NONE:Ljava/lang/String; = "none"

.field public static final OGG_VORBIS_AUDIO:I = 0x2

.field public static final PRIMARY_AUDIO:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "nf_audio_source"

.field public static final UNKNOWN_AUDIO:I = 0x3

.field public static final UNKNOWN_AUDIO_CODEC:I = -0x1

.field public static final WMA_AUDIO:I


# instance fields
.field protected bitrate:I

.field protected codecType:I

.field protected disallowedSubtitles:[Ljava/lang/String;

.field protected dlid:Ljava/lang/String;

.field protected id:Ljava/lang/String;

.field protected isNative:Z

.field protected languageCodeBcp47:Ljava/lang/String;

.field protected languageDescription:Ljava/lang/String;

.field protected nccpOrderNumber:I

.field protected numChannels:I

.field protected streams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;"
        }
    .end annotation
.end field

.field protected trackType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->streams:Ljava/util/List;

    return-void
.end method

.method public static dumpLog([Lcom/netflix/mediaclient/media/AudioSource;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Audios are null!"

    .line 338
    invoke-static {p1, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/netflix/mediaclient/media/AudioSource;)I
    .locals 5

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 207
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->trackType:I

    iget v2, p1, Lcom/netflix/mediaclient/media/AudioSource;->trackType:I

    const/4 v3, 0x1

    if-le v1, v2, :cond_1

    return v3

    :cond_1
    if-ge v1, v2, :cond_2

    return v0

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->languageDescription:Ljava/lang/String;

    if-nez v1, :cond_3

    return v0

    .line 218
    :cond_3
    iget-object v1, p1, Lcom/netflix/mediaclient/media/AudioSource;->languageDescription:Ljava/lang/String;

    if-nez v1, :cond_4

    return v3

    .line 222
    :cond_4
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/netflix/mediaclient/media/AudioSource;->languageDescription:Ljava/lang/String;

    iget-object v4, p1, Lcom/netflix/mediaclient/media/AudioSource;->languageDescription:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_6

    .line 224
    iget-object v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->languageDescription:Ljava/lang/String;

    iget-object v2, p1, Lcom/netflix/mediaclient/media/AudioSource;->languageDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 226
    iget v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->numChannels:I

    iget p1, p1, Lcom/netflix/mediaclient/media/AudioSource;->numChannels:I

    if-ge v1, p1, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    if-ne v1, p1, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    move v0, v1

    :cond_7
    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lcom/netflix/mediaclient/media/AudioSource;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/media/AudioSource;->compareTo(Lcom/netflix/mediaclient/media/AudioSource;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 367
    :cond_1
    instance-of v2, p1, Lcom/netflix/mediaclient/media/AudioSource;

    if-nez v2, :cond_2

    return v1

    .line 370
    :cond_2
    check-cast p1, Lcom/netflix/mediaclient/media/AudioSource;

    .line 371
    iget v2, p0, Lcom/netflix/mediaclient/media/AudioSource;->nccpOrderNumber:I

    iget p1, p1, Lcom/netflix/mediaclient/media/AudioSource;->nccpOrderNumber:I

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBitrate()I
    .locals 1

    .line 253
    iget v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->bitrate:I

    return v0
.end method

.method public getCodecType()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->codecType:I

    return v0
.end method

.method public getDisallowedSubtitles()[Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->disallowedSubtitles:[Ljava/lang/String;

    return-object v0
.end method

.method public getDlid()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->dlid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCodeBcp47()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->languageCodeBcp47:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageDescription()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->languageDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageDescriptionDisplayLabel()Ljava/lang/String;
    .locals 2

    .line 142
    iget v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->numChannels:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->languageDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (5.1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->languageDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getNccpOrderNumber()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->nccpOrderNumber:I

    return v0
.end method

.method public getNumChannels()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->numChannels:I

    return v0
.end method

.method public getStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->streams:Ljava/util/List;

    return-object v0
.end method

.method public getTrackType()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->trackType:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 349
    iget v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->nccpOrderNumber:I

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isAllowedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Z
    .locals 5

    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->disallowedSubtitles:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return v1

    :cond_0
    const-string v0, "nf_audio_source"

    if-nez p1, :cond_1

    const-string p1, "Checking if subtitle off is allowed"

    .line 302
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "none"

    goto :goto_0

    :cond_1
    const-string v2, "Checking if subtitle is allowed"

    .line 304
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getId()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 308
    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/media/AudioSource;->disallowedSubtitles:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 309
    aget-object v4, v3, v2

    if-eqz v4, :cond_2

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public isNative()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->isNative:Z

    return v0
.end method

.method public abstract toJson()Lorg/json/JSONObject;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioSource [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", languageCodeBcp47="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->languageCodeBcp47:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", languageDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->languageDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->trackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", codecType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->codecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isNative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->isNative:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", numChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->numChannels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dissalowed subtitles # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->disallowedSubtitles:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nccpOrderNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->nccpOrderNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dlid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->dlid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
