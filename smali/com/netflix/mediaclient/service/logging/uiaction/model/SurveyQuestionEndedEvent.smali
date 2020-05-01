.class public Lcom/netflix/mediaclient/service/logging/uiaction/model/SurveyQuestionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;
.source "SurveyQuestionEndedEvent.java"


# static fields
.field public static final QUESTION:Ljava/lang/String; = "question"

.field public static final RESPONSE:Ljava/lang/String; = "response"

.field public static final UIA_SESSION_NAME:Ljava/lang/String; = "surveyQuestion"


# instance fields
.field private mQuestionId:Ljava/lang/String;

.field private mResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const-string/jumbo v4, "surveyQuestion"

    move-object v3, p0

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SurveyQuestionEndedEvent;->mQuestionId:Ljava/lang/String;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SurveyQuestionEndedEvent;->mResponse:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "question"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SurveyQuestionEndedEvent;->mQuestionId:Ljava/lang/String;

    const-string/jumbo v0, "response"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SurveyQuestionEndedEvent;->mResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "question"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SurveyQuestionEndedEvent;->mQuestionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "response"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SurveyQuestionEndedEvent;->mResponse:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public isMemberEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
