.class public final Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingVolleyWebClient;
.super Ljava/lang/Object;
.source "AdvertiserIdLoggingVolleyWebClient.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingWebClient;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log"


# instance fields
.field private final mWebClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingVolleyWebClient;->mWebClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    .line 35
    return-void
.end method


# virtual methods
.method public isSynchronous()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingVolleyWebClient;->mWebClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->isSynchronous()Z

    move-result v0

    return v0
.end method

.method public sendLoggingEvent(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;)V
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send Advertising ID event send starts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingVolleyWebClientRequest;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingVolleyWebClientRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;)V

    .line 49
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingVolleyWebClient;->mWebClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendLoggingRequest(Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingVolleyWebClientRequest;)V

    .line 50
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "send Advertising ID event send done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method
