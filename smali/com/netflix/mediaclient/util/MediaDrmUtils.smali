.class public Lcom/netflix/mediaclient/util/MediaDrmUtils;
.super Ljava/lang/Object;
.source "MediaDrmUtils.java"


# static fields
.field private static final NETFLIX_MEDIADRM_APPID:Ljava/lang/String; = "com.netflix.mediaclient"

.field private static final NEXUS7_DEB_DEVICE:Ljava/lang/String; = "deb"

.field private static final NEXUS7_FLO_DEVICE:Ljava/lang/String; = "flo"

.field public static final PROPERTY_SECURITY_LEVEL:Ljava/lang/String; = "securityLevel"

.field public static final PROPERTY_SYSTEM_ID:Ljava/lang/String; = "systemId"

.field private static final SCHEMA_NOT_SUPPORTED_PLACEHOLDER:Ljava/lang/String; = "NETFLIX_NA"

.field public static final SECURITY_LEVEL_FAILURE_TO_RETRIEVE:Ljava/lang/String; = "SECURITY_LEVEL_GET_FAILURE"

.field public static final SYSTEM_ID_FAILURE_TO_RETRIEVE:Ljava/lang/String; = "SYSTEMID_GET_FAILURE"

.field private static TAG:Ljava/lang/String;

.field private static final WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

.field public static final WIDEVINE_SCHEME:Ljava/util/UUID;

.field private static sCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 25
    const-string/jumbo v0, "MediaDrmUtils"

    sput-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/UUID;

    const-wide v2, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v4, -0x5c37d8232ae2de13L

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE_SCHEME:Ljava/util/UUID;

    .line 47
    new-instance v0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;-><init>(Lcom/netflix/mediaclient/util/MediaDrmUtils$1;)V

    sput-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static dumpKeyStatus(Ljava/lang/String;Landroid/media/MediaDrm;[B)V
    .locals 3

    .prologue
    .line 381
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "LicenseType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "PersistAllowed"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "RenewalServerUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "LicenseDurationRemaining"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "RenewAllowed"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "PlaybackDurationRemaining"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "PlayAllowed"

    aput-object v2, v0, v1

    .line 390
    const-string/jumbo v0, "SessionId"

    invoke-static {p0, v0, p2}, Lcom/netflix/mediaclient/Log;->logByteArrayRaw(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 391
    const-string/jumbo v0, "===== key status ======"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_0
    const-string/jumbo v0, "===== end of key status ======"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    const-string/jumbo v0, "failed to queryKeyStatus()"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static declared-synchronized findCryptoProvider(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 7

    .prologue
    .line 232
    const-class v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->isWidewineSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCryptoProvider: Widevine is NOT supported on this device."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :goto_0
    monitor-exit v1

    return-object v0

    .line 237
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->isJPlayer2(Lcom/netflix/mediaclient/media/PlayerType;)Z

    move-result v0

    .line 239
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isWidevineL1Enabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 241
    sget-object v2, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Widevine L1 is enabled, check if we failed before"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {p0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->isWidevineL1FailedOnDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Widevine L1 was whitelisted, but it failed on this device, see fallback option."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->shouldForceLegacyCrypto()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 268
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCryptoProvider: Widevine is supported on this device, but we have configuration override to force legacy crypto!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    goto :goto_0

    .line 250
    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Widevine L1 did not failed on this device and L1 was whitelisted, check if device really supports L1. PlayerRequiredAdaptivePlayback : %b"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 252
    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->isWidevineSecurityLevelL1()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 254
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCryptoProvider:Widevine L1 will be used"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    goto :goto_0

    .line 258
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCryptoProvider:Widevine L1 is not supported on device or it has problem in playback, go for fallback"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 263
    :cond_3
    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Widevine L1 is NOT enabled, see fallback option."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 273
    :cond_4
    invoke-static {p0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->isWidevineL3FailedOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 275
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Widevine L3 failed on this device, fallback to MGK."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_2
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    goto/16 :goto_0

    .line 280
    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->isValidWidevineL3SystemID()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 281
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCryptoProvider: for kitkat: Widevine L3"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    goto/16 :goto_0

    .line 284
    :cond_6
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCryptoProvider: use legacy crypto because KK device can not support L3!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private static getAndroidVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 98
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-string/jumbo v0, ""

    .line 101
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getCryptoProvider(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 2

    .prologue
    .line 208
    const-class v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-nez v0, :cond_0

    .line 209
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->findCryptoProvider(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    .line 212
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getDrmInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->getCryptoManager()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    .line 318
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v1, :cond_0

    .line 319
    const-string/jumbo v0, "WVL3"

    .line 323
    :goto_0
    return-object v0

    .line 320
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v1, :cond_1

    .line 321
    const-string/jumbo v0, "WVL1"

    goto :goto_0

    .line 323
    :cond_1
    const-string/jumbo v0, "PLRD"

    goto :goto_0
.end method

.method public static getNewMediaDrmInstance(Landroid/media/MediaDrm$OnEventListener;)Landroid/media/MediaDrm;
    .locals 2

    .prologue
    .line 370
    new-instance v0, Landroid/media/MediaDrm;

    sget-object v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE_SCHEME:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    .line 371
    if-eqz p0, :cond_0

    .line 372
    invoke-virtual {v0, p0}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 374
    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->setSecurityLevelIfNeeded(Landroid/media/MediaDrm;)V

    .line 375
    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->setAppId(Landroid/media/MediaDrm;)V

    .line 376
    return-object v0
.end method

.method public static getPropertyByteArrayAsStringSafely(Landroid/media/MediaDrm;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 425
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 428
    :goto_0
    return-object v0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    sget-object v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to retrieve MediaDrm property %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 428
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPropertyStringSafely(Landroid/media/MediaDrm;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 415
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 418
    :goto_0
    return-object v0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    sget-object v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to retrieve MediaDrm property %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 418
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSupportedCryptoProvider()I
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->isL1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    iget v0, v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->NCCP_VALUE:I

    .line 74
    :goto_0
    return v0

    .line 71
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    iget v0, v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->NCCP_VALUE:I

    goto :goto_0

    .line 74
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    iget v0, v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->NCCP_VALUE:I

    goto :goto_0
.end method

.method private static getUsedCryptoProvider()I
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    iget v0, v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->NCCP_VALUE:I

    return v0
.end method

.method public static getWidevineSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->access$100(Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    const-string/jumbo v0, ""

    .line 87
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->access$100(Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isDevicePredeterminedToUseWV()Z
    .locals 2

    .prologue
    .line 309
    const-string/jumbo v0, "flo"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "deb"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidWidevineL3SystemID()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 148
    sget-object v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->access$100(Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    sget-object v2, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MediaDrm system ID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    const-string/jumbo v2, "4266"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    :cond_1
    :goto_0
    return v0

    .line 159
    :cond_2
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 163
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 164
    const/4 v2, 0x5

    if-gt v1, v2, :cond_1

    .line 167
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Valid System ID."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isWidevineDrmAllowed()Z
    .locals 2

    .prologue
    .line 295
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWidevineL1FailedOnDevice(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 179
    const-string/jumbo v0, "disable_widevine"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isWidevineL3FailedOnDevice(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 189
    const-string/jumbo v0, "disable_widevine_l3"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isWidevineSecurityLevelL1()Z
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->access$200(Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;)Z

    move-result v0

    return v0
.end method

.method public static isWidevineSecurityLevelL3()Z
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->access$300(Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;)Z

    move-result v0

    return v0
.end method

.method public static isWidewineSupported()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 131
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->access$400(Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;)Z

    move-result v0

    return v0
.end method

.method public static safeBase64Encode([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 403
    if-nez p0, :cond_0

    .line 404
    const-string/jumbo v0, "[null]"

    .line 408
    :goto_0
    return-object v0

    .line 405
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 406
    const-string/jumbo v0, "[empty]"

    goto :goto_0

    .line 408
    :cond_1
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static setAppId(Landroid/media/MediaDrm;)V
    .locals 3

    .prologue
    .line 358
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 360
    :try_start_0
    const-string/jumbo v0, "appId"

    const-string/jumbo v1, "com.netflix.mediaclient"

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    const-string/jumbo v1, "WidevineMediaDrm"

    const-string/jumbo v2, "ignore exceptions"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static setSecurityLevelIfNeeded(Landroid/media/MediaDrm;)V
    .locals 2

    .prologue
    .line 334
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->getCryptoManager()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    .line 335
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v1, :cond_0

    .line 336
    invoke-static {p0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->setSecurityLevelL3(Landroid/media/MediaDrm;)V

    .line 338
    :cond_0
    return-void
.end method

.method public static setSecurityLevelL3(Landroid/media/MediaDrm;)V
    .locals 2

    .prologue
    .line 348
    if-nez p0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MediaDrm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Forcing L3 security level..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string/jumbo v0, "securityLevel"

    const-string/jumbo v1, "L3"

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public static declared-synchronized updateCryptoProvideToLegacy()V
    .locals 2

    .prologue
    .line 220
    const-class v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    sput-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit v1

    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static useWidevineSecurityLevelL1(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Z
    .locals 1

    .prologue
    .line 113
    invoke-interface {p0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isWidevineL1Enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->isWidevineSecurityLevelL1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
