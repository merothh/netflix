.class public Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationVolleyWebClient;
.super Ljava/lang/Object;
.source "ConfigurationVolleyWebClient.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/configuration/ConfigurationWebClient;


# instance fields
.field private final service:Lcom/netflix/mediaclient/service/NetflixService;

.field private final webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    .line 17
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    .line 18
    return-void
.end method


# virtual methods
.method public fetchConfigData(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    .line 27
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendConfigRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    .line 28
    return-void
.end method

.method public isSynchronous()Z
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->isSynchronous()Z

    move-result v0

    return v0
.end method

.method public verifyLogin(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 6

    .prologue
    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/NetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    .line 33
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendConfigRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    .line 34
    return-void
.end method
