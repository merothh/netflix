.class public Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;
.super Lcom/netflix/mediaclient/service/player/exoplayback/logblob/OfflinePlaybackBaseLogblob;
.source "EndPlay.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 21
    invoke-direct {p0, p6, p7, p8}, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/OfflinePlaybackBaseLogblob;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->updateSeverity(Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;)V

    .line 25
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "level"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;->getLevel()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 26
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "playbackoffline"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 27
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "mid"

    invoke-virtual {v2, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 28
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "trackid"

    invoke-virtual {v2, v3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 29
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "soffms"

    invoke-virtual {v2, v3, p9, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 30
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "moffms"

    move-wide/from16 v0, p11

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 31
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "endreason"

    move-object/from16 v0, p15

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "totaltime"

    move-wide/from16 v0, p13

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 34
    if-eqz p17, :cond_0

    .line 35
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "playstat"

    move-object/from16 v0, p17

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    :cond_0
    if-eqz p18, :cond_1

    .line 38
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "batterystat"

    move-object/from16 v0, p18

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    :cond_1
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v4, "offlinenetworkstatus"

    if-nez p16, :cond_5

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 42
    invoke-static/range {p20 .. p20}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "errormsg"

    move-object/from16 v0, p20

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    :cond_2
    invoke-static/range {p19 .. p19}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 45
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "errorcode"

    move-object/from16 v0, p19

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    :cond_3
    invoke-static/range {p21 .. p21}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 47
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "errorstring"

    move-object/from16 v0, p21

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    :cond_4
    return-void

    .line 40
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "endplay"

    return-object v0
.end method

.method public shouldSendNow()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method
