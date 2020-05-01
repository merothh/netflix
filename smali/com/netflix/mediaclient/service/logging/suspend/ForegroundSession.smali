.class public Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;
.super Lcom/netflix/mediaclient/service/logging/suspend/BaseSuspendSession;
.source "ForegroundSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "foreground"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/suspend/BaseSuspendSession;-><init>()V

    return-void
.end method


# virtual methods
.method public createEndedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionEndedEvent;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;->mStarted:J

    sub-long/2addr v0, v2

    new-instance v2, Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionEndedEvent;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionEndedEvent;-><init>(J)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    return-object v2
.end method

.method public createStartEvent(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;)Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionStartedEvent;
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionStartedEvent;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionStartedEvent;-><init>(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionStartedEvent;->setCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionStartedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "foreground"

    return-object v0
.end method
