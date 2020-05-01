.class public Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;
.super Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationVolleyWebClientRequest;
.source "PresentationEventRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationVolleyWebClientRequest",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_presentation"


# instance fields
.field private final mCallback:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;

.field private final mDeliveryRequestId:Ljava/lang/String;

.field private final mRequestObj:Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationVolleyWebClientRequest;-><init>()V

    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;->mDeliveryRequestId:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;->mRequestObj:Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;

    return-void
.end method


# virtual methods
.method public getParams()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;->mRequestObj:Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->toRequestParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_presentation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "params size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_presentation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "presentationEvent FAIL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;->mDeliveryRequestId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;->onEventsDeliveryFailed(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "presentationEvent OK : "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;->mDeliveryRequestId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;->onEventsDelivered(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic parseResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventRequest;->parseResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "OK"

    return-object v0
.end method
