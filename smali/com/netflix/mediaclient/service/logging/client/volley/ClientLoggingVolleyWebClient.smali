.class public Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingVolleyWebClient;
.super Ljava/lang/Object;
.source "ClientLoggingVolleyWebClient.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebClient;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log"


# instance fields
.field private final mWebClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingVolleyWebClient;->mWebClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    return-void
.end method


# virtual methods
.method public isSynchronous()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingVolleyWebClient;->mWebClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->isSynchronous()Z

    move-result v0

    return v0
.end method

.method public sendLoggingEvents(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "sendLoggingEvents without callback starts..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequest;

    invoke-direct {v0, v2, p1, v2}, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingVolleyWebClient;->mWebClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendLoggingRequest(Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingVolleyWebClientRequest;)V

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "sendLoggingEvents without callback  done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendLoggingEvents(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;)V
    .locals 2

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "sendLoggingEvents starts..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingVolleyWebClient;->mWebClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendLoggingRequest(Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingVolleyWebClientRequest;)V

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "sendLoggingEvents done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
