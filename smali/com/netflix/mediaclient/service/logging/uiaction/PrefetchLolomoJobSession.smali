.class public Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;
.super Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;
.source "PrefetchLolomoJobSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "prefetchLolomoJob"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/uiaction/model/PrefetchLolomoJobEndedEvent;
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;->mStarted:J

    sub-long v4, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/logging/uiaction/model/PrefetchLolomoJobEndedEvent;

    const-string/jumbo v2, "prefetchLolomoJob"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/service/logging/uiaction/model/PrefetchLolomoJobEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/uiaction/model/PrefetchLolomoJobEndedEvent;->setCategory(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/uiaction/model/PrefetchLolomoJobEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "prefetchLolomoJob"

    return-object v0
.end method
