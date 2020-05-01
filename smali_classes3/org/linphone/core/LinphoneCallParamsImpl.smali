.class public Lorg/linphone/core/LinphoneCallParamsImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/linphone/core/LinphoneCallParams;


# instance fields
.field protected final nativePtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    return-void
.end method

.method private native addCustomHeader(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native addCustomSdpAttribute(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native addCustomSdpMediaAttribute(JILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native audioBandwidth(JI)V
.end method

.method private native audioMulticastEnabled(J)Z
.end method

.method private native clearCustomSdpAttributes(J)V
.end method

.method private native clearCustomSdpMediaAttributes(JI)V
.end method

.method private native destroy(J)V
.end method

.method private native enableAudioMulticast(JZ)V
.end method

.method private native enableLowBandwidth(JZ)V
.end method

.method private native enableRealTimeText(JZ)V
.end method

.method private native enableVideo(JZ)V
.end method

.method private native enableVideoMulticast(JZ)V
.end method

.method private native getAudioDirection(J)I
.end method

.method private native getCustomHeader(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native getCustomSdpAttribute(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native getCustomSdpMediaAttribute(JILjava/lang/String;)Ljava/lang/String;
.end method

.method private native getMediaEncryption(J)I
.end method

.method private native getPrivacy(J)I
.end method

.method private native getReceivedFramerate(J)F
.end method

.method private native getReceivedVideoSize(J)[I
.end method

.method private native getSentFramerate(J)F
.end method

.method private native getSentVideoSize(J)[I
.end method

.method private native getSessionName(J)Ljava/lang/String;
.end method

.method private native getUsedAudioCodec(J)J
.end method

.method private native getUsedVideoCodec(J)J
.end method

.method private native getVideoDirection(J)I
.end method

.method private native getVideoEnabled(J)Z
.end method

.method private native isLowBandwidthEnabled(J)Z
.end method

.method private native localConferenceMode(J)Z
.end method

.method private native realTimeTextEnabled(J)Z
.end method

.method private native setAudioDirection(JI)V
.end method

.method private native setMediaEncryption(JI)V
.end method

.method private native setPrivacy(JI)V
.end method

.method private native setRecordFile(JLjava/lang/String;)V
.end method

.method private native setSessionName(JLjava/lang/String;)V
.end method

.method private native setVideoDirection(JI)V
.end method

.method private native videoMulticastEnabled(J)Z
.end method


# virtual methods
.method public addCustomHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 103
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneCallParamsImpl;->addCustomHeader(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addCustomSdpAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 115
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneCallParamsImpl;->addCustomSdpAttribute(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addCustomSdpMediaAttribute(Lorg/linphone/core/LinphoneCore$StreamType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 121
    iget-wide v1, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    iget v3, p1, Lorg/linphone/core/LinphoneCore$StreamType;->mValue:I

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/linphone/core/LinphoneCallParamsImpl;->addCustomSdpMediaAttribute(JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public audioMulticastEnabled()Z
    .locals 2

    .line 199
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->audioMulticastEnabled(J)Z

    move-result v0

    return v0
.end method

.method public clearCustomSdpAttributes()V
    .locals 2

    .line 139
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->clearCustomSdpAttributes(J)V

    return-void
.end method

.method public clearCustomSdpMediaAttributes(Lorg/linphone/core/LinphoneCore$StreamType;)V
    .locals 2

    .line 145
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    iget p1, p1, Lorg/linphone/core/LinphoneCore$StreamType;->mValue:I

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->clearCustomSdpMediaAttributes(JI)V

    return-void
.end method

.method public enableAudioMulticast(Z)V
    .locals 2

    .line 194
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->enableAudioMulticast(JZ)V

    return-void
.end method

.method public enableLowBandwidth(Z)V
    .locals 2

    .line 87
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->enableLowBandwidth(JZ)V

    return-void
.end method

.method public enableRealTimeText(Z)V
    .locals 2

    .line 216
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->enableRealTimeText(JZ)V

    return-void
.end method

.method public enableVideoMulticast(Z)V
    .locals 2

    .line 205
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->enableVideoMulticast(JZ)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .line 53
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->destroy(J)V

    .line 54
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAudioDirection()Lorg/linphone/core/LinphoneCore$MediaDirection;
    .locals 2

    .line 228
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getAudioDirection(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$MediaDirection;->fromInt(I)Lorg/linphone/core/LinphoneCore$MediaDirection;

    move-result-object v0

    return-object v0
.end method

.method public getCustomHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 109
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getCustomHeader(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCustomSdpAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 127
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getCustomSdpAttribute(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCustomSdpMediaAttribute(Lorg/linphone/core/LinphoneCore$StreamType;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 133
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    iget p1, p1, Lorg/linphone/core/LinphoneCore$StreamType;->mValue:I

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneCallParamsImpl;->getCustomSdpMediaAttribute(JILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMediaEncryption()Lorg/linphone/core/LinphoneCore$MediaEncryption;
    .locals 2

    .line 62
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getMediaEncryption(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$MediaEncryption;->fromInt(I)Lorg/linphone/core/LinphoneCore$MediaEncryption;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacy()I
    .locals 2

    .line 157
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getPrivacy(J)I

    move-result v0

    return v0
.end method

.method public getReceivedFramerate()F
    .locals 2

    .line 258
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getReceivedFramerate(J)F

    move-result v0

    return v0
.end method

.method public getReceivedVideoSize()Lorg/linphone/core/VideoSize;
    .locals 3

    .line 185
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getReceivedVideoSize(J)[I

    move-result-object v0

    .line 186
    new-instance v1, Lorg/linphone/core/VideoSize;

    invoke-direct {v1}, Lorg/linphone/core/VideoSize;-><init>()V

    const/4 v2, 0x0

    .line 187
    aget v2, v0, v2

    iput v2, v1, Lorg/linphone/core/VideoSize;->width:I

    const/4 v2, 0x1

    .line 188
    aget v0, v0, v2

    iput v0, v1, Lorg/linphone/core/VideoSize;->height:I

    return-object v1
.end method

.method public getSentFramerate()F
    .locals 2

    .line 252
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getSentFramerate(J)F

    move-result v0

    return v0
.end method

.method public getSentVideoSize()Lorg/linphone/core/VideoSize;
    .locals 3

    .line 175
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getSentVideoSize(J)[I

    move-result-object v0

    .line 176
    new-instance v1, Lorg/linphone/core/VideoSize;

    invoke-direct {v1}, Lorg/linphone/core/VideoSize;-><init>()V

    const/4 v2, 0x0

    .line 177
    aget v2, v0, v2

    iput v2, v1, Lorg/linphone/core/VideoSize;->width:I

    const/4 v2, 0x1

    .line 178
    aget v0, v0, v2

    iput v0, v1, Lorg/linphone/core/VideoSize;->height:I

    return-object v1
.end method

.method public getSessionName()Ljava/lang/String;
    .locals 2

    .line 169
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getSessionName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsedAudioCodec()Lorg/linphone/core/PayloadType;
    .locals 5

    .line 70
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getUsedAudioCodec(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    new-instance v2, Lorg/linphone/core/PayloadTypeImpl;

    invoke-direct {v2, v0, v1}, Lorg/linphone/core/PayloadTypeImpl;-><init>(J)V

    return-object v2
.end method

.method public getUsedVideoCodec()Lorg/linphone/core/PayloadType;
    .locals 5

    .line 76
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getUsedVideoCodec(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_0
    new-instance v2, Lorg/linphone/core/PayloadTypeImpl;

    invoke-direct {v2, v0, v1}, Lorg/linphone/core/PayloadTypeImpl;-><init>(J)V

    return-object v2
.end method

.method public getVideoDirection()Lorg/linphone/core/LinphoneCore$MediaDirection;
    .locals 2

    .line 234
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getVideoDirection(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$MediaDirection;->fromInt(I)Lorg/linphone/core/LinphoneCore$MediaDirection;

    move-result-object v0

    return-object v0
.end method

.method public getVideoEnabled()Z
    .locals 2

    .line 44
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getVideoEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isLowBandwidthEnabled()Z
    .locals 2

    .line 91
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->isLowBandwidthEnabled(J)Z

    move-result v0

    return v0
.end method

.method public localConferenceMode()Z
    .locals 2

    .line 83
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->localConferenceMode(J)Z

    move-result v0

    return v0
.end method

.method public realTimeTextEnabled()Z
    .locals 2

    .line 222
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->realTimeTextEnabled(J)Z

    move-result v0

    return v0
.end method

.method public setAudioBandwidth(I)V
    .locals 2

    .line 58
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->audioBandwidth(JI)V

    return-void
.end method

.method public setAudioDirection(Lorg/linphone/core/LinphoneCore$MediaDirection;)V
    .locals 2

    .line 240
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    iget p1, p1, Lorg/linphone/core/LinphoneCore$MediaDirection;->mValue:I

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->setAudioDirection(JI)V

    return-void
.end method

.method public setMediaEnctyption(Lorg/linphone/core/LinphoneCore$MediaEncryption;)V
    .locals 2

    .line 66
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    iget p1, p1, Lorg/linphone/core/LinphoneCore$MediaEncryption;->mValue:I

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->setMediaEncryption(JI)V

    return-void
.end method

.method public setPrivacy(I)V
    .locals 2

    .line 151
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->setPrivacy(JI)V

    return-void
.end method

.method public setRecordFile(Ljava/lang/String;)V
    .locals 2

    .line 97
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->setRecordFile(JLjava/lang/String;)V

    return-void
.end method

.method public setSessionName(Ljava/lang/String;)V
    .locals 2

    .line 163
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->setSessionName(JLjava/lang/String;)V

    return-void
.end method

.method public setVideoDirection(Lorg/linphone/core/LinphoneCore$MediaDirection;)V
    .locals 2

    .line 246
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    iget p1, p1, Lorg/linphone/core/LinphoneCore$MediaDirection;->mValue:I

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->setVideoDirection(JI)V

    return-void
.end method

.method public setVideoEnabled(Z)V
    .locals 2

    .line 48
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->enableVideo(JZ)V

    return-void
.end method

.method public videoMulticastEnabled()Z
    .locals 2

    .line 210
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->videoMulticastEnabled(J)Z

    move-result v0

    return v0
.end method
