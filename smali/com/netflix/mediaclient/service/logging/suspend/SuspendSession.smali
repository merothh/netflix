.class public Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;
.super Lcom/netflix/mediaclient/service/logging/suspend/BaseSuspendSession;
.source "SuspendSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "suspend"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/suspend/BaseSuspendSession;-><init>()V

    return-void
.end method


# virtual methods
.method public createEndedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/SuspendSessionEndedEvent;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;->mStarted:J

    sub-long/2addr v0, v2

    new-instance v2, Lcom/netflix/mediaclient/service/logging/suspend/model/SuspendSessionEndedEvent;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/suspend/model/SuspendSessionEndedEvent;-><init>(J)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/suspend/model/SuspendSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/suspend/model/SuspendSessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    return-object v2
.end method

.method public createStartEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/SuspendSessionStartedEvent;
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/logging/suspend/model/SuspendSessionStartedEvent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/suspend/model/SuspendSessionStartedEvent;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/suspend/model/SuspendSessionStartedEvent;->setCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/suspend/model/SuspendSessionStartedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "suspend"

    return-object v0
.end method
