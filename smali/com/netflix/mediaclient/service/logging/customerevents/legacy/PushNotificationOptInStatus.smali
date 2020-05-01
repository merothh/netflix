.class public final Lcom/netflix/mediaclient/service/logging/customerevents/legacy/PushNotificationOptInStatus;
.super Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;
.source "PushNotificationOptInStatus.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "UI Push Notification Opt-In Status"


# instance fields
.field protected event:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;Ljava/lang/String;ZZZLcom/netflix/mediaclient/webapi/AuthorizationCredentials;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;-><init>(Lcom/netflix/mediaclient/service/logging/UserData;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/PushNotificationOptInStatus;->event:Lorg/json/JSONArray;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/PushNotificationOptInStatus;->event:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v3, "EventName"

    const-string/jumbo v4, "UI Push Notification Opt-In Status"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "EventTime"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v3, "Esn"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "user_id"

    iget-object v4, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->profileToken:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/PushNotificationOptInStatus;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "profileGuid"

    invoke-static {v3, v2, p8}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/PushNotificationOptInStatus;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "app_version"

    iget-object v4, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->appVersion:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/PushNotificationOptInStatus;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "os_version"

    iget-object v4, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->osVersion:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/PushNotificationOptInStatus;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "ui_version"

    iget-object v4, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->uiVersion:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/PushNotificationOptInStatus;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "deviceToken"

    invoke-static {v3, v2, p3}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/PushNotificationOptInStatus;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pushOptStatus"

    invoke-virtual {v3, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "infoOptStatus"

    invoke-virtual {v3, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "loggedIn"

    invoke-virtual {v3, v2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v3, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "source"

    const-string/jumbo v1, "pn"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "device_cat"

    iget-object v1, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->deviceCategory:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/PushNotificationOptInStatus;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "device_type"

    iget-object v1, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->deviceType:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/PushNotificationOptInStatus;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "country"

    iget-object v1, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->country:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/PushNotificationOptInStatus;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "geolocation_country"

    iget-object v1, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->geolocationCountry:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/PushNotificationOptInStatus;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "languages"

    iget-object v1, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->languages:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/PushNotificationOptInStatus;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_0

    const-string/jumbo v0, "netflixId"

    iget-object v1, p7, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/PushNotificationOptInStatus;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "secureNetflixId"

    iget-object v1, p7, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/PushNotificationOptInStatus;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/PushNotificationOptInStatus;->event:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
