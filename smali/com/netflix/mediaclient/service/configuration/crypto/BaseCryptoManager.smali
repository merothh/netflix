.class public abstract Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;
.super Ljava/lang/Object;
.source "BaseCryptoManager.java"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;
.implements Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;


# static fields
.field private static final CHUNK_SIZE:I = 0x4000

.field protected static final EMPTY_RETURN_ARRAY:[B

.field private static final MAX_ACTIVE_MEDIADRM_SESSION_WITHKEY:I = 0x2

.field private static final MAX_ACTIVE_MEDIADRM_SESSION_WITHOUTKEY:I = 0x2

.field public static final PROPERTY_SYSTEM_ID:Ljava/lang/String; = "systemId"

.field private static TAG:Ljava/lang/String;


# instance fields
.field protected final init:[B

.field protected mCallback:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;

.field protected mConfiguration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field protected mContext:Landroid/content/Context;

.field protected mCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

.field protected mCryptoSessionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mDrm:Landroid/media/MediaDrm;

.field private mPendingKeyRequestData:Lcom/netflix/mediaclient/service/msl/client/AndroidWidevineKeyRequestData;

.field protected mPlaybackInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mReceiver:Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager$PlaybackWatcherReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "nf_msl"

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->EMPTY_RETURN_ARRAY:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;)V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->init:[B

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mPlaybackInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager$PlaybackWatcherReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager$PlaybackWatcherReceiver;-><init>(Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mReceiver:Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager$PlaybackWatcherReceiver;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mCryptoSessionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    .line 95
    if-nez p4, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Calllback is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    .line 100
    iput-object p4, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;

    .line 101
    iput-object p3, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mConfiguration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 102
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->createMediaDrm()Landroid/media/MediaDrm;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p0}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 105
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->setSecurityLevel()V

    .line 107
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->addReceiver()V

    .line 108
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->showProperties()V

    .line 110
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->load()V

    .line 111
    return-void

    .line 45
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

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addReceiver()V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_ENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mReceiver:Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager$PlaybackWatcherReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 137
    return-void
.end method

.method private closeCryptoSession([B)Z
    .locals 3

    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mCryptoSessionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "closeCryptoSessions failed !"

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 208
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private detectAndReportMediaDrmResetWithCryptoOutput(II)V
    .locals 4

    .prologue
    .line 400
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->isAndroid6AndHihger()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    if-ge p2, p1, :cond_0

    .line 401
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->msl:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_RESET:Lcom/netflix/mediaclient/StatusCode;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mediaDrmFailure(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 403
    :cond_0
    return-void
.end method

.method private doGetKeyRequestData()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 648
    const/4 v1, 0x0

    .line 651
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "createCryptoSession:: before open session"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    new-instance v6, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;

    invoke-direct {v6}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, v6, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->sessionId:[B

    .line 654
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mCryptoSessionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 655
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "createCryptoSession:: after open session"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    iget-object v1, v6, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->sessionId:[B

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->init:[B

    const-string/jumbo v3, "application/xml"

    const/4 v4, 0x2

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v0

    .line 658
    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v0

    iput-object v0, v6, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->keyRequestData:[B

    .line 660
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keyRequestData: |"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->getKeyRequestDataAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Number of all opened crypto sessions: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mCryptoSessionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v6

    .line 671
    :goto_0
    return-object v0

    .line 666
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 667
    :goto_1
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "createCryptoSession failed !"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 668
    sget-object v2, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    sget-object v3, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->msl:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_GET_KEY_REQUEST:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2, v3, v4, v1}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mediaDrmFailure(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 666
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method protected static getCipherAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    const-string/jumbo v0, "AES/CBC/NoPadding"

    return-object v0
.end method

.method protected static getMacAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    const-string/jumbo v0, "HmacSHA256"

    return-object v0
.end method

.method private getPendingCryptoSession(Lcom/netflix/msl/keyx/WidevineKeyRequestData;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;
    .locals 5

    .prologue
    .line 537
    instance-of v0, p1, Lcom/netflix/mediaclient/service/msl/client/AndroidWidevineKeyRequestData;

    if-nez v0, :cond_0

    .line 538
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not original request! But: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    .line 541
    check-cast v0, Lcom/netflix/mediaclient/service/msl/client/AndroidWidevineKeyRequestData;

    .line 543
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mPendingKeyRequestData:Lcom/netflix/mediaclient/service/msl/client/AndroidWidevineKeyRequestData;

    if-eq v1, v0, :cond_1

    .line 544
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not original request! Instead of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mPendingKeyRequestData:Lcom/netflix/mediaclient/service/msl/client/AndroidWidevineKeyRequestData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", we got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mPendingKeyRequestData:Lcom/netflix/mediaclient/service/msl/client/AndroidWidevineKeyRequestData;

    .line 549
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidWidevineKeyRequestData;->getKeyRequestDataCryptoSession()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;

    move-result-object v1

    .line 551
    if-nez v1, :cond_2

    .line 552
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "updateKeyResponse:: pending crypto session can NOT be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidWidevineKeyRequestData;->getKeyRequestData()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidWidevineKeyRequestData;->getKeyRequestData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidWidevineKeyRequestData;->getKeyRequestDataCryptoSession()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->getKeyRequestDataAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 557
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 558
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateKeyResponse:: Key request is NOT as expected!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateKeyResponse:: Original: |"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidWidevineKeyRequestData;->getKeyRequestDataCryptoSession()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->getKeyRequestDataAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " |"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->dumpVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateKeyResponse:: we got  : |"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidWidevineKeyRequestData;->getKeyRequestData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " |"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->dumpVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_3
    :goto_0
    return-object v1

    .line 564
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Key request is as expected."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeReceiver()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mReceiver:Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager$PlaybackWatcherReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    return-void
.end method

.method private removeSessionKeys(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;)V
    .locals 4

    .prologue
    .line 223
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->sessionId:[B

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->keySetId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    if-nez v0, :cond_1

    .line 226
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Nothing to remove! Skip!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeSessionKeys"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->sessionId:[B

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->removeKeys([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeSessionKeys "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private reportError(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 696
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->msl:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    invoke-virtual {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mediaDrmFailure(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 697
    return-void
.end method

.method private showProperties()V
    .locals 4

    .prologue
    .line 149
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vendor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    const-string/jumbo v3, "vendor"

    invoke-virtual {v2, v3}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    const-string/jumbo v3, "description"

    invoke-virtual {v2, v3}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    const-string/jumbo v3, "deviceUniqueId"

    invoke-virtual {v2, v3}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "algorithms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    const-string/jumbo v3, "algorithms"

    invoke-virtual {v2, v3}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "security level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    const-string/jumbo v3, "securityLevel"

    invoke-virtual {v2, v3}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "system ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    const-string/jumbo v3, "systemId"

    invoke-virtual {v2, v3}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provisioningId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    const-string/jumbo v3, "provisioningUniqueId"

    invoke-virtual {v2, v3}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method public closeCryptoSession(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;)Z
    .locals 3

    .prologue
    .line 189
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->sessionId:[B

    if-eqz v0, :cond_1

    .line 190
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "closeCryptoSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    iget-object v0, p1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->sessionId:[B

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->closeCryptoSession([B)Z

    move-result v0

    .line 196
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized closeSessionAndRemoveKeys(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;)V
    .locals 1

    .prologue
    .line 216
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 217
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->removeSessionKeys(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;)V

    .line 218
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->closeCryptoSession(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_0
    monitor-exit p0

    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createMediaDrm()Landroid/media/MediaDrm;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Landroid/media/MediaDrm;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->getSchemeUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    return-object v0
.end method

.method public decrypt(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;[B[B)[B
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 262
    const/4 v0, 0x0

    .line 265
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->doDecrypt(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;[B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 276
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 280
    :goto_1
    return-object v0

    .line 266
    :catch_0
    move-exception v1

    .line 269
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->isAndroid6AndHihger()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    instance-of v2, v1, Landroid/media/MediaDrmResetException;

    if-eqz v2, :cond_0

    .line 271
    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_RESET:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v2, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->reportError(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 280
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->EMPTY_RETURN_ARRAY:[B

    goto :goto_1
.end method

.method public declared-synchronized destroy()V
    .locals 1

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->removeReceiver()V

    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_0
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected doDecrypt(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;[B[B)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->findMediaDrmCryptoSession(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;)Landroid/media/MediaDrm$CryptoSession;

    move-result-object v1

    .line 286
    if-nez v1, :cond_0

    .line 287
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "decrypt - session NOT found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_0
    return-object v0

    .line 290
    :cond_0
    if-nez p2, :cond_1

    .line 291
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "decrypt - kce is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;->get()[B

    move-result-object v2

    invoke-virtual {v1, v2, p3, p4}, Landroid/media/MediaDrm$CryptoSession;->decrypt([B[B[B)[B

    move-result-object v1

    .line 298
    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/CryptoUtils;->unpadPerPKCS5Padding([BI)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v1

    .line 300
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to decrypt "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 301
    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_DECRYPT:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v2, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->reportError(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected doEncrypt(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;[B[B)[B
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/16 v9, 0x4000

    const/4 v3, 0x0

    .line 336
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->findMediaDrmCryptoSession(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;)Landroid/media/MediaDrm$CryptoSession;

    move-result-object v4

    .line 337
    if-nez v4, :cond_0

    .line 338
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "encrypt - session NOT found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_0
    return-object v0

    .line 341
    :cond_0
    if-nez p2, :cond_1

    .line 342
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "encrypt - kce is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 348
    :cond_1
    :try_start_0
    array-length v5, p3

    .line 349
    if-gt v5, v9, :cond_3

    .line 351
    const/16 v1, 0x10

    invoke-static {p3, v1}, Lcom/netflix/mediaclient/util/CryptoUtils;->padPerPKCS5Padding([BI)[B

    move-result-object v1

    .line 352
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;->get()[B

    move-result-object v2

    invoke-virtual {v4, v2, v1, p4}, Landroid/media/MediaDrm$CryptoSession;->encrypt([B[B[B)[B

    move-result-object v1

    .line 384
    :cond_2
    :goto_1
    array-length v2, v1

    invoke-direct {p0, v5, v2}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->detectAndReportMediaDrmResetWithCryptoOutput(II)V

    move-object v0, v1

    .line 392
    goto :goto_0

    .line 355
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "encrypt piecewise"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    rem-int/lit8 v1, v5, 0x10

    rsub-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v5

    .line 358
    new-array v1, v1, [B

    move v2, v3

    .line 362
    :cond_4
    add-int/lit16 v6, v2, 0x4000

    invoke-static {p3, v2, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 363
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;->get()[B

    move-result-object v7

    invoke-virtual {v4, v7, v6, p4}, Landroid/media/MediaDrm$CryptoSession;->encrypt([B[B[B)[B

    move-result-object v6

    .line 364
    const/16 v7, 0x3ff0

    const/16 v8, 0x4000

    invoke-static {v6, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p4

    .line 367
    const/4 v7, 0x0

    const/16 v8, 0x4000

    invoke-static {v6, v7, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    add-int/lit16 v2, v2, 0x4000

    .line 369
    sub-int v6, v5, v2

    if-gt v6, v9, :cond_4

    .line 371
    sub-int v6, v5, v2

    if-lez v6, :cond_2

    .line 372
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 373
    sget-object v6, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "partial chunk at offset "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, v5, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_5
    invoke-static {p3, v2, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 377
    const/16 v7, 0x10

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/util/CryptoUtils;->padPerPKCS5Padding([BI)[B

    move-result-object v6

    .line 378
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;->get()[B

    move-result-object v7

    invoke-virtual {v4, v7, v6, p4}, Landroid/media/MediaDrm$CryptoSession;->encrypt([B[B[B)[B

    move-result-object v4

    .line 379
    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v6, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 386
    :catch_0
    move-exception v1

    .line 387
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to encrypt "

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v4, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 388
    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_ENCRYPT:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v2, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->reportError(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method protected dumpKeyReqyest([B)V
    .locals 3

    .prologue
    .line 490
    if-eqz p1, :cond_1

    .line 491
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "key request created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->safeBase64Encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "key request returned null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public encrypt(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;[B[B)[B
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 312
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "BaseCryptoManager::encrypt..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v0, 0x0

    .line 316
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->doEncrypt(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;[B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 327
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 331
    :goto_1
    return-object v0

    .line 317
    :catch_0
    move-exception v1

    .line 320
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->isAndroid6AndHihger()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    instance-of v2, v1, Landroid/media/MediaDrmResetException;

    if-eqz v2, :cond_0

    .line 322
    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_RESET:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v2, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->reportError(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 331
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->EMPTY_RETURN_ARRAY:[B

    goto :goto_1
.end method

.method protected findMediaDrmCryptoSession(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;)Landroid/media/MediaDrm$CryptoSession;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 245
    if-nez p1, :cond_0

    .line 254
    :goto_0
    return-object v0

    .line 249
    :cond_0
    iget-object v1, p1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->sessionId:[B

    .line 250
    if-nez v1, :cond_1

    .line 251
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "findMediaDrmCryptoSession:: session found but without session ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->getMacAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaDrm;->getCryptoSession([BLjava/lang/String;Ljava/lang/String;)Landroid/media/MediaDrm$CryptoSession;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getKeyRequestData()Lcom/netflix/msl/keyx/WidevineKeyRequestData;
    .locals 2

    .prologue
    .line 627
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mPendingKeyRequestData:Lcom/netflix/mediaclient/service/msl/client/AndroidWidevineKeyRequestData;

    if-nez v0, :cond_1

    .line 628
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Key request does not exist, create it!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->doGetKeyRequestData()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;

    move-result-object v0

    .line 630
    if-nez v0, :cond_0

    .line 631
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Crypto session can not be null after "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 634
    :cond_0
    :try_start_1
    new-instance v1, Lcom/netflix/mediaclient/service/msl/client/AndroidWidevineKeyRequestData;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidWidevineKeyRequestData;-><init>(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mPendingKeyRequestData:Lcom/netflix/mediaclient/service/msl/client/AndroidWidevineKeyRequestData;

    .line 640
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mPendingKeyRequestData:Lcom/netflix/mediaclient/service/msl/client/AndroidWidevineKeyRequestData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 637
    :cond_1
    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Key request is already pending, return it"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method protected abstract getSchemeUUID()Ljava/util/UUID;
.end method

.method protected abstract init()V
.end method

.method protected abstract load()V
.end method

.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 3

    .prologue
    .line 466
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 467
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Provisioning is required"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 469
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "MediaDrm event: Key required"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 470
    :cond_2
    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    .line 471
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "MediaDrm event: Key expired"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 472
    :cond_3
    const/4 v0, 0x4

    if-ne p3, v0, :cond_4

    .line 473
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

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

    .line 476
    :cond_4
    const/4 v0, 0x5

    if-ne p3, v0, :cond_6

    .line 477
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 478
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "EVENT_SESSION_RECLAIMED event."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_5
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->closeCryptoSession([B)Z

    .line 481
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;->drmResoureReclaimed()V

    goto :goto_0

    .line 483
    :cond_6
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown MediaDrm event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected declared-synchronized reset()V
    .locals 0

    .prologue
    .line 168
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public resetCryptoFactory()V
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetCryptoFactory"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->reset()V

    .line 174
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->init()V

    .line 175
    return-void
.end method

.method public restoreCryptoSession(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;
    .locals 4

    .prologue
    .line 678
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;-><init>()V

    .line 679
    iput-object p1, v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->keySetId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    .line 680
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v1}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->sessionId:[B

    .line 681
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    iget-object v2, v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->sessionId:[B

    iget-object v3, v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->keySetId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;->get()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    .line 683
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 684
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreKeysToSession succeeded:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->keySetId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :cond_0
    :goto_0
    return-object v0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to restore keys to DRM session"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract setSecurityLevel()V
.end method

.method public sign(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;[B)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 408
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->findMediaDrmCryptoSession(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;)Landroid/media/MediaDrm$CryptoSession;

    move-result-object v1

    .line 409
    if-nez v1, :cond_0

    .line 410
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sign - session NOT found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :goto_0
    return-object v0

    .line 414
    :cond_0
    if-nez p2, :cond_1

    .line 415
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sign - kch is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;->get()[B

    move-result-object v0

    invoke-virtual {v1, v0, p3}, Landroid/media/MediaDrm$CryptoSession;->sign([B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to sign message "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 423
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_SIGN:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->reportError(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 424
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->EMPTY_RETURN_ARRAY:[B

    goto :goto_0
.end method

.method public declared-synchronized updateKeyResponse(Lcom/netflix/msl/keyx/WidevineKeyRequestData;[BLcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 502
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Provide key response..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    :try_start_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->getPendingCryptoSession(Lcom/netflix/msl/keyx/WidevineKeyRequestData;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 508
    :try_start_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mDrm:Landroid/media/MediaDrm;

    iget-object v3, v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->sessionId:[B

    invoke-virtual {v2, v3, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v2

    .line 509
    sget-object v3, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Save keys..."

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    if-nez v2, :cond_0

    .line 513
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Something is wrong, this should not happen! KeySetId is null!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    .line 526
    :goto_0
    monitor-exit p0

    return-object v0

    .line 518
    :cond_0
    :try_start_3
    new-instance v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;-><init>([B)V

    iput-object v1, v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->keySetId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 521
    :catch_0
    move-exception v1

    .line 522
    :goto_1
    :try_start_4
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to provide key response"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 523
    sget-object v2, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    sget-object v3, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->msl:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_PROVIDE_KEY_RESPONSE:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2, v3, v4, v1}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mediaDrmFailure(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 521
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1
.end method

.method public verify(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;[B[B)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 433
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->findMediaDrmCryptoSession(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;)Landroid/media/MediaDrm$CryptoSession;

    move-result-object v1

    .line 434
    if-nez v1, :cond_1

    .line 435
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "verify - session NOT found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    :goto_0
    return v0

    .line 439
    :cond_1
    if-nez p2, :cond_2

    .line 440
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "verify - kch is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 446
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;->get()[B

    move-result-object v2

    invoke-virtual {v1, v2, p3, p4}, Landroid/media/MediaDrm$CryptoSession;->verify([B[B[B)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 453
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Message is verified: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 447
    :catch_0
    move-exception v1

    .line 448
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to verify message "

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 449
    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_VERIFY:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v2, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->reportError(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
