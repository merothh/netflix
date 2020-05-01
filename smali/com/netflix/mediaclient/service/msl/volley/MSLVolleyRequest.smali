.class public abstract Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;
.super Lcom/android/volley/Request;
.source "MSLVolleyRequest.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request",
        "<TT;>;",
        "Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLRequest;"
    }
.end annotation


# static fields
.field protected static final ENDPOINT_REVISION:Ljava/lang/String; = "X-Netflix.api-script-revision"

.field protected static final NETFLIX_API_SCRIPT_EXECUTION_TIME_HEADER:Ljava/lang/String; = "X-Netflix.api-script-execution-time"

.field protected static final NETFLIX_SERVER_EXECUTION_TIME_HEADER:Ljava/lang/String; = "X-Netflix.execution-time"

.field private static final TAG:Ljava/lang/String; = "nf_volleyrequest"


# instance fields
.field protected mApiScriptExecTimeInMs:J

.field protected mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private mDefaultTrafficStatsTag:I

.field protected mDurationTimeInMs:J

.field protected mEndpointRevision:Ljava/lang/String;

.field protected mErrorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

.field protected mInspector:Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;

.field protected mMslAgent:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

.field private mMslClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

.field private mMslPath:Ljava/lang/String;

.field protected mMslUserCredentialRegistry:Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

.field protected mParseTimeInMs:J

.field protected mResponseSizeInBytes:I

.field protected mServerExecTimeInMs:J

.field protected mTimeoutInMs:I

.field private mUrl:Ljava/lang/String;

.field protected mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

.field protected mUserIsNotLoggedInRetryRequest:Z

.field protected mUuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mServerExecTimeInMs:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->setShouldCache(Z)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mUuid:Ljava/util/UUID;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mDurationTimeInMs:J

    return-void
.end method

.method private static encodeParametersAsString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Encoding not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    sget-boolean v1, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "valueNull for key: %s, params %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v1, v4}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method protected static findCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/io/IOException;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->findCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0
.end method

.method protected static findCauseForMslException(Lcom/netflix/msl/MslException;)Ljava/lang/Throwable;
    .locals 1

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/msl/MslException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->findCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0
.end method

.method private getEncodedPayload()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->getParams()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->encodeParametersAsString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "nf_volleyrequest"

    const-string/jumbo v3, "Failed to get BODY as string"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public changeHostUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/volley/Request;->buildNewUrlString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mDefaultTrafficStatsTag:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mMslClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getUrlProvider()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->updateApiEndpointHost(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/volley/Request;->changeHostUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected createRetryPolicy()Lcom/android/volley/RetryPolicy;
    .locals 4

    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    iget v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mTimeoutInMs:I

    if-gtz v0, :cond_0

    const/16 v0, 0x9c4

    :goto_0
    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    return-object v1

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mTimeoutInMs:I

    goto :goto_0
.end method

.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_volleyrequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VolleyError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_volleyrequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error on response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v3, v3, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mUserIsNotLoggedInRetryRequest:Z

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mUserIsNotLoggedInRetryRequest:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mMslAgent:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_volleyrequest"

    const-string/jumbo v1, "Retry request %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mMslAgent:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->addRequest(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;)Z

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mDurationTimeInMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mDurationTimeInMs:J

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;

    if-eqz v1, :cond_6

    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->RESPONSE_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->INTERNAL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    :cond_4
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "nf_volleyrequest"

    const-string/jumbo v2, "Error is not set yet, add it."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->toError(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setError(Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    :cond_5
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->onFailure(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_6
    instance-of v1, p1, Lcom/android/volley/ServerError;

    if-eqz v1, :cond_7

    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->SERVER_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_1

    :cond_7
    instance-of v1, p1, Lcom/android/volley/TimeoutError;

    if-nez v1, :cond_8

    instance-of v1, p1, Lcom/android/volley/NetworkError;

    if-eqz v1, :cond_3

    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mErrorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/VolleyUtils;->getStatus(Lcom/android/volley/VolleyError;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;)Lcom/netflix/mediaclient/android/app/NetflixStatus;

    move-result-object v0

    goto :goto_1
.end method

.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mDurationTimeInMs:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mDurationTimeInMs:J

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->getDurationTimeMs()J

    move-result-wide v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "nf_volleyrequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "request duration time (ms): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mMslClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mMslClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "nf_volleyrequest"

    const-string/jumbo v4, "Report data request sucess"

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    invoke-direct {v5}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;-><init>()V

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setResponseTime(Ljava/lang/Integer;)V

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mParseTimeInMs:J

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setParseTime(Ljava/lang/Integer;)V

    const-string/jumbo v0, "text/x-json"

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setMimeType(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mServerExecTimeInMs:J

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setServerExecutionTime(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->getResponseSizeInBytes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setContentLength(Ljava/lang/Integer;)V

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mApiScriptExecTimeInMs:J

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setApiScriptExecutionTime(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mEndpointRevision:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setEndpointRevision(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mMslClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mUuid:Ljava/util/UUID;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportDataRequestEnded(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Ljava/util/List;Lcom/netflix/mediaclient/service/logging/client/model/Error;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mMslClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->updateLastContactNetflix(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract execute(Ljava/util/Map;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "application/msl; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDurationTimeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mDurationTimeInMs:J

    return-wide v0
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

    invoke-super {p0}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    const-string/jumbo v1, "X-Netflix.request.uuid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mUuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getMSLClient()Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mMslClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    return-object v0
.end method

.method public getMSLHeaders()Ljava/util/Map;
    .locals 5
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

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->getHeaders()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "nf_volleyrequest"

    const-string/jumbo v3, "Failed to get MSL headers"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public getMSLPayload()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->getMethod()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->getEncodedPayload()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMSLQuery()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->getMethod()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->getEncodedPayload()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMSLUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mMslPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mMslUserCredentialRegistry:Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    sget-object v0, Lcom/android/volley/Request$Priority;->HIGH:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getResponseSizeInBytes()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mResponseSizeInBytes:I

    return v0
.end method

.method public getTrafficStatsTag()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mDefaultTrafficStatsTag:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected initUrl(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can not change the URL of a VolleyWebCLientRequest."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v3, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mDefaultTrafficStatsTag:I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mMslPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mMslPath:Ljava/lang/String;

    const-string/jumbo v2, "/msl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mMslPath:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mMslPath:Ljava/lang/String;

    :cond_2
    if-nez v1, :cond_3

    iput v3, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mDefaultTrafficStatsTag:I

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mDefaultTrafficStatsTag:I

    goto :goto_0
.end method

.method protected abstract injectUrl()V
.end method

.method protected isAuthorizationRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method protected abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected parsedResponseCanBeNull()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setConfig(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    return-void
.end method

.method public setErrorLogger(Lcom/netflix/mediaclient/servicemgr/ErrorLogging;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mErrorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    return-void
.end method

.method public setInspector(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Trying to set inspector in release build!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMSLAgent(Lcom/netflix/mediaclient/servicemgr/IMSLClient;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mMslAgent:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    return-void
.end method

.method public setMSLClient(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mMslClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->injectUrl()V

    return-void
.end method

.method public setMSLUserCredentialRegistry(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mMslUserCredentialRegistry:Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mTimeoutInMs:I

    return-void
.end method

.method public setUserAgent(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    return-void
.end method

.method protected shouldSkipProcessingOnInvalidUser()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
