.class public final Lcom/netflix/mediaclient/util/MediaUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;
    }
.end annotation


# static fields
.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    .line 80
    sget-object v1, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->c:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->e:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->b:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->d:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->j:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/MediaUtils;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/media/MediaCodecInfo;Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;)Lorg/json/JSONObject;
    .locals 6

    .line 261
    invoke-static {p1}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->a(Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    const-string v1, "secure-playback"

    .line 262
    invoke-virtual {v0, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v1

    .line 265
    iget-object v2, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->b(Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/MediaUtils;->b([Landroid/media/MediaCodecInfo$CodecProfileLevel;I)I

    move-result v2

    .line 266
    invoke-static {p1}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->e(Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;)I

    move-result v3

    if-lt v2, v3, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    .line 268
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->d(Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;)I

    move-result v3

    if-lt v2, v3, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    .line 270
    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->c(Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;)I

    move-result p1

    if-lt v2, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 274
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 276
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_3

    const/16 v3, 0x3c0

    const/16 v4, 0x21c

    .line 278
    :try_start_0
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getAchievableFrameRatesFor(II)Landroid/util/Range;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v4, 0x780

    const/16 v5, 0x438

    .line 279
    :try_start_1
    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getAchievableFrameRatesFor(II)Landroid/util/Range;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v2

    .line 281
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto :goto_2

    :cond_3
    move-object v0, v2

    move-object v3, v0

    .line 285
    :goto_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v5, "name"

    .line 287
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v5, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "securePlayback"

    .line 288
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, p0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "hdPlayback"

    .line 289
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "hdDecodeRange"

    .line 290
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "sdDecodeRange"

    .line 291
    invoke-virtual {v4, p0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v4

    :catch_2
    move-exception p0

    .line 293
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2
.end method

.method public static b([Landroid/media/MediaCodecInfo$CodecProfileLevel;I)I
    .locals 5

    .line 301
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    .line 302
    iget v4, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v4, p1, :cond_0

    .line 303
    iget v3, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static b(Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;)Lorg/json/JSONArray;
    .locals 7

    .line 231
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 232
    invoke-static {}, Lcom/netflix/mediaclient/util/MediaUtils;->e()[Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 234
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    .line 235
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 239
    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 240
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {p0}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->a(Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    goto :goto_1

    .line 244
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->a(Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v6, "adaptive-playback"

    .line 245
    invoke-virtual {v5, v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 246
    invoke-static {v4, p0}, Lcom/netflix/mediaclient/util/MediaUtils;->a(Landroid/media/MediaCodecInfo;Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 248
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    .line 212
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 213
    sget-object v1, Lcom/netflix/mediaclient/util/MediaUtils;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    .line 215
    :try_start_0
    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->name()Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-static {v2}, Lcom/netflix/mediaclient/util/MediaUtils;->b(Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;)Lorg/json/JSONArray;

    move-result-object v2

    .line 215
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 218
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e()[Landroid/media/MediaCodecInfo;
    .locals 2

    .line 225
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 226
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method
