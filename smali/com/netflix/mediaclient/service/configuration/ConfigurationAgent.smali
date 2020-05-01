.class public Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "ConfigurationAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field private static final APM_USER_SESSION_TIMEOUT_SEC:I = 0x708

.field private static final CONFIG_REFRESH_DELAY_MS:J = 0x1b77400L

.field private static final DATA_REQUEST_TIMEOUT_MS:I = 0x2710

.field public static final DEFAULT_IMAGE_CACHE_SIZE_BYTES:I

.field private static final DISK_CACHE_SIZE_AS_PERCENTAGE_OF_AVLBLMEM:F = 0.25f

.field private static final DUMMY_KUBRICK_CONFIG:Lcom/netflix/mediaclient/service/configuration/KubrickConfiguration;

.field private static final HIGH_MEM_THREAD_COUNT:I = 0x4

.field private static final IMAGE_CACHE_SIZE_AS_PERCENTAGE_OF_MAX_HEAP:F = 0.5f

.field private static final LEVEL_HIGH:Ljava/lang/String; = "high"

.field private static final LEVEL_LOW:Ljava/lang/String; = "low"

.field private static final LOW_MEMORY_CONFIG_THRESHOLD_IN_BYTES:J = 0x2000000L

.field private static final LOW_MEM_THREAD_COUNT:I = 0x2

.field private static final MAX_DISK_CACHE_SIZE_IN_BYTES:I = 0x1900000

.field private static final MAX_VIDEO_BUFFERSIZE:I = 0x2000000

.field private static final MILLISECONDS_PER_DAY:J = 0x5265c00L

.field public static final MINIMUM_IMAGE_CACHE_TTL:J = 0x48190800L

.field private static final MIN_DISK_CACHE_SIZE_IN_BYTES:I = 0x500000

.field private static final MIN_VIDEO_BUFFERSIZE:I = 0x400000

.field private static final OVERRIDE_SERVER_CONFIG_FOR_KUBRICK:Z = false

.field public static final RESOURCE_REQUEST_TIMEOUT_MS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "nf_configurationagent"

.field private static final sMemLevel:Ljava/lang/String;


# instance fields
.field private mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

.field private mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

.field private mAppVersionCode:I

.field private mCastKeyConfigOverride:Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;

.field private final mConfigAgentListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigAgentListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigRefreshStatus:Lcom/netflix/mediaclient/android/app/Status;

.field private mConfigurationWebClient:Lcom/netflix/mediaclient/service/configuration/ConfigurationWebClient;

.field private mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

.field private mDeviceModel:Lcom/netflix/mediaclient/service/configuration/DeviceModel;

.field private mDiskCacheSizeBytes:I

.field private mDrmManager:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

.field private mESN:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

.field private mEndpointRegistry:Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;

.field private mIsConfigRefreshInBackground:Z

.field private final mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

.field private mMicrophoneExist:Z

.field private mNeedEsMigration:Z

.field private mNeedLogout:Z

.field private mNrmConfigOverride:Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;

.field private final mPlaybackConfiguration:Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;

.field private mSignInConfigOverride:Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;

.field private mSoftwareVersion:Ljava/lang/String;

.field private mStreamingConfigOverride:Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;

.field private mTextToSpeechWrapper:Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;

.field private refreshHandler:Landroid/os/Handler;

.field private final refreshRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->DEFAULT_IMAGE_CACHE_SIZE_BYTES:I

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->computeMemLevel()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->sMemLevel:Ljava/lang/String;

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$6;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$6;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->DUMMY_KUBRICK_CONFIG:Lcom/netflix/mediaclient/service/configuration/KubrickConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigAgentListeners:Ljava/util/List;

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mIsConfigRefreshInBackground:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mSoftwareVersion:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNeedLogout:Z

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNeedEsMigration:Z

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$3;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->refreshRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$5;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mPlaybackConfiguration:Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNeedEsMigration:Z

    return v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNeedEsMigration:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->notifyConfigRefreshedAndClearListeners()V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mIsConfigRefreshInBackground:Z

    return p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigAgentListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigRefreshStatus:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigRefreshStatus:Lcom/netflix/mediaclient/android/app/Status;

    return-object p1
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/ConfigurationWebClient;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigurationWebClient:Lcom/netflix/mediaclient/service/configuration/ConfigurationWebClient;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->persistConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->refreshRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->refreshHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private computeImageResolutionClass(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->sMemLevel:Ljava/lang/String;

    const-string/jumbo v1, "low"

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Device is low memory category - use low resolution images"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->LOW:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenResolutionDpi(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xa0

    if-gt v0, v1, :cond_1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Device is a low-res, small tablet - use medium resolution images"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->MEDIUM:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Using high resolution images"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->HIGH:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    goto :goto_0
.end method

.method private static computeMemLevel()Ljava/lang/String;
    .locals 7

    const-string/jumbo v0, "high"

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/32 v4, 0x2000000

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const-string/jumbo v0, "low"

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    const/16 v4, 0x13

    if-lt v1, v4, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/util/api/Api19Util;->isLowRamDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "isLowRamDevice() is true"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "low"

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "nf_configurationagent"

    const-string/jumbo v4, "maxMemoryAllocated: %d, memLevel: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method private doRefreshConfig(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mIsConfigRefreshInBackground:Z

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->fetchConfigData(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    return-void
.end method

.method private fetchConfigData(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->prepareConfigWebClient()V

    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "fetchConfigData"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mIsConfigRefreshInBackground:Z

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->launchTask(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchTask;)V

    return-void
.end method

.method private fetchConfigSynchronouslyOnAppStart(Ljava/lang/String;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 5

    const-string/jumbo v0, ""

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "configurationUrl %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->getRemoteDataAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_configurationagent"

    const-string/jumbo v2, "Device config data=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->parseConfigString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;

    move-result-object v0

    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->deviceConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-nez v1, :cond_4

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nf_configurationagent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not fetch configuration! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "could not validate certificate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "sslhandshakeexception"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->HTTP_SSL_DATE_TIME_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    :goto_0
    return-object v0

    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->FATAL_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getDeviceConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->persistDeviceConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mStreamingConfigOverride:Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getStreamingConfig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;->persistStreamingOverride(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNrmConfigOverride:Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getNrmConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->persistNrmConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mCastKeyConfigOverride:Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getCastKeyData()Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;->persistCastConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mSignInConfigOverride:Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getSignInConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;->persistSignInConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;)V

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    goto :goto_0
.end method

.method private fetchVoipAuthorizationSynchronouslyOnAppStart(Ljava/lang/String;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 5

    const-string/jumbo v0, ""

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "configurationUrl %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->getRemoteDataAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_configurationagent"

    const-string/jumbo v2, "Device config data=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->parseConfigString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getCustomerSupportVoipAuthorizations()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v2, "Update VOIP authorizations"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/voip/VoipAuthorizationTokensUpdater;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getCustomerSupportVoipAuthorizations()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/voip/VoipAuthorizationTokensUpdater;->updateAuthorizationData(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;)V

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nf_configurationagent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not fetch configuration! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "could not validate certificate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "sslhandshakeexception"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->HTTP_SSL_DATE_TIME_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->VOIP_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    goto :goto_0
.end method

.method private getMaxResolutionConfigured()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getVideoResolutionOverride()I

    move-result v0

    return v0
.end method

.method public static getMemLevel()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->sMemLevel:Ljava/lang/String;

    return-object v0
.end method

.method private hasMicrophone()Z
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Unable to get PackageManager! This should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "android.hardware.microphone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private initVoipSettings()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->shouldDisableVoip()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "VOIP is disabled, no need to retrieve its settings..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "VOIP is enabled, retrieving its settings..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mEndpointRegistry:Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mESN:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->getCustomerSupportAuthTokensUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->loadVoipAuthorizationsOnAppStart(Ljava/lang/String;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Problem getting non-member VOIP token"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "VOIP was enabled, its settings retrieved."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchTask(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchTask;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_configurationagent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Launching task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigurationWebClient:Lcom/netflix/mediaclient/service/configuration/ConfigurationWebClient;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationWebClient;->isSynchronous()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchTask;->run()V

    goto :goto_0
.end method

.method private loadConfigOverridesOnAppStart(Ljava/lang/String;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 3

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isDeviceConfigInCache()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mStreamingConfigOverride:Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;->isStreamingConfigInCache()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_configurationagent"

    const-string/jumbo v2, "Device Config & Streaming Config in cache... proceed!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Need to fetchdeviceConfig synchronously "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->fetchConfigSynchronouslyOnAppStart(Ljava/lang/String;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    goto :goto_0
.end method

.method private loadVoipAuthorizationsOnAppStart(Ljava/lang/String;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 3

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/voip/VoipAuthorizationTokensUpdater;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/voip/VoipAuthorizationTokensUpdater;->refreshAuthorizationTokens()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v2, "Not first app start... proceed!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Need to fetch VOIP authorization tokens synchronously "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->fetchVoipAuthorizationSynchronouslyOnAppStart(Ljava/lang/String;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    goto :goto_0
.end method

.method private notifyConfigRefreshedAndClearListeners()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$2;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private persistConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)V
    .locals 5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "persistConfigOverride configData %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getPreviewContentConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getDeviceConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->persistDeviceConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mStreamingConfigOverride:Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getStreamingConfig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;->persistStreamingOverride(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getAccountConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->persistAccountConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getABTestConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->persistABTestConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNrmConfigOverride:Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getNrmConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->persistNrmConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mCastKeyConfigOverride:Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getCastKeyData()Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;->persistCastConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mSignInConfigOverride:Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getSignInConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;->persistSignInConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/voip/VoipAuthorizationTokensUpdater;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getCustomerSupportVoipAuthorizations()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/voip/VoipAuthorizationTokensUpdater;->updateAuthorizationData(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isDolbyDigitalPlus51Supported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->canSupportDDPlus51(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->enableDolbyDigitalPlus51()V

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isDolbyDigitalPlus20Supported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->enableDolbyDigitalPlus20()V

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getVideoResolutionRange()Lcom/netflix/mediaclient/media/VideoResolutionRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMaxHeight()I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->setSupportMaxVideoHeight(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isDeviceHd()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->enableHDPlayback()V

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->update(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->update(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->setPreviewContentConfig(Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;)V

    return-void

    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_0
.end method

.method private prepareConfigWebClient()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mEndpointRegistry:Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->setUserAgentInterface(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigurationWebClient:Lcom/netflix/mediaclient/service/configuration/ConfigurationWebClient;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getApiNextWebClient()Lcom/netflix/mediaclient/service/webclient/WebClient;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationWebClientFactory;->create(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/webclient/WebClient;)Lcom/netflix/mediaclient/service/configuration/ConfigurationWebClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigurationWebClient:Lcom/netflix/mediaclient/service/configuration/ConfigurationWebClient;

    :cond_0
    return-void
.end method

.method private setPreviewContentConfig(Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getPreviewContentConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Preview content config changed, update NrdLib"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getMedia()Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getPreviewContentConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setPreviewContentConfig(Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;)V

    :cond_1
    return-void
.end method

.method public static shouldUseLowMemConfig()Z
    .locals 2

    const-string/jumbo v0, "low"

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->sMemLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized addConfigAgentListener(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigAgentListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigAgentListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearAccountConfigData()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->clear()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->delete(Landroid/content/Context;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->refreshHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->refreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigAgentListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigAgentListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDrmManager:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDrmManager:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;->destroy()V

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mESN:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mESN:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->destroy()V

    :cond_4
    return-void
.end method

.method protected doInit()V
    .locals 10

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNeedLogout:Z

    iput-boolean v3, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNeedEsMigration:Z

    const-string/jumbo v0, "nf_configurationagent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Use low mem config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->shouldUseLowMemConfig()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "disk_cache_size"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDiskCacheSizeBytes:I

    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDiskCacheSizeBytes:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAvailableInternalMemory()J

    move-result-wide v0

    long-to-float v2, v0

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v2, v3

    const/high16 v3, 0x4bc80000    # 2.62144E7f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDiskCacheSizeBytes:I

    iget v2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDiskCacheSizeBytes:I

    const/high16 v3, 0x500000

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDiskCacheSizeBytes:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "disk_cache_size"

    iget v4, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDiskCacheSizeBytes:I

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "nf_configurationagent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Available disk space in bytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Saving disk Cache Size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDiskCacheSizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_configurationagent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current app version code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mSoftwareVersion:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_configurationagent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current softwareVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mSoftwareVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;

    iget v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceModel:Lcom/netflix/mediaclient/service/configuration/DeviceModel;

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mStreamingConfigOverride:Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mSignInConfigOverride:Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNrmConfigOverride:Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mCastKeyConfigOverride:Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mTextToSpeechWrapper:Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v3

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mEndpointRegistry:Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->hasMicrophone()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mMicrophoneExist:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mEndpointRegistry:Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->getAppStartConfigUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->loadConfigOverridesOnAppStart(Ljava/lang/String;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void

    :cond_3
    new-instance v9, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;

    invoke-direct {v9, p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->DRM_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Ljava/lang/String;

    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/NetflixService;->getStartedTimeInMs()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v7

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v8

    invoke-interface {v8}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->init(Landroid/content/Context;JLcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Lcom/netflix/mediaclient/servicemgr/IErrorHandler;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v4

    move-object v1, p0

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->createDrmManager(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;Lcom/netflix/mediaclient/servicemgr/IErrorHandler;Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;)Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDrmManager:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDrmManager:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    invoke-static {v0, v1, p0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProviderRegistry;->createESN(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mESN:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->initVoipSettings()V

    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Inject ESN to PlayerTypeFactory"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mESN:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->initialize(Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDrmManager:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;->init()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_configurationagent"

    const-string/jumbo v2, "Failed to create ESN"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_0
.end method

.method public enableHTTPSAuth()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->enableHTTPSAuth()Z

    move-result v0

    return v0
.end method

.method public enableLowBitrateStreams()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->enableLowBitrateStreams()Z

    move-result v0

    return v0
.end method

.method public esnMigrationComplete()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNeedEsMigration:Z

    return-void
.end method

.method public fetchAccountConfigData(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->refreshHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->refreshHandler:Landroid/os/Handler;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->refreshConfig(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigAgentListener;)V

    return-void
.end method

.method public getABTestConfiguration_6634()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getABTestConfiguration_6634()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    return-object v0
.end method

.method public getABTestConfiguration_6725()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getABTestConfiguration_6725()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    return-object v0
.end method

.method public getAlertMsgForMissingLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getAlertMsgForMissingLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApiEndpointRegistry()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mEndpointRegistry:Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;

    return-object v0
.end method

.method public getApmUserSessionDurationInSeconds()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getUserSessionDurationInSeconds()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x708

    goto :goto_0
.end method

.method public getAppVersionCode()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    return v0
.end method

.method public getBWSaveConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getBWSaveConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;

    move-result-object v0

    return-object v0
.end method

.method public getBrandLoveSurveyConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->getBrandLoveSurveyConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getBreadcrumbLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getBreadcrumbLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    move-result-object v0

    return-object v0
.end method

.method public getCWProgressBarConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->getCWProgressBarConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getCastPrefetchSharedSecret()Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mCastKeyConfigOverride:Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;->getCastKeyId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mCastKeyConfigOverride:Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;->getCastKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string/jumbo v1, "nf_configurationagent"

    const-string/jumbo v2, "cast sharedSecret are null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "nf_configurationagent"

    const-string/jumbo v5, "cast keyId: %s, key:%s, decodedKey: %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x2

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "nf_configurationagent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error decoding castkey"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConsolidatedLoggingSessionSpecification(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getConsolidatedLoggingSessionSpecification(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;

    move-result-object v0

    return-object v0
.end method

.method public getCoppola1Experience()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->getCoppola1TestCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getCoppola2Experience()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->getCoppola2TestCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPlayerType()Lcom/netflix/mediaclient/media/PlayerType;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    return-object v0
.end method

.method public getDataRequestThreadPoolSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getDataRequestTimeout()I
    .locals 1

    const/16 v0, 0x2710

    return v0
.end method

.method public getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_configurationagent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device category is overriden by configuration server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->PHONE:Lcom/netflix/mediaclient/util/DeviceCategory;

    goto :goto_0
.end method

.method public getDeviceModel()Lcom/netflix/mediaclient/service/configuration/DeviceModel;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceModel:Lcom/netflix/mediaclient/service/configuration/DeviceModel;

    return-object v0
.end method

.method public getDiskCacheSizeBytes()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDiskCacheSizeBytes:I

    return v0
.end method

.method public getDisplayPageRefreshConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->getDisplayPageRefreshConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadAgentThreadPoolSize()I
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->shouldUseLowMemConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDrmManager:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    return-object v0
.end method

.method public getErrorLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getErrorLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    move-result-object v0

    return-object v0
.end method

.method public getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mESN:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    return-object v0
.end method

.method public getGeoCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getGeoCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageCacheMinimumTtl()J
    .locals 2

    const-wide/32 v0, 0x48190800

    return-wide v0
.end method

.method public getImageCacheSizeBytes()I
    .locals 1

    sget v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->DEFAULT_IMAGE_CACHE_SIZE_BYTES:I

    return v0
.end method

.method public getImagePreference()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getImageRepository()Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;->getImgPreference()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageResolutionClass()Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->computeImageResolutionClass(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    move-result-object v0

    return-object v0
.end method

.method public getIpConnectivityPolicy()Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getIpConnectivityPolicy()Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getJPlayerConfig()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getJPlayerConfig()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getJPlayerStreamErrorRestartCount()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getJPlayerStreamErrorRestartCount()I

    move-result v0

    return v0
.end method

.method public getKubrickConfiguration()Lcom/netflix/mediaclient/service/configuration/KubrickConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getKubrickConfig()Lcom/netflix/mediaclient/service/configuration/KubrickConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    return-object v0
.end method

.method public getMemento2Config()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->getMemento2Config()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getMementoConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->getMementoConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getMotionBBTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->getMotionBBTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getNrdDeviceModel()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNrmConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNrmConfigOverride:Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mNrmConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;

    return-object v0
.end method

.method public getOfflineConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getOfflineConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineTutorialConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->getOfflineTutorialConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getOnRampConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->getOnRampConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneOrientationConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->getPhoneOrientationConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackConfiguration()Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mPlaybackConfiguration:Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;

    return-object v0
.end method

.method public getPreAppPartnerExperience()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getPreAppPartnerExperience()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreAppWidgetExperience()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getPreAppWidgetExperience()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefetchDPConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->getAimLowPrefetchDPConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getPrefetchLolomoConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->getAimLowPrefetchLolomoConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getPresentationTrackingAggregationSize()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getPTAggregationSize()I

    move-result v0

    return v0
.end method

.method public getPreviewContentConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getCurrentPlayerType()Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device12:Lcom/netflix/mediaclient/media/PlayerType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getPreviewContentConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Not JPLAYER2, preview content is not enabled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->getDisabledConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    move-result-object v0

    goto :goto_0
.end method

.method public getRateLimitForGcmBrowseEvents()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getRateLimitForGcmBrowseEvents()I

    move-result v0

    return v0
.end method

.method public getRateLimitForNListChangeEvents()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getRateLimitForNListChangeEvents()I

    move-result v0

    return v0
.end method

.method public getResFetcherThreadPoolSize()I
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->shouldUseLowMemConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getResourceRequestTimeout()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public getSignInConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mSignInConfigOverride:Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;->mSignInConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    return-object v0
.end method

.method public getSignUpConfiguration()Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getSignUpConfiguration()Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamingQoe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mStreamingConfigOverride:Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;->getStreamingQoe()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitleDownloadRetryPolicy()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getSubtitleDownloadRetryPolicy()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getVideoBufferSize()I
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getVideoBufferSize()I

    move-result v0

    const/high16 v1, 0x400000

    if-lt v0, v1, :cond_0

    const/high16 v1, 0x2000000

    if-le v0, v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_configurationagent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid VideoBufferSize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public getVideoResolutionRange()Lcom/netflix/mediaclient/media/VideoResolutionRange;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getMaxResolutionConfigured()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getCurrentPlayerType()Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->isJPlayer2(Lcom/netflix/mediaclient/media/PlayerType;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x180

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_configurationagent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "apply phone restriction, max height "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-lez v0, :cond_1

    invoke-static {v0}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getVideoResolutionRangeFromMaxHieght(I)Lcom/netflix/mediaclient/media/VideoResolutionRange;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const v1, 0x7fffffff

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    aget-object v4, v2, v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "nf_configurationagent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMaxResolutionRestriction "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/Display;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v4}, Landroid/view/Display;->isValid()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    if-nez v5, :cond_3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_2
    invoke-static {v0}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getVideoResolutionRangeFromMaxHieght(I)Lcom/netflix/mediaclient/media/VideoResolutionRange;

    move-result-object v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public getVoiceSearchABTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->getVoiceSearchABTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public ignorePreloadForPlayBilling()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->ignorePreloadForPlayBilling()Z

    move-result v0

    return v0
.end method

.method public isAllowHevcMobile()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isAllowHevcMobile()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllowVp9Mobile()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isAllowVp9Mobile()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/netflix/mediaclient/util/DeviceUtils;->DEFAULT_ALLOW_VP9_MOBILE:Z

    goto :goto_0
.end method

.method public isAppVersionObsolete()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getAppMinimalVersion()I

    move-result v3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v4, "nf_configurationagent"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "minimalVersion = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " appVersionCode = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " so isAppVersionObsolete = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    if-ge v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    if-ge v0, v3, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public isAppVersionRecommended()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getAppRecommendedVersion()I

    move-result v3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v4, "nf_configurationagent"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recommendedVersion = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " appVersionCode = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " so isAppVersionRecommended = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    if-lt v0, v3, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public isAssistiveAudioEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mTextToSpeechWrapper:Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->isAssistiveAudioEnabled()Z

    move-result v0

    return v0
.end method

.method public isCurrentDrmWidevine()Z
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->isCurrentDrmWidevine()Z

    move-result v0

    return v0
.end method

.method public isDeviceHd()Z
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->drmSupportsHd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isWidevineL1Enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceLowMem()Z
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->shouldUseLowMemConfig()Z

    move-result v0

    return v0
.end method

.method public isDisableCastFaststart()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isDisableCastFaststart()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisableMcQueenV2()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->toDisableMcQueenV2()Z

    move-result v0

    return v0
.end method

.method public isDolbyDigitalPlus20Supported()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getmAudioFormat()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/DolbyDigitalHelper;->isEAC3supported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDolbyDigitalPlus51Supported()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getmAudioFormat()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/DolbyDigitalHelper;->isEAC3supported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDynecomSignInEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isDynecomSignInEnabled()Z

    move-result v0

    return v0
.end method

.method public isEsnMigrationRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNeedEsMigration:Z

    return v0
.end method

.method public isLogoutRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNeedLogout:Z

    return v0
.end method

.method public isPlayBillingDisabled()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isPlayBillingDisabled()Z

    move-result v0

    return v0
.end method

.method public isPreviewContentEnabled()Z
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getCurrentPlayerType()Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device12:Lcom/netflix/mediaclient/media/PlayerType;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getPreviewContentConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getPreviewContentConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->isPreviewContentEnabled()Z

    move-result v0

    :cond_0
    const-string/jumbo v1, "nf_configurationagent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "JPLAYER2, preview content is enabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Not JPLAYER2, preview content is not enabled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTablet()Z
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/util/DeviceCategory;->TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/util/DeviceCategory;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWidevineL1Enabled()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->enableWidevineL1()Z

    move-result v0

    return v0
.end method

.method public persistNrmConfigData(Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNrmConfigOverride:Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->persistNrmConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;)V

    return-void
.end method

.method public declared-synchronized refreshConfig(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigAgentListener;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigAgentListeners:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mIsConfigRefreshInBackground:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Starting a config refresh in the background."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->doRefreshConfig(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Ignoring request to refreshConfig because one is on-going."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShouldUseAndroidHttpStack(Z)V
    .locals 0

    return-void
.end method

.method public shouldAlertForMissingLocale()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->shouldAlertForMissingLocale()Z

    move-result v0

    return v0
.end method

.method public shouldDisableVoip()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mMicrophoneExist:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoip()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->shouldDisableVoip()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->shouldDisableVoip()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "nf_configurationagent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Microfon exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mMicrophoneExist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "nf_configurationagent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "device overide: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->shouldDisableVoip()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "nf_configurationagent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "account overide: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->shouldDisableVoip()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "nf_configurationagent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VOIP configuration overide: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoip()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "nf_configurationagent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Real disable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto/16 :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method public shouldForceLegacyCrypto()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->shouldForceLegacyCrypto()Z

    move-result v0

    return v0
.end method

.method public shouldUseAndroidHttpStack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showHelpForNonMemebers()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isShowHelpForNonMember()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userAgentLogoutComplete()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNeedLogout:Z

    return-void
.end method

.method public verifyLoginViaDynecom(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->prepareConfigWebClient()V

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$VerifyLoginViaDynecomTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$VerifyLoginViaDynecomTask;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->launchTask(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchTask;)V

    return-void
.end method
