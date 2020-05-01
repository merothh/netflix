.class public final Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;
.super Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;
.source "DeleteProfileSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "deleteProfile"


# instance fields
.field private mProfileId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Profile ID is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;->mProfileId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/uiaction/model/DeleteProfileEndedEvent;
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;->mStarted:J

    sub-long v2, v0, v2

    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/model/DeleteProfileEndedEvent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    iget-object v8, p0, Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;->mProfileId:Ljava/lang/String;

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/logging/uiaction/model/DeleteProfileEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/DeleteProfileEndedEvent;->setCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/DeleteProfileEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "deleteProfile"

    return-object v0
.end method
