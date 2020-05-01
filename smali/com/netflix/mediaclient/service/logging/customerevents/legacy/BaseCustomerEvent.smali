.class public abstract Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;
.super Ljava/lang/Object;
.source "BaseCustomerEvent.java"


# static fields
.field protected static final DATA:Ljava/lang/String; = "data"

.field protected static final DATA_APP_VERSION:Ljava/lang/String; = "app_version"

.field protected static final DATA_COUNTRY:Ljava/lang/String; = "country"

.field protected static final DATA_DEEPLINK_MSG_PARAMS:Ljava/lang/String; = "deeplinkMsgParams"

.field protected static final DATA_DEVICETOKEN:Ljava/lang/String; = "deviceToken"

.field protected static final DATA_DEVICE_CAT:Ljava/lang/String; = "device_cat"

.field protected static final DATA_DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field protected static final DATA_GEOLOCATION_COUNTRY:Ljava/lang/String; = "geolocation_country"

.field protected static final DATA_INFOOPTSTATUS:Ljava/lang/String; = "infoOptStatus"

.field protected static final DATA_LANGUAGES:Ljava/lang/String; = "languages"

.field protected static final DATA_LOGGEDIN:Ljava/lang/String; = "loggedIn"

.field protected static final DATA_NETFLIX_ID:Ljava/lang/String; = "netflixId"

.field protected static final DATA_OS_VERSION:Ljava/lang/String; = "os_version"

.field protected static final DATA_PROFILE_GUID:Ljava/lang/String; = "profileGuid"

.field protected static final DATA_PROFILE_TOKEN:Ljava/lang/String; = "user_id"

.field protected static final DATA_PUSHOPTSTATUS:Ljava/lang/String; = "pushOptStatus"

.field protected static final DATA_SECURE_NETFLIX_ID:Ljava/lang/String; = "secureNetflixId"

.field protected static final DATA_SOURCE:Ljava/lang/String; = "source"

.field protected static final DATA_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field protected static final DATA_UI_VERSION:Ljava/lang/String; = "ui_version"

.field protected static final ESN:Ljava/lang/String; = "Esn"

.field protected static final EVENT_NAME:Ljava/lang/String; = "EventName"

.field protected static final EVENT_TIME:Ljava/lang/String; = "EventTime"

.field protected static final TAG:Ljava/lang/String; = "nf_rest"

.field protected static final VALUE_SOURCE_PN:Ljava/lang/String; = "pn"


# instance fields
.field protected mUser:Lcom/netflix/mediaclient/service/logging/UserData;


# direct methods
.method protected constructor <init>(Lcom/netflix/mediaclient/service/logging/UserData;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    .line 66
    return-void
.end method

.method protected static addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method protected getCommonRequestParameters(Landroid/content/Context;)Lcom/netflix/mediaclient/webapi/CommonRequestParameters;
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->getInstanceWithCredentials()Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/logging/UserData;->currentProfileToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->profileToken:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->osVersion:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/logging/UserData;->deviceCategory:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->deviceCategory:Ljava/lang/String;

    .line 80
    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->appVersion:Ljava/lang/String;

    .line 81
    iget-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->appVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->uiVersion:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/logging/UserData;->accountCountry:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->country:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/logging/UserData;->geoLocationCountry:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->geolocationCountry:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/logging/UserData;->languages:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->languages:Ljava/lang/String;

    .line 86
    return-object v0
.end method

.method protected getEvent(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;JLjava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 91
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 93
    const-string/jumbo v1, "user_id"

    iget-object v2, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->profileToken:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v1, "app_version"

    iget-object v2, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->appVersion:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v1, "os_version"

    iget-object v2, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->osVersion:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v1, "ui_version"

    iget-object v2, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->uiVersion:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v1, "device_cat"

    iget-object v2, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->deviceCategory:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "device_type"

    iget-object v2, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->deviceType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v1, "country"

    iget-object v2, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->country:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v1, "geolocation_country"

    iget-object v2, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->geolocationCountry:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v1, "languages"

    iget-object v2, p2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->languages:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    if-eqz p3, :cond_0

    .line 105
    const-string/jumbo v1, "netflixId"

    iget-object v2, p3, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v1, "secureNetflixId"

    iget-object v2, p3, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    invoke-static {p6}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    const-string/jumbo v1, "deeplinkMsgParams"

    invoke-static {v0, v1, p6}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_1
    return-object v0
.end method
