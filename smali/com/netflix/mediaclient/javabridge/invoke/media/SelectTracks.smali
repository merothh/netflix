.class public Lcom/netflix/mediaclient/javabridge/invoke/media/SelectTracks;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "SelectTracks.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "selectTracks"

.field private static final PROPERTY_audio:Ljava/lang/String; = "audio"

.field private static final PROPERTY_subtitle:Ljava/lang/String; = "subtitle"

.field private static final TARGET:Ljava/lang/String; = "media"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;)V
    .locals 2

    .prologue
    .line 36
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "selectTracks"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Audio can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/media/SelectTracks;->setArguments(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;)V

    .line 41
    return-void
.end method

.method private setArguments(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;)V
    .locals 4

    .prologue
    .line 48
    .line 51
    :try_start_0
    const-string/jumbo v0, ""

    .line 52
    const-string/jumbo v1, ""

    .line 53
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 57
    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {p2}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 64
    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string/jumbo v1, "subtitle"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/SelectTracks;->arguments:Ljava/lang/String;

    .line 71
    :goto_2
    return-void

    .line 60
    :cond_0
    const-string/jumbo v0, "-1"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
