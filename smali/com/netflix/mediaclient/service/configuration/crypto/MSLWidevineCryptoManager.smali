.class public abstract Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;
.super Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;
.source "MSLWidevineCryptoManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field public static final PROPERTY_SYSTEM_ID:Ljava/lang/String; = "systemId"

.field protected static final TAG:Ljava/lang/String; = "nf_msl"

.field public static final WIDEVINE_SCHEME:Ljava/util/UUID;


# instance fields
.field private mWidevineProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE_SCHEME:Ljava/util/UUID;

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->WIDEVINE_SCHEME:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->mWidevineProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->handleCryptoFallback()V

    return-void
.end method

.method private handleCryptoFallback()V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "MediaDrm failed for Widevine L1, fail back to legacy crypto scheme %b"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->mConfiguration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->shouldForceLegacyCrypto()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "disable_widevine"

    invoke-static {v0, v1, v5}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "MediaDrm failed for Widevine L3, fail back to legacy crypto scheme "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "disable_widevine_l3"

    invoke-static {v0, v1, v5}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "nf_msl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Crypto provider was not supported for this error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isDeviceProvisioned()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v1}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2, v1}, Landroid/media/MediaDrm;->closeSession([B)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "Ready!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;->drmReady()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "nf_msl"

    const-string/jumbo v3, "Device is not provisioned, start provisioning workflow!"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->startWidewineProvisioning()V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "nf_msl"

    const-string/jumbo v3, "Fatal error, can not recover!"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;->drmError(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public static isWidewineSupported()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->WIDEVINE_SCHEME:Ljava/util/UUID;

    invoke-static {v0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startWidewineProvisioning()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->mWidevineProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->mWidevineProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$1;

    invoke-direct {v2, p0, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$1;-><init>(Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;Ljava/lang/String;)V

    new-instance v1, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;-><init>([BLcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$WidewineProvisionCallback;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->destroy()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->mWidevineProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->mCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "nf_msl"

    return-object v0
.end method

.method protected getSchemeUUID()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->WIDEVINE_SCHEME:Ljava/util/UUID;

    return-object v0
.end method

.method protected init()V
    .locals 2

    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "MSLWidevineCryptoManager::init:"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "MSLWidevineCryptoManager::init: Widevine is provisioned"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected load()V
    .locals 0

    return-void
.end method
