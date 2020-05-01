.class public Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;
.super Ljava/lang/Object;
.source "NetflixWebClientInitParameters.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/webclient/WebClientInitParameters;


# instance fields
.field private final apiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

.field private final errorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

.field private final requestQueue:Lcom/android/volley/RequestQueue;

.field private final userCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;Lcom/android/volley/RequestQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;->apiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;->userCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;->errorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;->requestQueue:Lcom/android/volley/RequestQueue;

    return-void
.end method


# virtual methods
.method public getApiEndpointRegistry()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;->apiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    return-object v0
.end method

.method public getErrorLogger()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;->errorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    return-object v0
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;->requestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;->userCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    return-object v0
.end method
