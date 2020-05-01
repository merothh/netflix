.class public Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;
.super Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;
.source "FetchLinkRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_bladerunner"


# instance fields
.field private final pqlQuery1:Ljava/lang/String;

.field private final requestParams:Ljava/lang/String;

.field protected final responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;->requestParams:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    .line 30
    const-string/jumbo v0, "[\'link\']"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;->pqlQuery1:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method protected getPQLQueries()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;->pqlQuery1:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-super {p0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 37
    const-string/jumbo v1, "bladerunnerParams"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;->requestParams:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;->onLinkDone(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string/jumbo v0, "nf_bladerunner"

    const-string/jumbo v1, "no callback for link"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onSuccess(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 62
    const-string/jumbo v0, "nf_bladerunner"

    const-string/jumbo v1, "link"

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerParseUtils;->getJSONObject(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 63
    const/4 v1, 0x0

    .line 64
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NOT_VALID:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 65
    if-eqz v2, :cond_0

    .line 66
    const-string/jumbo v0, "result"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 67
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;->OfflineLink:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerParseUtils;->getStatus(Lorg/json/JSONObject;Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    .line 68
    if-eqz v3, :cond_0

    .line 69
    const-string/jumbo v1, "links"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    invoke-interface {v2, v1, v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;->onLinkDone(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_1
    const-string/jumbo v0, "nf_bladerunner"

    const-string/jumbo v1, "no callback for link"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;->parseFalkorResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 50
    const-string/jumbo v0, "nf_bladerunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseFalkorResponse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->dumpVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v1, 0x0

    .line 53
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string/jumbo v2, "nf_bladerunner"

    const-string/jumbo v3, "error parsing json"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method
