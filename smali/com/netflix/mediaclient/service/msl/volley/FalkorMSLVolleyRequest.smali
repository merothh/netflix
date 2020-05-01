.class public abstract Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;
.super Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;
.source "FalkorMSLVolleyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final MAX_NUMBER_OF_RETRIES:I = 0x2

.field public static final OPTIONAL_URL_REQUEST_PARAM_KEY:Ljava/lang/String; = "param"

.field private static final PARAM_NAME_CALLPATH:Ljava/lang/String; = "callPath"

.field private static final PARAM_NAME_PATH:Ljava/lang/String; = "path"

.field public static final PARAM_NAME_PATH_SUFFIX:Ljava/lang/String; = "pathSuffix"

.field public static final PARAM_NAME_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final TAG:Ljava/lang/String; = "FalkorMSLVolleyRequest"


# instance fields
.field protected mResponsePathFormat:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

.field private mRetryAttempts:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;-><init>(I)V

    .line 74
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->HIERARCHICAL:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mResponsePathFormat:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;-><init>(I)V

    .line 79
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mResponsePathFormat:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    .line 80
    return-void
.end method

.method private getMSLApiUnwrappedParams(Ljava/util/Map;)Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;"
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLHeaders()Ljava/util/Map;

    .line 223
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLPayload()Ljava/lang/String;

    move-result-object v5

    .line 224
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLQuery()Ljava/lang/String;

    move-result-object v4

    .line 225
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMethod()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "GET"

    .line 227
    :goto_0
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLUri()Ljava/lang/String;

    move-result-object v1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-object v0

    .line 225
    :cond_0
    const-string/jumbo v2, "POST"

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/util/Map;)[B
    .locals 9
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

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLClient()Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    move-result-object v0

    .line 173
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLApiUnwrappedParams(Ljava/util/Map;)Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;

    move-result-object v5

    .line 174
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    const-string/jumbo v2, "FalkorMSLVolleyRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "API request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string/jumbo v2, "FalkorMSLVolleyRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "API request params: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 183
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;->getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v1

    .line 186
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    const-string/jumbo v3, "FalkorMSLVolleyRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "userId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string/jumbo v3, "FalkorMSLVolleyRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MSL UserAuthenticationData: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v6, v1

    move-object v7, v2

    .line 192
    :goto_0
    iget-object v1, v5, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;->uri:Ljava/lang/String;

    iget-object v2, v5, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;->method:Ljava/lang/String;

    iget-object v3, v5, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;->mslHeaders:Ljava/util/Map;

    iget-object v4, v5, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;->mslQuery:Ljava/lang/String;

    iget-object v5, v5, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;->mslPayload:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->wrapApiRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1, v7, v6}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->apiRequest([BLjava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)[B
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/mediaclient/service/msl/client/MslErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 217
    return-object v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    const-string/jumbo v1, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "API request failed with JSON exception"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 202
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 203
    :catch_1
    move-exception v0

    .line 204
    const-string/jumbo v1, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "API request failed with MSL error exception"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 205
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 207
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 208
    const-string/jumbo v0, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "API request failed with MSL exception"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 209
    invoke-static {v1}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->findCauseForMslException(Lcom/netflix/msl/MslException;)Ljava/lang/Throwable;

    move-result-object v0

    .line 210
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_2

    .line 211
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 213
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    move-object v6, v1

    move-object v7, v1

    goto :goto_0
.end method

.method protected getMethodType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
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

.method protected getParams()Ljava/util/Map;
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
    .line 102
    invoke-super {p0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->getParams()Ljava/util/Map;

    move-result-object v1

    .line 104
    if-nez v1, :cond_2

    .line 106
    new-instance v0, Lcom/netflix/mediaclient/util/MultiValuedHashMap;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/MultiValuedHashMap;-><init>()V

    move-object v1, v0

    .line 115
    :cond_0
    :goto_0
    const-string/jumbo v0, "method"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMethodType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->shouldMaterializeRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const-string/jumbo v0, "materialize"

    const-string/jumbo v2, "true"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v0

    .line 121
    if-nez v0, :cond_3

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "List of queries is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    instance-of v0, v1, Lcom/netflix/mediaclient/util/MultiValuedMap;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/netflix/mediaclient/util/MultiValuedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/netflix/mediaclient/util/MultiValuedHashMap;-><init>(I)V

    .line 111
    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/MultiValuedMap;->putAll(Ljava/util/Map;)V

    move-object v1, v0

    .line 112
    goto :goto_0

    .line 125
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getQueryPathName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 129
    :cond_4
    return-object v1
.end method

.method protected getQueryPathName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    const-string/jumbo v0, "get"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMethodType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string/jumbo v0, "path"

    .line 156
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "callPath"

    goto :goto_0
.end method

.method protected handleNotAuthorized(Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 371
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mErrorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/util/VolleyUtils;->getStatus(Lcom/android/volley/VolleyError;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;)Lcom/netflix/mediaclient/android/app/NetflixStatus;

    move-result-object v1

    .line 372
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->USER_NOT_AUTHORIZED:Lcom/netflix/mediaclient/StatusCode;

    if-ne v1, v2, :cond_2

    .line 374
    const-string/jumbo v1, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "handleNotAuthorized:: User is not authorized, this most likely should NOT happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget v1, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mRetryAttempts:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 377
    const-string/jumbo v1, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "handleNotAuthorized:: regular API failure"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :goto_0
    return v0

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->isUserLoggedIn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 382
    const-string/jumbo v1, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "handleNotAuthorized:: User is NOT currently logged in, pass this failure regular way..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    :cond_1
    const-string/jumbo v0, "FalkorMSLVolleyRequest"

    const-string/jumbo v1, "handleNotAuthorized:: Mismatch between user agent and MSL store, user is logged in according to user agent. We have cookies, just retry"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget v0, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mRetryAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mRetryAttempts:I

    .line 390
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->setMSLUserCredentialRegistry(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;)V

    .line 391
    const/4 v0, 0x1

    goto :goto_0

    .line 394
    :cond_2
    const-string/jumbo v1, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "handleNotAuthorized:: regular API failure"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected parseApiResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/client/ApiHttpWrapper;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p1}, Lcom/netflix/msl/client/ApiHttpWrapper;->getDataAsString()Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    const-string/jumbo v1, "FalkorMSLVolleyRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseApiResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

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
    .locals 6
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
    const/4 v5, 0x0

    .line 243
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 244
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string/jumbo v1, "X-Netflix.api-script-execution-time"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 245
    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string/jumbo v2, "X-Netflix.execution-time"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 246
    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string/jumbo v3, "X-Netflix.api-script-revision"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mEndpointRevision:Ljava/lang/String;

    .line 247
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    const-string/jumbo v2, "FalkorMSLVolleyRequest"

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

    iget-object v4, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mEndpointRevision:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mServerExecTimeInMs:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mApiScriptExecTimeInMs:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mResponseSizeInBytes:I

    .line 281
    :cond_3
    :try_start_2
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 286
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLClient()Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->unwrapApiResponse([B)Lcom/netflix/msl/client/ApiHttpWrapper;
    :try_end_2
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 298
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->parseResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 318
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->parsedResponseCanBeNull()Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v0, :cond_6

    .line 319
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;

    const-string/jumbo v1, "Parsing returned null."

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    .line 321
    :goto_2
    return-object v0

    .line 255
    :catch_0
    move-exception v1

    .line 256
    const-string/jumbo v2, "FalkorMSLVolleyRequest"

    const-string/jumbo v3, "Failed to parse server execution time!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 264
    :catch_1
    move-exception v0

    .line 265
    const-string/jumbo v1, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "Failed to parse api script execution time!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 269
    :cond_4
    const-string/jumbo v0, "FalkorMSLVolleyRequest"

    const-string/jumbo v1, "execTime not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 291
    :catch_2
    move-exception v0

    .line 292
    const-string/jumbo v1, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "Failed to unwrap response "

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 293
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_2

    .line 310
    :catch_3
    move-exception v0

    .line 311
    instance-of v1, v0, Lcom/android/volley/VolleyError;

    if-eqz v1, :cond_5

    .line 312
    check-cast v0, Lcom/android/volley/VolleyError;

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_2

    .line 314
    :cond_5
    new-instance v1, Lcom/android/volley/VolleyError;

    invoke-direct {v1, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_2

    .line 321
    :cond_6
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_2
.end method

.method protected parseResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/client/ApiHttpWrapper;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 329
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mParseTimeInMs:J

    .line 333
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->parseApiResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 350
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mParseTimeInMs:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mParseTimeInMs:J

    .line 352
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    const-string/jumbo v1, "FalkorMSLVolleyRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parse time (ms): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mParseTimeInMs:J

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

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->parsedResponseCanBeNull()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 357
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v1, "Parsing returned null."

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :catch_0
    move-exception v1

    .line 340
    instance-of v0, v1, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 341
    check-cast v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->handleNotAuthorized(Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mUserIsNotLoggedInRetryRequest:Z

    .line 342
    check-cast v1, Lcom/android/volley/VolleyError;

    throw v1

    .line 343
    :cond_1
    instance-of v0, v1, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    if-eqz v0, :cond_2

    .line 344
    check-cast v1, Lcom/android/volley/VolleyError;

    throw v1

    .line 346
    :cond_2
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0, v1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 359
    :cond_3
    return-object v0
.end method

.method protected shouldMaterializeRequest()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method
