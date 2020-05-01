.class public Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;
.super Lcom/netflix/mediaclient/android/app/BaseStatus;
.source "BladerunnerErrorStatus.java"


# static fields
.field private static final BLADERUNNER_UNKNOWN_ERROR:I = -0x1

.field private static final EXCEPTION_LOG_SIZE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "nf_bladerunner"


# instance fields
.field private mActionId:I

.field private mErrorBlob:Lorg/json/JSONObject;

.field private mErrorCode:I

.field private mRawErrorCodeString:Ljava/lang/String;

.field private mRequestType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;

.field private mUserDisplayErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 26
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/app/BaseStatus;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mRequestType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mErrorBlob:Lorg/json/JSONObject;

    .line 29
    iput v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mActionId:I

    .line 30
    iput v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mErrorCode:I

    .line 32
    invoke-static {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->hasErrors(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->BLADERUNNER_FAILURE:Lcom/netflix/mediaclient/StatusCode;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    .line 38
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->parseErrorObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private buildErrorBlobForLogging(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 214
    if-nez p1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mErrorBlob:Lorg/json/JSONObject;

    const-string/jumbo v1, "bladeRunnerCode"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mRawErrorCodeString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mErrorBlob:Lorg/json/JSONObject;

    const-string/jumbo v1, "errorDisplayMessage"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mUserDisplayErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mErrorBlob:Lorg/json/JSONObject;

    const-string/jumbo v1, "errorActionId"

    iget v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mActionId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mErrorBlob:Lorg/json/JSONObject;

    const-string/jumbo v1, "bladeRunnerExceptionType"

    const-string/jumbo v2, "bladeRunnerExceptionType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mErrorBlob:Lorg/json/JSONObject;

    const-string/jumbo v1, "apkStatusCode"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string/jumbo v0, "bladeRunnerMessage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_2

    .line 228
    const/4 v1, 0x0

    const/16 v2, 0xc7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mErrorBlob:Lorg/json/JSONObject;

    const-string/jumbo v2, "bladeRunnerMessage"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const-string/jumbo v0, "nf_bladerunner"

    const-string/jumbo v1, "error creating logging blob"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hasErrors(Lorg/json/JSONObject;)Z
    .locals 1

    .prologue
    .line 200
    if-eqz p0, :cond_0

    const-string/jumbo v0, "error"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "innerErrors"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasLinksInPayload(Lorg/json/JSONObject;)Z
    .locals 1

    .prologue
    .line 205
    if-eqz p0, :cond_0

    const-string/jumbo v0, "links"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mapBladeRunnerErrorCodeToStatusCode(I)Lcom/netflix/mediaclient/StatusCode;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 111
    const-string/jumbo v0, "nf_bladerunner"

    const-string/jumbo v1, "mapBladeRunnerErrorCodeToStatusCode bladeRunnerErrorCode=%d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 112
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->BLADERUNNER_FAILURE:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    .line 115
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->getByValue(I)Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    move-result-object v1

    .line 119
    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$1;->$SwitchMap$com$netflix$mediaclient$service$player$bladerunnerclient$volley$LaseOfflineError:[I

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 187
    :goto_0
    :pswitch_0
    const-string/jumbo v1, "nf_bladerunner"

    const-string/jumbo v2, "mapBladeRunnerErrorCodeToStatusCode returnErrorCode=%d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 188
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->BLADERUNNER_FAILURE:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 189
    const-string/jumbo v1, "nf_bladerunner"

    const-string/jumbo v2, "unmapped error code :%d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 192
    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/StatusCode;->getStatusCodeByValue(I)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .line 193
    if-nez v0, :cond_1

    .line 194
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->BLADERUNNER_FAILURE:Lcom/netflix/mediaclient/StatusCode;

    .line 196
    :cond_1
    return-object v0

    .line 139
    :pswitch_1
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_LIMIT_TOO_MANY_DOWNLOADED_DELETE_SOME:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    goto :goto_0

    .line 143
    :pswitch_2
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_LIMIT_CANT_DOWNLOAD_TILL_DATE:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    goto :goto_0

    .line 166
    :pswitch_3
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_LIMIT_TOO_MANY_DEVICES_PLAN_OPTION:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private parseErrorObject(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 78
    if-nez p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    const-string/jumbo v0, "bladeRunnerCode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string/jumbo v0, "bladeRunnerCode"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mRawErrorCodeString:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mRawErrorCodeString:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/NumberUtils;->toIntegerSafely(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mErrorCode:I

    .line 88
    iget v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mErrorCode:I

    if-ne v0, v3, :cond_2

    .line 89
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->BLADERUNNER_FAILURE:Lcom/netflix/mediaclient/StatusCode;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    .line 90
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->BLADERUNNER_FAILURE:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mErrorCode:I

    .line 101
    :goto_1
    const-string/jumbo v0, "errorDisplayMessage"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mUserDisplayErrorMessage:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, "errorActionId"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mActionId:I

    .line 104
    const-string/jumbo v0, "nf_bladerunner"

    const-string/jumbo v2, "mStatusCode: %s, mUserDisplayErrorMessage:%s, actionId:%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mUserDisplayErrorMessage:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mActionId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 105
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->buildErrorBlobForLogging(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 93
    :cond_2
    const-string/jumbo v0, "clientAction"

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->NO_ACTION:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->getValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 94
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->create(I)Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->isRecoverable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .line 98
    :goto_2
    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 97
    :cond_3
    iget v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mErrorCode:I

    .line 98
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mapBladeRunnerErrorCodeToStatusCode(I)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getErrorCodeForLogging()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "BR"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mRequestType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mRawErrorCodeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessageForLogging()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mErrorBlob:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mUserDisplayErrorMessage:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mUserDisplayErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mErrorCode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 67
    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->getErrorCodeForLogging()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDisplayMessage()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mUserDisplayErrorMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BladerunnerErrorStatus, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
