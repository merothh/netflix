.class public Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationVolleyWebClient;
.super Ljava/lang/Object;
.source "PresentationVolleyWebClient.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebClient;


# instance fields
.field private final mWebClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationVolleyWebClient;->mWebClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    .line 17
    return-void
.end method


# virtual methods
.method public isSynchronous()Z
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationVolleyWebClient;->mWebClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->isSynchronous()Z

    move-result v0

    return v0
.end method

.method public sendPresentationEvents(Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;

    invoke-direct {v0, v1, p1, v1}, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;)V

    .line 34
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationVolleyWebClient;->mWebClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendPresentationRequest(Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;)V

    .line 35
    return-void
.end method

.method public sendPresentationEvents(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;)V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;)V

    .line 28
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationVolleyWebClient;->mWebClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendPresentationRequest(Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;)V

    .line 29
    return-void
.end method
