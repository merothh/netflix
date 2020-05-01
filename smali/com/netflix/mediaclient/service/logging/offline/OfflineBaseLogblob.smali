.class public abstract Lcom/netflix/mediaclient/service/logging/offline/OfflineBaseLogblob;
.super Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;
.source "OfflineBaseLogblob.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;-><init>()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/offline/OfflineBaseLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "playbackoffline"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/offline/OfflineBaseLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "oxid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/offline/OfflineBaseLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "dxid"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-void
.end method
