.class public final Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;
.source "StartPlayEndedEvent.java"


# static fields
.field public static final PLAYER_TYPE:Ljava/lang/String; = "playerType"

.field public static final PLAY_LOCATION:Ljava/lang/String; = "playLocation"

.field public static final RANK_TITLE:Ljava/lang/String; = "rankTitle"

.field private static final UIA_NAME:Ljava/lang/String; = "startPlay"


# instance fields
.field private mPlayLocation:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

.field private mPlayerType:Lcom/netflix/mediaclient/media/PlayerType;

.field private mRankTitle:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/PlayerType;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V
    .locals 12

    const-string/jumbo v4, "startPlay"

    move-object v3, p0

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;->mRankTitle:Ljava/lang/Integer;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;->mPlayerType:Lcom/netflix/mediaclient/media/PlayerType;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;->mPlayLocation:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "rankTitle"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;->mRankTitle:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;->mRankTitle:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "rankTitle"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;->mRankTitle:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;->mPlayerType:Lcom/netflix/mediaclient/media/PlayerType;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "playerType"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;->mPlayerType:Lcom/netflix/mediaclient/media/PlayerType;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/PlayerType;->mapPlayerTypeForLogging(Lcom/netflix/mediaclient/media/PlayerType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;->mPlayLocation:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "playLocation"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;->mPlayLocation:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-object v0
.end method

.method public isMemberEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
