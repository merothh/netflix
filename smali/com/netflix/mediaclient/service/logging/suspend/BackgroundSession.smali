.class public Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;
.super Lcom/netflix/mediaclient/service/logging/suspend/BaseSuspendSession;
.source "BackgroundSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "background"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/suspend/BaseSuspendSession;-><init>()V

    return-void
.end method


# virtual methods
.method public createEndedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundSessionEndedEvent;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;->mStarted:J

    sub-long/2addr v0, v2

    new-instance v2, Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundSessionEndedEvent;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundSessionEndedEvent;-><init>(J)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundSessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    return-object v2
.end method

.method public createStartEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundSessionStartedEvent;
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundSessionStartedEvent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundSessionStartedEvent;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundSessionStartedEvent;->setCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundSessionStartedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "background"

    return-object v0
.end method
