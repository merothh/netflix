.class public final Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;
.super Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;
.source "RemoveFromPlaylistSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "removeFromPlaylist"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/uiaction/model/RemoveFromPlaylistEndedEvent;
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;->mStarted:J

    sub-long v2, v0, v2

    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RemoveFromPlaylistEndedEvent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/logging/uiaction/model/RemoveFromPlaylistEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/RemoveFromPlaylistEndedEvent;->setCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/RemoveFromPlaylistEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "removeFromPlaylist"

    return-object v0
.end method
