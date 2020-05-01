.class public final Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;
.super Ljava/lang/Object;
.source "ErrorLoggingManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x4
.end annotation


# static fields
.field private static final CRITTER_VERSION_NAME:Ljava/lang/String; = "4.12.2"

.field private static final ENABLE_CRITTERCISM:Z = true

.field private static final TAG:Ljava/lang/String; = "nf_log_crit"

.field private static sBreadcrumbLoggingEnabled:Z

.field private static sCrittercismReady:Z

.field private static sErrorLoggingEnabledByConfig:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sErrorLoggingEnabledByConfig:Z

    .line 46
    sput-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sBreadcrumbLoggingEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->wrapThrowableWithPrefix(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method private static configureBreadcrumbLogging(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 223
    if-nez p1, :cond_0

    .line 224
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v1, "Breadcrumb logging specification is missing. It should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    const-string/jumbo v2, "nf_log_crit"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Breadcrumb logging was explicitly disabled "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sBreadcrumbLoggingEnabled:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " now it will explicitly disabled "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;->isDisabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v2, "Breadcrumb logging is explicitly disabled"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sput-boolean v1, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sBreadcrumbLoggingEnabled:Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 229
    goto :goto_1

    .line 237
    :cond_3
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v1, "Breadcrumb logging is NOT explicitly disabled, use error logging chance to keep all in sync since we are using only one service, ignore its own disable chance percentage"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    sget-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sErrorLoggingEnabledByConfig:Z

    sput-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sBreadcrumbLoggingEnabled:Z

    goto :goto_0
.end method

.method private static configureErrorLogging(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 189
    if-nez p1, :cond_1

    .line 190
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v1, "Error logging specification is missing. It should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    const-string/jumbo v2, "nf_log_crit"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error logging was explicitly disabled "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sErrorLoggingEnabledByConfig:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " now it will be explicitly disabled "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->isDisabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 199
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v2, "Error logging is explicitly disabled"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sput-boolean v1, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sErrorLoggingEnabledByConfig:Z

    .line 206
    :goto_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string/jumbo v0, "nf_log_crit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "External logging for this device is enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sErrorLoggingEnabledByConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 195
    goto :goto_1

    .line 202
    :cond_4
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v1, "Error logging is NOT explicitly disabled, apply disable chance percentage"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->getDisableChancePercentage()I

    move-result v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isDeviceEnabled(Landroid/content/Context;I)Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sErrorLoggingEnabledByConfig:Z

    goto :goto_2
.end method

.method public static didCrashOnLastLoad()Z
    .locals 1

    .prologue
    .line 347
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->isEnabledAndReady()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sErrorLoggingEnabledByConfig:Z

    if-eqz v0, :cond_0

    .line 348
    invoke-static {}, Lcom/crittercism/app/Crittercism;->didCrashOnLastLoad()Z

    move-result v0

    .line 350
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized initCrittercism(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 65
    const-class v1, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->isCrittercismEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v2, "Crittercism is NOT enabled in build!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :goto_0
    monitor-exit v1

    return-void

    .line 70
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sCrittercismReady:Z

    if-eqz v0, :cond_1

    .line 71
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v2, "Crittercism is already initialized"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 74
    :cond_1
    :try_start_2
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v2, "Crittercism was not initialized before..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->shouldInitializeCrittercism()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v2, "This device is approved for sampling, initialize Crittercism"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Lcom/crittercism/app/CrittercismConfig;

    invoke-direct {v0}, Lcom/crittercism/app/CrittercismConfig;-><init>()V

    .line 87
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/crittercism/app/CrittercismConfig;->setNdkCrashReportingEnabled(Z)V

    .line 90
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/crittercism/app/CrittercismConfig;->setServiceMonitoringEnabled(Z)V

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/crittercism/app/CrittercismConfig;->setLogcatReportingEnabled(Z)V

    .line 95
    const-string/jumbo v2, "4.12.2"

    invoke-virtual {v0, v2}, Lcom/crittercism/app/CrittercismConfig;->setCustomVersionName(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :try_start_3
    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getCrittercismAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/crittercism/app/Crittercism;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/app/CrittercismConfig;)V

    .line 102
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 104
    new-instance v3, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$1;

    invoke-direct {v3, v2, v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$1;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 145
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 147
    const-string/jumbo v2, "android"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 148
    const-string/jumbo v2, "oem"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->putValueOrNotAvailable(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string/jumbo v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->putValueOrNotAvailable(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v2, "appsessionid"

    invoke-static {v0, v2, p1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->putValueOrNotAvailable(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->setMetadata(Lorg/json/JSONObject;)V

    .line 155
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sCrittercismReady:Z

    .line 157
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v2, "Init Crittercism done."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    :try_start_4
    const-string/jumbo v2, "nf_log_crit"

    const-string/jumbo v3, "Unable to init crittercism"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 80
    :cond_2
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v2, "This device is NOT approved for sampling"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public static isCrittercismEnabled()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method private static isEnabledAndReady()Z
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->isCrittercismEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sCrittercismReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static leaveBreadcrumb(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 324
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->isEnabledAndReady()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sBreadcrumbLoggingEnabled:Z

    if-eqz v0, :cond_2

    .line 333
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->leaveBreadcrumb(Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const-string/jumbo v0, "nf_log_crit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Should log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->isEnabledAndReady()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", breadcrumb logging enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sBreadcrumbLoggingEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", breadcrumb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logHandledException(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 276
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->isEnabledAndReady()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sErrorLoggingEnabledByConfig:Z

    if-eqz v0, :cond_2

    .line 285
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 287
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const-string/jumbo v0, "nf_log_crit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Should log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->isEnabledAndReady()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", error logging enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sErrorLoggingEnabledByConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logHandledException(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 300
    if-nez p0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->isEnabledAndReady()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sErrorLoggingEnabledByConfig:Z

    if-eqz v0, :cond_2

    .line 309
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->logHandledException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 311
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    const-string/jumbo v0, "nf_log_crit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Should log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->isEnabledAndReady()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", error logging enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sErrorLoggingEnabledByConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static declared-synchronized onConfigurationChanged(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;)V
    .locals 2

    .prologue
    .line 254
    const-class v1, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->configureErrorLogging(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;)V

    .line 255
    invoke-static {p0, p3}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->configureBreadcrumbLogging(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;)V

    .line 257
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->initCrittercism(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit v1

    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static putValueOrNotAvailable(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 383
    if-eqz p2, :cond_0

    .line 384
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    const-string/jumbo v0, "N/A"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public static setUsername(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 361
    if-nez p0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->isEnabledAndReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->setUsername(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const-string/jumbo v0, "nf_log_crit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Should log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->isEnabledAndReady()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", username: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static shouldInitializeCrittercism()Z
    .locals 1

    .prologue
    .line 396
    sget-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sErrorLoggingEnabledByConfig:Z

    return v0
.end method

.method private static wrapThrowableWithPrefix(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 5

    .prologue
    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 172
    new-instance v1, Ljava/lang/StackTraceElement;

    const-string/jumbo v2, "version"

    const-string/jumbo v3, "n/a"

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 175
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
