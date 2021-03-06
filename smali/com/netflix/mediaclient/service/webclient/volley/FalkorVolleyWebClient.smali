.class public Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;
.super Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClient;
.source "FalkorVolleyWebClient.java"


# instance fields
.field private mApiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClient;-><init>()V

    return-void
.end method

.method private reportDataRequestSessionStarted(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportDataRequestStarted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendFalkorRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->mApiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->setApiEndpointRegistry(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->setUserCredentialRegistry(Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->createRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->initUrl(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->reportDataRequestSessionStarted(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;Ljava/lang/String;)V

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method


# virtual methods
.method public init(Lcom/netflix/mediaclient/service/webclient/WebClientInitParameters;)V
    .locals 3

    instance-of v0, p1, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;->getApiEndpointRegistry()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->mApiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;->getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;->getErrorLogger()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->mErrorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expecting NetflixWebClientInitParameters and receiving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendConfigRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->mApiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getConfigUrlFull()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendFalkorRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;Ljava/lang/String;)V

    return-void
.end method

.method public sendLoggingRequest(Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingVolleyWebClientRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingVolleyWebClientRequest",
            "<*>;)V"
        }
    .end annotation

    new-instance v0, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistryWrapper;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistryWrapper;-><init>(Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;)V

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingVolleyWebClientRequest;->setUserCredentialRegistry(Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->createRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingVolleyWebClientRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->mApiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getClientLoggingUrlFull()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingVolleyWebClientRequest;->initUrl(Ljava/lang/String;)V

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public sendPresentationRequest(Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistryWrapper;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistryWrapper;-><init>(Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;)V

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;->setUserCredentialRegistry(Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->createRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->mApiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getPresentationTrackingUrlFull()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;->initUrl(Ljava/lang/String;)V

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest",
            "<*>;)V"
        }
    .end annotation

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->HIERARCHICAL:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V

    return-void
.end method

.method public sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest",
            "<*>;",
            "Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->mApiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getApiUrlFull(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendFalkorRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;Ljava/lang/String;)V

    return-void
.end method
