.class public Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;
.super Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;
.source "FetchManifestsRequest.java"


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
.field private static final TAG:Ljava/lang/String; = "nf_msl_volley_FetchManifestsRequest"


# instance fields
.field private final pqlQuery1:Ljava/lang/String;

.field private final requestParam:Ljava/lang/String;

.field protected final responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;->requestParam:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    .line 35
    const-string/jumbo v0, "[\'manifests\']"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;->pqlQuery1:Ljava/lang/String;

    .line 36
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
    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;->pqlQuery1:Ljava/lang/String;

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
    .line 40
    invoke-super {p0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 41
    const-string/jumbo v1, "bladerunnerParams"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;->requestParam:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-object v0
.end method

.method protected getResultObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 63
    const-string/jumbo v0, "nf_msl_volley_FetchManifestsRequest"

    const-string/jumbo v1, "manifests"

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerParseUtils;->getJSONObject(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getStatus(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 7

    .prologue
    .line 71
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->BLADERUNNER_FAILURE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 72
    if-eqz p1, :cond_1

    .line 75
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v1, v0

    .line 76
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 79
    sget-object v4, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;->OfflineManifest:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerParseUtils;->getStatus(Lorg/json/JSONObject;Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;)Lcom/netflix/mediaclient/android/app/Status;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 80
    :try_start_2
    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    const-string/jumbo v2, "nf_msl_volley_FetchManifestsRequest"

    const-string/jumbo v3, "manifest for %s has errors, status: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    .line 89
    :cond_1
    :goto_0
    return-object v0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    :goto_1
    const-string/jumbo v2, "nf_msl_volley_FetchManifestsRequest"

    const-string/jumbo v3, "parsing manifest error"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 85
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method protected insertClientSpecificFields(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 12

    .prologue
    const-wide/32 v10, 0x36ee80

    .line 95
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 96
    if-eqz p1, :cond_2

    .line 99
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 100
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 103
    if-eqz v3, :cond_0

    .line 104
    const-string/jumbo v4, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 106
    const-string/jumbo v4, "expiration"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v10

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    .line 108
    const-string/jumbo v6, "nf_msl_volley_FetchManifestsRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "server manifest expiring...  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v10

    .line 110
    const-string/jumbo v6, "expiration"

    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 112
    :cond_1
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string/jumbo v2, "nf_msl_volley_FetchManifestsRequest"

    const-string/jumbo v3, "parsing manifest error"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :cond_2
    return-object v1
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;->onManifestsFetched(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string/jumbo v0, "nf_msl_volley_FetchManifestsRequest"

    const-string/jumbo v1, "callback null?"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onSuccess(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;->getResultObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 125
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;->getStatus(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    .line 128
    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;->insertClientSpecificFields(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    if-eqz v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    invoke-interface {v2, v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;->onManifestsFetched(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_1
    const-string/jumbo v0, "nf_msl_volley_FetchManifestsRequest"

    const-string/jumbo v1, "callback null?"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;->parseFalkorResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 52
    const-string/jumbo v0, "nf_msl_volley_FetchManifestsRequest"

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

    .line 53
    const/4 v1, 0x0

    .line 55
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string/jumbo v2, "nf_msl_volley_FetchManifestsRequest"

    const-string/jumbo v3, "error parsing json"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method
