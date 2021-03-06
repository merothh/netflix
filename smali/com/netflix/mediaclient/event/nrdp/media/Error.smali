.class public Lcom/netflix/mediaclient/event/nrdp/media/Error;
.super Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;
.source "Error.java"


# static fields
.field private static final ATTR_ERROR:Ljava/lang/String; = "error"

.field private static final ATTR_ERROR_CODE:Ljava/lang/String; = "errorcode"

.field private static final ATTR_STACK:Ljava/lang/String; = "stack"

.field public static final TYPE:Ljava/lang/String; = "error"


# instance fields
.field private error:I

.field private mArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string/jumbo v0, "error"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public checkForAuthFailureRegistrationRequired()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Error;->mArray:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/event/nrdp/media/Error;->mArray:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/event/nrdp/media/Error;->mArray:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "errorcode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NFErr_NCCP_RegistrationRequired"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "nf_event"

    const-string/jumbo v4, "checkForAuthFailureRegistrationRequired: JSONException:"

    invoke-static {v3, v4, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v3, "nf_event"

    const-string/jumbo v4, "checkForAuthFailureRegistrationRequired:"

    invoke-static {v3, v4, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public checkForOpenDeviceFailureInStack()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Error;->mArray:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/event/nrdp/media/Error;->mArray:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/event/nrdp/media/Error;->mArray:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "errorcode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NFErr_MC_OpenDeviceFailure"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "nf_event"

    const-string/jumbo v4, "checkForOpenDeviceFailureInStack: JSONException:"

    invoke-static {v3, v4, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v3, "nf_event"

    const-string/jumbo v4, "checkForOpenDeviceFailureInStack:"

    invoke-static {v3, v4, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public checkForStreamingFailureHttp420()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Error;->mArray:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/event/nrdp/media/Error;->mArray:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/event/nrdp/media/Error;->mArray:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "errorcode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "NFErr_HTTPErrorCode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "httpcode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "420"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "nf_event"

    const-string/jumbo v3, "checkForStreamingFailureHttp420 succeeds"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "nf_event"

    const-string/jumbo v4, "checkForStreamingFailureHttp420: JSONException:"

    invoke-static {v3, v4, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v3, "nf_event"

    const-string/jumbo v4, "checkForStreamingFailureHttp420:"

    invoke-static {v3, v4, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getError()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Error;->error:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    const-string/jumbo v0, "error"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/Error;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Error;->error:I

    const-string/jumbo v0, "stack"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/event/nrdp/media/Error;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Error;->mArray:Lorg/json/JSONArray;

    return-void
.end method
