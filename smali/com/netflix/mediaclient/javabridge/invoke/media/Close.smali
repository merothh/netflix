.class public Lcom/netflix/mediaclient/javabridge/invoke/media/Close;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "Close.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "close"

.field private static final PROPERTY_AST:Ljava/lang/String; = "audioSinkType"

.field private static final PROPERTY_VOLUME:Ljava/lang/String; = "volume"

.field private static final TARGET:Ljava/lang/String; = "media"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)V
    .locals 2

    .prologue
    .line 33
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "close"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/media/Close;->setArguments(Ljava/lang/String;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)V

    .line 35
    return-void
.end method

.method private setArguments(Ljava/lang/String;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)V
    .locals 3

    .prologue
    .line 40
    .line 42
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 43
    const-string/jumbo v1, "audioSinkType"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    if-eqz p2, :cond_0

    .line 46
    const-string/jumbo v1, "volume"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->getVolumeMetric()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/Close;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
