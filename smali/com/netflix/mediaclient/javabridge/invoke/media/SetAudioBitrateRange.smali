.class public Lcom/netflix/mediaclient/javabridge/invoke/media/SetAudioBitrateRange;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "SetAudioBitrateRange.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "setAudioBitrateRange"

.field private static final PROPERTY_maxBitrate:Ljava/lang/String; = "maxBitrate"

.field private static final PROPERTY_minBitrate:Ljava/lang/String; = "minBitrate"

.field private static final TARGET:Ljava/lang/String; = "media"


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 43
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "setAudioBitrateRange"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/media/SetAudioBitrateRange;->setArguments(II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;)V
    .locals 2

    .prologue
    .line 32
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "setAudioBitrateRange"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Range can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;->getMinimal()I

    move-result v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;->getMaximal()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/media/SetAudioBitrateRange;->setArguments(II)V

    .line 37
    return-void
.end method

.method private setArguments(II)V
    .locals 3

    .prologue
    .line 52
    .line 55
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 56
    const-string/jumbo v1, "minBitrate"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    const-string/jumbo v1, "maxBitrate"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/SetAudioBitrateRange;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
