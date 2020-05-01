.class public Lcom/netflix/mediaclient/javabridge/invoke/media/VolumeChange;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "VolumeChange.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "volumeChange"

.field private static final PROPERTY_OLD_VOLUME:Ljava/lang/String; = "oldvolume"

.field private static final PROPERTY_VOLUME:Ljava/lang/String; = "volume"

.field private static final TARGET:Ljava/lang/String; = "media"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)V
    .locals 2

    .prologue
    .line 25
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "volumeChange"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/media/VolumeChange;->setArguments(Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)V

    .line 27
    return-void
.end method

.method private setArguments(Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)V
    .locals 3

    .prologue
    .line 33
    .line 35
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 36
    const-string/jumbo v1, "oldvolume"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->getVolumeMetric()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    const-string/jumbo v1, "volume"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->getVolumeMetric()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/VolumeChange;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
