.class public Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;
.super Ljava/lang/Object;
.source "MdxLoggingManager.java"


# static fields
.field private static final EVENT485_NAME:Ljava/lang/String; = "MDX Controller Start Playback"

.field private static final EVENT526_NAME:Ljava/lang/String; = "MDX Target"

.field private static final EVENT537_NAME:Ljava/lang/String; = "MDX Target Manager Action"

.field private static final EVENT_DATAFIELD_APPCONTEXT:Ljava/lang/String; = "appContext"

.field private static final EVENT_DATAFIELD_APP_VERSION:Ljava/lang/String; = "app_version"

.field private static final EVENT_DATAFIELD_CATALOGID:Ljava/lang/String; = "catalogId"

.field private static final EVENT_DATAFIELD_COUNTRY:Ljava/lang/String; = "country"

.field private static final EVENT_DATAFIELD_DEVICENAME:Ljava/lang/String; = "deviceName"

.field private static final EVENT_DATAFIELD_DEVICE_CAT:Ljava/lang/String; = "device_cat"

.field private static final EVENT_DATAFIELD_DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field private static final EVENT_DATAFIELD_DIALUUID:Ljava/lang/String; = "dialUuid"

.field private static final EVENT_DATAFIELD_EPISODEID:Ljava/lang/String; = "episodeId"

.field private static final EVENT_DATAFIELD_ESN:Ljava/lang/String; = "esn"

.field private static final EVENT_DATAFIELD_EVENTTYPE:Ljava/lang/String; = "eventType"

.field private static final EVENT_DATAFIELD_GEOLOCATION_COUNTRY:Ljava/lang/String; = "geolocation_country"

.field private static final EVENT_DATAFIELD_LANGUAGES:Ljava/lang/String; = "languages"

.field private static final EVENT_DATAFIELD_OS_VERSION:Ljava/lang/String; = "os_version"

.field private static final EVENT_DATAFIELD_PLAYBACKFROM:Ljava/lang/String; = "fromLocal"

.field private static final EVENT_DATAFIELD_SERVICETYPE:Ljava/lang/String; = "serviceType"

.field private static final EVENT_DATAFIELD_TARGETUUID:Ljava/lang/String; = "targetUuid"

.field private static final EVENT_DATAFIELD_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final EVENT_DATAFIELD_UI_VERSION:Ljava/lang/String; = "ui_version"

.field private static final EVENT_DATA_APPCONTEXT:Ljava/lang/String; = "home"

.field private static final EVENT_DATA_DEVICENAME:Ljava/lang/String; = "Android"

.field private static final EVENT_FIELD_DATA:Ljava/lang/String; = "data"

.field private static final EVENT_FIELD_ESN:Ljava/lang/String; = "Esn"

.field private static final EVENT_FIELD_EVENTNAME:Ljava/lang/String; = "EventName"

.field private static final EVENT_FIELD_EVENTTIME:Ljava/lang/String; = "EventTime"

.field private static final EVENT_FIELD_TRACKID:Ljava/lang/String; = "TrackId"

.field private static final TAG:Ljava/lang/String; = "nf_mdxMdxLoggingManager"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 61
    return-void
.end method

.method private buildEventAndSend(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 168
    :try_start_0
    const-string/jumbo v0, "Esn"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "EventTime"

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "data"

    .line 170
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 178
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 179
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string/jumbo v1, "nf_mdxMdxLoggingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "buildEventAndSend plaintext data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v1, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    invoke-direct {v1, p3, p4}, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v2, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;->sendEvent(Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;)V

    .line 195
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    const-string/jumbo v1, "nf_mdxMdxLoggingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "buildEventAndSend fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCommonEventData(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 200
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 202
    if-eqz p1, :cond_0

    .line 203
    :try_start_0
    const-string/jumbo v0, "languages"

    .line 204
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentAppLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "geolocation_country"

    .line 205
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getGeoCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "country"

    .line 206
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getReqCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    :cond_0
    const-string/jumbo v0, "timestamp"

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "ui_version"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 211
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "app_version"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 212
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "device_cat"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 213
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/util/DeviceCategory;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "os_version"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Android "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "device_type"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 215
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getESNPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-object v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    const-string/jumbo v2, "nf_mdxMdxLoggingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCommonEventData failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendEvent(Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager$1;-><init>(Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    return-void
.end method


# virtual methods
.method public logPlaybackStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 5

    .prologue
    .line 75
    if-nez p5, :cond_0

    .line 76
    const-string/jumbo v0, "nf_mdxMdxLoggingManager"

    const-string/jumbo v1, "userAgent is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-direct {p0, p5}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;->getCommonEventData(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)Lorg/json/JSONObject;

    move-result-object v0

    .line 80
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 82
    :try_start_0
    const-string/jumbo v2, "deviceName"

    const-string/jumbo v3, "Android"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "catalogId"

    .line 83
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "appContext"

    const-string/jumbo v4, "home"

    .line 84
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "esn"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 85
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "episodeId"

    .line 86
    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "fromLocal"

    .line 87
    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v2, "EventName"

    const-string/jumbo v3, "MDX Controller Start Playback"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "TrackId"

    .line 90
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    invoke-interface {p5}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getNetflixID()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-interface {p5}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getSecureNetflixID()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;->buildEventAndSend(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string/jumbo v1, "nf_mdxMdxLoggingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "logPlaybackStart fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public logTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 4

    .prologue
    .line 131
    if-nez p5, :cond_0

    .line 132
    const-string/jumbo v0, "nf_mdxMdxLoggingManager"

    const-string/jumbo v1, "userAgent is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-direct {p0, p5}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;->getCommonEventData(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)Lorg/json/JSONObject;

    move-result-object v0

    .line 136
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 138
    :try_start_0
    const-string/jumbo v2, "deviceName"

    const-string/jumbo v3, "Android"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "targetUuid"

    .line 139
    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "serviceType"

    .line 140
    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "eventType"

    .line 141
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "dialUuid"

    .line 142
    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string/jumbo v2, "EventName"

    const-string/jumbo v3, "MDX Target"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    invoke-interface {p5}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getNetflixID()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-interface {p5}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getSecureNetflixID()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;->buildEventAndSend(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    const-string/jumbo v1, "nf_mdxMdxLoggingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "logTarget fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public logTargetSelection(Ljava/lang/String;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 4

    .prologue
    .line 106
    if-nez p2, :cond_0

    .line 107
    const-string/jumbo v0, "nf_mdxMdxLoggingManager"

    const-string/jumbo v1, "userAgent is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;->getCommonEventData(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)Lorg/json/JSONObject;

    move-result-object v0

    .line 110
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 112
    :try_start_0
    const-string/jumbo v2, "eventType"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string/jumbo v2, "EventName"

    const-string/jumbo v3, "MDX Target Manager Action"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    invoke-interface {p2}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getNetflixID()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-interface {p2}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getSecureNetflixID()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;->buildEventAndSend(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string/jumbo v1, "nf_mdxMdxLoggingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "logTargetSelection fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setContext()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
