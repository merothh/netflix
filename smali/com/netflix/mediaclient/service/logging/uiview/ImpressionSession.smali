.class public Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;
.super Lcom/netflix/mediaclient/service/logging/uiview/BaseUIViewSession;
.source "ImpressionSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "impression"


# instance fields
.field private mModel:Lorg/json/JSONObject;

.field private mOriginatingRequestGuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/uiview/BaseUIViewSession;-><init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->mOriginatingRequestGuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->mModel:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public createEndedEvent(ZLcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->mStarted:J

    sub-long v2, v0, v2

    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->mOriginatingRequestGuid:Ljava/lang/String;

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;ZLcom/netflix/mediaclient/service/logging/client/model/Error;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->mModel:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->mModel:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;->setModel(Lorg/json/JSONObject;)V

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "impression"

    return-object v0
.end method
