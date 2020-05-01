.class public final Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;
.super Ljava/lang/Object;
.source "DrmManagerRegistry.java"


# static fields
.field public static final DRM_SYSTEM_ID_FORCE_LEGACY:Ljava/lang/String; = "FORCE_LEGACY"

.field public static final DRM_SYSTEM_ID_LEGACY:Ljava/lang/String; = "LEGACY"

.field public static final DRM_SYSTEM_ID_M_PLUS_MGK:Ljava/lang/String; = "M_PLUS_MGK"

.field protected static final TAG:Ljava/lang/String; = "nf_drm"

.field private static currentDrmSystem:Ljava/lang/String;

.field private static instance:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

.field private static mWidevineMediaDrmEngine:Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

.field private static previousCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

.field private static previousDrmSystem:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearKeys(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->clearKeys(Ljava/lang/String;)V

    return-void
.end method

.method private static clearLicense([B)V
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineMediaDrmEngine()Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->clearLicense([B)V

    return-void
.end method

.method public static declared-synchronized createDrmManager(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;Lcom/netflix/mediaclient/servicemgr/IErrorHandler;Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;)Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;
    .locals 9

    const-class v7, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;

    monitor-enter v7

    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->setPreviousDrm(Landroid/content/Context;)V

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->getCryptoProvider(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v8, v0, :cond_1

    const-string/jumbo v0, "nf_drm"

    const-string/jumbo v1, "WidevineDrmManager L1 created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineL1DrmManager;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineL1DrmManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;Lcom/netflix/mediaclient/servicemgr/IErrorHandler;Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->instance:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v8, v0, :cond_5

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x16

    if-le v0, v1, :cond_4

    const-string/jumbo v0, "M_PLUS_MGK"

    :goto_1
    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->currentDrmSystem:Ljava/lang/String;

    const-string/jumbo v0, "nf_drm_system_id"

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->currentDrmSystem:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "nf_drm_crypto_provider"

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_drm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "currentDrmSystem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->currentDrmSystem:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", previousDrmSystem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->previousDrmSystem:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "nf_drm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current crypto : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->instance:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", previous crypto : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->previousCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->instance:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    return-object v0

    :cond_1
    :try_start_3
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v8, v0, :cond_2

    const-string/jumbo v0, "nf_drm"

    const-string/jumbo v1, "WidevineDrmManager L3 created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineL3DrmManager;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineL3DrmManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;Lcom/netflix/mediaclient/servicemgr/IErrorHandler;Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->instance:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "nf_drm"

    const-string/jumbo v2, "Unable to create WidevineDrmManager, default to LegacyDrmManager"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->updateCryptoProvideToLegacy()V

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/drm/LegacyDrmManager;

    invoke-direct {v0, p5}, Lcom/netflix/mediaclient/service/configuration/drm/LegacyDrmManager;-><init>(Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->instance:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_2
    :try_start_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_drm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LegacyDrmManager for devices running android version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/drm/LegacyDrmManager;

    invoke-direct {v0, p5}, Lcom/netflix/mediaclient/service/configuration/drm/LegacyDrmManager;-><init>(Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->instance:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_4
    :try_start_6
    const-string/jumbo v0, "LEGACY"

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v0, "nf_drm_system_id"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->currentDrmSystem:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2
.end method

.method private static createWidevineMediaDrmEngine()V
    .locals 3

    new-instance v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->instance:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;-><init>(Z)V

    sput-object v1, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->mWidevineMediaDrmEngine:Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static decrypt([B[B)[B
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->decrypt([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static drmSupportsHd()Z
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->isCurrentDrmWidevine()Z

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

.method private static encrypt([B[B)[B
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->encrypt([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static getChallenge([B)[B
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineMediaDrmEngine()Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->getChallenge([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getDrmInfo()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->instance:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->instance:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "WVL3"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->instance:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "WVL1"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->instance:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, "MGK"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "X"

    goto :goto_0
.end method

.method private static getNccpSessionKeyRequest()[B
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->getNccpSessionKeyRequest()[B

    move-result-object v0

    return-object v0
.end method

.method private static getSecureStops()[[B
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineMediaDrmEngine()Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->getSecureStops()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    check-cast v0, [[B

    return-object v0
.end method

.method private static getWidevineDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->isWidevineDrmAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->instance:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Private static method is called through JNI on non Widevine supported JB MR2+ device. That should not happen!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getWidevineMediaDrmEngine()Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->isWidevineDrmAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->mWidevineMediaDrmEngine:Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->createWidevineMediaDrmEngine()V

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->mWidevineMediaDrmEngine:Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    return-object v0
.end method

.method public static hasEsnChanged()Z
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "nf_drm"

    const-string/jumbo v3, "currentDrmSystem: %s, previousDrmSystem: %s"

    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->currentDrmSystem:Ljava/lang/String;

    aput-object v5, v4, v0

    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->previousDrmSystem:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->currentDrmSystem:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "nf_drm"

    const-string/jumbo v2, "DrmManager instance is not created"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->previousDrmSystem:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->currentDrmSystem:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->isLegacyDrmSystem(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->previousDrmSystem:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->isLegacyDrmSystem(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    const-string/jumbo v1, "nf_drm"

    const-string/jumbo v2, "Both previous and current DEM is legacy, ESN is NOT changed"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->currentDrmSystem:Ljava/lang/String;

    sget-object v3, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->previousDrmSystem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v0, "nf_drm"

    const-string/jumbo v2, "Widevine System ID changed, ESN is changed"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "nf_drm"

    const-string/jumbo v3, "Widevine System ID is NOT changed, verify if security level is changed"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->instance:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->previousCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v2, v3, :cond_5

    const-string/jumbo v2, "nf_drm"

    const-string/jumbo v3, "Same crypto provider %s. No change!"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->previousCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "nf_drm"

    const-string/jumbo v3, "Crypto provider is changed from %s to %s"

    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->previousCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    aput-object v5, v4, v0

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->instance:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    goto :goto_0
.end method

.method public static isCurrentDrmWidevine()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->instance:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->instance:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isLegacyDrmSystem(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LEGACY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FORCE_LEGACY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "M_PLUS_MGK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static isPlatformDrmSupported()Z
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->isWidevineDrmAllowed()Z

    move-result v0

    return v0
.end method

.method private static releaseSecureStops([B)V
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineMediaDrmEngine()Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->releaseSecureStops([B)V

    return-void
.end method

.method private static restoreKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->restoreKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static setPreviousDrm(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "nf_drm_system_id"

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->previousDrmSystem:Ljava/lang/String;

    const-string/jumbo v0, "nf_drm_crypto_provider"

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->fromName(Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->previousCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->previousDrmSystem:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->previousCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->previousDrmSystem:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->isLegacyDrmSystem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_drm"

    const-string/jumbo v1, "Previous crypto provider was legacy..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->previousCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "nf_drm"

    const-string/jumbo v1, "Previous crypto provider was Widevine L1..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->previousCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    goto :goto_0
.end method

.method private static sign([B)[B
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->sign([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static storeLicense([B)[B
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineMediaDrmEngine()Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->storeLicense([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static updateKeyResponse([B[B[BLjava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->updateNccpSessionKeyResponse([B[B[BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static verify([B[B)Z
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->verify([B[B)Z

    move-result v0

    return v0
.end method
