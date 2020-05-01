.class public final Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;
.super Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;
.source "UIModelessViewSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "uiModelessView"


# instance fields
.field private mTarget:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;-><init>()V

    return-void
.end method


# virtual methods
.method public createEndedEvent()Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionEndedEvent;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;->mStarted:J

    sub-long/2addr v0, v2

    new-instance v2, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionEndedEvent;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;->mTarget:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;->mTarget:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionEndedEvent;->setModalView(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    return-object v2
.end method

.method public createStartEvent(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionStartedEvent;
    .locals 2

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;->mTarget:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionStartedEvent;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionStartedEvent;-><init>(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionStartedEvent;->setCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionStartedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionStartedEvent;->setModalView(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "uiModelessView"

    return-object v0
.end method

.method public getTarget()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;->mTarget:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method
