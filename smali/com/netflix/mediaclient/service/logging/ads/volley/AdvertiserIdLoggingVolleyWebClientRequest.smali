.class public final Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingVolleyWebClientRequest;
.super Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingVolleyWebClientRequest;
.source "AdvertiserIdLoggingVolleyWebClientRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingVolleyWebClientRequest",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_volleyrequest"


# instance fields
.field private mCallback:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;

.field private mPayload:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingVolleyWebClientRequest;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingVolleyWebClientRequest;->mPayload:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingVolleyWebClientRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;

    .line 41
    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 3
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
    .line 49
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingVolleyWebClientRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "X-Netflix.ichnaea.request.type"

    const-string/jumbo v2, "IchnaeaRequest"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-object v0
.end method

.method protected getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingVolleyWebClientRequest;->mPayload:Ljava/lang/String;

    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 99
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string/jumbo v0, "nf_volleyrequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Advertiser ID and opt in startus failed to be delivered. Status code returned"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingVolleyWebClientRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingVolleyWebClientRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;->onFailure()V

    .line 105
    :cond_1
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingVolleyWebClientRequest;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string/jumbo v0, "nf_volleyrequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Advertiser ID and opt in startus delivered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingVolleyWebClientRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingVolleyWebClientRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;->onSuccess()V

    .line 91
    :cond_1
    return-void
.end method

.method protected bridge synthetic parseResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingVolleyWebClientRequest;->parseResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string/jumbo v0, "nf_volleyrequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "String response to parse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    const-string/jumbo v0, "OK"

    return-object v0
.end method
