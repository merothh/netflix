.class public final Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;
.super Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;
.source "UIDataRequestSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "uiDataRequest"


# instance fields
.field private mRequestId:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;->mRequestId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;Lcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;->mStarted:J

    sub-long/2addr v0, v2

    new-instance v2, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;-><init>(J)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;->mRequestId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->setError(Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->setReason(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;->mRequestId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->setResponse(Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;)V

    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "uiDataRequest"

    return-object v0
.end method
