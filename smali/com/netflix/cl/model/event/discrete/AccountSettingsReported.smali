.class public Lcom/netflix/cl/model/event/discrete/AccountSettingsReported;
.super Lcom/netflix/cl/model/event/discrete/DiscreteEvent;
.source ""


# instance fields
.field private allowNotificationsSetting:Ljava/lang/Boolean;

.field private cellularDataUsageSetting:Lcom/netflix/cl/model/CellularDataUsageLevel;

.field private downloadLocationSetting:Lcom/netflix/cl/model/StorageLocationKind;

.field private downloadVideoQualitySetting:Lcom/netflix/cl/model/VideoQualityLevel;

.field private downloadedForYouSetting:Ljava/lang/Boolean;

.field private smartDownloadsSetting:Ljava/lang/Boolean;

.field private wifiOnlyDownloadsSetting:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/netflix/cl/model/CellularDataUsageLevel;Lcom/netflix/cl/model/StorageLocationKind;Lcom/netflix/cl/model/VideoQualityLevel;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;-><init>()V

    const-string v0, "AccountSettingsReported"

    .line 29
    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/event/discrete/AccountSettingsReported;->addContextType(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/netflix/cl/model/event/discrete/AccountSettingsReported;->allowNotificationsSetting:Ljava/lang/Boolean;

    .line 31
    iput-object p2, p0, Lcom/netflix/cl/model/event/discrete/AccountSettingsReported;->smartDownloadsSetting:Ljava/lang/Boolean;

    .line 32
    iput-object p3, p0, Lcom/netflix/cl/model/event/discrete/AccountSettingsReported;->wifiOnlyDownloadsSetting:Ljava/lang/Boolean;

    .line 33
    iput-object p4, p0, Lcom/netflix/cl/model/event/discrete/AccountSettingsReported;->downloadedForYouSetting:Ljava/lang/Boolean;

    .line 34
    iput-object p5, p0, Lcom/netflix/cl/model/event/discrete/AccountSettingsReported;->cellularDataUsageSetting:Lcom/netflix/cl/model/CellularDataUsageLevel;

    .line 35
    iput-object p6, p0, Lcom/netflix/cl/model/event/discrete/AccountSettingsReported;->downloadLocationSetting:Lcom/netflix/cl/model/StorageLocationKind;

    .line 36
    iput-object p7, p0, Lcom/netflix/cl/model/event/discrete/AccountSettingsReported;->downloadVideoQualitySetting:Lcom/netflix/cl/model/VideoQualityLevel;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 50
    invoke-super {p0}, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/netflix/cl/model/event/discrete/AccountSettingsReported;->allowNotificationsSetting:Ljava/lang/Boolean;

    const-string v2, "allowNotificationsSetting"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    iget-object v1, p0, Lcom/netflix/cl/model/event/discrete/AccountSettingsReported;->smartDownloadsSetting:Ljava/lang/Boolean;

    const-string v2, "smartDownloadsSetting"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    iget-object v1, p0, Lcom/netflix/cl/model/event/discrete/AccountSettingsReported;->wifiOnlyDownloadsSetting:Ljava/lang/Boolean;

    const-string v2, "wifiOnlyDownloadsSetting"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    iget-object v1, p0, Lcom/netflix/cl/model/event/discrete/AccountSettingsReported;->downloadedForYouSetting:Ljava/lang/Boolean;

    const-string v2, "downloadedForYouSetting"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    iget-object v1, p0, Lcom/netflix/cl/model/event/discrete/AccountSettingsReported;->cellularDataUsageSetting:Lcom/netflix/cl/model/CellularDataUsageLevel;

    const-string v2, "cellularDataUsageSetting"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    iget-object v1, p0, Lcom/netflix/cl/model/event/discrete/AccountSettingsReported;->downloadLocationSetting:Lcom/netflix/cl/model/StorageLocationKind;

    const-string v2, "downloadLocationSetting"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    iget-object v1, p0, Lcom/netflix/cl/model/event/discrete/AccountSettingsReported;->downloadVideoQualitySetting:Lcom/netflix/cl/model/VideoQualityLevel;

    const-string v2, "downloadVideoQualitySetting"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
