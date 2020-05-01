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

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;->apiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    .line 33
    iput-object p2, p0, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;->userCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    .line 34
    iput-object p3, p0, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;->errorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    .line 35
    iput-object p4, p0, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 36
    return-void
.end method


# virtual methods
.method public getApiEndpointRegistry()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;->apiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    return-object v0
.end method

.method public getErrorLogger()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;->errorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    return-object v0
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;->requestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;->userCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    return-object v0
.end method
