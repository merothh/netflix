.class public abstract Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/BaseCmpEvent;
.super Ljava/lang/Object;
.source "BaseCmpEvent.java"


# static fields
.field protected static final DATA:Ljava/lang/String; = "data"

.field protected static final DATA_ACCOUNT_COUNTRY:Ljava/lang/String; = "accountCountry"

.field protected static final DATA_ACTION:Ljava/lang/String; = "action"

.field protected static final DATA_APP_NAME:Ljava/lang/String; = "appName"

.field protected static final DATA_APP_VERSION:Ljava/lang/String; = "app_version"

.field protected static final DATA_DEVICE_CAT:Ljava/lang/String; = "device_cat"

.field protected static final DATA_DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field protected static final DATA_ESN:Ljava/lang/String; = "esn"

.field protected static final DATA_EVENTS:Ljava/lang/String; = "events"

.field protected static final DATA_GEOLOCATION_COUNTRY:Ljava/lang/String; = "geolocation_country"

.field protected static final DATA_LANGUAGES:Ljava/lang/String; = "languages"

.field protected static final DATA_NAME:Ljava/lang/String; = "name"

.field protected static final DATA_NETFLIX_ID:Ljava/lang/String; = "netflixId"

.field protected static final DATA_ORIENTATION:Ljava/lang/String; = "orientation"

.field protected static final DATA_OS_VERSION:Ljava/lang/String; = "os_version"

.field protected static final DATA_PROFILE_TOKEN:Ljava/lang/String; = "user_id"

.field protected static final DATA_SECURE_NETFLIX_ID:Ljava/lang/String; = "secureNetflixId"

.field protected static final DATA_SENDER_APP:Ljava/lang/String; = "senderApp"

.field protected static final DATA_TIME:Ljava/lang/String; = "time"

.field protected static final DATA_UI_VERSION:Ljava/lang/String; = "ui_version"

.field protected static final TAG:Ljava/lang/String; = "nf_rest"

.field protected static final VALUE_APP_NAME:Ljava/lang/String; = "Android"


# instance fields
.field protected mUser:Lcom/netflix/mediaclient/service/logging/UserData;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/UserData;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/BaseCmpEvent;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    .line 59
    return-void
.end method

.method protected static addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method protected getCommonRequestParameters(Landroid/content/Context;)Lcom/netflix/mediaclient/webapi/CommonRequestParameters;
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->getInstanceWithCredentials()Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/BaseCmpEvent;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/logging/UserData;->currentProfileToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->profileToken:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->osVersion:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/BaseCmpEvent;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/logging/UserData;->deviceCategory:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->deviceCategory:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->appVersion:Ljava/lang/String;

    .line 74
    iget-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->appVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->uiVersion:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/BaseCmpEvent;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/logging/UserData;->accountCountry:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->country:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/BaseCmpEvent;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/logging/UserData;->geoLocationCountry:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->geolocationCountry:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/BaseCmpEvent;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/logging/UserData;->languages:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->languages:Ljava/lang/String;

    .line 79
    return-object v0
.end method
