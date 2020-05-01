.class public Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchDownloadComplete;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;
.source "FetchDownloadComplete.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchDownloadComplete;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchDownloadComplete;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;->onDownloadComplete(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_bladerunner"

    const-string/jumbo v1, "no callback for link"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchDownloadComplete;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onSuccess(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v0, "nf_bladerunner"

    const-string/jumbo v2, "link"

    invoke-static {v0, v2, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerParseUtils;->getJSONObject(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string/jumbo v0, "result"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    sget-object v3, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;->OfflineDownloadComplete:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerParseUtils;->getStatus(Lorg/json/JSONObject;Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->hasLinksInPayload(Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->BLADERUNNER_FAILURE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    :cond_0
    if-eqz v0, :cond_2

    const-string/jumbo v3, "links"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->LINK_REFRESH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->getLink(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchDownloadComplete;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchDownloadComplete;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    invoke-interface {v0, v2, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;->onDownloadComplete(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "nf_bladerunner"

    const-string/jumbo v1, "no callback for link"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method
