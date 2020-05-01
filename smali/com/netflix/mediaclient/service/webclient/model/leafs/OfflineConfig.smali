.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;
.super Ljava/lang/Object;
.source "OfflineConfig.java"


# static fields
.field private static final DEFAULT_MAINTENANCE_JOB_PERIOD_IN_HRS:I = 0x30

.field private static final TAG:Ljava/lang/String; = "nf_log"


# instance fields
.field private disableOfflineFeature:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableOfflineFeature"
    .end annotation
.end field

.field private maintenanceJobPeriodInHrs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maintenanceJobPeriodInHrs"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->disableOfflineFeature:Z

    const/16 v1, 0x30

    iput v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->maintenanceJobPeriodInHrs:I

    return-object v0
.end method

.method public static loadFromPreferences(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v0, "offline_config"

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "loadFromPreferences offlineConfig not found in file system"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->createDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "loadFromPreferences offlineConfig loaded from file system"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "loadFromPreferences Failed to load offlineConfig from file system"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static saveToPreferences(Lcom/netflix/mediaclient/util/NetflixPreference;Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;)Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "offline_config"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Subtitle retry policy not found, return default"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->createDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-string/jumbo v1, "offline_config"

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public getMaintenanceJobPeriodInHrs()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->maintenanceJobPeriodInHrs:I

    return v0
.end method

.method public isOfflineFeatureDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->disableOfflineFeature:Z

    return v0
.end method
