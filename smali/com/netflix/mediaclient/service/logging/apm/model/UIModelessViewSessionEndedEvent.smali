.class public final Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "UIModelessViewSessionEndedEvent.java"


# static fields
.field public static final MODELESS_VIEW:Ljava/lang/String; = "modelessView"

.field private static final UI_SESSION_NAME:Ljava/lang/String; = "uiModelessView"


# instance fields
.field private modelessView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    const-string/jumbo v0, "uiModelessView"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionEndedEvent;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionEndedEvent;->modelessView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;J)V

    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionEndedEvent;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionEndedEvent;->modelessView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "data"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "modelessView"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionEndedEvent;->modelessView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    :cond_0
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionEndedEvent;->modelessView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "modelessView"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionEndedEvent;->modelessView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v0
.end method

.method public getModelessView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionEndedEvent;->modelessView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method
