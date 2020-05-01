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

    .prologue
    .line 47
    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/BaseCmpEvent;-><init>(Lcom/netflix/mediaclient/service/logging/UserData;)V

    .line 48
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mContext:Landroid/content/Context;

    .line 49
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    .line 50
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mFeedback:Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;

    .line 51
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mMsg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    .line 52
    return-void
.end method

.method private getEvent(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 82
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 84
    const-string/jumbo v1, "appName"

    const-string/jumbo v2, "Android"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
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

    .line 87
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 88
    const-string/jumbo v2, "events"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 91
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 93
    const-string/jumbo v1, "name"

    const-string/jumbo v3, "CMP_MESSAGE_READ"

    invoke-static {v2, v1, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 95
    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mMsg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    if-eqz v2, :cond_0

    .line 98
    const-string/jumbo v2, "messageId"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mMsg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v2, "messageGuid"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mMsg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->getMessageGuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v2, "eventGuid"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mMsg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mFeedback:Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;

    if-eqz v2, :cond_1

    .line 104
    const-string/jumbo v2, "action"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mFeedback:Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mMsg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->getOriginator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 108
    const-string/jumbo v2, "senderApp"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mMsg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->getOriginator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    :goto_0
    const-string/jumbo v2, "channel"

    const-string/jumbo v3, "PUSH"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string/jumbo v2, "esn"

    invoke-static {v1, v2, p1}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v2, "device_type"

    iget-object v3, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->deviceType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v2, "os_version"

    iget-object v3, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->osVersion:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string/jumbo v2, "device_cat"

    iget-object v3, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->deviceCategory:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v2, "app_version"

    iget-object v3, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->appVersion:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string/jumbo v2, "ui_version"

    iget-object v3, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->uiVersion:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string/jumbo v2, "geolocation_country"

    iget-object v3, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->geolocationCountry:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v2, "languages"

    iget-object v3, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->languages:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v2, "accountCountry"

    iget-object v3, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->country:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v2, "user_id"

    iget-object v3, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->profileToken:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-eqz p3, :cond_2

    .line 127
    const-string/jumbo v2, "netflixId"

    iget-object v3, p3, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string/jumbo v2, "secureNetflixId"

    iget-object v3, p3, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 132
    const-string/jumbo v2, "orientation"

    const-string/jumbo v3, "landscape"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    :goto_1
    return-object v0

    .line 110
    :cond_3
    const-string/jumbo v2, "senderApp"

    const-string/jumbo v3, "Android"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 134
    :cond_4
    const-string/jumbo v2, "orientation"

    const-string/jumbo v3, "portrait"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 62
    :try_start_0
    new-instance v2, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/logging/UserData;->netflixId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/logging/UserData;->secureNetflixId:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->getCommonRequestParameters(Landroid/content/Context;)Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    move-result-object v3

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/logging/UserData;->esn:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v2}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->getEvent(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;)Lorg/json/JSONObject;

    move-result-object v4

    .line 67
    new-instance v0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedbackCommand;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/logging/UserData;->esn:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v5, v5, Lcom/netflix/mediaclient/service/logging/UserData;->currentProfileToken:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedbackCommand;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v1, "nf_rest"

    const-string/jumbo v2, "Executing NotificationFeedbackCommand WebAPI call start"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedbackCommand;->execute()Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "nf_rest"

    const-string/jumbo v2, "Executing NotificationFeedbackCommand WebAPI call done"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
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

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string/jumbo v1, "nf_rest"

    const-string/jumbo v2, "Failed to execute both WebAPI call!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
