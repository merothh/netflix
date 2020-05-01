.class public Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;
.super Lcom/netflix/mediaclient/service/logging/suspend/BaseSuspendSession;
.source "UnfocusedSession.java"


# static fields
.field public static final DELTA:J = 0x1f4L

.field public static final NAME:Ljava/lang/String; = "unfocused"


# instance fields
.field private mUnfocusedSessionStartedEvent:Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionStartedEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/suspend/BaseSuspendSession;-><init>()V

    return-void
.end method


# virtual methods
.method public createEndedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionEndedEvent;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;->mStarted:J

    sub-long v2, v0, v2

    const-wide/16 v0, 0x1f4

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionEndedEvent;

    invoke-direct {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionEndedEvent;-><init>(J)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    goto :goto_0
.end method

.method public createStartEvent()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionStartedEvent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionStartedEvent;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionStartedEvent;->setCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionStartedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;->mUnfocusedSessionStartedEvent:Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionStartedEvent;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "unfocused"

    return-object v0
.end method

.method public getUnfocusedSessionStartedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionStartedEvent;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;->mUnfocusedSessionStartedEvent:Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionStartedEvent;

    return-object v0
.end method
