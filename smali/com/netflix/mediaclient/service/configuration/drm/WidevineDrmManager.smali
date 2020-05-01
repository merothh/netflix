.class abstract Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;
.super Ljava/lang/Object;
.source "WidevineDrmManager.java"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;
.implements Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field public static final KB_HELP_URL_FOR_CRYPTO_FAILURES:Ljava/lang/String; = "https://help.netflix.com/en/node/14384"

.field public static final TAG:Ljava/lang/String;

.field private static final init:[B


# instance fields
.field protected drm:Landroid/media/MediaDrm;

.field protected mCallback:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;

.field protected mConfiguration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentAccountId:Ljava/lang/String;

.field protected mDrmSystemChanged:Z

.field protected mErrorHandler:Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

.field protected mErrorLogging:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

.field protected mKeyIdsMap:Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;

.field protected mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

.field protected mWidevineProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->init:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xat
        0x7at
        0x0t
        0x6ct
        0x38t
        0x2bt
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;Lcom/netflix/mediaclient/servicemgr/IErrorHandler;Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;)V
    .locals 3

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mWidevineProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;-><init>(Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    .line 100
    if-nez p6, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 103
    :cond_0
    iput-object p6, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;

    .line 104
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 105
    iput-object p3, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mConfiguration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 106
    iput-object p4, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mErrorLogging:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    .line 107
    iput-object p5, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mErrorHandler:Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    .line 108
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Landroid/media/MediaDrm;

    sget-object v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE_SCHEME:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    .line 111
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->setSecurityLevel()V

    .line 113
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->verifySystemId()V

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p0}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 116
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mKeyIdsMap:Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;

    .line 118
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->showProperties()V

    .line 121
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->isWidevinePluginChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Widevine plugin is changed, reset..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->reset()V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mDrmSystemChanged:Z

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nf_drm_system_id"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nf_drm_crypto_provider"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 129
    return-void
.end method

.method private afterWidewineProvisioning()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;->drmReady()V

    .line 288
    return-void
.end method

.method private closeCryptoSession([B)V
    .locals 5

    .prologue
    .line 782
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_0

    .line 783
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeCryptoSession"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 786
    :catch_0
    move-exception v0

    .line 787
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "closeCryptoSession failed !"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private declared-synchronized closeSessionAndRemoveKeys([B)V
    .locals 1

    .prologue
    .line 762
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->removeSessionKeys([B)V

    .line 763
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->closeCryptoSession([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    monitor-exit p0

    return-void

    .line 762
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized createKeyRequest()Landroid/media/MediaDrm$KeyRequest;
    .locals 6

    .prologue
    .line 819
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "get NCCP session key request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->pendingSessionId:[B

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->closeCryptoSession([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Create a new crypto session"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    invoke-virtual {v1}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->pendingSessionId:[B
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 834
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->pendingSessionId:[B

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->init:[B

    const-string/jumbo v3, "application/xml"

    const/4 v4, 0x2

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    :try_end_2
    .catch Landroid/media/NotProvisionedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 825
    :catch_0
    move-exception v0

    .line 826
    :try_start_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mErrorLogging:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NotProvisionedException::createKeyRequest::openSession:: Failed to open new session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/NotProvisionedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 827
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 819
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 828
    :catch_1
    move-exception v0

    .line 829
    :try_start_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mErrorLogging:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createKeyRequest::openSession Failed to open new session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 830
    throw v0

    .line 835
    :catch_2
    move-exception v0

    .line 836
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mErrorLogging:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NotProvisionedException::createKeyRequest::getKeyRequest:: Failed to get key request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/NotProvisionedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 837
    throw v0

    .line 838
    :catch_3
    move-exception v0

    .line 839
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mErrorLogging:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createKeyRequest::getKeyRequest:: Failed to get key request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 840
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private createNccpCryptoFactoryDrmSession()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    invoke-virtual {v2}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->sessionId:[B
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->sessionId:[B

    if-eqz v0, :cond_1

    .line 265
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Device is provisioned. NCCP crypto factory session ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->sessionId:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 251
    :catch_0
    move-exception v1

    .line 252
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Device is not provisioned, start provisioning workflow!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->startWidewineProvisioning()V

    goto :goto_1

    .line 256
    :catch_1
    move-exception v1

    .line 257
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Fatal error, can not recover!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;

    sget-object v3, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;->drmError(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 259
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mErrorLogging:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openSession:: Failed to created NCCP crypto factory DRM session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    goto :goto_1

    .line 267
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Device is provisioned. NCCP crypto factory session ID: null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dumpKeyReqyest([B)V
    .locals 4

    .prologue
    .line 352
    if-eqz p1, :cond_1

    .line 353
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 355
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key request created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "key request returned null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findMediaDrmCryptoSession()Landroid/media/MediaDrm$CryptoSession;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 503
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->sessionId:[B

    .line 504
    if-nez v1, :cond_0

    .line 515
    :goto_0
    return-object v0

    .line 509
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->getMacAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaDrm;->getCryptoSession([BLjava/lang/String;Ljava/lang/String;)Landroid/media/MediaDrm$CryptoSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v1

    .line 512
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed findMediaDrmCryptoSession "

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getCipherAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    const-string/jumbo v0, "AES/CBC/NoPadding"

    return-object v0
.end method

.method private static getMacAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    const-string/jumbo v0, "HmacSHA256"

    return-object v0
.end method

.method private isValidKeyIds(Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 729
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->getKceKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 730
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->getKchKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 731
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->getKeySetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 732
    invoke-static {p3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 738
    :cond_0
    :goto_0
    return v0

    .line 735
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->getKchKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->getKceKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 738
    goto :goto_0
.end method

.method private isWidevinePluginChanged()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "nf_drm_system_id"

    invoke-static {v0, v3, v6}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->getDeviceType()Ljava/lang/String;

    move-result-object v4

    .line 198
    if-nez v3, :cond_0

    .line 199
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "System ID was not saved, user is not logged in, no need to report that plugin is changed."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 243
    :goto_0
    return v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "nf_drm_crypto_provider"

    invoke-static {v0, v5, v6}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->fromName(Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    .line 205
    if-nez v0, :cond_1

    .line 207
    invoke-static {v3}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->isLegacyDrmSystem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 208
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Previous crypto provider was legacy..."

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    .line 216
    :cond_1
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 217
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "System ID was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " and now is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Crypto provider was  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " and now is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 222
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 223
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "System ID did not changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", check security level"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v3

    if-ne v3, v0, :cond_6

    .line 227
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 228
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Same crypto provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ". No change!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v0, v1

    .line 230
    goto/16 :goto_0

    .line 211
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Previous crypto provider was Widevine L1..."

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    goto/16 :goto_1

    .line 232
    :cond_6
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 233
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Crypto provider is changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v0, v2

    .line 235
    goto/16 :goto_0

    .line 239
    :cond_8
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 240
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "System ID changed from "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", report plugin changed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move v0, v2

    .line 243
    goto/16 :goto_0
.end method

.method private removeSessionKeys([B)V
    .locals 3

    .prologue
    .line 766
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_0

    .line 767
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeSessionKeys"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->removeKeys([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 770
    :catch_0
    move-exception v0

    .line 771
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeSessionKeys "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nf_drm_system_id"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removePref(Landroid/content/Context;Ljava/lang/String;)Z

    .line 390
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nf_drm_crypto_provider"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removePref(Landroid/content/Context;Ljava/lang/String;)Z

    .line 391
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->pendingSessionId:[B

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->closeSessionAndRemoveKeys([B)V

    .line 392
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->sessionId:[B

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->closeSessionAndRemoveKeys([B)V

    .line 393
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->reset()V

    .line 394
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mKeyIdsMap:Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->clearMap()V

    .line 395
    return-void
.end method

.method private restoreKeysToSession(Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;)Z
    .locals 4

    .prologue
    .line 742
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->sessionId:[B

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->closeCryptoSession([B)V

    .line 743
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    invoke-virtual {v1}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->sessionId:[B

    .line 744
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->sessionId:[B

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->getKeySetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->getKceKeyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->kceKeyId:[B

    .line 751
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->getKchKeyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->kchKeyId:[B

    .line 752
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restoreKeysToSession succeeded."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 745
    :catch_0
    move-exception v0

    .line 746
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to restore keys to DRM session"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    sget-object v2, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->ntba:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_KEYS_RESTORE_FAILED:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mediaDrmFailure(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 748
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showProperties()V
    .locals 4

    .prologue
    .line 457
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vendor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    const-string/jumbo v3, "vendor"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->getPropertyStringSafely(Landroid/media/MediaDrm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    const-string/jumbo v3, "version"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->getPropertyStringSafely(Landroid/media/MediaDrm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    const-string/jumbo v3, "description"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->getPropertyStringSafely(Landroid/media/MediaDrm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    const-string/jumbo v3, "deviceUniqueId"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->getPropertyByteArrayAsStringSafely(Landroid/media/MediaDrm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "algorithms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    const-string/jumbo v3, "algorithms"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->getPropertyStringSafely(Landroid/media/MediaDrm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "security level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    const-string/jumbo v3, "securityLevel"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->getPropertyStringSafely(Landroid/media/MediaDrm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "system ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    const-string/jumbo v3, "systemId"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->getPropertyStringSafely(Landroid/media/MediaDrm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provisioningId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    const-string/jumbo v3, "provisioningUniqueId"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->getPropertyByteArrayAsStringSafely(Landroid/media/MediaDrm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    return-void
.end method

.method private startWidewineProvisioning()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 294
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mWidevineProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mWidevineProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 296
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v1

    .line 300
    new-instance v2, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;

    invoke-direct {v2, p0, v1}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;-><init>(Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;Ljava/lang/String;)V

    .line 347
    new-instance v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;-><init>([BLcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$WidewineProvisiongCallback;)V

    .line 348
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 349
    return-void

    .line 296
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateKeyResponseForNccpSession([B[B[B)V
    .locals 4

    .prologue
    .line 369
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Provide key response..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->sessionId:[B

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v0

    .line 371
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Save keys..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    if-nez v0, :cond_0

    .line 374
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Something is wrong, this should not happen! KeySetId is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v0, Landroid/media/NotProvisionedException;

    const-string/jumbo v1, "Something is wrong, this should not happen! KeySetId is null!"

    invoke-direct {v0, v1}, Landroid/media/NotProvisionedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iput-object p2, v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->kceKeyId:[B

    .line 378
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iput-object p3, v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->kchKeyId:[B

    .line 379
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mKeyIdsMap:Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->addCurrentKeyIds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mDrmSystemChanged:Z

    .line 383
    return-void
.end method

.method private verifySystemId()V
    .locals 4

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Empty system ID!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    .line 140
    throw v0

    .line 143
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 144
    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 145
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "System ID is invalid. Its length is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    .line 147
    throw v1

    .line 150
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Valid System ID."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method


# virtual methods
.method declared-synchronized clearKeys(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 721
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clearKeys "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mKeyIdsMap:Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->removeCurrentKeyIds(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    monitor-exit p0

    return-void

    .line 721
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method decrypt([B[B)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 530
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->findMediaDrmCryptoSession()Landroid/media/MediaDrm$CryptoSession;

    move-result-object v0

    .line 531
    if-nez v0, :cond_1

    .line 532
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "decrypt - session NOT found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    new-array v0, v4, [B

    .line 552
    :cond_0
    :goto_0
    return-object v0

    .line 535
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->kceKeyId:[B

    if-nez v1, :cond_2

    .line 536
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "decrypt - kce is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-array v0, v4, [B

    goto :goto_0

    .line 542
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->kceKeyId:[B

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/MediaDrm$CryptoSession;->decrypt([B[B[B)[B

    move-result-object v0

    .line 543
    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/CryptoUtils;->unpadPerPKCS5Padding([BI)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 549
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "decrypt input size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", iv size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", output size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to decrypt "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    sget-object v2, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->ntba:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_DECRYPT:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mediaDrmFailure(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 547
    new-array v0, v4, [B

    goto :goto_0
.end method

.method public declared-synchronized destroy()V
    .locals 2

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mWidevineProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->pendingSessionId:[B

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->closeSessionAndRemoveKeys([B)V

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->sessionId:[B

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->closeCryptoSession([B)V

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_0
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method encrypt([B[B)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 563
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->findMediaDrmCryptoSession()Landroid/media/MediaDrm$CryptoSession;

    move-result-object v0

    .line 564
    if-nez v0, :cond_1

    .line 565
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "encrypt - session NOT found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-array v0, v4, [B

    .line 586
    :cond_0
    :goto_0
    return-object v0

    .line 568
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->kceKeyId:[B

    if-nez v1, :cond_2

    .line 569
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "encrypt - kce is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    new-array v0, v4, [B

    goto :goto_0

    .line 576
    :cond_2
    const/16 v1, 0x10

    :try_start_0
    invoke-static {p1, v1}, Lcom/netflix/mediaclient/util/CryptoUtils;->padPerPKCS5Padding([BI)[B

    move-result-object v1

    .line 577
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->kceKeyId:[B

    invoke-virtual {v0, v2, v1, p2}, Landroid/media/MediaDrm$CryptoSession;->encrypt([B[B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 583
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "encrypt input size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", iv size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", output size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to encrypt "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    sget-object v2, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->ntba:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_ENCRYPT:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mediaDrmFailure(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 581
    new-array v0, v4, [B

    goto :goto_0
.end method

.method public getDeviceId()[B
    .locals 4

    .prologue
    .line 422
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    if-nez v0, :cond_1

    .line 423
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Session MediaDrm is null! It should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v0, 0x0

    .line 434
    :cond_0
    :goto_0
    return-object v0

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    const-string/jumbo v1, "deviceUniqueId"

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 427
    if-eqz v0, :cond_2

    .line 428
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MediaDrm device ID is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "MediaDrm device ID is null! It should NOT happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 441
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    .line 442
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Session MediaDrm is null! It should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v0, 0x0

    .line 447
    :goto_0
    return-object v0

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    const-string/jumbo v1, "systemId"

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "MediaDrm system ID is: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method declared-synchronized getNccpSessionKeyRequest()[B
    .locals 4

    .prologue
    .line 798
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "get NCCP session key request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    :try_start_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->createKeyRequest()Landroid/media/MediaDrm$KeyRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v0

    .line 801
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->dumpKeyReqyest([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 808
    :goto_0
    monitor-exit p0

    return-object v0

    .line 803
    :catch_0
    move-exception v0

    .line 804
    :try_start_2
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to get key request"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 805
    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    sget-object v2, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->ntba:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_GET_KEY_REQUEST:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mediaDrmFailure(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 808
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 798
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->isWidevinePluginChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Widevine plugin is changed, reset..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nf_drm_system_id"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nf_drm_crypto_provider"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 164
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->ntba:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_WIDEVINE_PLUGIN_CHANGED:Lcom/netflix/mediaclient/StatusCode;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mediaDrmFailure(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->createNccpCryptoFactoryDrmSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "NCCP Crypto Factory session is created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->afterWidewineProvisioning()V

    goto :goto_0
.end method

.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 3

    .prologue
    .line 404
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 405
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Provisioning is required"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 407
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "MediaDrm event: Key required"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 408
    :cond_2
    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    .line 409
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "MediaDrm event: Key expired"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 410
    :cond_3
    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 411
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MediaDrm event: Vendor defined: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method declared-synchronized restoreKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 701
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreKeys for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",kceKid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",kchKid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mCurrentAccountId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 705
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "restoreKeys already loaded"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 708
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mKeyIdsMap:Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->restoreKeyIdsForAccount(Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;

    move-result-object v1

    .line 709
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mCurrentAccountId:Ljava/lang/String;

    .line 710
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mDrmSystemChanged:Z

    if-nez v2, :cond_1

    .line 713
    invoke-direct {p0, v1, p2, p3}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->isValidKeyIds(Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 715
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->restoreKeysToSession(Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 717
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 701
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract setSecurityLevel()V
.end method

.method sign([B)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 596
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->findMediaDrmCryptoSession()Landroid/media/MediaDrm$CryptoSession;

    move-result-object v0

    .line 597
    if-nez v0, :cond_1

    .line 598
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sign - session NOT found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    new-array v0, v4, [B

    .line 616
    :cond_0
    :goto_0
    return-object v0

    .line 601
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->kchKeyId:[B

    if-nez v1, :cond_2

    .line 602
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sign - kch is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    new-array v0, v4, [B

    goto :goto_0

    .line 607
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->kchKeyId:[B

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaDrm$CryptoSession;->sign([B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 613
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 614
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sign input size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", output size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 608
    :catch_0
    move-exception v0

    .line 609
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to sign message "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    sget-object v2, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->ntba:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_SIGN:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mediaDrmFailure(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 611
    new-array v0, v4, [B

    goto :goto_0
.end method

.method declared-synchronized updateNccpSessionKeyResponse([B[B[BLjava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 663
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Update key response for account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 667
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Update key response has invlaid input"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    :goto_0
    monitor-exit p0

    return v0

    .line 672
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->pendingSessionId:[B

    .line 673
    if-eqz v1, :cond_4

    .line 674
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 675
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Update key response for pending session id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->activatePendingSessionId()[B

    move-result-object v1

    .line 678
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mCurrentAccountId:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 679
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->closeSessionAndRemoveKeys([B)V

    .line 684
    :cond_4
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->updateKeyResponseForNccpSession([B[B[B)V

    .line 685
    const/4 v0, 0x1

    goto :goto_0

    .line 681
    :cond_5
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->closeCryptoSession([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 686
    :catch_0
    move-exception v1

    .line 687
    :try_start_2
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "We failed to update key response..."

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 688
    sget-object v2, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    sget-object v3, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->ntba:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_PROVIDE_KEY_RESPONSE:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2, v3, v4, v1}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mediaDrmFailure(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method verify([B[B)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 627
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Verify message"

    invoke-static {v1, v2, p1}, Lcom/netflix/mediaclient/Log;->logByteArray(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 629
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->findMediaDrmCryptoSession()Landroid/media/MediaDrm$CryptoSession;

    move-result-object v1

    .line 630
    if-nez v1, :cond_1

    .line 631
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "verify - session NOT found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_0
    :goto_0
    return v0

    .line 634
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->kchKeyId:[B

    if-nez v2, :cond_2

    .line 635
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "verify - kch is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 641
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->nccpCryptoFactoryCryptoSession:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->kchKeyId:[B

    invoke-virtual {v1, v2, p1, p2}, Landroid/media/MediaDrm$CryptoSession;->verify([B[B[B)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 647
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 648
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Messaage is verified: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 642
    :catch_0
    move-exception v1

    .line 643
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to verify message "

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 644
    sget-object v2, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    sget-object v3, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->ntba:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_VERIFY:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2, v3, v4, v1}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mediaDrmFailure(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
