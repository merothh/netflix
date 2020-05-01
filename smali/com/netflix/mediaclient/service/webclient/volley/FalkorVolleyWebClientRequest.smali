.class public abstract Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;
.super Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;
.source "FalkorVolleyWebClientRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final ENDPOINT_REVISION:Ljava/lang/String; = "X-Netflix.api-script-revision"

.field public static final NETFLIX_API_SCRIPT_EXECUTION_TIME_HEADER:Ljava/lang/String; = "X-Netflix.api-script-execution-time"

.field public static final NETFLIX_SERVER_EXECUTION_TIME_HEADER:Ljava/lang/String; = "X-Netflix.execution-time"

.field public static final OPTIONAL_URL_REQUEST_PARAM_KEY:Ljava/lang/String; = "&param="

.field private static final PARAM_NAME_CALLPATH:Ljava/lang/String; = "callPath"

.field private static final PARAM_NAME_PATH:Ljava/lang/String; = "path"

.field public static final PARAM_NAME_PATH_SUFFIX:Ljava/lang/String; = "pathSuffix"

.field public static final PARAM_NAME_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final TAG:Ljava/lang/String; = "FalkorVolleyWebClientRequest"


# instance fields
.field protected mApiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

.field protected mApiScriptExecTimeInMs:J

.field protected mContext:Landroid/content/Context;

.field protected mEndpointRevision:Ljava/lang/String;

.field protected mParseTimeInMs:J

.field protected mServerExecTimeInMs:J

.field protected mUuid:Ljava/util/UUID;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;-><init>(I)V

    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mServerExecTimeInMs:J

    .line 106
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->initParam(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;-><init>(I)V

    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mServerExecTimeInMs:J

    .line 111
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->initParam(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method private initParam(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mUuid:Ljava/util/UUID;

    .line 116
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mContext:Landroid/content/Context;

    .line 117
    return-void
.end method

.method protected static urlEncodPQLParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    invoke-static {p1}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "&"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeHostUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 363
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->changeHostUrl(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mApiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->updateApiEndpointHost(Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 7

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getDurationTimeMs()J

    move-result-wide v0

    .line 333
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    const-string/jumbo v2, "FalkorVolleyWebClientRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "request duration time (ms): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mErrorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    invoke-static {p1, v2}, Lcom/netflix/mediaclient/util/VolleyUtils;->getStatus(Lcom/android/volley/VolleyError;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;)Lcom/netflix/mediaclient/android/app/NetflixStatus;

    move-result-object v6

    .line 340
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 342
    invoke-virtual {v6}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/FetchErrorUtils;->isAccountError(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/FetchErrorUtils;->notifyOthersOfAccountErrors(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;)V

    .line 354
    :cond_1
    :goto_0
    invoke-virtual {p0, v6}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->onFailure(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 355
    return-void

    .line 347
    :cond_2
    invoke-static {p1}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->toError(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v4

    .line 348
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getResponseSizeInBytes()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createHttpResponse(JI)Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    move-result-object v5

    .line 349
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->toFalkorPathResultList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 350
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mUuid:Ljava/util/UUID;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportDataRequestEnded(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Ljava/util/List;Lcom/netflix/mediaclient/service/logging/client/model/Error;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;)V

    goto :goto_0
.end method

.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 291
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->deliverResponse(Ljava/lang/Object;)V

    .line 293
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getDurationTimeMs()J

    move-result-wide v0

    .line 294
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    const-string/jumbo v2, "FalkorVolleyWebClientRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "request duration time (ms): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", class: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 299
    const-string/jumbo v2, "FalkorVolleyWebClientRequest"

    const-string/jumbo v3, "Report data request success"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v5, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    invoke-direct {v5}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;-><init>()V

    .line 301
    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setResponseTime(Ljava/lang/Integer;)V

    .line 302
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mParseTimeInMs:J

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setParseTime(Ljava/lang/Integer;)V

    .line 303
    const-string/jumbo v0, "text/x-json"

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setMimeType(Ljava/lang/String;)V

    .line 304
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mServerExecTimeInMs:J

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setServerExecutionTime(Ljava/lang/Integer;)V

    .line 305
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getResponseSizeInBytes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setContentLength(Ljava/lang/Integer;)V

    .line 306
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mApiScriptExecTimeInMs:J

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setApiScriptExecutionTime(Ljava/lang/Integer;)V

    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mEndpointRevision:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setEndpointRevision(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v1

    .line 310
    const/4 v0, 0x0

    .line 311
    if-eqz v1, :cond_1

    .line 312
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 314
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 315
    if-eqz v1, :cond_2

    .line 316
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 317
    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/FalkorPathResult;

    const/4 v6, 0x1

    invoke-direct {v2, v0, v6, v4}, Lcom/netflix/mediaclient/service/logging/client/model/FalkorPathResult;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mUuid:Ljava/util/UUID;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportDataRequestEnded(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Ljava/util/List;Lcom/netflix/mediaclient/service/logging/client/model/Error;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;)V

    .line 321
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->updateLastContactNetflix(Landroid/content/Context;)V

    .line 323
    :cond_3
    return-void
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 4
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
    .line 390
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->isAuthorizationRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->areNetflixCookiesNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    new-instance v0, Lcom/android/volley/AuthFailureError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t build valid headers. Cookies are null. url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/volley/AuthFailureError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 395
    if-nez v0, :cond_1

    .line 396
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 398
    :cond_1
    const-string/jumbo v1, "X-Netflix.request.uuid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mUuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    return-object v0
.end method

.method protected getMethodType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    const-string/jumbo v0, "get"

    return-object v0
.end method

.method protected abstract getPQLQueries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getPQLQueriesRepresentationAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getQueryPathName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 377
    const-string/jumbo v0, "get"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getMethodType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const-string/jumbo v0, "path"

    .line 380
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "callPath"

    goto :goto_0
.end method

.method protected getRawPQLQuery()Ljava/lang/String;
    .locals 4

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v0

    .line 182
    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "List of queries is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getQueryPathName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->urlEncodPQLParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getRawPQLQuery()Ljava/lang/String;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    const-string/jumbo v2, "method"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getMethodType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/StringUtils;->buildUnencodedUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->shouldMaterializeRequest()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    const-string/jumbo v2, "materialize"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/StringUtils;->buildUnencodedUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getOptionalParams()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getCurrentNetflixId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->storeReqNetflixId(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    const-string/jumbo v1, "FalkorVolleyWebClientRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VolleyWebClientRequest URL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x7d0

    if-le v1, v2, :cond_3

    .line 156
    const-string/jumbo v1, "FalkorVolleyWebClientRequest"

    const-string/jumbo v2, "URL length is over 2000 chars... this will probably cause problems"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string/jumbo v1, "FalkorVolleyWebClientRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_3
    return-object v0
.end method

.method protected abstract parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 200
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string/jumbo v1, "X-Netflix.api-script-execution-time"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string/jumbo v2, "X-Netflix.execution-time"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 203
    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string/jumbo v3, "X-Netflix.api-script-revision"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mEndpointRevision:Ljava/lang/String;

    .line 204
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    const-string/jumbo v2, "FalkorVolleyWebClientRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "execTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", total server time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", revision: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mEndpointRevision:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mServerExecTimeInMs:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mApiScriptExecTimeInMs:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v0

    return-object v0

    .line 212
    :catch_0
    move-exception v1

    .line 213
    const-string/jumbo v2, "FalkorVolleyWebClientRequest"

    const-string/jumbo v3, "Failed to parse server execution time!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 221
    :catch_1
    move-exception v0

    .line 222
    const-string/jumbo v1, "FalkorVolleyWebClientRequest"

    const-string/jumbo v2, "Failed to parse api script execution time!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 227
    :cond_3
    const-string/jumbo v0, "FalkorVolleyWebClientRequest"

    const-string/jumbo v1, "execTime not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected parseResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 252
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mParseTimeInMs:J

    .line 256
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mParseTimeInMs:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mParseTimeInMs:J

    .line 274
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    const-string/jumbo v1, "FalkorVolleyWebClientRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parse time (ms): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mParseTimeInMs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->parsedResponseCanBeNull()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 279
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v1, "Parsing returned null."

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :catch_0
    move-exception v0

    .line 263
    instance-of v1, v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    if-eqz v1, :cond_2

    .line 265
    :cond_1
    check-cast v0, Lcom/android/volley/VolleyError;

    throw v0

    .line 268
    :cond_2
    new-instance v1, Lcom/android/volley/VolleyError;

    invoke-direct {v1, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 281
    :cond_3
    return-object v0
.end method

.method setApiEndpointRegistry(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mApiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    .line 359
    return-void
.end method

.method protected shouldMaterializeRequest()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method
