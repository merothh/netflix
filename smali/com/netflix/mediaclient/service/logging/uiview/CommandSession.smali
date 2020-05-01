.class public final Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;
.super Lcom/netflix/mediaclient/service/logging/uiview/BaseUIViewSession;
.source "CommandSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "command"


# instance fields
.field protected mCommandName:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field protected mInputMethod:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

.field protected mInputValue:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

.field protected mModel:Lorg/json/JSONObject;

.field protected mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/logging/uiview/BaseUIViewSession;-><init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 25
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->mCommandName:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 26
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->mUrl:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->mInputMethod:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    .line 28
    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->mInputValue:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    .line 29
    iput-object p6, p0, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->mModel:Lorg/json/JSONObject;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 20
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;Lorg/json/JSONObject;)V

    .line 21
    return-void
.end method


# virtual methods
.method public createEndedEvent()Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;
    .locals 6

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->mStarted:J

    sub-long v2, v0, v2

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->getAction()Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->mUrl:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 43
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->mInputMethod:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->setInputMethod(Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;)V

    .line 44
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->mInputValue:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->setInputValue(Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;)V

    .line 45
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->mModel:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->setModel(Lorg/json/JSONObject;)V

    .line 46
    return-object v0
.end method

.method public getAction()Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->mCommandName:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "command"

    return-object v0
.end method
