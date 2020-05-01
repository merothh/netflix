.class public Lcom/netflix/mediaclient/service/player/manifest/NfManifest;
.super Ljava/lang/Object;
.source "NfManifest.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/netflix/mediaclient/service/player/manifest/NfManifest;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MANIFEST_LIFE_MS:J = 0x6ddd00L

.field private static final DRM_MANIFEST_LIFE_MS:J = 0xdbba0L

.field public static final EXPIRATION:Ljava/lang/String; = "expiration"

.field public static final LOCAL_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final MAX_NUM_STREAMS_PER_TRACK:I = 0x1e

.field private static final TAG:Ljava/lang/String;

.field private static sManifestLifeFromConfig:J


# instance fields
.field private aspectRatioHeight:I

.field private aspectRatioWidth:I

.field private birthTimeMs:J

.field private defaultLifeMs:J

.field private drmContextId:Ljava/lang/String;

.field private drmHeader:[B

.field private duration:J

.field private final expiryTimeInEndPointTime:J

.field private hasDrmProfile:Z

.field private mDefaultTrackOrderList:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

.field private mManifestFetchedTimeInMs:J

.field private mNumVideoTracks:I

.field private mPdsDownloadIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private manifest:Lorg/json/JSONObject;

.field private movieId:J

.field private playbackContextId:Ljava/lang/String;

.field private priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->sManifestLifeFromConfig:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifest:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifest:Lorg/json/JSONObject;

    const-string/jumbo v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mManifestFetchedTimeInMs:J

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifest:Lorg/json/JSONObject;

    const-string/jumbo v2, "movieId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->movieId:J

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifest:Lorg/json/JSONObject;

    const-string/jumbo v2, "playbackContextId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->playbackContextId:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifest:Lorg/json/JSONObject;

    const-string/jumbo v2, "drmContextId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->drmContextId:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifest:Lorg/json/JSONObject;

    const-string/jumbo v2, "duration"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->duration:J

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifest:Lorg/json/JSONObject;

    const-string/jumbo v2, "expiration"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->expiryTimeInEndPointTime:J

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->expiryTimeInEndPointTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "expiryTime is less than currentTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->expiryTimeInEndPointTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifest:Lorg/json/JSONObject;

    const-string/jumbo v2, "video_tracks"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    iput v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mNumVideoTracks:I

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "drmHeader"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "drmHeader.bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "bytes"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "drmHeader.systemType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "systemType"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "drmHeader.keyId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "keyId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v3, "bytes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->drmHeader:[B

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->hasDrmProfile:Z

    :cond_2
    const-string/jumbo v2, "maxWidth"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "maxHeight"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "pixelAspectX"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "pixelAspectY"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v2, :cond_4

    if-lez v3, :cond_4

    if-lez v4, :cond_4

    if-lez v0, :cond_4

    mul-int/2addr v0, v3

    iput v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->aspectRatioHeight:I

    mul-int v0, v2, v4

    iput v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->aspectRatioWidth:I

    :cond_3
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "parsing defaultTrackOrderList"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifest:Lorg/json/JSONObject;

    const-string/jumbo v2, "defaultTrackOrderList"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mDefaultTrackOrderList:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mDefaultTrackOrderList:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mDefaultTrackOrderList:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    new-instance v3, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mManifestFetchedTimeInMs:J

    invoke-direct {v3, v4, v6, v7}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;-><init>(Lorg/json/JSONObject;J)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/16 v0, 0x9

    iput v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->aspectRatioHeight:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->aspectRatioWidth:I

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "defaultTrackOrderList has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mDefaultTrackOrderList:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->hasDrmProfile:Z

    if-eqz v0, :cond_7

    const-wide/32 v0, 0xdbba0

    :goto_2
    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->defaultLifeMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->birthTimeMs:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mPdsDownloadIds:Ljava/util/Map;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->buildPdsDownloadIdList()V

    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parsing manifest end."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const-wide/32 v0, 0x6ddd00

    goto :goto_2
.end method

.method private addToPdsDownloadIdList(Lorg/json/JSONArray;I)V
    .locals 8

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v3, v2

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "streams"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v1, v2

    :goto_2
    if-ge v1, v5, :cond_2

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v6, "downloadable_id"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mPdsDownloadIds:Ljava/util/Map;

    add-int v7, p2, v3

    invoke-direct {p0, v7, v1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getPdsDownloadIdIndex(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "error add tracks to downloadIdList"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private buildPdsDownloadIdList()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifest:Lorg/json/JSONObject;

    const-string/jumbo v1, "video_tracks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifest:Lorg/json/JSONObject;

    const-string/jumbo v2, "audio_tracks"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->addToPdsDownloadIdList(Lorg/json/JSONArray;I)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->addToPdsDownloadIdList(Lorg/json/JSONArray;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unable to get tracks"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static configureManifestLife(J)V
    .locals 0

    sput-wide p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->sManifestLifeFromConfig:J

    return-void
.end method

.method private getPdsDownloadIdIndex(II)I
    .locals 1

    mul-int/lit8 v0, p1, 0x1e

    add-int/2addr v0, p2

    return v0
.end method

.method public static parseManifestResponse(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifest;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "parsing manifest response start ..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "timestamp"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "skip bad entry to break manifest fetch loop"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "parsing manifest response end."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "manifest response has movieId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    new-instance v3, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-direct {v3, v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "parsing error."

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getRemainLife()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getRemainLife()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getRemainLife()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getRemainLife()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getPriority()I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getPriority()I

    move-result v3

    if-le v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getPriority()I

    move-result v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getPriority()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->compareTo(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)I

    move-result v0

    return v0
.end method

.method public getAspectWidthHeight()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->aspectRatioWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->aspectRatioHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mDefaultTrackOrderList:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    return-object v0
.end method

.method public getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;
    .locals 5

    const/4 v2, 0x0

    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parsing audio_tracks"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifest:Lorg/json/JSONObject;

    const-string/jumbo v1, "audio_tracks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSource;

    move v1, v2

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "audio_tracks has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " exception when parsing audio_tracks"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-array v0, v2, [Lcom/netflix/mediaclient/media/AudioSource;

    goto :goto_1
.end method

.method public getDownloadId(II)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mPdsDownloadIds:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getPdsDownloadIdIndex(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDrmContextId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->drmContextId:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmHeader()[B
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->drmHeader:[B

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->duration:J

    return-wide v0
.end method

.method public getJSONObject()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifest:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getLicenseLinkJson()Lorg/json/JSONObject;
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getLinks()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "license"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLinks()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifest:Lorg/json/JSONObject;

    const-string/jumbo v1, "links"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getManifestExpiryInEndPointTime()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->expiryTimeInEndPointTime:J

    return-wide v0
.end method

.method public getManifestFetchedTimeInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mManifestFetchedTimeInMs:J

    return-wide v0
.end method

.method public getMovieId()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->movieId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getNumVideoTracks()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mNumVideoTracks:I

    return v0
.end method

.method public getPlaybackContextId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->playbackContextId:Ljava/lang/String;

    return-object v0
.end method

.method getPriority()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->priority:I

    return v0
.end method

.method public getRemainLife()J
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->birthTimeMs:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->sManifestLifeFromConfig:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    sget-wide v2, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->sManifestLifeFromConfig:J

    sub-long v0, v2, v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->defaultLifeMs:J

    sub-long v0, v2, v0

    goto :goto_0
.end method

.method public getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;
    .locals 5

    const/4 v2, 0x0

    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parsing timedtexttracks"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifest:Lorg/json/JSONObject;

    const-string/jumbo v1, "timedtexttracks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/Subtitle;

    move v1, v2

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timedtexttracks has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "exception when parsing timedtexttracks"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-array v0, v2, [Lcom/netflix/mediaclient/media/Subtitle;

    goto :goto_1
.end method

.method public getSubtitleTracks(J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/SubtitleTrackData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parsing timedtexttracks"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifest:Lorg/json/JSONObject;

    const-string/jumbo v1, "timedtexttracks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    new-instance v3, Lcom/netflix/mediaclient/media/SubtitleTrackData;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4, v1, p1, p2}, Lcom/netflix/mediaclient/media/SubtitleTrackData;-><init>(Lorg/json/JSONObject;IJ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timedtexttracks has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception when parsing timedtexttracks "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getTrickplayUrls()[Lcom/netflix/mediaclient/media/TrickplayUrl;
    .locals 6

    const/4 v2, 0x0

    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parsing trickplays"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifest:Lorg/json/JSONObject;

    const-string/jumbo v1, "trickplays"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/TrickplayUrl;

    move v1, v2

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    new-instance v4, Lcom/netflix/mediaclient/media/TrickplayUrl;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/netflix/mediaclient/media/TrickplayUrl;-><init>(Lorg/json/JSONObject;)V

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trickplays has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " exception when parsing trickplays"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-array v0, v2, [Lcom/netflix/mediaclient/media/TrickplayUrl;

    goto :goto_1
.end method

.method public getVideoTracks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getVideoTracks"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->parseVideoTracks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasDrm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->hasDrmProfile:Z

    return v0
.end method

.method public parseVideoTracks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parseVideoTracks"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifest:Lorg/json/JSONObject;

    const-string/jumbo v2, "video_tracks"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/manifest/NfManifestParser;->parseVideoTrack(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "no video_tracks"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->priority:I

    return-void
.end method
