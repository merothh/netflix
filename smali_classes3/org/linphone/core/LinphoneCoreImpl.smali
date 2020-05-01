.class Lorg/linphone/core/LinphoneCoreImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/linphone/core/LinphoneCore;


# static fields
.field static FIND_PAYLOAD_IGNORE_CHANNELS:I = -0x1

.field static FIND_PAYLOAD_IGNORE_RATE:I = -0x1


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mListener:Lorg/linphone/core/LinphoneCoreListener;

.field private mSpeakerEnabled:Z

.field protected nativePtr:J

.field private openh264DownloadEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lorg/linphone/core/LinphoneCoreListener;Ljava/io/File;Ljava/io/File;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mContext:Landroid/content/Context;

    .line 47
    iput-object v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    .line 48
    iput-boolean v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->openh264DownloadEnabled:Z

    .line 49
    iput-boolean v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->mSpeakerEnabled:Z

    .line 200
    iput-object p1, p0, Lorg/linphone/core/LinphoneCoreImpl;->mListener:Lorg/linphone/core/LinphoneCoreListener;

    if-nez p2, :cond_0

    move-object v3, v0

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    .line 202
    :cond_1
    invoke-virtual {p3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v4, v0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move-object v6, p5

    .line 203
    invoke-direct/range {v1 .. v6}, Lorg/linphone/core/LinphoneCoreImpl;->newLinphoneCore(Lorg/linphone/core/LinphoneCoreListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    .line 204
    invoke-virtual {p0, p5}, Lorg/linphone/core/LinphoneCoreImpl;->setContext(Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lorg/linphone/core/LinphoneCoreListener;Ljava/lang/Object;)V
    .locals 7

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mContext:Landroid/content/Context;

    .line 47
    iput-object v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->openh264DownloadEnabled:Z

    .line 49
    iput-boolean v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mSpeakerEnabled:Z

    .line 207
    iput-object p1, p0, Lorg/linphone/core/LinphoneCoreImpl;->mListener:Lorg/linphone/core/LinphoneCoreListener;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    .line 208
    invoke-direct/range {v1 .. v6}, Lorg/linphone/core/LinphoneCoreImpl;->newLinphoneCore(Lorg/linphone/core/LinphoneCoreListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    .line 209
    invoke-virtual {p0, p2}, Lorg/linphone/core/LinphoneCoreImpl;->setContext(Ljava/lang/Object;)V

    return-void
.end method

.method private native acceptCall(JJ)V
.end method

.method private native acceptCallUpdate(JJJ)V
.end method

.method private native acceptCallWithParams(JJJ)V
.end method

.method private native acceptEarlyMedia(JJ)Z
.end method

.method private native acceptEarlyMediaWithParams(JJJ)Z
.end method

.method private native addAllToConference(J)V
.end method

.method private native addAuthInfo(JJ)V
.end method

.method private native addFriend(JJ)V
.end method

.method private native addFriendList(JJ)V
.end method

.method private native addListener(JLorg/linphone/core/LinphoneCoreListener;)V
.end method

.method private native addProxyConfig(Lorg/linphone/core/LinphoneProxyConfig;JJ)I
.end method

.method private native addToConference(JJ)V
.end method

.method private applyAudioHacks()V
    .locals 1

    .line 437
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->needGalaxySAudioHack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x3ef00000    # -9.0f

    .line 439
    invoke-virtual {p0, v0}, Lorg/linphone/core/LinphoneCoreImpl;->setMicrophoneGain(F)V

    :cond_0
    return-void
.end method

.method private native audioMulticastEnabled(J)Z
.end method

.method private native chatEnabled(J)Z
.end method

.method private native clearAuthInfos(J)V
.end method

.method private native clearCallLogs(J)V
.end method

.method private native clearProxyConfigs(J)V
.end method

.method private contextInitialized()Z
    .locals 3

    .line 217
    iget-object v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Context of LinphoneCore has not been initialized, call setContext() after creating LinphoneCore."

    aput-object v2, v0, v1

    .line 218
    invoke-static {v0}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    :cond_0
    return v1
.end method

.method private native createCallParams(JJ)J
.end method

.method private native createConference(JLorg/linphone/core/LinphoneConferenceParams;)Lorg/linphone/core/LinphoneConference;
.end method

.method private native createFriend(J)Ljava/lang/Object;
.end method

.method private native createFriendWithAddress(JLjava/lang/String;)Ljava/lang/Object;
.end method

.method private native createInfoMessage(J)J
.end method

.method private native createLocalPlayer(JLorg/linphone/mediastream/video/AndroidVideoWindowImpl;)J
.end method

.method private native createNatPolicy(J)Ljava/lang/Object;
.end method

.method private native createPublish(JJLjava/lang/String;I)Ljava/lang/Object;
.end method

.method private native createSubscribe(JJLjava/lang/String;I)Ljava/lang/Object;
.end method

.method private native declineCall(JJI)V
.end method

.method private native deferCallUpdate(JJ)V
.end method

.method private native delete(J)V
.end method

.method private native disableChat(JI)V
.end method

.method private native dnsSrvEnabled(J)Z
.end method

.method private native enableAdaptiveRateControl(JZ)V
.end method

.method private native enableAudioMulticast(JZ)V
.end method

.method private native enableChat(J)V
.end method

.method private native enableDnsSrv(JZ)V
.end method

.method private native enableEchoCancellation(JZ)V
.end method

.method private native enableEchoLimiter(JZ)V
.end method

.method private native enableIpv6(JZ)V
.end method

.method private native enableKeepAlive(JZ)V
.end method

.method private native enablePayloadType(JJZ)I
.end method

.method private native enableSdp200Ack(JZ)V
.end method

.method private native enableVideo(JZZ)V
.end method

.method private native enableVideoMulticast(JZ)V
.end method

.method private native enterConference(J)Z
.end method

.method private native findAuthInfos(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native findCallFromUri(JLjava/lang/String;)Ljava/lang/Object;
.end method

.method private native findPayloadType(JLjava/lang/String;II)J
.end method

.method private native forceSpeakerState(JZ)V
.end method

.method private native getAdaptiveRateAlgorithm(J)Ljava/lang/String;
.end method

.method private native getAudioDscp(J)I
.end method

.method private native getAudioMulticastAddr(J)Ljava/lang/String;
.end method

.method private native getAudioMulticastTtl(J)I
.end method

.method private native getAuthInfosList(J)[J
.end method

.method private native getCall(JI)Ljava/lang/Object;
.end method

.method private native getCallLog(JI)J
.end method

.method private native getCallLogs(J)[J
.end method

.method private getCallParamsPtr(Lorg/linphone/core/LinphoneCallParams;)J
    .locals 2

    .line 827
    check-cast p1, Lorg/linphone/core/LinphoneCallParamsImpl;

    iget-wide v0, p1, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    return-wide v0
.end method

.method private getCallPtr(Lorg/linphone/core/LinphoneCall;)J
    .locals 2

    .line 823
    check-cast p1, Lorg/linphone/core/LinphoneCallImpl;

    iget-wide v0, p1, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    return-wide v0
.end method

.method private native getCallsNb(J)I
.end method

.method private native getChatRoom(JJ)Ljava/lang/Object;
.end method

.method private native getChatRooms(J)[Ljava/lang/Object;
.end method

.method private native getConference(J)Lorg/linphone/core/LinphoneConference;
.end method

.method private native getConferenceSize(J)I
.end method

.method private native getConfig(J)J
.end method

.method private native getCurrentCall(J)Ljava/lang/Object;
.end method

.method private native getDefaultProxyConfig(J)Lorg/linphone/core/LinphoneProxyConfig;
.end method

.method private native getDownloadBandwidth(J)I
.end method

.method private native getFileTransferServer(J)Ljava/lang/String;
.end method

.method private native getFirewallPolicy(J)I
.end method

.method private native getFriendByAddress(JLjava/lang/String;)Lorg/linphone/core/LinphoneFriend;
.end method

.method private native getFriendList(J)[Lorg/linphone/core/LinphoneFriend;
.end method

.method private native getFriendLists(J)[Lorg/linphone/core/LinphoneFriendList;
.end method

.method private native getGlobalState(J)I
.end method

.method private native getHttpProxyHost(J)Ljava/lang/String;
.end method

.method private native getHttpProxyPort(J)I
.end method

.method private native getInCallTimeout(J)I
.end method

.method private native getIncomingTimeout(J)I
.end method

.method private native getLastOutgoingCallLog(J)J
.end method

.method private native getLimeEncryption(J)I
.end method

.method private native getMSFactory(J)Ljava/lang/Object;
.end method

.method private native getMaxCalls(J)I
.end method

.method private native getMediaEncryption(J)I
.end method

.method private native getMissedCallsCount(J)I
.end method

.method private native getMtu(J)I
.end method

.method private native getNatPolicy(J)Ljava/lang/Object;
.end method

.method private native getNortpTimeout(J)I
.end method

.method private native getNumberOfCallLogs(J)I
.end method

.method private native getOrCreateChatRoom(JLjava/lang/String;)Ljava/lang/Object;
.end method

.method private native getPayloadTypeBitrate(JJ)I
.end method

.method private native getPayloadTypeNumber(JJ)I
.end method

.method private native getPlaybackGain(J)F
.end method

.method private native getPreferredFramerate(J)F
.end method

.method private native getPreferredVideoSize(J)[I
.end method

.method private native getPresenceInfo(J)I
.end method

.method private native getPresenceModel(J)Ljava/lang/Object;
.end method

.method private native getPrimaryContact(J)Ljava/lang/String;
.end method

.method private native getPrimaryContactDisplayName(J)Ljava/lang/String;
.end method

.method private native getPrimaryContactUsername(J)Ljava/lang/String;
.end method

.method private native getProvisioningUri(J)Ljava/lang/String;
.end method

.method private native getProxyConfigList(J)[Lorg/linphone/core/LinphoneProxyConfig;
.end method

.method private native getRemoteAddress(J)J
.end method

.method private native getRemoteRingbackTone(J)Ljava/lang/String;
.end method

.method private native getRing(J)Ljava/lang/String;
.end method

.method private native getSignalingTransportPort(JI)I
.end method

.method private native getSipDscp(J)I
.end method

.method private native getSipTransportTimeout(J)I
.end method

.method private native getStunServer(J)Ljava/lang/String;
.end method

.method private native getTlsCertificate(J)Ljava/lang/String;
.end method

.method private native getTlsCertificatePath(J)Ljava/lang/String;
.end method

.method private native getTlsKey(J)Ljava/lang/String;
.end method

.method private native getTlsKeyPath(J)Ljava/lang/String;
.end method

.method private native getUploadBandwidth(J)I
.end method

.method private native getUpnpExternalIpaddress(J)Ljava/lang/String;
.end method

.method private native getUpnpState(J)I
.end method

.method private native getUseRfc2833ForDtmfs(J)Z
.end method

.method private native getUseSipInfoForDtmfs(J)Z
.end method

.method private native getVersion(J)Ljava/lang/String;
.end method

.method private native getVideoAutoAcceptPolicy(J)Z
.end method

.method private native getVideoAutoInitiatePolicy(J)Z
.end method

.method private native getVideoDevice(J)I
.end method

.method private native getVideoDscp(J)I
.end method

.method private native getVideoMulticastAddr(J)Ljava/lang/String;
.end method

.method private native getVideoMulticastTtl(J)I
.end method

.method private native getVideoPreset(J)Ljava/lang/String;
.end method

.method private native hasBuiltInEchoCanceler(J)Z
.end method

.method private native hasCrappyOpenGL(J)Z
.end method

.method private native interpretUrl(JLjava/lang/String;)J
.end method

.method private native invite(JLjava/lang/String;)Ljava/lang/Object;
.end method

.method private native inviteAddress(JJ)Ljava/lang/Object;
.end method

.method private native inviteAddressWithParams(JJJ)Ljava/lang/Object;
.end method

.method private native isAdaptiveRateControlEnabled(J)Z
.end method

.method private native isEchoCancellationEnabled(J)Z
.end method

.method private native isEchoLimiterEnabled(J)Z
.end method

.method private native isInCall(J)Z
.end method

.method private native isInComingInvitePending(J)Z
.end method

.method private native isInConference(J)Z
.end method

.method private native isIpv6Enabled(J)Z
.end method

.method private native isKeepAliveEnabled(J)Z
.end method

.method private native isLimeEncryptionAvailable(J)Z
.end method

.method private native isMediaEncryptionMandatory(J)Z
.end method

.method private native isMicMuted(J)Z
.end method

.method private native isNetworkStateReachable(J)Z
.end method

.method private native isPayloadTypeEnabled(JJ)Z
.end method

.method private native isSdp200AckEnabled(J)Z
.end method

.method private native isVCardSupported(J)Z
.end method

.method private isValid()V
    .locals 5

    .line 337
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "object already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native isVideoEnabled(J)Z
.end method

.method private native isVideoSupported(J)Z
.end method

.method private native iterate(J)V
.end method

.method private native leaveConference(J)V
.end method

.method private native listAudioPayloadTypes(J)[J
.end method

.method private native listSupportedVideoResolutions(J)[Ljava/lang/String;
.end method

.method private native listVideoPayloadTypes(J)[J
.end method

.method private native mediaEncryptionSupported(JI)Z
.end method

.method private native migrateCallLogs(J)V
.end method

.method private native migrateToMultiTransport(J)I
.end method

.method private native muteMic(JZ)V
.end method

.method private native needsEchoCalibration(J)Z
.end method

.method private native newLinphoneCore(Lorg/linphone/core/LinphoneCoreListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)J
.end method

.method private native pauseAllCalls(J)I
.end method

.method private native pauseCall(JJ)I
.end method

.method private native payloadTypeIsVbr(JJ)Z
.end method

.method private native playDtmf(JCI)V
.end method

.method private native publish(JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/Object;
.end method

.method private native refreshRegisters(J)V
.end method

.method private native reloadMsPlugins(JLjava/lang/String;)V
.end method

.method private native reloadSoundDevices(J)V
.end method

.method private native removeAuthInfo(JJ)V
.end method

.method private native removeCallLog(JJ)V
.end method

.method private native removeFriend(JJ)V
.end method

.method private native removeFriendList(JJ)V
.end method

.method private native removeFromConference(JJ)V
.end method

.method private native removeListener(JLorg/linphone/core/LinphoneCoreListener;)V
.end method

.method private native removeProxyConfig(JJ)V
.end method

.method private native resetMissedCallsCount(J)V
.end method

.method private native resumeCall(JJ)I
.end method

.method private native sendDtmf(JC)V
.end method

.method private native sendDtmfs(JLjava/lang/String;)I
.end method

.method private native setAdaptiveRateAlgorithm(JLjava/lang/String;)V
.end method

.method private native setAndroidMulticastLock(JLjava/lang/Object;)V
.end method

.method private static native setAndroidPowerManager(Ljava/lang/Object;)V
.end method

.method private native setAndroidWifiLock(JLjava/lang/Object;)V
.end method

.method private native setAudioCodecs(J[J)V
.end method

.method private native setAudioDscp(JI)V
.end method

.method private native setAudioJittcomp(JI)V
.end method

.method private setAudioModeIncallForGalaxyS()V
    .locals 2

    .line 443
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->contextInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    return-void
.end method

.method private native setAudioMulticastAddr(JLjava/lang/String;)I
.end method

.method private native setAudioMulticastTtl(JI)I
.end method

.method private native setAudioPort(JI)V
.end method

.method private native setAudioPortRange(JII)V
.end method

.method private native setCallErrorTone(JILjava/lang/String;)V
.end method

.method private native setCallLogsDatabasePath(JLjava/lang/String;)V
.end method

.method private native setChatDatabasePath(JLjava/lang/String;)V
.end method

.method private native setCpuCountNative(JI)V
.end method

.method private native setDefaultProxyConfig(JJ)V
.end method

.method private native setDefaultSoundDevices(J)V
.end method

.method private native setDeviceRotation(JI)V
.end method

.method private native setDnsServers(J[Ljava/lang/String;)V
.end method

.method private native setDownloadBandwidth(JI)V
.end method

.method private native setDownloadPtime(JI)V
.end method

.method private native setFileTransferServer(JLjava/lang/String;)V
.end method

.method private native setFirewallPolicy(JI)V
.end method

.method private native setFriendsDatabasePath(JLjava/lang/String;)V
.end method

.method private native setHttpProxyHost(JLjava/lang/String;)V
.end method

.method private native setHttpProxyPort(JI)V
.end method

.method private native setInCallTimeout(JI)V
.end method

.method private native setIncomingTimeout(JI)V
.end method

.method private native setLimeEncryption(JI)V
.end method

.method private native setMaxCalls(JI)V
.end method

.method private native setMediaEncryption(JI)V
.end method

.method private native setMediaEncryptionMandatory(JZ)V
.end method

.method private native setMediaNetworkReachable(JZ)V
.end method

.method private native setMicrophoneGain(JF)V
.end method

.method private native setMtu(JI)V
.end method

.method private native setNatPolicy(JJ)V
.end method

.method private native setNetworkStateReachable(JZ)V
.end method

.method private native setNortpTimeout(JI)V
.end method

.method private native setPayloadTypeBitrate(JJI)V
.end method

.method private native setPayloadTypeNumber(JJI)V
.end method

.method private native setPlayFile(JLjava/lang/String;)V
.end method

.method private native setPlaybackGain(JF)V
.end method

.method private native setPreferredFramerate(JF)V
.end method

.method private native setPreferredVideoSize(JII)V
.end method

.method private native setPreferredVideoSizeByName(JLjava/lang/String;)V
.end method

.method private native setPresenceInfo(JILjava/lang/String;I)V
.end method

.method private native setPresenceModel(JJ)V
.end method

.method private native setPreviewWindowId(JLjava/lang/Object;)V
.end method

.method private native setPrimaryContact(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native setPrimaryContact2(JLjava/lang/String;)V
.end method

.method private native setProvisioningUri(JLjava/lang/String;)V
.end method

.method private native setRemoteRingbackTone(JLjava/lang/String;)V
.end method

.method private native setRing(JLjava/lang/String;)V
.end method

.method private native setRingback(JLjava/lang/String;)V
.end method

.method private native setRootCA(JLjava/lang/String;)V
.end method

.method private native setRootCAData(JLjava/lang/String;)V
.end method

.method private native setSignalingTransportPorts(JIII)V
.end method

.method private native setSipDscp(JI)V
.end method

.method private native setSipNetworkReachable(JZ)V
.end method

.method private native setSipTransportTimeout(JI)V
.end method

.method private native setStaticPicture(JLjava/lang/String;)V
.end method

.method private native setStunServer(JLjava/lang/String;)V
.end method

.method private native setTlsCertificate(JLjava/lang/String;)V
.end method

.method private native setTlsCertificatePath(JLjava/lang/String;)V
.end method

.method private native setTlsKey(JLjava/lang/String;)V
.end method

.method private native setTlsKeyPath(JLjava/lang/String;)V
.end method

.method private native setTone(JILjava/lang/String;)V
.end method

.method private native setUploadBandwidth(JI)V
.end method

.method private native setUploadPtime(JI)V
.end method

.method private native setUseRfc2833ForDtmfs(JZ)V
.end method

.method private native setUseSipInfoForDtmfs(JZ)V
.end method

.method private native setUserAgent(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native setUserCertificatesPath(JLjava/lang/String;)V
.end method

.method private native setVerifyServerCN(JZ)V
.end method

.method private native setVerifyServerCertificates(JZ)V
.end method

.method private native setVideoCodecs(J[J)V
.end method

.method private native setVideoDevice(JI)I
.end method

.method private native setVideoDscp(JI)V
.end method

.method private native setVideoJittcomp(JI)V
.end method

.method private native setVideoMulticastAddr(JLjava/lang/String;)I
.end method

.method private native setVideoMulticastTtl(JI)I
.end method

.method private native setVideoPolicy(JZZ)V
.end method

.method private native setVideoPort(JI)V
.end method

.method private native setVideoPortRange(JII)V
.end method

.method private native setVideoPreset(JLjava/lang/String;)V
.end method

.method private native setVideoWindowId(JLjava/lang/Object;)V
.end method

.method private native setZrtpSecretsCache(JLjava/lang/String;)V
.end method

.method private native soundResourcesLocked(J)Z
.end method

.method private native startConferenceRecording(JLjava/lang/String;)I
.end method

.method private native startEchoCalibration(JLjava/lang/Object;)I
.end method

.method private native startEchoTester(JI)I
.end method

.method private native startReferedCall(JJJ)Lorg/linphone/core/LinphoneCall;
.end method

.method private native stopConferenceRecording(J)I
.end method

.method private native stopDtmf(J)V
.end method

.method private native stopEchoTester(J)I
.end method

.method private native stopRinging(J)V
.end method

.method private native subscribe(JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/Object;
.end method

.method private native terminateAllCalls(J)V
.end method

.method private native terminateCall(JJ)V
.end method

.method private native terminateConference(J)V
.end method

.method private native transferCall(JJLjava/lang/String;)I
.end method

.method private native transferCallToAnother(JJJ)I
.end method

.method private native tunnelAddServer(JJ)V
.end method

.method private native tunnelAddServerAndMirror(JLjava/lang/String;III)V
.end method

.method private native tunnelAutoDetect(J)V
.end method

.method private native tunnelCleanServers(J)V
.end method

.method private native tunnelDualModeEnabled(J)Z
.end method

.method private native tunnelEnable(JZ)V
.end method

.method private native tunnelEnableDualMode(JZ)V
.end method

.method private native tunnelEnableSip(JZ)V
.end method

.method private native tunnelGetMode(J)I
.end method

.method private final native tunnelGetServers(J)[Lorg/linphone/core/TunnelConfig;
.end method

.method private native tunnelSetHttpProxy(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native tunnelSetMode(JI)V
.end method

.method private native tunnelSipEnabled(J)Z
.end method

.method private native updateCall(JJJ)I
.end method

.method private native uploadLogCollection(J)V
.end method

.method private native upnpAvailable(J)Z
.end method

.method private native videoMulticastEnabled(J)Z
.end method


# virtual methods
.method public declared-synchronized acceptCall(Lorg/linphone/core/LinphoneCall;)V
    .locals 4

    monitor-enter p0

    .line 312
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 313
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneCallImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->acceptCall(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized acceptCallUpdate(Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCallParams;)V
    .locals 7

    monitor-enter p0

    .line 986
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v3

    invoke-direct {p0, p2}, Lorg/linphone/core/LinphoneCoreImpl;->getCallParamsPtr(Lorg/linphone/core/LinphoneCallParams;)J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/linphone/core/LinphoneCoreImpl;->acceptCallUpdate(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized acceptCallWithParams(Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCallParams;)V
    .locals 7

    monitor-enter p0

    .line 979
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v3

    invoke-direct {p0, p2}, Lorg/linphone/core/LinphoneCoreImpl;->getCallParamsPtr(Lorg/linphone/core/LinphoneCallParams;)J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/linphone/core/LinphoneCoreImpl;->acceptCallWithParams(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized acceptEarlyMedia(Lorg/linphone/core/LinphoneCall;)Z
    .locals 4

    monitor-enter p0

    .line 1357
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->acceptEarlyMedia(JJ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized acceptEarlyMediaWithParams(Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCallParams;)Z
    .locals 9

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 1364
    :try_start_0
    check-cast p2, Lorg/linphone/core/LinphoneCallParamsImpl;

    iget-wide v0, p2, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v7, v0

    .line 1365
    iget-wide v3, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v5

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/linphone/core/LinphoneCoreImpl;->acceptEarlyMediaWithParams(JJJ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addAllToConference()V
    .locals 2

    monitor-enter p0

    .line 809
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->addAllToConference(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addAuthInfo(Lorg/linphone/core/LinphoneAuthInfo;)V
    .locals 4

    monitor-enter p0

    .line 236
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 237
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAuthInfoImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->addAuthInfo(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFriend(Lorg/linphone/core/LinphoneFriend;)V
    .locals 4

    monitor-enter p0

    .line 476
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneFriendImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->addFriend(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFriendList(Lorg/linphone/core/LinphoneFriendList;)V
    .locals 4

    monitor-enter p0

    .line 486
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneFriendListImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->addFriendList(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addListener(Lorg/linphone/core/LinphoneCoreListener;)V
    .locals 2

    monitor-enter p0

    .line 1503
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->addListener(JLorg/linphone/core/LinphoneCoreListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1504
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addProxyConfig(Lorg/linphone/core/LinphoneProxyConfig;)V
    .locals 6

    monitor-enter p0

    .line 270
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 271
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    move-object v0, p1

    check-cast v0, Lorg/linphone/core/LinphoneProxyConfigImpl;

    iget-wide v4, v0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/linphone/core/LinphoneCoreImpl;->addProxyConfig(Lorg/linphone/core/LinphoneProxyConfig;JJ)I

    move-result v0

    if-nez v0, :cond_0

    .line 274
    check-cast p1, Lorg/linphone/core/LinphoneProxyConfigImpl;

    iput-object p0, p1, Lorg/linphone/core/LinphoneProxyConfigImpl;->mCore:Lorg/linphone/core/LinphoneCoreImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit p0

    return-void

    .line 272
    :cond_0
    :try_start_1
    new-instance p1, Lorg/linphone/core/LinphoneCoreException;

    const-string v0, "bad proxy config"

    invoke-direct {p1, v0}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addToConference(Lorg/linphone/core/LinphoneCall;)V
    .locals 4

    monitor-enter p0

    .line 814
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->addToConference(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized adjustSoftwareVolume(I)V
    .locals 0

    monitor-enter p0

    .line 723
    monitor-exit p0

    return-void
.end method

.method public audioMulticastEnabled()Z
    .locals 2

    .line 1596
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->audioMulticastEnabled(J)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized chatEnabled()Z
    .locals 2

    monitor-enter p0

    .line 1420
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->chatEnabled(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearAuthInfos()V
    .locals 2

    monitor-enter p0

    .line 283
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 284
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->clearAuthInfos(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearCallLogs()V
    .locals 2

    monitor-enter p0

    .line 380
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->clearCallLogs(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearProxyConfigs()V
    .locals 2

    monitor-enter p0

    .line 287
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 288
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->clearProxyConfigs(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createCallParams(Lorg/linphone/core/LinphoneCall;)Lorg/linphone/core/LinphoneCallParams;
    .locals 4

    if-eqz p1, :cond_0

    .line 1636
    check-cast p1, Lorg/linphone/core/LinphoneCallImpl;

    iget-wide v0, p1, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 1637
    :goto_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->createCallParams(JJ)J

    move-result-wide v0

    .line 1638
    new-instance p1, Lorg/linphone/core/LinphoneCallParamsImpl;

    invoke-direct {p1, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;-><init>(J)V

    return-object p1
.end method

.method public declared-synchronized createConference(Lorg/linphone/core/LinphoneConferenceParams;)Lorg/linphone/core/LinphoneConference;
    .locals 2

    monitor-enter p0

    .line 784
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->createConference(JLorg/linphone/core/LinphoneConferenceParams;)Lorg/linphone/core/LinphoneConference;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public createFriend()Lorg/linphone/core/LinphoneFriend;
    .locals 2

    .line 1825
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->createFriend(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneFriend;

    return-object v0
.end method

.method public createFriendWithAddress(Ljava/lang/String;)Lorg/linphone/core/LinphoneFriend;
    .locals 2

    .line 1829
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->createFriendWithAddress(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/linphone/core/LinphoneFriend;

    return-object p1
.end method

.method public declared-synchronized createInfoMessage()Lorg/linphone/core/LinphoneInfoMessage;
    .locals 3

    monitor-enter p0

    .line 1253
    :try_start_0
    new-instance v0, Lorg/linphone/core/LinphoneInfoMessageImpl;

    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v1, v2}, Lorg/linphone/core/LinphoneCoreImpl;->createInfoMessage(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneInfoMessageImpl;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createLinphoneFriendList()Lorg/linphone/core/LinphoneFriendList;
    .locals 1

    monitor-enter p0

    .line 481
    :try_start_0
    new-instance v0, Lorg/linphone/core/LinphoneFriendListImpl;

    invoke-direct {v0, p0}, Lorg/linphone/core/LinphoneFriendListImpl;-><init>(Lorg/linphone/core/LinphoneCoreImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createLocalPlayer(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;)Lorg/linphone/core/LinphonePlayer;
    .locals 4

    monitor-enter p0

    .line 1492
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->createLocalPlayer(JLorg/linphone/mediastream/video/AndroidVideoWindowImpl;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 1494
    new-instance p1, Lorg/linphone/core/LinphonePlayerImpl;

    invoke-direct {p1, v0, v1}, Lorg/linphone/core/LinphonePlayerImpl;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 1496
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createNatPolicy()Lorg/linphone/core/LinphoneNatPolicy;
    .locals 2

    monitor-enter p0

    .line 552
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->createNatPolicy(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneNatPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;
    .locals 1

    monitor-enter p0

    .line 1369
    :try_start_0
    new-instance v0, Lorg/linphone/core/LinphoneProxyConfigImpl;

    invoke-direct {v0, p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;-><init>(Lorg/linphone/core/LinphoneCoreImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createProxyConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/linphone/core/LinphoneProxyConfig;
    .locals 7

    monitor-enter p0

    .line 1373
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1375
    :try_start_1
    new-instance v6, Lorg/linphone/core/LinphoneProxyConfigImpl;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/linphone/core/LinphoneProxyConfigImpl;-><init>(Lorg/linphone/core/LinphoneCoreImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/linphone/core/LinphoneCoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v6

    :catch_0
    const/4 p1, 0x0

    .line 1377
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createPublish(Lorg/linphone/core/LinphoneAddress;Ljava/lang/String;I)Lorg/linphone/core/LinphoneEvent;
    .locals 7

    monitor-enter p0

    .line 1283
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v3, p1, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/linphone/core/LinphoneCoreImpl;->createPublish(JJLjava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/linphone/core/LinphoneEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createSubscribe(Lorg/linphone/core/LinphoneAddress;Ljava/lang/String;I)Lorg/linphone/core/LinphoneEvent;
    .locals 7

    monitor-enter p0

    .line 1277
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v3, p1, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/linphone/core/LinphoneCoreImpl;->createSubscribe(JJLjava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/linphone/core/LinphoneEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized declineCall(Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/Reason;)V
    .locals 6

    monitor-enter p0

    .line 1182
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneCallImpl;

    iget-wide v3, p1, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    iget v5, p2, Lorg/linphone/core/Reason;->mValue:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/linphone/core/LinphoneCoreImpl;->declineCall(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1183
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deferCallUpdate(Lorg/linphone/core/LinphoneCall;)V
    .locals 4

    monitor-enter p0

    .line 993
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->deferCallUpdate(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    .line 331
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->delete(J)V

    const/4 v0, 0x0

    .line 332
    invoke-static {v0}, Lorg/linphone/core/LinphoneCoreImpl;->setAndroidPowerManager(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 333
    iput-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disableChat(Lorg/linphone/core/Reason;)V
    .locals 2

    monitor-enter p0

    .line 1410
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    iget p1, p1, Lorg/linphone/core/Reason;->mValue:I

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->disableChat(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dnsSrvEnabled()Z
    .locals 2

    .line 1618
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->dnsSrvEnabled(J)Z

    move-result v0

    return v0
.end method

.method public downloadOpenH264Enabled()Z
    .locals 1

    .line 1821
    iget-boolean v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->openh264DownloadEnabled:Z

    return v0
.end method

.method public declared-synchronized enableAdaptiveRateControl(Z)V
    .locals 2

    monitor-enter p0

    .line 1451
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->enableAdaptiveRateControl(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1453
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public enableAudioMulticast(Z)V
    .locals 2

    .line 1591
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->enableAudioMulticast(JZ)V

    return-void
.end method

.method public declared-synchronized enableChat()V
    .locals 2

    monitor-enter p0

    .line 1415
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->enableChat(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableDnsSrv(Z)V
    .locals 2

    .line 1613
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->enableDnsSrv(JZ)V

    return-void
.end method

.method public enableDownloadOpenH264(Z)V
    .locals 0

    .line 1817
    iput-boolean p1, p0, Lorg/linphone/core/LinphoneCoreImpl;->openh264DownloadEnabled:Z

    return-void
.end method

.method public declared-synchronized enableEchoCancellation(Z)V
    .locals 2

    monitor-enter p0

    .line 413
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 414
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->enableEchoCancellation(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableEchoLimiter(Z)V
    .locals 2

    monitor-enter p0

    .line 746
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->enableEchoLimiter(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableIpv6(Z)V
    .locals 2

    monitor-enter p0

    .line 716
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->enableIpv6(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableKeepAlive(Z)V
    .locals 2

    monitor-enter p0

    .line 684
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->enableKeepAlive(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enablePayloadType(Lorg/linphone/core/PayloadType;Z)V
    .locals 6

    monitor-enter p0

    .line 396
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 397
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    move-object v0, p1

    check-cast v0, Lorg/linphone/core/PayloadTypeImpl;

    iget-wide v3, v0, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/linphone/core/LinphoneCoreImpl;->enablePayloadType(JJZ)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 401
    monitor-exit p0

    return-void

    .line 398
    :cond_0
    :try_start_1
    new-instance p2, Lorg/linphone/core/LinphoneCoreException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot enable payload type ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableSdp200Ack(Z)V
    .locals 2

    monitor-enter p0

    .line 1396
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->enableSdp200Ack(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1397
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public enableSpeaker(Z)V
    .locals 3

    .line 454
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneCoreImpl;->getCurrentCall()Lorg/linphone/core/LinphoneCall;

    move-result-object v0

    .line 455
    iput-boolean p1, p0, Lorg/linphone/core/LinphoneCoreImpl;->mSpeakerEnabled:Z

    .line 456
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->applyAudioHacks()V

    if-eqz v0, :cond_0

    .line 457
    invoke-interface {v0}, Lorg/linphone/core/LinphoneCall;->getState()Lorg/linphone/core/LinphoneCall$State;

    move-result-object v0

    sget-object v1, Lorg/linphone/core/LinphoneCall$State;->StreamsRunning:Lorg/linphone/core/LinphoneCall$State;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->needGalaxySAudioHack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Hack to have speaker="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 458
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " while on call"

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->d([Ljava/lang/Object;)V

    .line 459
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->forceSpeakerState(JZ)V

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->routeAudioToSpeakerHelper(Z)V

    :goto_0
    return-void
.end method

.method public declared-synchronized enableVideo(ZZ)V
    .locals 2

    monitor-enter p0

    .line 534
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneCoreImpl;->enableVideo(JZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public enableVideoMulticast(Z)V
    .locals 2

    .line 1602
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->enableVideoMulticast(JZ)V

    return-void
.end method

.method public declared-synchronized enterConference()Z
    .locals 2

    monitor-enter p0

    .line 766
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->enterConference(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 5

    .line 213
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/linphone/core/LinphoneCoreImpl;->destroy()V

    :cond_0
    return-void
.end method

.method public declared-synchronized findAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/LinphoneAuthInfo;
    .locals 6

    monitor-enter p0

    .line 1324
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/linphone/core/LinphoneCoreImpl;->findAuthInfos(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 1326
    monitor-exit p0

    return-object p1

    .line 1328
    :cond_0
    :try_start_1
    new-instance p3, Lorg/linphone/core/LinphoneAuthInfoImpl;

    invoke-direct {p3, p1, p2}, Lorg/linphone/core/LinphoneAuthInfoImpl;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findCallFromUri(Ljava/lang/String;)Lorg/linphone/core/LinphoneCall;
    .locals 2

    monitor-enter p0

    .line 843
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->findCallFromUri(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/linphone/core/LinphoneCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findFriendByAddress(Ljava/lang/String;)Lorg/linphone/core/LinphoneFriend;
    .locals 2

    monitor-enter p0

    .line 1077
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getFriendByAddress(JLjava/lang/String;)Lorg/linphone/core/LinphoneFriend;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findPayloadType(Ljava/lang/String;)Lorg/linphone/core/PayloadType;
    .locals 1

    monitor-enter p0

    .line 1212
    :try_start_0
    sget v0, Lorg/linphone/core/LinphoneCoreImpl;->FIND_PAYLOAD_IGNORE_RATE:I

    invoke-virtual {p0, p1, v0}, Lorg/linphone/core/LinphoneCoreImpl;->findPayloadType(Ljava/lang/String;I)Lorg/linphone/core/PayloadType;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findPayloadType(Ljava/lang/String;I)Lorg/linphone/core/PayloadType;
    .locals 1

    monitor-enter p0

    .line 1065
    :try_start_0
    sget v0, Lorg/linphone/core/LinphoneCoreImpl;->FIND_PAYLOAD_IGNORE_CHANNELS:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/linphone/core/LinphoneCoreImpl;->findPayloadType(Ljava/lang/String;II)Lorg/linphone/core/PayloadType;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findPayloadType(Ljava/lang/String;II)Lorg/linphone/core/PayloadType;
    .locals 6

    monitor-enter p0

    .line 386
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 387
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/linphone/core/LinphoneCoreImpl;->findPayloadType(JLjava/lang/String;II)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 389
    monitor-exit p0

    return-object p1

    .line 391
    :cond_0
    :try_start_1
    new-instance p3, Lorg/linphone/core/PayloadTypeImpl;

    invoke-direct {p3, p1, p2}, Lorg/linphone/core/PayloadTypeImpl;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAdaptiveRateAlgorithm()Lorg/linphone/core/LinphoneCore$AdaptiveRateAlgorithm;
    .locals 2

    monitor-enter p0

    .line 1459
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getAdaptiveRateAlgorithm(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$AdaptiveRateAlgorithm;->fromString(Ljava/lang/String;)Lorg/linphone/core/LinphoneCore$AdaptiveRateAlgorithm;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAudioCodecs()[Lorg/linphone/core/PayloadType;
    .locals 6

    monitor-enter p0

    .line 661
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->listAudioPayloadTypes(J)[J

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 662
    monitor-exit p0

    return-object v0

    .line 664
    :cond_0
    :try_start_1
    array-length v1, v0

    new-array v1, v1, [Lorg/linphone/core/PayloadType;

    const/4 v2, 0x0

    .line 666
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 667
    new-instance v3, Lorg/linphone/core/PayloadTypeImpl;

    aget-wide v4, v0, v2

    invoke-direct {v3, v4, v5}, Lorg/linphone/core/PayloadTypeImpl;-><init>(J)V

    aput-object v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 670
    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAudioDscp()I
    .locals 2

    monitor-enter p0

    .line 1235
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getAudioDscp(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAudioMulticastAddr()Ljava/lang/String;
    .locals 2

    .line 1558
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getAudioMulticastAddr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioMulticastTtl()I
    .locals 2

    .line 1581
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getAudioMulticastTtl(J)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getAuthInfosList()[Lorg/linphone/core/LinphoneAuthInfo;
    .locals 6

    monitor-enter p0

    .line 1311
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getAuthInfosList(J)[J

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1312
    monitor-exit p0

    return-object v0

    .line 1314
    :cond_0
    :try_start_1
    array-length v1, v0

    new-array v1, v1, [Lorg/linphone/core/LinphoneAuthInfo;

    const/4 v2, 0x0

    .line 1316
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 1317
    new-instance v3, Lorg/linphone/core/LinphoneAuthInfoImpl;

    aget-wide v4, v0, v2

    invoke-direct {v3, v4, v5}, Lorg/linphone/core/LinphoneAuthInfoImpl;-><init>(J)V

    aput-object v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1320
    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCallLogs()[Lorg/linphone/core/LinphoneCallLog;
    .locals 6

    monitor-enter p0

    .line 316
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallLogs(J)[J

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 317
    monitor-exit p0

    return-object v0

    .line 318
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 319
    array-length v1, v0

    new-array v1, v1, [Lorg/linphone/core/LinphoneCallLog;

    const/4 v2, 0x0

    .line 320
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 321
    new-instance v3, Lorg/linphone/core/LinphoneCallLogImpl;

    aget-wide v4, v0, v2

    invoke-direct {v3, v4, v5}, Lorg/linphone/core/LinphoneCallLogImpl;-><init>(J)V

    aput-object v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCalls()[Lorg/linphone/core/LinphoneCall;
    .locals 5

    monitor-enter p0

    .line 800
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallsNb(J)I

    move-result v0

    .line 801
    new-array v1, v0, [Lorg/linphone/core/LinphoneCall;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 803
    iget-wide v3, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v3, v4, v2}, Lorg/linphone/core/LinphoneCoreImpl;->getCall(JI)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/linphone/core/LinphoneCall;

    aput-object v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 805
    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCallsNb()I
    .locals 2

    monitor-enter p0

    .line 792
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallsNb(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChatRoom(Lorg/linphone/core/LinphoneAddress;)Lorg/linphone/core/LinphoneChatRoom;
    .locals 4

    monitor-enter p0

    .line 521
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->getChatRoom(JJ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/linphone/core/LinphoneChatRoom;

    check-cast p1, Lorg/linphone/core/LinphoneChatRoom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getChatRooms()[Lorg/linphone/core/LinphoneChatRoom;
    .locals 4

    monitor-enter p0

    .line 1299
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getChatRooms(J)[Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1300
    monitor-exit p0

    return-object v0

    .line 1302
    :cond_0
    :try_start_1
    array-length v1, v0

    new-array v1, v1, [Lorg/linphone/core/LinphoneChatRoom;

    const/4 v2, 0x0

    .line 1304
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 1305
    aget-object v3, v0, v2

    check-cast v3, Lorg/linphone/core/LinphoneChatRoom;

    check-cast v3, Lorg/linphone/core/LinphoneChatRoom;

    aput-object v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1308
    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConference()Lorg/linphone/core/LinphoneConference;
    .locals 2

    monitor-enter p0

    .line 788
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getConference(J)Lorg/linphone/core/LinphoneConference;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConferenceSize()I
    .locals 2

    monitor-enter p0

    .line 780
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getConferenceSize(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConfig()Lorg/linphone/core/LpConfig;
    .locals 3

    monitor-enter p0

    .line 1161
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getConfig(J)J

    move-result-wide v0

    .line 1162
    new-instance v2, Lorg/linphone/core/LpConfigImpl;

    invoke-direct {v2, v0, v1}, Lorg/linphone/core/LpConfigImpl;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized getCurrentCall()Lorg/linphone/core/LinphoneCall;
    .locals 2

    monitor-enter p0

    .line 423
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 424
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getCurrentCall(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;
    .locals 2

    monitor-enter p0

    .line 246
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 247
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getDefaultProxyConfig(J)Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadBandwidth()I
    .locals 2

    monitor-enter p0

    .line 595
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getDownloadBandwidth(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFileTransferServer()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1486
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getFileTransferServer(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFirewallPolicy()Lorg/linphone/core/LinphoneCore$FirewallPolicy;
    .locals 2

    monitor-enter p0

    .line 546
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getFirewallPolicy(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$FirewallPolicy;->fromInt(I)Lorg/linphone/core/LinphoneCore$FirewallPolicy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFriendList()[Lorg/linphone/core/LinphoneFriend;
    .locals 2

    monitor-enter p0

    .line 494
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getFriendList(J)[Lorg/linphone/core/LinphoneFriend;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFriendLists()[Lorg/linphone/core/LinphoneFriendList;
    .locals 2

    monitor-enter p0

    .line 499
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getFriendLists(J)[Lorg/linphone/core/LinphoneFriendList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGlobalState()Lorg/linphone/core/LinphoneCore$GlobalState;
    .locals 2

    .line 1653
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getGlobalState(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$GlobalState;->fromInt(I)Lorg/linphone/core/LinphoneCore$GlobalState;

    move-result-object v0

    return-object v0
.end method

.method public getHttpProxyHost()Ljava/lang/String;
    .locals 2

    .line 1670
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getHttpProxyHost(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpProxyPort()I
    .locals 2

    .line 1676
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getHttpProxyPort(J)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getInCallTimeout()I
    .locals 2

    monitor-enter p0

    .line 1111
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getInCallTimeout(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIncomingTimeout()I
    .locals 2

    monitor-enter p0

    .line 1101
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getIncomingTimeout(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastOutgoingCallLog()Lorg/linphone/core/LinphoneCallLog;
    .locals 3

    monitor-enter p0

    .line 326
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 327
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getLastOutgoingCallLog(J)J

    move-result-wide v0

    .line 328
    new-instance v2, Lorg/linphone/core/LinphoneCallLogImpl;

    invoke-direct {v2, v0, v1}, Lorg/linphone/core/LinphoneCallLogImpl;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLimeEncryption()Lorg/linphone/core/LinphoneCore$LinphoneLimeState;
    .locals 2

    monitor-enter p0

    .line 1753
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getLimeEncryption(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$LinphoneLimeState;->fromInt(I)Lorg/linphone/core/LinphoneCore$LinphoneLimeState;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMSFactory()Lorg/linphone/mediastream/Factory;
    .locals 2

    .line 1715
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getMSFactory(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/mediastream/Factory;

    return-object v0
.end method

.method public declared-synchronized getMaxCalls()I
    .locals 2

    monitor-enter p0

    .line 861
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getMaxCalls(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMediaEncryption()Lorg/linphone/core/LinphoneCore$MediaEncryption;
    .locals 2

    monitor-enter p0

    .line 847
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getMediaEncryption(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$MediaEncryption;->fromInt(I)Lorg/linphone/core/LinphoneCore$MediaEncryption;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMissedCallsCount()I
    .locals 2

    monitor-enter p0

    .line 1027
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getMissedCallsCount(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMtu()I
    .locals 2

    monitor-enter p0

    .line 1392
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getMtu(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNatPolicy()Lorg/linphone/core/LinphoneNatPolicy;
    .locals 2

    monitor-enter p0

    .line 558
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getNatPolicy(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneNatPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNortpTimeout()I
    .locals 2

    .line 1698
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getNortpTimeout(J)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getOrCreateChatRoom(Ljava/lang/String;)Lorg/linphone/core/LinphoneChatRoom;
    .locals 2

    monitor-enter p0

    .line 518
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getOrCreateChatRoom(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/linphone/core/LinphoneChatRoom;

    check-cast p1, Lorg/linphone/core/LinphoneChatRoom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPayloadTypeBitrate(Lorg/linphone/core/PayloadType;)I
    .locals 4

    monitor-enter p0

    .line 1435
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/PayloadTypeImpl;

    iget-wide v2, p1, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->getPayloadTypeBitrate(JJ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPayloadTypeNumber(Lorg/linphone/core/PayloadType;)I
    .locals 4

    monitor-enter p0

    .line 1446
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/PayloadTypeImpl;

    iget-wide v2, p1, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->getPayloadTypeNumber(JJ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPlayLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getPlaybackGain()F
    .locals 2

    monitor-enter p0

    .line 349
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getPlaybackGain(J)F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPreferredFramerate()F
    .locals 2

    .line 1539
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getPreferredFramerate(J)F

    move-result v0

    return v0
.end method

.method public declared-synchronized getPreferredVideoSize()Lorg/linphone/core/VideoSize;
    .locals 3

    monitor-enter p0

    .line 611
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getPreferredVideoSize(J)[I

    move-result-object v0

    .line 613
    new-instance v1, Lorg/linphone/core/VideoSize;

    invoke-direct {v1}, Lorg/linphone/core/VideoSize;-><init>()V

    const/4 v2, 0x0

    .line 614
    aget v2, v0, v2

    iput v2, v1, Lorg/linphone/core/VideoSize;->width:I

    const/4 v2, 0x1

    .line 615
    aget v0, v0, v2

    iput v0, v1, Lorg/linphone/core/VideoSize;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPresenceInfo()Lorg/linphone/core/OnlineStatus;
    .locals 2

    monitor-enter p0

    .line 509
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getPresenceInfo(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/OnlineStatus;->fromInt(I)Lorg/linphone/core/OnlineStatus;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPresenceModel()Lorg/linphone/core/PresenceModel;
    .locals 2

    monitor-enter p0

    .line 515
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getPresenceModel(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/PresenceModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrimaryContact()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1124
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getPrimaryContact(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrimaryContactDisplayName()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1136
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getPrimaryContactDisplayName(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrimaryContactUsername()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1132
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getPrimaryContactUsername(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProvisioningUri()Ljava/lang/String;
    .locals 2

    .line 1649
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getProvisioningUri(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getProxyConfigList()[Lorg/linphone/core/LinphoneProxyConfig;
    .locals 2

    monitor-enter p0

    .line 638
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getProxyConfigList(J)[Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteAddress()Lorg/linphone/core/LinphoneAddress;
    .locals 5

    monitor-enter p0

    .line 295
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 296
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getRemoteAddress(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    .line 298
    monitor-exit p0

    return-object v0

    .line 300
    :cond_0
    :try_start_1
    new-instance v2, Lorg/linphone/core/LinphoneAddressImpl;

    sget-object v3, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {v2, v0, v1, v3}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteRingbackTone()Ljava/lang/String;
    .locals 2

    .line 1519
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getRemoteRingbackTone(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getRing()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 622
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getRing(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSignalingTransportPorts()Lorg/linphone/core/LinphoneCore$Transports;
    .locals 4

    monitor-enter p0

    .line 703
    :try_start_0
    new-instance v0, Lorg/linphone/core/LinphoneCore$Transports;

    invoke-direct {v0}, Lorg/linphone/core/LinphoneCore$Transports;-><init>()V

    .line 704
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->getSignalingTransportPort(JI)I

    move-result v1

    iput v1, v0, Lorg/linphone/core/LinphoneCore$Transports;->udp:I

    .line 705
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->getSignalingTransportPort(JI)I

    move-result v1

    iput v1, v0, Lorg/linphone/core/LinphoneCore$Transports;->tcp:I

    .line 706
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    const/4 v3, 0x3

    invoke-direct {p0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->getSignalingTransportPort(JI)I

    move-result v1

    iput v1, v0, Lorg/linphone/core/LinphoneCore$Transports;->tls:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSipDscp()I
    .locals 2

    monitor-enter p0

    .line 1224
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getSipDscp(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSipTransportTimeout()I
    .locals 2

    .line 1687
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getSipTransportTimeout(J)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getStunServer()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 561
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getStunServer(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSupportedVideoSizes()[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1341
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->listSupportedVideoResolutions(J)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTlsCertificate()Ljava/lang/String;
    .locals 2

    .line 1759
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getTlsCertificate(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTlsCertificatePath()Ljava/lang/String;
    .locals 2

    .line 1771
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getTlsCertificatePath(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTlsKey()Ljava/lang/String;
    .locals 2

    .line 1765
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getTlsKey(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTlsKeyPath()Ljava/lang/String;
    .locals 2

    .line 1777
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getTlsKeyPath(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getUploadBandwidth()I
    .locals 2

    monitor-enter p0

    .line 587
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getUploadBandwidth(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUpnpExternalIpaddress()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1197
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getUpnpExternalIpaddress(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUpnpState()Lorg/linphone/core/LinphoneCore$UpnpState;
    .locals 2

    monitor-enter p0

    .line 1192
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getUpnpState(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$UpnpState;->fromInt(I)Lorg/linphone/core/LinphoneCore$UpnpState;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseRfc2833ForDtmfs()Z
    .locals 2

    monitor-enter p0

    .line 1156
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getUseRfc2833ForDtmfs(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseSipInfoForDtmfs()Z
    .locals 2

    monitor-enter p0

    .line 1146
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getUseSipInfoForDtmfs(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 1053
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getVersion(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getVideoAutoAcceptPolicy()Z
    .locals 2

    monitor-enter p0

    .line 1007
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getVideoAutoAcceptPolicy(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVideoAutoInitiatePolicy()Z
    .locals 2

    monitor-enter p0

    .line 1003
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getVideoAutoInitiatePolicy(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVideoCodecs()[Lorg/linphone/core/PayloadType;
    .locals 6

    monitor-enter p0

    .line 642
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->listVideoPayloadTypes(J)[J

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 643
    monitor-exit p0

    return-object v0

    .line 645
    :cond_0
    :try_start_1
    array-length v1, v0

    new-array v1, v1, [Lorg/linphone/core/PayloadType;

    const/4 v2, 0x0

    .line 647
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 648
    new-instance v3, Lorg/linphone/core/PayloadTypeImpl;

    aget-wide v4, v0, v2

    invoke-direct {v3, v4, v5}, Lorg/linphone/core/PayloadTypeImpl;-><init>(J)V

    aput-object v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 651
    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVideoDevice()I
    .locals 2

    monitor-enter p0

    .line 755
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getVideoDevice(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVideoDscp()I
    .locals 2

    monitor-enter p0

    .line 1247
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getVideoDscp(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVideoMulticastAddr()Ljava/lang/String;
    .locals 2

    .line 1563
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getVideoMulticastAddr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoMulticastTtl()I
    .locals 2

    .line 1586
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getVideoMulticastTtl(J)I

    move-result v0

    return v0
.end method

.method public getVideoPreset()Ljava/lang/String;
    .locals 2

    .line 1630
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getVideoPreset(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized hasBuiltInEchoCanceler()Z
    .locals 2

    monitor-enter p0

    .line 1172
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->hasBuiltInEchoCanceler(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasCrappyOpenGL()Z
    .locals 2

    monitor-enter p0

    .line 1177
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->hasCrappyOpenGL(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized interpretUrl(Ljava/lang/String;)Lorg/linphone/core/LinphoneAddress;
    .locals 5

    monitor-enter p0

    .line 356
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->interpretUrl(JLjava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 358
    new-instance p1, Lorg/linphone/core/LinphoneAddressImpl;

    sget-object v2, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromNew:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {p1, v0, v1, v2}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 360
    :cond_0
    :try_start_1
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized invite(Ljava/lang/String;)Lorg/linphone/core/LinphoneCall;
    .locals 2

    monitor-enter p0

    .line 251
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 252
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->invite(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/linphone/core/LinphoneCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized invite(Lorg/linphone/core/LinphoneAddress;)Lorg/linphone/core/LinphoneCall;
    .locals 4

    monitor-enter p0

    .line 364
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    move-object v2, p1

    check-cast v2, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v2, v2, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->inviteAddress(JJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 366
    monitor-exit p0

    return-object v0

    .line 368
    :cond_0
    :try_start_1
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to invite address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/linphone/core/LinphoneAddress;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized inviteAddressWithParams(Lorg/linphone/core/LinphoneAddress;Lorg/linphone/core/LinphoneCallParams;)Lorg/linphone/core/LinphoneCall;
    .locals 8

    monitor-enter p0

    .line 568
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v4, v0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    .line 569
    check-cast p2, Lorg/linphone/core/LinphoneCallParamsImpl;

    iget-wide v6, p2, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    .line 571
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneCoreImpl;->inviteAddressWithParams(JJJ)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/linphone/core/LinphoneCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 573
    monitor-exit p0

    return-object p2

    .line 575
    :cond_0
    :try_start_1
    new-instance p2, Lorg/linphone/core/LinphoneCoreException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to invite with params "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/linphone/core/LinphoneAddress;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isAdaptiveRateControlEnabled()Z
    .locals 2

    monitor-enter p0

    .line 1456
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isAdaptiveRateControlEnabled(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEchoCancellationEnabled()Z
    .locals 2

    monitor-enter p0

    .line 417
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 418
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isEchoCancellationEnabled(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEchoLimiterEnabled()Z
    .locals 2

    monitor-enter p0

    .line 883
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isEchoLimiterEnabled(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInComingInvitePending()Z
    .locals 2

    monitor-enter p0

    .line 308
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 309
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isInComingInvitePending(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInConference()Z
    .locals 2

    monitor-enter p0

    .line 771
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isInConference(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isIncall()Z
    .locals 2

    monitor-enter p0

    .line 304
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 305
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isInCall(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isIpv6Enabled()Z
    .locals 2

    monitor-enter p0

    .line 719
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isIpv6Enabled(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isKeepAliveEnabled()Z
    .locals 2

    monitor-enter p0

    .line 688
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isKeepAliveEnabled(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLimeEncryptionAvailable()Z
    .locals 2

    monitor-enter p0

    .line 1743
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isLimeEncryptionAvailable(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isMediaEncryptionMandatory()Z
    .locals 2

    monitor-enter p0

    .line 850
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isMediaEncryptionMandatory(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isMicMuted()Z
    .locals 2

    monitor-enter p0

    .line 383
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isMicMuted(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMyself(Ljava/lang/String;)Z
    .locals 1

    .line 865
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneCoreImpl;->getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 867
    :cond_0
    invoke-interface {v0}, Lorg/linphone/core/LinphoneProxyConfig;->getIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized isNetworkReachable()Z
    .locals 2

    monitor-enter p0

    .line 680
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isNetworkStateReachable(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPayloadTypeEnabled(Lorg/linphone/core/PayloadType;)Z
    .locals 4

    monitor-enter p0

    .line 403
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 404
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/PayloadTypeImpl;

    iget-wide v2, p1, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->isPayloadTypeEnabled(JJ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isSdp200AckEnabled()Z
    .locals 2

    monitor-enter p0

    .line 1400
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isSdp200AckEnabled(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSpeakerEnabled()Z
    .locals 1

    .line 465
    iget-boolean v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mSpeakerEnabled:Z

    return v0
.end method

.method public native isTunnelAvailable()Z
.end method

.method public declared-synchronized isVCardSupported()Z
    .locals 2

    monitor-enter p0

    .line 543
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isVCardSupported(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isVideoEnabled()Z
    .locals 2

    monitor-enter p0

    .line 537
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isVideoEnabled(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isVideoSupported()Z
    .locals 2

    monitor-enter p0

    .line 540
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isVideoSupported(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized iterate()V
    .locals 4

    monitor-enter p0

    .line 257
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 258
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->iterate(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Caught runtime exception:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 260
    invoke-static {v1}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized leaveConference()V
    .locals 2

    monitor-enter p0

    .line 761
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->leaveConference(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mediaEncryptionSupported(Lorg/linphone/core/LinphoneCore$MediaEncryption;)Z
    .locals 2

    monitor-enter p0

    .line 888
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    iget p1, p1, Lorg/linphone/core/LinphoneCore$MediaEncryption;->mValue:I

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->mediaEncryptionSupported(JI)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized migrateCallLogs()V
    .locals 2

    monitor-enter p0

    .line 1351
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->migrateCallLogs(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1352
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized migrateToMultiTransport()I
    .locals 2

    monitor-enter p0

    .line 1346
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->migrateToMultiTransport(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized muteMic(Z)V
    .locals 2

    monitor-enter p0

    .line 352
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->muteMic(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized needsEchoCalibration()Z
    .locals 2

    monitor-enter p0

    .line 1167
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->needsEchoCalibration(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pauseAllCalls()Z
    .locals 2

    monitor-enter p0

    .line 732
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->pauseAllCalls(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pauseCall(Lorg/linphone/core/LinphoneCall;)Z
    .locals 4

    monitor-enter p0

    .line 726
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneCallImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->pauseCall(JJ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized payloadTypeIsVbr(Lorg/linphone/core/PayloadType;)Z
    .locals 4

    monitor-enter p0

    .line 408
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 409
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/PayloadTypeImpl;

    iget-wide v2, p1, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->payloadTypeIsVbr(JJ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized playDtmf(CI)V
    .locals 2

    monitor-enter p0

    .line 468
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneCoreImpl;->playDtmf(JCI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized publish(Lorg/linphone/core/LinphoneAddress;Ljava/lang/String;ILorg/linphone/core/LinphoneContent;)Lorg/linphone/core/LinphoneEvent;
    .locals 11

    monitor-enter p0

    .line 1268
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v3, p1, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    .line 1269
    invoke-interface {p4}, Lorg/linphone/core/LinphoneContent;->getType()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, p1

    :goto_0
    if-eqz p4, :cond_1

    invoke-interface {p4}, Lorg/linphone/core/LinphoneContent;->getSubtype()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object v8, p1

    :goto_1
    if-eqz p4, :cond_2

    invoke-interface {p4}, Lorg/linphone/core/LinphoneContent;->getData()[B

    move-result-object v0

    move-object v9, v0

    goto :goto_2

    :cond_2
    move-object v9, p1

    :goto_2
    if-eqz p4, :cond_3

    .line 1270
    invoke-interface {p4}, Lorg/linphone/core/LinphoneContent;->getEncoding()Ljava/lang/String;

    move-result-object p1

    :cond_3
    move-object v10, p1

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    .line 1268
    invoke-direct/range {v0 .. v10}, Lorg/linphone/core/LinphoneCoreImpl;->publish(JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/linphone/core/LinphoneEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized refreshRegisters()V
    .locals 2

    monitor-enter p0

    .line 1048
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->refreshRegisters(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reloadMsPlugins(Ljava/lang/String;)V
    .locals 2

    .line 1730
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->reloadMsPlugins(JLjava/lang/String;)V

    return-void
.end method

.method public reloadSoundDevices()V
    .locals 2

    .line 1734
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->reloadSoundDevices(J)V

    return-void
.end method

.method public declared-synchronized removeAuthInfo(Lorg/linphone/core/LinphoneAuthInfo;)V
    .locals 4

    monitor-enter p0

    .line 241
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 242
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAuthInfoImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->removeAuthInfo(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeCallLog(Lorg/linphone/core/LinphoneCallLog;)V
    .locals 4

    monitor-enter p0

    .line 1031
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneCallLogImpl;

    invoke-virtual {p1}, Lorg/linphone/core/LinphoneCallLogImpl;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->removeCallLog(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1032
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeFriend(Lorg/linphone/core/LinphoneFriend;)V
    .locals 4

    monitor-enter p0

    .line 1071
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/LinphoneFriend;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->removeFriend(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeFriendList(Lorg/linphone/core/LinphoneFriendList;)V
    .locals 4

    monitor-enter p0

    .line 490
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneFriendListImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->removeFriendList(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeFromConference(Lorg/linphone/core/LinphoneCall;)V
    .locals 4

    monitor-enter p0

    .line 819
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->removeFromConference(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeListener(Lorg/linphone/core/LinphoneCoreListener;)V
    .locals 2

    monitor-enter p0

    .line 1509
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->removeListener(JLorg/linphone/core/LinphoneCoreListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1510
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeProxyConfig(Lorg/linphone/core/LinphoneProxyConfig;)V
    .locals 4

    monitor-enter p0

    .line 277
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    if-eqz p1, :cond_0

    .line 279
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneProxyConfigImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->removeProxyConfig(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public native resetLogCollection()V
.end method

.method public declared-synchronized resetMissedCallsCount()V
    .locals 2

    monitor-enter p0

    .line 1035
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->resetMissedCallsCount(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1036
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resumeCall(Lorg/linphone/core/LinphoneCall;)Z
    .locals 4

    monitor-enter p0

    .line 729
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneCallImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->resumeCall(JJ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public routeAudioToSpeakerHelper(Z)V
    .locals 1

    .line 447
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->contextInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 448
    :cond_0
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->needGalaxySAudioHack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->setAudioModeIncallForGalaxyS()V

    .line 450
    :cond_1
    iget-object v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method

.method public declared-synchronized sendDtmf(C)V
    .locals 2

    monitor-enter p0

    .line 377
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->sendDtmf(JC)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendDtmfs(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 373
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->sendDtmfs(JLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAdaptiveRateAlgorithm(Lorg/linphone/core/LinphoneCore$AdaptiveRateAlgorithm;)V
    .locals 2

    monitor-enter p0

    .line 1462
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-virtual {p1}, Lorg/linphone/core/LinphoneCore$AdaptiveRateAlgorithm;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setAdaptiveRateAlgorithm(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAudioCodecs([Lorg/linphone/core/PayloadType;)V
    .locals 4

    monitor-enter p0

    .line 673
    :try_start_0
    array-length v0, p1

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 674
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 675
    aget-object v2, p1, v1

    check-cast v2, Lorg/linphone/core/PayloadTypeImpl;

    iget-wide v2, v2, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 677
    :cond_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v1, v2, v0}, Lorg/linphone/core/LinphoneCoreImpl;->setAudioCodecs(J[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAudioDscp(I)V
    .locals 2

    monitor-enter p0

    .line 1229
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setAudioDscp(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAudioJittcomp(I)V
    .locals 2

    monitor-enter p0

    .line 1469
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setAudioJittcomp(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1470
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAudioMulticastAddr(Ljava/lang/String;)V
    .locals 3

    .line 1546
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setAudioMulticastAddr(JLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1547
    :cond_0
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad ip address ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAudioMulticastTtl(I)V
    .locals 3

    .line 1568
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setAudioMulticastTtl(JI)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1569
    :cond_0
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad ttl value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setAudioPort(I)V
    .locals 2

    monitor-enter p0

    .line 1081
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setAudioPort(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1082
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAudioPortRange(II)V
    .locals 2

    monitor-enter p0

    .line 1089
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneCoreImpl;->setAudioPortRange(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCallErrorTone(Lorg/linphone/core/Reason;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1382
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    iget p1, p1, Lorg/linphone/core/Reason;->mValue:I

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneCoreImpl;->setCallErrorTone(JILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1383
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCallLogsDatabasePath(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1291
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setCallLogsDatabasePath(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setChatDatabasePath(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1287
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setChatDatabasePath(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1288
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setContext(Ljava/lang/Object;)V
    .locals 1

    .line 224
    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lorg/linphone/core/LinphoneCoreImpl;->mContext:Landroid/content/Context;

    .line 225
    iget-object p1, p0, Lorg/linphone/core/LinphoneCoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 226
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->reloadMsPlugins(Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lorg/linphone/core/LinphoneCoreImpl;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lorg/linphone/core/LinphoneCoreImpl;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public declared-synchronized setCpuCount(I)V
    .locals 2

    monitor-enter p0

    .line 1023
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setCpuCountNative(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDefaultProxyConfig(Lorg/linphone/core/LinphoneProxyConfig;)V
    .locals 4

    monitor-enter p0

    .line 265
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    if-eqz p1, :cond_0

    .line 266
    check-cast p1, Lorg/linphone/core/LinphoneProxyConfigImpl;

    iget-wide v0, p1, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 267
    :goto_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->setDefaultProxyConfig(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDefaultSoundDevices()V
    .locals 2

    .line 1738
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->setDefaultSoundDevices(J)V

    return-void
.end method

.method public declared-synchronized setDeviceRotation(I)V
    .locals 2

    monitor-enter p0

    .line 530
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setDeviceRotation(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDnsServers([Ljava/lang/String;)V
    .locals 2

    .line 1720
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setDnsServers(J[Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setDownloadBandwidth(I)V
    .locals 2

    monitor-enter p0

    .line 599
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setDownloadBandwidth(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDownloadPtime(I)V
    .locals 2

    monitor-enter p0

    .line 735
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setDownloadPtime(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFileTransferServer(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1480
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setFileTransferServer(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1481
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFirewallPolicy(Lorg/linphone/core/LinphoneCore$FirewallPolicy;)V
    .locals 2

    monitor-enter p0

    .line 549
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-virtual {p1}, Lorg/linphone/core/LinphoneCore$FirewallPolicy;->value()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setFirewallPolicy(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFriendsDatabasePath(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1295
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setFriendsDatabasePath(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1296
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setHttpProxyHost(Ljava/lang/String;)V
    .locals 2

    .line 1658
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setHttpProxyHost(JLjava/lang/String;)V

    return-void
.end method

.method public setHttpProxyPort(I)V
    .locals 2

    .line 1664
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setHttpProxyPort(JI)V

    return-void
.end method

.method public declared-synchronized setInCallTimeout(I)V
    .locals 2

    monitor-enter p0

    .line 1106
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setInCallTimeout(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setIncomingTimeout(I)V
    .locals 2

    monitor-enter p0

    .line 1097
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setIncomingTimeout(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1098
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLimeEncryption(Lorg/linphone/core/LinphoneCore$LinphoneLimeState;)V
    .locals 2

    monitor-enter p0

    .line 1748
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    iget p1, p1, Lorg/linphone/core/LinphoneCore$LinphoneLimeState;->mValue:I

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setLimeEncryption(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1749
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaxCalls(I)V
    .locals 2

    monitor-enter p0

    .line 878
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setMaxCalls(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMediaEncryption(Lorg/linphone/core/LinphoneCore$MediaEncryption;)V
    .locals 2

    monitor-enter p0

    .line 853
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    iget p1, p1, Lorg/linphone/core/LinphoneCore$MediaEncryption;->mValue:I

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setMediaEncryption(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMediaEncryptionMandatory(Z)V
    .locals 2

    monitor-enter p0

    .line 856
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setMediaEncryptionMandatory(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMediaNetworkReachable(Z)V
    .locals 2

    .line 1710
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setMediaNetworkReachable(JZ)V

    return-void
.end method

.method public declared-synchronized setMicrophoneGain(F)V
    .locals 2

    monitor-enter p0

    .line 1116
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setMicrophoneGain(JF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMtu(I)V
    .locals 2

    monitor-enter p0

    .line 1387
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setMtu(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1388
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNatPolicy(Lorg/linphone/core/LinphoneNatPolicy;)V
    .locals 4

    monitor-enter p0

    .line 555
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneNatPolicyImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneNatPolicyImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->setNatPolicy(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNetworkReachable(Z)V
    .locals 2

    monitor-enter p0

    .line 342
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setNetworkStateReachable(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setNortpTimeout(I)V
    .locals 2

    .line 1692
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setNortpTimeout(JI)V

    return-void
.end method

.method public declared-synchronized setPayloadTypeBitrate(Lorg/linphone/core/PayloadType;I)V
    .locals 6

    monitor-enter p0

    .line 1430
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/PayloadTypeImpl;

    iget-wide v3, p1, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/linphone/core/LinphoneCoreImpl;->setPayloadTypeBitrate(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1431
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPayloadTypeNumber(Lorg/linphone/core/PayloadType;I)V
    .locals 6

    monitor-enter p0

    .line 1441
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/PayloadTypeImpl;

    iget-wide v3, p1, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/linphone/core/LinphoneCoreImpl;->setPayloadTypeNumber(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1442
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPlayFile(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 895
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setPlayFile(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPlayLevel(I)V
    .locals 0

    return-void
.end method

.method public declared-synchronized setPlaybackGain(F)V
    .locals 2

    monitor-enter p0

    .line 345
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setPlaybackGain(JF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPreferredFramerate(F)V
    .locals 2

    .line 1534
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setPreferredFramerate(JF)V

    return-void
.end method

.method public declared-synchronized setPreferredVideoSize(Lorg/linphone/core/VideoSize;)V
    .locals 3

    monitor-enter p0

    .line 603
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    iget v2, p1, Lorg/linphone/core/VideoSize;->width:I

    iget p1, p1, Lorg/linphone/core/VideoSize;->height:I

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setPreferredVideoSize(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPreferredVideoSizeByName(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 607
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setPreferredVideoSizeByName(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPresenceInfo(ILjava/lang/String;Lorg/linphone/core/OnlineStatus;)V
    .locals 6

    monitor-enter p0

    .line 504
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    iget v5, p3, Lorg/linphone/core/OnlineStatus;->mValue:I

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/linphone/core/LinphoneCoreImpl;->setPresenceInfo(JILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPresenceModel(Lorg/linphone/core/PresenceModel;)V
    .locals 4

    monitor-enter p0

    .line 512
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/PresenceModelImpl;

    invoke-virtual {p1}, Lorg/linphone/core/PresenceModelImpl;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->setPresenceModel(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPreviewWindow(Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    .line 524
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setPreviewWindowId(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPrimaryContact(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1120
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setPrimaryContact2(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1121
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPrimaryContact(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1128
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneCoreImpl;->setPrimaryContact(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProvisioningUri(Ljava/lang/String;)V
    .locals 2

    .line 1643
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setProvisioningUri(JLjava/lang/String;)V

    return-void
.end method

.method public setRemoteRingbackTone(Ljava/lang/String;)V
    .locals 2

    .line 1514
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setRemoteRingbackTone(JLjava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setRing(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 619
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setRing(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRingback(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 634
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setRingback(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRootCA(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 626
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setRootCA(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRootCAData(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 630
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setRootCAData(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSignalingTransportPorts(Lorg/linphone/core/LinphoneCore$Transports;)V
    .locals 6

    monitor-enter p0

    .line 712
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    iget v3, p1, Lorg/linphone/core/LinphoneCore$Transports;->udp:I

    iget v4, p1, Lorg/linphone/core/LinphoneCore$Transports;->tcp:I

    iget v5, p1, Lorg/linphone/core/LinphoneCore$Transports;->tls:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/linphone/core/LinphoneCoreImpl;->setSignalingTransportPorts(JIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSipDscp(I)V
    .locals 2

    monitor-enter p0

    .line 1218
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setSipDscp(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1219
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSipNetworkReachable(Z)V
    .locals 2

    .line 1704
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setSipNetworkReachable(JZ)V

    return-void
.end method

.method public setSipTransportTimeout(I)V
    .locals 2

    .line 1681
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setSipTransportTimeout(JI)V

    return-void
.end method

.method public declared-synchronized setStaticPicture(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1012
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setStaticPicture(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1013
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStunServer(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 564
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setStunServer(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTlsCertificate(Ljava/lang/String;)V
    .locals 2

    .line 1783
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setTlsCertificate(JLjava/lang/String;)V

    return-void
.end method

.method public setTlsCertificatePath(Ljava/lang/String;)V
    .locals 2

    .line 1795
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setTlsCertificatePath(JLjava/lang/String;)V

    return-void
.end method

.method public setTlsKey(Ljava/lang/String;)V
    .locals 2

    .line 1789
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setTlsKey(JLjava/lang/String;)V

    return-void
.end method

.method public setTlsKeyPath(Ljava/lang/String;)V
    .locals 2

    .line 1801
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setTlsKeyPath(JLjava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setTone(Lorg/linphone/core/ToneID;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1405
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    iget p1, p1, Lorg/linphone/core/ToneID;->mValue:I

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneCoreImpl;->setTone(JILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1406
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUploadBandwidth(I)V
    .locals 2

    monitor-enter p0

    .line 591
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setUploadBandwidth(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUploadPtime(I)V
    .locals 2

    monitor-enter p0

    .line 739
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setUploadPtime(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUseRfc2833ForDtmfs(Z)V
    .locals 2

    monitor-enter p0

    .line 1151
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setUseRfc2833ForDtmfs(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUseSipInfoForDtmfs(Z)V
    .locals 2

    monitor-enter p0

    .line 1141
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setUseSipInfoForDtmfs(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUserAgent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1017
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneCoreImpl;->setUserAgent(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setUserCertificatesPath(Ljava/lang/String;)V
    .locals 2

    .line 1726
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setUserCertificatesPath(JLjava/lang/String;)V

    return-void
.end method

.method public setVerifyServerCN(Z)V
    .locals 2

    .line 1813
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setVerifyServerCN(JZ)V

    return-void
.end method

.method public setVerifyServerCertificates(Z)V
    .locals 2

    .line 1807
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setVerifyServerCertificates(JZ)V

    return-void
.end method

.method public declared-synchronized setVideoCodecs([Lorg/linphone/core/PayloadType;)V
    .locals 4

    monitor-enter p0

    .line 654
    :try_start_0
    array-length v0, p1

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 655
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 656
    aget-object v2, p1, v1

    check-cast v2, Lorg/linphone/core/PayloadTypeImpl;

    iget-wide v2, v2, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 658
    :cond_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v1, v2, v0}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoCodecs(J[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setVideoDevice(I)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Setting camera id :"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 749
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 750
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v1, v2, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoDevice(JI)I

    move-result v1

    if-eqz v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to set video device to id:"

    aput-object v1, v0, v3

    .line 751
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setVideoDscp(I)V
    .locals 2

    monitor-enter p0

    .line 1241
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoDscp(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setVideoJittcomp(I)V
    .locals 2

    monitor-enter p0

    .line 1474
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoJittcomp(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1475
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setVideoMulticastAddr(Ljava/lang/String;)V
    .locals 3

    .line 1552
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoMulticastAddr(JLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1553
    :cond_0
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad ip address ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVideoMulticastTtl(I)V
    .locals 3

    .line 1575
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoMulticastTtl(JI)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1576
    :cond_0
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad ttl value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setVideoPolicy(ZZ)V
    .locals 2

    monitor-enter p0

    .line 999
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoPolicy(JZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setVideoPort(I)V
    .locals 2

    monitor-enter p0

    .line 1085
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoPort(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setVideoPortRange(II)V
    .locals 2

    monitor-enter p0

    .line 1093
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoPortRange(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setVideoPreset(Ljava/lang/String;)V
    .locals 2

    .line 1624
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoPreset(JLjava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setVideoWindow(Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    .line 527
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoWindowId(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setZrtpSecretsCache(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 743
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setZrtpSecretsCache(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized soundResourcesLocked()Z
    .locals 2

    monitor-enter p0

    .line 872
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->soundResourcesLocked(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startConferenceRecording(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1202
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->startConferenceRecording(JLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1203
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startEchoCalibration(Lorg/linphone/core/LinphoneCoreListener;)V
    .locals 2

    monitor-enter p0

    .line 691
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->startEchoCalibration(JLjava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startEchoTester(I)I
    .locals 2

    monitor-enter p0

    .line 695
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->startEchoTester(JI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startReferedCall(Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCallParams;)Lorg/linphone/core/LinphoneCall;
    .locals 7

    monitor-enter p0

    .line 1334
    :try_start_0
    check-cast p2, Lorg/linphone/core/LinphoneCallParamsImpl;

    iget-wide v5, p2, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    .line 1335
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/linphone/core/LinphoneCoreImpl;->startReferedCall(JJJ)Lorg/linphone/core/LinphoneCall;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopConferenceRecording()V
    .locals 2

    monitor-enter p0

    .line 1208
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->stopConferenceRecording(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1209
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopDtmf()V
    .locals 2

    monitor-enter p0

    .line 472
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->stopDtmf(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopEchoTester()I
    .locals 2

    monitor-enter p0

    .line 699
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->stopEchoTester(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopRinging()V
    .locals 2

    monitor-enter p0

    .line 1425
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->stopRinging(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1426
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized subscribe(Lorg/linphone/core/LinphoneAddress;Ljava/lang/String;ILorg/linphone/core/LinphoneContent;)Lorg/linphone/core/LinphoneEvent;
    .locals 11

    monitor-enter p0

    .line 1260
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v3, p1, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    .line 1261
    invoke-interface {p4}, Lorg/linphone/core/LinphoneContent;->getType()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, p1

    :goto_0
    if-eqz p4, :cond_1

    invoke-interface {p4}, Lorg/linphone/core/LinphoneContent;->getSubtype()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object v8, p1

    :goto_1
    if-eqz p4, :cond_2

    invoke-interface {p4}, Lorg/linphone/core/LinphoneContent;->getData()[B

    move-result-object v0

    move-object v9, v0

    goto :goto_2

    :cond_2
    move-object v9, p1

    :goto_2
    if-eqz p4, :cond_3

    .line 1262
    invoke-interface {p4}, Lorg/linphone/core/LinphoneContent;->getEncoding()Ljava/lang/String;

    move-result-object p1

    :cond_3
    move-object v10, p1

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    .line 1260
    invoke-direct/range {v0 .. v10}, Lorg/linphone/core/LinphoneCoreImpl;->subscribe(JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/linphone/core/LinphoneEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized terminateAllCalls()V
    .locals 2

    monitor-enter p0

    .line 796
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->terminateAllCalls(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized terminateCall(Lorg/linphone/core/LinphoneCall;)V
    .locals 4

    monitor-enter p0

    .line 291
    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    if-eqz p1, :cond_0

    .line 292
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneCallImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->terminateCall(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized terminateConference()V
    .locals 2

    monitor-enter p0

    .line 776
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->terminateConference(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized transferCall(Lorg/linphone/core/LinphoneCall;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 832
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/linphone/core/LinphoneCoreImpl;->transferCall(JJLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized transferCallToAnother(Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCall;)V
    .locals 7

    monitor-enter p0

    .line 837
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v3

    invoke-direct {p0, p2}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/linphone/core/LinphoneCoreImpl;->transferCallToAnother(JJJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized tunnelAddServer(Lorg/linphone/core/TunnelConfig;)V
    .locals 4

    monitor-enter p0

    .line 908
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/TunnelConfigImpl;

    iget-wide v2, p1, Lorg/linphone/core/TunnelConfigImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelAddServer(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized tunnelAddServerAndMirror(Ljava/lang/String;III)V
    .locals 7

    monitor-enter p0

    .line 902
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelAddServerAndMirror(JLjava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized tunnelAutoDetect()V
    .locals 2

    monitor-enter p0

    .line 920
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelAutoDetect(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tunnelCleanServers()V
    .locals 2

    monitor-enter p0

    .line 926
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelCleanServers(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tunnelDualModeEnabled()Z
    .locals 2

    .line 968
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelDualModeEnabled(J)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized tunnelEnable(Z)V
    .locals 2

    monitor-enter p0

    .line 932
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelEnable(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public tunnelEnableDualMode(Z)V
    .locals 2

    .line 962
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelEnableDualMode(JZ)V

    return-void
.end method

.method public tunnelEnableSip(Z)V
    .locals 2

    .line 950
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelEnableSip(JZ)V

    return-void
.end method

.method public declared-synchronized tunnelGetMode()Lorg/linphone/core/LinphoneCore$TunnelMode;
    .locals 2

    monitor-enter p0

    .line 944
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelGetMode(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$TunnelMode;->intToEnum(I)Lorg/linphone/core/LinphoneCore$TunnelMode;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized tunnelGetServers()[Lorg/linphone/core/TunnelConfig;
    .locals 2

    monitor-enter p0

    .line 914
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelGetServers(J)[Lorg/linphone/core/TunnelConfig;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tunnelSetHttpProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    .line 1043
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelSetHttpProxy(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1044
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized tunnelSetMode(Lorg/linphone/core/LinphoneCore$TunnelMode;)V
    .locals 2

    monitor-enter p0

    .line 938
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-static {p1}, Lorg/linphone/core/LinphoneCore$TunnelMode;->enumToInt(Lorg/linphone/core/LinphoneCore$TunnelMode;)I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelSetMode(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public tunnelSipEnabled()Z
    .locals 2

    .line 956
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelSipEnabled(J)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized updateCall(Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCallParams;)I
    .locals 7

    monitor-enter p0

    .line 580
    :try_start_0
    check-cast p1, Lorg/linphone/core/LinphoneCallImpl;

    iget-wide v3, p1, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    if-eqz p2, :cond_0

    .line 581
    check-cast p2, Lorg/linphone/core/LinphoneCallParamsImpl;

    iget-wide p1, p2, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    move-wide v5, p1

    .line 583
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/linphone/core/LinphoneCoreImpl;->updateCall(JJJ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public uploadLogCollection()V
    .locals 2

    .line 1525
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->uploadLogCollection(J)V

    return-void
.end method

.method public declared-synchronized upnpAvailable()Z
    .locals 2

    monitor-enter p0

    .line 1187
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->upnpAvailable(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public videoMulticastEnabled()Z
    .locals 2

    .line 1607
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->videoMulticastEnabled(J)Z

    move-result v0

    return v0
.end method
