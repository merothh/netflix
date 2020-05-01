.class public Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequest;
.super Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingVolleyWebClientRequest;
.source "LoggingEventsRequest.java"


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
.field private static final TAG:Ljava/lang/String; = "nf_log"


# instance fields
.field private mCallback:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;

.field private mDeliveryRequestId:Ljava/lang/String;

.field private mLoggingRequest:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingVolleyWebClientRequest;-><init>()V

    .line 37
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;

    .line 38
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequest;->mDeliveryRequestId:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequest;->mLoggingRequest:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method protected getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequest;->mLoggingRequest:Ljava/lang/String;

    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequest;->mDeliveryRequestId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;->onEventsDeliveryFailed(Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequest;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequest;->mDeliveryRequestId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;->onEventsDelivered(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method protected bridge synthetic parseResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequest;->parseResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string/jumbo v0, "nf_log"

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

    .line 57
    :cond_0
    const-string/jumbo v0, "OK"

    return-object v0
.end method
