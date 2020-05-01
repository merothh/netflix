.class public final Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;
.super Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;
.source "NavigationSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "navigate"

.field private static final TAG:Ljava/lang/String; = "nf_log"


# instance fields
.field private startedModalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/uiaction/model/NavigationEndedEvent;
    .locals 9

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->startedModalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    if-eqz v0, :cond_3

    iget-object v7, p0, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->startedModalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    if-ne v7, v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "We stayed in same view, do not report "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->mStarted:J

    sub-long v2, v0, v2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "We started from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " and ended up on "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/model/NavigationEndedEvent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    iget-object v8, p0, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/logging/uiaction/model/NavigationEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/NavigationEndedEvent;->setCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/NavigationEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    goto :goto_1

    :cond_3
    move-object v7, p1

    goto/16 :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "navigate"

    return-object v0
.end method

.method public getStartingView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->startedModalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public setStartingView(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->startedModalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-void
.end method
