.class public final Lcom/netflix/mediaclient/service/logging/apm/UserSession;
.super Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;
.source "UserSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "userSession"


# instance fields
.field private mPendingEndEvent:Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;

.field private waitingOnSessionId:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;-><init>()V

    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;JLcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->mStarted:J

    sub-long v2, v0, v2

    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;J)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;->setModalView(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    invoke-virtual {v0, p4}, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->waitingOnSessionId:Z

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->mPendingEndEvent:Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    goto :goto_0
.end method

.method public createStartEvent(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;J)Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;-><init>(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;J)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;->setCategory(Ljava/lang/String;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "userSession"

    return-object v0
.end method

.method public getPendingEndEvent()Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->mPendingEndEvent:Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;

    return-object v0
.end method

.method public isWaitingOnSessionId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->waitingOnSessionId:Z

    return v0
.end method

.method public setId(J)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;->setId(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->waitingOnSessionId:Z

    return-void
.end method
