.class Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;
.super Ljava/lang/Object;
.source "WidevineDrmManager.java"


# instance fields
.field public kceKeyId:[B

.field public kchKeyId:[B

.field public pendingSessionId:[B

.field public sessionId:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized activatePendingSessionId()[B
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->pendingSessionId:[B

    if-nez v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Pending session does NOT exist! Do nothing!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Pending session does exist! Move pending to current session id and return old!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->sessionId:[B

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->pendingSessionId:[B

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->sessionId:[B

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->pendingSessionId:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->pendingSessionId:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->sessionId:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->kceKeyId:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$CryptoSession;->kchKeyId:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
