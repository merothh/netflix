.class public final Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;
.super Ljava/lang/Object;
.source "PrefetchLolomoABTestUtils.java"


# static fields
.field public static final MAP_LOLOMO_CACHE_EXPIRATION_TIME_MS:J = 0x2255100L

.field public static final PREFETCH_JSON_FILE_NAME:Ljava/lang/String; = "prefetch.json"

.field public static final PREFETCH_LOLOMO_JOB_REQUEST_FREQUENCY_TIMEOUT_MS:I = 0xea60

.field public static final PREFETCH_LOLOMO_JOB_START_DELAY_MS:I = 0x36ee80

.field public static final PREFETCH_LOLOMO_JOB_TIMEOUT_MS:I = 0x493e0

.field public static final PREFETCH_LOLOMO_METADATA_JOB_INTERVAL_MS:J = 0x2255100L


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doesJobRequireCharging(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getPrefetchLolomoConfig(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static doesJobRequireDeviceIdle(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getPrefetchLolomoConfig(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getJobPeriodicInterval()J
    .locals 2

    const-wide/32 v0, 0x2255100

    return-wide v0
.end method

.method public static getLastJobStartTime(Landroid/content/Context;)J
    .locals 4

    const-string/jumbo v0, "prefs_prefetch_lolomo_job_last_start_time_ms"

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getLongPref(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasJobScheduler(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->isInTest(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getPrefetchLolomoConfig(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isConfigRequestAsync(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->isInTest(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getPrefetchLolomoConfig(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isInTest(Landroid/content/Context;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getPrefetchLolomoConfig(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJobNetworkTypeUnmetered(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getPrefetchLolomoConfig(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isJobPeriodic(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getPrefetchLolomoConfig(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
