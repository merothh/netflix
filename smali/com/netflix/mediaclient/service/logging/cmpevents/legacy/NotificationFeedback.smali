.class public Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;
.super Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/BaseCmpEvent;
.source "NotificationFeedback.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DATA_CHANNEL:Ljava/lang/String; = "channel"

.field private static final DATA_EVENT_GUID:Ljava/lang/String; = "eventGuid"

.field private static final DATA_MESSAGE_GUID:Ljava/lang/String; = "messageGuid"

.field private static final DATA_MESSAGE_ID:Ljava/lang/String; = "messageId"

.field private static final EVENT_NAME:Ljava/lang/String; = "CMP_MESSAGE_READ"

.field private static final TAG:Ljava/lang/String; = "nf_rest"

.field private static final VALUE_CHANNEL:Ljava/lang/String; = "PUSH"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFeedback:Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;

.field private mMsg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/MessageData;Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;Lcom/netflix/mediaclient/service/logging/UserData;)V
    .locals 0

    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/BaseCmpEvent;-><init>(Lcom/netflix/mediaclient/service/logging/UserData;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mFeedback:Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mMsg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    return-void
.end method

.method private getEvent(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;)Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "appName"

    const-string/jumbo v2, "Android"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v2, "events"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v1, "name"

    const-string/jumbo v3, "CMP_MESSAGE_READ"

    invoke-static {v2, v1, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mMsg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "messageId"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mMsg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "messageGuid"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mMsg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->getMessageGuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "eventGuid"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mMsg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mFeedback:Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "action"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mFeedback:Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mMsg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->getOriginator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "senderApp"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mMsg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->getOriginator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string/jumbo v2, "channel"

    const-string/jumbo v3, "PUSH"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "esn"

    invoke-static {v1, v2, p1}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "device_type"

    iget-object v3, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->deviceType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "os_version"

    iget-object v3, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->osVersion:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "device_cat"

    iget-object v3, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->deviceCategory:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "app_version"

    iget-object v3, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->appVersion:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "ui_version"

    iget-object v3, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->uiVersion:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "geolocation_country"

    iget-object v3, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->geolocationCountry:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "languages"

    iget-object v3, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->languages:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "accountCountry"

    iget-object v3, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->country:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "user_id"

    iget-object v3, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->profileToken:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const-string/jumbo v2, "netflixId"

    iget-object v3, p3, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "secureNetflixId"

    iget-object v3, p3, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "orientation"

    const-string/jumbo v3, "landscape"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    return-object v0

    :cond_3
    const-string/jumbo v2, "senderApp"

    const-string/jumbo v3, "Android"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v2, "orientation"

    const-string/jumbo v3, "portrait"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    new-instance v2, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/logging/UserData;->netflixId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/logging/UserData;->secureNetflixId:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->getCommonRequestParameters(Landroid/content/Context;)Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    move-result-object v3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/logging/UserData;->esn:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v2}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->getEvent(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedbackCommand;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/logging/UserData;->esn:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v5, v5, Lcom/netflix/mediaclient/service/logging/UserData;->currentProfileToken:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedbackCommand;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string/jumbo v1, "nf_rest"

    const-string/jumbo v2, "Executing NotificationFeedbackCommand WebAPI call start"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedbackCommand;->execute()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nf_rest"

    const-string/jumbo v2, "Executing NotificationFeedbackCommand WebAPI call done"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_rest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NotificationFeedbackCommand response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_rest"

    const-string/jumbo v2, "Failed to execute both WebAPI call!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
