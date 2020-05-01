.class public Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StateChanged;
.super Lcom/netflix/mediaclient/service/player/exoplayback/logblob/OfflinePlaybackBaseLogblob;
.source "StateChanged.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/OfflinePlaybackBaseLogblob;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StateChanged;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "soffms"

    invoke-virtual {v0, v1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StateChanged;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "moff"

    const-wide/16 v2, 0x3e8

    div-long v2, p6, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StateChanged;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "moffms"

    invoke-virtual {v0, v1, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StateChanged;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "oldstate"

    invoke-virtual {v0, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StateChanged;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "newstate"

    invoke-virtual {v0, v1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "statechanged"

    return-object v0
.end method
