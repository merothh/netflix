.class public final Lcom/netflix/mediaclient/service/logging/uiaction/model/SelectProfileEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;
.source "SelectProfileEndedEvent.java"


# static fields
.field public static final PROFILE_ID:Ljava/lang/String; = "profileId"

.field public static final REMEMBER_PROFILE:Ljava/lang/String; = "rememberProfile"

.field public static final UIA_SESSION_NAME:Ljava/lang/String; = "selectProfile"


# instance fields
.field private mProfileId:Ljava/lang/String;

.field private mRememberProfile:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;)V
    .locals 12

    const-string/jumbo v4, "selectProfile"

    move-object v3, p0

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SelectProfileEndedEvent;->mProfileId:Ljava/lang/String;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SelectProfileEndedEvent;->mRememberProfile:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "profileId"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SelectProfileEndedEvent;->mProfileId:Ljava/lang/String;

    const-string/jumbo v0, "rememberProfile"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SelectProfileEndedEvent;->mRememberProfile:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    :cond_0
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SelectProfileEndedEvent;->mProfileId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "profileId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SelectProfileEndedEvent;->mProfileId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SelectProfileEndedEvent;->mRememberProfile:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "rememberProfile"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SelectProfileEndedEvent;->mRememberProfile:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v0
.end method

.method public isMemberEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
