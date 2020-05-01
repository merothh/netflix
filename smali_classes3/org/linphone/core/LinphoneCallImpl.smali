.class Lorg/linphone/core/LinphoneCallImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/linphone/core/LinphoneCall;


# instance fields
.field mCore:Lorg/linphone/core/LinphoneCore;

.field protected final nativePtr:J

.field ownPtr:Z

.field userData:Ljava/lang/Object;


# direct methods
.method private constructor <init>(J)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lorg/linphone/core/LinphoneCallImpl;->ownPtr:Z

    .line 57
    iput-wide p1, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    .line 58
    iget-wide p1, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneCallImpl;->getCore(J)Lorg/linphone/core/LinphoneCore;

    move-result-object p1

    iput-object p1, p0, Lorg/linphone/core/LinphoneCallImpl;->mCore:Lorg/linphone/core/LinphoneCore;

    return-void
.end method

.method private native askedToAutoAnswer(J)Z
.end method

.method private native cameraEnabled(J)Z
.end method

.method private native declineWithErrorInfo(JJ)V
.end method

.method private native enableCamera(JZ)V
.end method

.method private native enableEchoCancellation(JZ)V
.end method

.method private native enableEchoLimiter(JZ)V
.end method

.method private native finalize(J)V
.end method

.method private native getAuthenticationToken(J)Ljava/lang/String;
.end method

.method private native getAverageQuality(J)F
.end method

.method private native getCallLog(J)J
.end method

.method private native getChatRoom(J)Ljava/lang/Object;
.end method

.method private native getCore(J)Lorg/linphone/core/LinphoneCore;
.end method

.method private native getCurrentParams(J)J
.end method

.method private native getCurrentQuality(J)F
.end method

.method private native getDiversionAddress(J)J
.end method

.method private native getDuration(J)I
.end method

.method private native getErrorInfo(J)J
.end method

.method private native getPlayVolume(J)F
.end method

.method private native getPlayer(J)J
.end method

.method private native getRemoteAddress(J)J
.end method

.method private native getRemoteContact(J)Ljava/lang/String;
.end method

.method private native getRemoteParams(J)J
.end method

.method private native getRemoteUserAgent(J)Ljava/lang/String;
.end method

.method private native getReplacedCall(J)Ljava/lang/Object;
.end method

.method private native getState(J)I
.end method

.method private native getStats(JI)Ljava/lang/Object;
.end method

.method private native getTransferState(J)I
.end method

.method private native getTransferTargetCall(J)Ljava/lang/Object;
.end method

.method private native getTransfererCall(J)Ljava/lang/Object;
.end method

.method private native isAuthenticationTokenVerified(J)Z
.end method

.method private native isEchoCancellationEnabled(J)Z
.end method

.method private native isEchoLimiterEnabled(J)Z
.end method

.method private native isIncoming(J)Z
.end method

.method private native mediaInProgress(J)Z
.end method

.method private native sendInfoMessage(JJ)I
.end method

.method private native setAuthenticationTokenVerified(JZ)V
.end method

.method private native setListener(JLorg/linphone/core/LinphoneCall$LinphoneCallListener;)V
.end method

.method private native setVideoWindowId(JLjava/lang/Object;)V
.end method

.method private native startRecording(J)V
.end method

.method private native stopRecording(J)V
.end method

.method private native takeSnapshot(JLjava/lang/String;)V
.end method

.method private native terminateWithErrorInfo(JJ)V
.end method

.method private native zoomVideo(JFFF)V
.end method


# virtual methods
.method public askedToAutoAnswer()Z
    .locals 2

    .line 317
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->askedToAutoAnswer(J)Z

    move-result v0

    return v0
.end method

.method public cameraEnabled()Z
    .locals 2

    .line 119
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->cameraEnabled(J)Z

    move-result v0

    return v0
.end method

.method public declineWithErrorInfo(Lorg/linphone/core/ErrorInfo;)V
    .locals 5

    .line 323
    iget-object v0, p0, Lorg/linphone/core/LinphoneCallImpl;->mCore:Lorg/linphone/core/LinphoneCore;

    monitor-enter v0

    .line 324
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/ErrorInfoImpl;

    iget-wide v3, p1, Lorg/linphone/core/ErrorInfoImpl;->mNativePtr:J

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/linphone/core/LinphoneCallImpl;->declineWithErrorInfo(JJ)V

    .line 325
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public enableCamera(Z)V
    .locals 3

    .line 114
    iget-object v0, p0, Lorg/linphone/core/LinphoneCallImpl;->mCore:Lorg/linphone/core/LinphoneCore;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v1, v2, p1}, Lorg/linphone/core/LinphoneCallImpl;->enableCamera(JZ)V

    .line 116
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public enableEchoCancellation(Z)V
    .locals 2

    .line 137
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallImpl;->enableEchoCancellation(JZ)V

    return-void
.end method

.method public enableEchoLimiter(Z)V
    .locals 2

    .line 144
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallImpl;->enableEchoLimiter(JZ)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 126
    :cond_1
    instance-of v2, p1, Lorg/linphone/core/LinphoneCallImpl;

    if-nez v2, :cond_2

    return v1

    .line 127
    :cond_2
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneCallImpl;

    iget-wide v4, p1, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected finalize()V
    .locals 2

    .line 61
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->finalize(J)V

    return-void
.end method

.method public getAudioStats()Lorg/linphone/core/LinphoneCallStats;
    .locals 4

    .line 73
    iget-object v0, p0, Lorg/linphone/core/LinphoneCallImpl;->mCore:Lorg/linphone/core/LinphoneCore;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lorg/linphone/core/LinphoneCallImpl;->getStats(JI)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/linphone/core/LinphoneCallStats;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAuthenticationToken()Ljava/lang/String;
    .locals 2

    .line 165
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getAuthenticationToken(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAverageQuality()F
    .locals 2

    .line 157
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getAverageQuality(J)F

    move-result v0

    return v0
.end method

.method public getCallLog()Lorg/linphone/core/LinphoneCallLog;
    .locals 5

    .line 64
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getCallLog(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 66
    new-instance v2, Lorg/linphone/core/LinphoneCallLogImpl;

    invoke-direct {v2, v0, v1}, Lorg/linphone/core/LinphoneCallLogImpl;-><init>(J)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChatRoom()Lorg/linphone/core/LinphoneChatRoom;
    .locals 3

    .line 288
    iget-object v0, p0, Lorg/linphone/core/LinphoneCallImpl;->mCore:Lorg/linphone/core/LinphoneCore;

    monitor-enter v0

    .line 289
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v1, v2}, Lorg/linphone/core/LinphoneCallImpl;->getChatRoom(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/linphone/core/LinphoneChatRoom;

    check-cast v1, Lorg/linphone/core/LinphoneChatRoom;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 290
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConference()Lorg/linphone/core/LinphoneConference;
    .locals 2

    .line 183
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-virtual {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getConference(J)Lorg/linphone/core/LinphoneConference;

    move-result-object v0

    return-object v0
.end method

.method public native getConference(J)Lorg/linphone/core/LinphoneConference;
.end method

.method public getCurrentParams()Lorg/linphone/core/LinphoneCallParams;
    .locals 4

    .line 97
    iget-object v0, p0, Lorg/linphone/core/LinphoneCallImpl;->mCore:Lorg/linphone/core/LinphoneCore;

    monitor-enter v0

    .line 98
    :try_start_0
    new-instance v1, Lorg/linphone/core/LinphoneCallParamsImpl;

    iget-wide v2, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneCallImpl;->getCurrentParams(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/linphone/core/LinphoneCallParamsImpl;-><init>(J)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 99
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentParamsCopy()Lorg/linphone/core/LinphoneCallParams;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneCallImpl;->getCurrentParams()Lorg/linphone/core/LinphoneCallParams;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentQuality()F
    .locals 2

    .line 160
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getCurrentQuality(J)F

    move-result v0

    return v0
.end method

.method public getDirection()Lorg/linphone/core/CallDirection;
    .locals 2

    .line 83
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->isIncoming(J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/linphone/core/CallDirection;->Incoming:Lorg/linphone/core/CallDirection;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/linphone/core/CallDirection;->Outgoing:Lorg/linphone/core/CallDirection;

    :goto_0
    return-object v0
.end method

.method public getDiversionAddress()Lorg/linphone/core/LinphoneAddress;
    .locals 5

    .line 306
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getDiversionAddress(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 308
    new-instance v2, Lorg/linphone/core/LinphoneAddressImpl;

    sget-object v3, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {v2, v0, v1, v3}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()I
    .locals 2

    .line 154
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getDuration(J)I

    move-result v0

    return v0
.end method

.method public getErrorInfo()Lorg/linphone/core/ErrorInfo;
    .locals 4

    .line 264
    iget-object v0, p0, Lorg/linphone/core/LinphoneCallImpl;->mCore:Lorg/linphone/core/LinphoneCore;

    monitor-enter v0

    .line 265
    :try_start_0
    new-instance v1, Lorg/linphone/core/ErrorInfoImpl;

    iget-wide v2, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneCallImpl;->getErrorInfo(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/linphone/core/ErrorInfoImpl;-><init>(J)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 266
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlayVolume()F
    .locals 2

    .line 195
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getPlayVolume(J)F

    move-result v0

    return v0
.end method

.method public getPlayer()Lorg/linphone/core/LinphonePlayer;
    .locals 4

    .line 280
    iget-object v0, p0, Lorg/linphone/core/LinphoneCallImpl;->mCore:Lorg/linphone/core/LinphoneCore;

    monitor-enter v0

    .line 281
    :try_start_0
    new-instance v1, Lorg/linphone/core/LinphonePlayerImpl;

    iget-wide v2, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneCallImpl;->getPlayer(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/linphone/core/LinphonePlayerImpl;-><init>(J)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 282
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getReason()Lorg/linphone/core/Reason;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteAddress()Lorg/linphone/core/LinphoneAddress;
    .locals 5

    .line 86
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getRemoteAddress(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 88
    new-instance v2, Lorg/linphone/core/LinphoneAddressImpl;

    sget-object v3, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {v2, v0, v1, v3}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteContact()Ljava/lang/String;
    .locals 2

    .line 205
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getRemoteContact(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteParams()Lorg/linphone/core/LinphoneCallParams;
    .locals 6

    .line 105
    iget-object v0, p0, Lorg/linphone/core/LinphoneCallImpl;->mCore:Lorg/linphone/core/LinphoneCore;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v1, v2}, Lorg/linphone/core/LinphoneCallImpl;->getRemoteParams(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v1, 0x0

    .line 108
    monitor-exit v0

    return-object v1

    .line 110
    :cond_0
    new-instance v3, Lorg/linphone/core/LinphoneCallParamsImpl;

    invoke-direct {v3, v1, v2}, Lorg/linphone/core/LinphoneCallParamsImpl;-><init>(J)V

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    .line 111
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRemoteUserAgent()Ljava/lang/String;
    .locals 2

    .line 200
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getRemoteUserAgent(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplacedCall()Lorg/linphone/core/LinphoneCall;
    .locals 2

    .line 150
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getReplacedCall(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCall;

    return-object v0
.end method

.method public getState()Lorg/linphone/core/LinphoneCall$State;
    .locals 2

    .line 94
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getState(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCall$State;->fromInt(I)Lorg/linphone/core/LinphoneCall$State;

    move-result-object v0

    return-object v0
.end method

.method public getTransferState()Lorg/linphone/core/LinphoneCall$State;
    .locals 2

    .line 237
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getTransferState(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCall$State;->fromInt(I)Lorg/linphone/core/LinphoneCall$State;

    move-result-object v0

    return-object v0
.end method

.method public getTransferTargetCall()Lorg/linphone/core/LinphoneCall;
    .locals 2

    .line 254
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getTransferTargetCall(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCall;

    return-object v0
.end method

.method public getTransfererCall()Lorg/linphone/core/LinphoneCall;
    .locals 2

    .line 249
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getTransfererCall(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCall;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/linphone/core/LinphoneCallImpl;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getVideoStats()Lorg/linphone/core/LinphoneCallStats;
    .locals 4

    .line 78
    iget-object v0, p0, Lorg/linphone/core/LinphoneCallImpl;->mCore:Lorg/linphone/core/LinphoneCore;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lorg/linphone/core/LinphoneCallImpl;->getStats(JI)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/linphone/core/LinphoneCallStats;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 4

    .line 133
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x20f

    add-int/2addr v0, v1

    return v0
.end method

.method public isAuthenticationTokenVerified()Z
    .locals 2

    .line 170
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->isAuthenticationTokenVerified(J)Z

    move-result v0

    return v0
.end method

.method public isEchoCancellationEnabled()Z
    .locals 2

    .line 141
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->isEchoCancellationEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isEchoLimiterEnabled()Z
    .locals 2

    .line 147
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->isEchoLimiterEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isInConference()Z
    .locals 1

    .line 179
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneCallImpl;->getConference()Lorg/linphone/core/LinphoneConference;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mediaInProgress()Z
    .locals 2

    .line 186
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->mediaInProgress(J)Z

    move-result v0

    return v0
.end method

.method public sendInfoMessage(Lorg/linphone/core/LinphoneInfoMessage;)V
    .locals 5

    .line 242
    iget-object v0, p0, Lorg/linphone/core/LinphoneCallImpl;->mCore:Lorg/linphone/core/LinphoneCore;

    monitor-enter v0

    .line 243
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneInfoMessageImpl;

    iget-wide v3, p1, Lorg/linphone/core/LinphoneInfoMessageImpl;->nativePtr:J

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/linphone/core/LinphoneCallImpl;->sendInfoMessage(JJ)I

    .line 244
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAuthenticationTokenVerified(Z)V
    .locals 2

    .line 175
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallImpl;->setAuthenticationTokenVerified(JZ)V

    return-void
.end method

.method public setListener(Lorg/linphone/core/LinphoneCall$LinphoneCallListener;)V
    .locals 3

    .line 295
    iget-object v0, p0, Lorg/linphone/core/LinphoneCallImpl;->mCore:Lorg/linphone/core/LinphoneCore;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v1, v2, p1}, Lorg/linphone/core/LinphoneCallImpl;->setListener(JLorg/linphone/core/LinphoneCall$LinphoneCallListener;)V

    .line 297
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lorg/linphone/core/LinphoneCallImpl;->userData:Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized setVideoWindow(Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    .line 302
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallImpl;->setVideoWindowId(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startRecording()V
    .locals 3

    .line 223
    iget-object v0, p0, Lorg/linphone/core/LinphoneCallImpl;->mCore:Lorg/linphone/core/LinphoneCore;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v1, v2}, Lorg/linphone/core/LinphoneCallImpl;->startRecording(J)V

    .line 225
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopRecording()V
    .locals 3

    .line 230
    iget-object v0, p0, Lorg/linphone/core/LinphoneCallImpl;->mCore:Lorg/linphone/core/LinphoneCore;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v1, v2}, Lorg/linphone/core/LinphoneCallImpl;->stopRecording(J)V

    .line 232
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public takeSnapshot(Ljava/lang/String;)V
    .locals 3

    .line 210
    iget-object v0, p0, Lorg/linphone/core/LinphoneCallImpl;->mCore:Lorg/linphone/core/LinphoneCore;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v1, v2, p1}, Lorg/linphone/core/LinphoneCallImpl;->takeSnapshot(JLjava/lang/String;)V

    .line 212
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public terminateWithErrorInfo(Lorg/linphone/core/ErrorInfo;)V
    .locals 5

    .line 331
    iget-object v0, p0, Lorg/linphone/core/LinphoneCallImpl;->mCore:Lorg/linphone/core/LinphoneCore;

    monitor-enter v0

    .line 332
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/ErrorInfoImpl;

    iget-wide v3, p1, Lorg/linphone/core/ErrorInfoImpl;->mNativePtr:J

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/linphone/core/LinphoneCallImpl;->terminateWithErrorInfo(JJ)V

    .line 333
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zoomVideo(FFF)V
    .locals 6

    .line 217
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/linphone/core/LinphoneCallImpl;->zoomVideo(JFFF)V

    return-void
.end method
