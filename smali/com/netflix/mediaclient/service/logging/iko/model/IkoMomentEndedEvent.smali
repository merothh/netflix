.class public Lcom/netflix/mediaclient/service/logging/iko/model/IkoMomentEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;
.source "IkoMomentEndedEvent.java"


# static fields
.field public static final EXPECTED_VIDEO_OFFSET:Ljava/lang/String; = "expectedVideoOffset"

.field public static final IKO_MOMENT_STATE:Ljava/lang/String; = "ikoMomentState"

.field public static final MOMENT_ID:Ljava/lang/String; = "momentId"

.field public static final MOMENT_TYPE:Ljava/lang/String; = "momentType"


# instance fields
.field private expectedVideoOffset:I

.field private ikoMomentState:Ljava/lang/String;

.field private momentId:Ljava/lang/String;

.field private momentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p8}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    iput-object p9, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoMomentEndedEvent;->momentId:Ljava/lang/String;

    iput-object p10, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoMomentEndedEvent;->momentType:Ljava/lang/String;

    iput p11, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoMomentEndedEvent;->expectedVideoOffset:I

    iput-object p12, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoMomentEndedEvent;->ikoMomentState:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "momentId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoMomentEndedEvent;->momentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "momentType"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoMomentEndedEvent;->momentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "expectedVideoOffset"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoMomentEndedEvent;->expectedVideoOffset:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "ikoMomentState"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoMomentEndedEvent;->ikoMomentState:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public isMemberEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
