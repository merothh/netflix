.class public final Lcom/netflix/mediaclient/util/MediaUtils;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaUtils"

.field private static final decoderClassifier:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/util/MediaUtils$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/MediaUtils$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/util/MediaUtils;->decoderClassifier:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecoderCapbilityForFormatIfUpdated()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "video/hevc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    sget-object v1, Lcom/netflix/mediaclient/util/MediaUtils;->decoderClassifier:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaUtils;->getQualifiedDecoders(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDecoders()[Landroid/media/MediaCodecInfo;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getDecodersForK()[Landroid/media/MediaCodecInfo;
    .locals 4

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    new-array v2, v1, [Landroid/media/MediaCodecInfo;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static getMaxLevelForProfile([Landroid/media/MediaCodecInfo$CodecProfileLevel;I)I
    .locals 5

    const/4 v0, 0x0

    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    iget v4, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v4, p1, :cond_0

    iget v3, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static getQualifiedDecoders(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 8

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/util/MediaUtils;->getDecoders()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    move-object v3, v0

    :goto_0
    const/4 v1, 0x0

    array-length v5, v3

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_1
    if-ge v2, v5, :cond_5

    aget-object v1, v3, v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/util/MediaUtils;->getDecodersForK()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_0

    invoke-virtual {v1, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string/jumbo v7, "adaptive-playback"

    invoke-virtual {v6, v7}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "secure-playback"

    invoke-virtual {v6, v7}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_3
    if-eqz v1, :cond_3

    invoke-static {v1, p0}, Lcom/netflix/mediaclient/util/MediaUtils;->logDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_4
    return-object v4

    :cond_4
    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v0, "MediaUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getQualifiedDecoders for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    move-object v1, v0

    goto :goto_3
.end method

.method private static logDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v3

    const-string/jumbo v0, "secure-playback"

    invoke-virtual {v3, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v4

    sget-object v0, Lcom/netflix/mediaclient/util/MediaUtils;->decoderClassifier:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v5, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->getInterestedProfile()I

    move-result v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/util/MediaUtils;->getMaxLevelForProfile([Landroid/media/MediaCodecInfo$CodecProfileLevel;I)I

    move-result v5

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->getFhdLevel()I

    move-result v6

    if-lt v5, v6, :cond_3

    const/4 v0, 0x3

    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v5, "name"

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "securePlayback"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "hdPlayback"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v0, v4, :cond_2

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v3, 0x780

    const/16 v4, 0x438

    :try_start_1
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getAchievableFrameRatesFor(II)Landroid/util/Range;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v4, "hdPerf"

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    const/16 v3, 0x2d0

    const/16 v4, 0x1e0

    :try_start_2
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getAchievableFrameRatesFor(II)Landroid/util/Range;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v3, "sdPerf"

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_3
    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->getHdLevel()I

    move-result v6

    if-lt v5, v6, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->getLowestLevel()I

    move-result v0

    if-lt v5, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    const-string/jumbo v3, "hdPerf"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    const-string/jumbo v0, "sdPerf"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :cond_5
    move v0, v1

    goto/16 :goto_1
.end method
