.class public final Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;
.super Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;
.source "RateTitleSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "rateTitle"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 30
    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;I)Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;
    .locals 10

    .prologue
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;->mStarted:J

    sub-long v2, v0, v2

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;I)V

    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 47
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "rateTitle"

    return-object v0
.end method
