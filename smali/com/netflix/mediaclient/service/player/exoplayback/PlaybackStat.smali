.class public Lcom/netflix/mediaclient/service/player/exoplayback/PlaybackStat;
.super Ljava/lang/Object;
.source "PlaybackStat.java"


# instance fields
.field private decoderName:Ljava/lang/String;

.field private mDroppedFrames:I

.field private mElapsedTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlaybackStat;->decoderName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getJSON()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "decName"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlaybackStat;->decoderName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "droppedFrames"

    iget v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlaybackStat;->mDroppedFrames:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "elapsedTime"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlaybackStat;->mElapsedTime:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateDecoderStat(IJ)V
    .locals 2

    iget v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlaybackStat;->mDroppedFrames:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlaybackStat;->mDroppedFrames:I

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlaybackStat;->mElapsedTime:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlaybackStat;->mElapsedTime:J

    return-void
.end method
