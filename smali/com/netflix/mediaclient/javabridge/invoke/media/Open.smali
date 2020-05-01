.class public Lcom/netflix/mediaclient/javabridge/invoke/media/Open;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "Open.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "open"

.field private static final PARAMS:Ljava/lang/String; = "params"

.field private static final PROPERTY_MOVIEID:Ljava/lang/String; = "movieId"

.field private static final PROPERTY_PREFFERED_PEAK_BPS:Ljava/lang/String; = "prefferedPeakBps"

.field private static final PROPERTY_PTS:Ljava/lang/String; = "pts"

.field private static final PROPERTY_TRACKID:Ljava/lang/String; = "trackerId"

.field private static final PROPERTY_VOLUME:Ljava/lang/String; = "volume"

.field private static final TARGET:Ljava/lang/String; = "media"


# direct methods
.method public constructor <init>(JLcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;JLcom/netflix/mediaclient/util/PlaybackVolumeMetric;J)V
    .locals 3

    .prologue
    .line 49
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "open"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-direct/range {p0 .. p8}, Lcom/netflix/mediaclient/javabridge/invoke/media/Open;->setArguments(JLcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;JLcom/netflix/mediaclient/util/PlaybackVolumeMetric;J)V

    .line 51
    return-void
.end method

.method private setArguments(JLcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;JLcom/netflix/mediaclient/util/PlaybackVolumeMetric;J)V
    .locals 5

    .prologue
    .line 63
    .line 64
    invoke-virtual {p3}, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    .line 67
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 68
    const-string/jumbo v2, "movieId"

    invoke-virtual {v1, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 69
    const-string/jumbo v2, "trackerId"

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    const-string/jumbo v0, "pts"

    invoke-virtual {v1, v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 71
    const-string/jumbo v0, "prefferedPeakBps"

    invoke-virtual {v1, v0, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 73
    invoke-virtual {p3}, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->getParams()Lorg/json/JSONObject;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    const-string/jumbo v2, "params"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    :cond_0
    if-eqz p6, :cond_1

    .line 79
    const-string/jumbo v0, "volume"

    invoke-virtual {p6}, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->getVolumeMetric()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/Open;->arguments:Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    const-string/jumbo v0, "nf_invoke"

    const-string/jumbo v2, "DEBUG info: sessionParams: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_2
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
