.class public Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;
.super Lcom/netflix/mediaclient/service/logging/suspend/BaseSuspendSession;
.source "BackgroundingSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "backgrounding"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/suspend/BaseSuspendSession;-><init>()V

    return-void
.end method


# virtual methods
.method public createEndedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundingSessionEndedEvent;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;->mStarted:J

    sub-long/2addr v0, v2

    new-instance v2, Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundingSessionEndedEvent;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundingSessionEndedEvent;-><init>(J)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundingSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundingSessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "backgrounding"

    return-object v0
.end method
