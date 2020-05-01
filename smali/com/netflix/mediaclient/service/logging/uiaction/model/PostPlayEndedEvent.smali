.class public Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;
.source "PostPlayEndedEvent.java"


# static fields
.field public static final CHOSEN_INDEX:Ljava/lang/String; = "chosenIndex"

.field public static final CHOSEN_VIDEOID:Ljava/lang/String; = "chosenVideoId"

.field public static final DID_USER_CONTINUE_WATCHING:Ljava/lang/String; = "didUserContinueWatching"

.field public static final IS_AUTOPLAY_COUNTDOWN_ENABLED:Ljava/lang/String; = "isAutoPlayCountdownEnabled"

.field public static final LENGTH_OF_AUTOPLAY_COUNTDOWN:Ljava/lang/String; = "lengthOfAutoPlayCountdown"

.field public static final POSTPLAY_EXPERIENCE:Ljava/lang/String; = "postPlayExperience"

.field public static final TRACK_ID:Ljava/lang/String; = "trackId"

.field private static final UIA_NAME:Ljava/lang/String; = "postPlay"

.field public static final WAS_AUTOPLAY_COUNTDOWN_INTERRUPTED:Ljava/lang/String; = "wasAutoPlayCountdownInterrupted"


# instance fields
.field private mAutoPlayCountdownEnabled:Z

.field private mChosenIndex:Ljava/lang/Integer;

.field private mChosenVideoId:Ljava/lang/Integer;

.field private mDidUserContinueWatching:Z

.field private mLengthOfAutoPlayCountdown:I

.field private mPostPlayExperience:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

.field private mTrackId:I

.field private mWasAutoPlayCountdownInterrupted:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZILcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;ZZLjava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 12

    const-string/jumbo v4, "postPlay"

    const/4 v9, 0x0

    move-object v3, p0

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p5

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mAutoPlayCountdownEnabled:Z

    move/from16 v0, p8

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mLengthOfAutoPlayCountdown:I

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mPostPlayExperience:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mWasAutoPlayCountdownInterrupted:Z

    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mDidUserContinueWatching:Z

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mChosenVideoId:Ljava/lang/Integer;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mChosenIndex:Ljava/lang/Integer;

    move/from16 v0, p14

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mTrackId:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "isAutoPlayCountdownEnabled"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mAutoPlayCountdownEnabled:Z

    const-string/jumbo v0, "lengthOfAutoPlayCountdown"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mLengthOfAutoPlayCountdown:I

    const-string/jumbo v0, "postPlayExperience"

    invoke-static {p1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mPostPlayExperience:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    :cond_0
    const-string/jumbo v0, "wasAutoPlayCountdownInterrupted"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mWasAutoPlayCountdownInterrupted:Z

    const-string/jumbo v0, "didUserContinueWatching"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mDidUserContinueWatching:Z

    const-string/jumbo v0, "chosenVideoId"

    invoke-static {p1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mChosenVideoId:Ljava/lang/Integer;

    const-string/jumbo v0, "chosenIndex"

    invoke-static {p1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mChosenIndex:Ljava/lang/Integer;

    const-string/jumbo v0, "trackId"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mTrackId:I

    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "isAutoPlayCountdownEnabled"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mAutoPlayCountdownEnabled:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "lengthOfAutoPlayCountdown"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mLengthOfAutoPlayCountdown:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mPostPlayExperience:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "postPlayExperience"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mPostPlayExperience:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string/jumbo v1, "wasAutoPlayCountdownInterrupted"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mWasAutoPlayCountdownInterrupted:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "didUserContinueWatching"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mDidUserContinueWatching:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mChosenVideoId:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "chosenVideoId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mChosenVideoId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mChosenIndex:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "chosenIndex"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mChosenIndex:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    const-string/jumbo v1, "trackId"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->mTrackId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method public isMemberEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
