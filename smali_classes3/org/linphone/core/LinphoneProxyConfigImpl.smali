.class Lorg/linphone/core/LinphoneProxyConfigImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/linphone/core/LinphoneProxyConfig;


# instance fields
.field protected mCore:Lorg/linphone/core/LinphoneCoreImpl;

.field protected final nativePtr:J

.field userData:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lorg/linphone/core/LinphoneCoreImpl;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->mCore:Lorg/linphone/core/LinphoneCoreImpl;

    .line 46
    iget-wide v0, p1, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->createProxyConfig(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    return-void
.end method

.method protected constructor <init>(Lorg/linphone/core/LinphoneCoreImpl;J)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->mCore:Lorg/linphone/core/LinphoneCoreImpl;

    .line 51
    iput-wide p2, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    return-void
.end method

.method protected constructor <init>(Lorg/linphone/core/LinphoneCoreImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->mCore:Lorg/linphone/core/LinphoneCoreImpl;

    .line 37
    iget-wide v0, p1, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->createProxyConfig(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    .line 38
    invoke-virtual {p0, p2}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setIdentity(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p3}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setProxy(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p4}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setRoute(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p5}, Lorg/linphone/core/LinphoneProxyConfigImpl;->enableRegister(Z)Lorg/linphone/core/LinphoneProxyConfig;

    return-void
.end method

.method private native avpfEnabled(J)Z
.end method

.method private native createProxyConfig(J)J
.end method

.method private native done(J)V
.end method

.method private native edit(J)V
.end method

.method private native enableAvpf(JZ)V
.end method

.method private native enablePublish(JZ)V
.end method

.method private native enableQualityReporting(JZ)V
.end method

.method private native enableRegister(JZ)V
.end method

.method private native finalize(J)V
.end method

.method private native getAddress(J)J
.end method

.method private native getAvpfRRInterval(J)I
.end method

.method private native getContactParameters(J)Ljava/lang/String;
.end method

.method private native getContactUriParameters(J)Ljava/lang/String;
.end method

.method private native getCustomHeader(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native getDialEscapePlus(J)Z
.end method

.method private native getDialPrefix(J)Ljava/lang/String;
.end method

.method private native getDomain(J)Ljava/lang/String;
.end method

.method private native getError(J)I
.end method

.method private native getErrorInfo(J)J
.end method

.method private native getExpires(J)I
.end method

.method private native getIdentity(J)Ljava/lang/String;
.end method

.method private native getNatPolicy(J)Ljava/lang/Object;
.end method

.method private native getPrivacy(J)I
.end method

.method private native getProxy(J)Ljava/lang/String;
.end method

.method private native getPublishExpires(J)I
.end method

.method private native getQualityReportingCollector(J)Ljava/lang/String;
.end method

.method private native getQualityReportingInterval(J)I
.end method

.method private native getRealm(J)Ljava/lang/String;
.end method

.method private native getRoute(J)Ljava/lang/String;
.end method

.method private native getState(J)I
.end method

.method private native isPhoneNumber(JLjava/lang/String;)Z
.end method

.method private native isRegisterEnabled(J)Z
.end method

.method private native isRegistered(J)Z
.end method

.method private isValid()V
    .locals 5

    .line 55
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "proxy config removed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native lookupCCCFromE164(JLjava/lang/String;)I
.end method

.method private native lookupCCCFromIso(JLjava/lang/String;)I
.end method

.method private native newLinphoneProxyConfig()J
.end method

.method private native normalizePhoneNumber(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native normalizeSipUri(JLjava/lang/String;)J
.end method

.method private native pauseRegister(J)V
.end method

.method private native publishEnabled(J)Z
.end method

.method private native qualityReportingEnabled(J)Z
.end method

.method private native refreshRegister(J)V
.end method

.method private native setAddress(JJ)V
.end method

.method private native setAvpfRRInterval(JI)V
.end method

.method private native setContactParameters(JLjava/lang/String;)V
.end method

.method private native setContactUriParameters(JLjava/lang/String;)V
.end method

.method private native setCustomHeader(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native setDialEscapePlus(JZ)V
.end method

.method private native setDialPrefix(JLjava/lang/String;)V
.end method

.method private native setExpires(JI)V
.end method

.method private native setIdentity(JLjava/lang/String;)V
.end method

.method private native setNatPolicy(JJ)V
.end method

.method private native setPrivacy(JI)V
.end method

.method private native setProxy(JLjava/lang/String;)I
.end method

.method private native setPublishExpires(JI)V
.end method

.method private native setQualityReportingCollector(JLjava/lang/String;)V
.end method

.method private native setQualityReportingInterval(JI)V
.end method

.method private native setRealm(JLjava/lang/String;)V
.end method

.method private native setRoute(JLjava/lang/String;)I
.end method


# virtual methods
.method public avpfEnabled()Z
    .locals 2

    .line 290
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 291
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->avpfEnabled(J)Z

    move-result v0

    return v0
.end method

.method public done()V
    .locals 3

    .line 114
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 115
    iget-object v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->mCore:Lorg/linphone/core/LinphoneCoreImpl;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 116
    :goto_0
    monitor-enter v0

    .line 117
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v1, v2}, Lorg/linphone/core/LinphoneProxyConfigImpl;->done(J)V

    .line 118
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public edit()Lorg/linphone/core/LinphoneProxyConfig;
    .locals 3

    .line 122
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 123
    iget-object v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->mCore:Lorg/linphone/core/LinphoneCoreImpl;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 124
    :goto_0
    monitor-enter v0

    .line 125
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v1, v2}, Lorg/linphone/core/LinphoneProxyConfigImpl;->edit(J)V

    .line 126
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enableAvpf(Z)V
    .locals 2

    .line 283
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 284
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->enableAvpf(JZ)V

    return-void
.end method

.method public enablePublish(Z)V
    .locals 2

    .line 225
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 226
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->enablePublish(JZ)V

    return-void
.end method

.method public enableQualityReporting(Z)V
    .locals 2

    .line 339
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 340
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->enableQualityReporting(JZ)V

    return-void
.end method

.method public enableRegister(Z)Lorg/linphone/core/LinphoneProxyConfig;
    .locals 2

    .line 108
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 109
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->enableRegister(JZ)V

    return-object p0
.end method

.method protected finalize()V
    .locals 5

    .line 61
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 62
    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->finalize(J)V

    .line 64
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAddress()Lorg/linphone/core/LinphoneAddress;
    .locals 5

    .line 194
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 195
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getAddress(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 199
    :cond_0
    new-instance v2, Lorg/linphone/core/LinphoneAddressImpl;

    sget-object v3, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {v2, v0, v1, v3}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V

    return-object v2
.end method

.method public getAvpfRRInterval()I
    .locals 2

    .line 304
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 305
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getAvpfRRInterval(J)I

    move-result v0

    return v0
.end method

.method public getContactParameters()Ljava/lang/String;
    .locals 2

    .line 311
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 312
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getContactParameters(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactUriParameters()Ljava/lang/String;
    .locals 2

    .line 325
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 326
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getContactUriParameters(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 428
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getCustomHeader(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDialEscapePlus()Z
    .locals 2

    .line 186
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 187
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getDialEscapePlus(J)Z

    move-result v0

    return v0
.end method

.method public getDialPrefix()Ljava/lang/String;
    .locals 2

    .line 174
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 175
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getDialPrefix(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 2

    .line 178
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 179
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getDomain(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lorg/linphone/core/Reason;
    .locals 2

    .line 263
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 264
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getError(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/Reason;->fromInt(I)Lorg/linphone/core/Reason;

    move-result-object v0

    return-object v0
.end method

.method public getErrorInfo()Lorg/linphone/core/ErrorInfo;
    .locals 3

    .line 333
    new-instance v0, Lorg/linphone/core/ErrorInfoImpl;

    iget-wide v1, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v1, v2}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getErrorInfo(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/ErrorInfoImpl;-><init>(J)V

    return-object v0
.end method

.method public getExpires()I
    .locals 2

    .line 238
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 239
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getExpires(J)I

    move-result v0

    return v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 2

    .line 190
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 191
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getIdentity(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNatPolicy()Lorg/linphone/core/LinphoneNatPolicy;
    .locals 2

    .line 131
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 132
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getNatPolicy(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneNatPolicy;

    return-object v0
.end method

.method public getPrivacy()I
    .locals 2

    .line 276
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 277
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getPrivacy(J)I

    move-result v0

    return v0
.end method

.method public getProxy()Ljava/lang/String;
    .locals 2

    .line 203
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 204
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getProxy(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublishExpires()I
    .locals 2

    .line 400
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 401
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getPublishExpires(J)I

    move-result v0

    return v0
.end method

.method public getQualityReportingCollector()Ljava/lang/String;
    .locals 2

    .line 373
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 374
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getQualityReportingCollector(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQualityReportingInterval()I
    .locals 2

    .line 359
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 360
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getQualityReportingInterval(J)I

    move-result v0

    return v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 2

    .line 387
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 388
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getRealm(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoute()Ljava/lang/String;
    .locals 2

    .line 215
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 216
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getRoute(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lorg/linphone/core/LinphoneCore$RegistrationState;
    .locals 2

    .line 229
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 230
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getState(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$RegistrationState;->fromInt(I)Lorg/linphone/core/LinphoneCore$RegistrationState;

    move-result-object v0

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .line 416
    iget-object v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public isPhoneNumber(Ljava/lang/String;)Z
    .locals 2

    .line 407
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isPhoneNumber(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isRegistered()Z
    .locals 2

    .line 207
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 208
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isRegistered(J)Z

    move-result v0

    return v0
.end method

.method public lookupCCCFromE164(Ljava/lang/String;)I
    .locals 2

    .line 257
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 258
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->lookupCCCFromE164(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public lookupCCCFromIso(Ljava/lang/String;)I
    .locals 2

    .line 252
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 253
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->lookupCCCFromIso(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public normalizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 157
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 158
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->normalizePhoneNumber(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public normalizeSipUri(Ljava/lang/String;)Lorg/linphone/core/LinphoneAddress;
    .locals 4

    .line 161
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 162
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->normalizeSipUri(JLjava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 166
    :cond_0
    new-instance p1, Lorg/linphone/core/LinphoneAddressImpl;

    sget-object v2, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {p1, v0, v1, v2}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V

    return-object p1
.end method

.method public pauseRegister()V
    .locals 2

    .line 440
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->pauseRegister(J)V

    return-void
.end method

.method public publishEnabled()Z
    .locals 2

    .line 242
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 243
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->publishEnabled(J)Z

    move-result v0

    return v0
.end method

.method public qualityReportingEnabled()Z
    .locals 2

    .line 346
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 347
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->avpfEnabled(J)Z

    move-result v0

    return v0
.end method

.method public refreshRegister()V
    .locals 2

    .line 434
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->refreshRegister(J)V

    return-void
.end method

.method public registerEnabled()Z
    .locals 2

    .line 211
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 212
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isRegisterEnabled(J)Z

    move-result v0

    return v0
.end method

.method public setAddress(Lorg/linphone/core/LinphoneAddress;)V
    .locals 4

    .line 146
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 147
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setAddress(JJ)V

    return-void
.end method

.method public setAvpfRRInterval(I)V
    .locals 2

    .line 297
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 298
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setAvpfRRInterval(JI)V

    return-void
.end method

.method public setContactParameters(Ljava/lang/String;)V
    .locals 2

    .line 247
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 248
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setContactParameters(JLjava/lang/String;)V

    return-void
.end method

.method public setContactUriParameters(Ljava/lang/String;)V
    .locals 2

    .line 318
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 319
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setContactUriParameters(JLjava/lang/String;)V

    return-void
.end method

.method public setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 422
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setCustomHeader(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDialEscapePlus(Z)V
    .locals 2

    .line 182
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 183
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setDialEscapePlus(JZ)V

    return-void
.end method

.method public setDialPrefix(Ljava/lang/String;)V
    .locals 2

    .line 170
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 171
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setDialPrefix(JLjava/lang/String;)V

    return-void
.end method

.method public setExpires(I)V
    .locals 2

    .line 234
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 235
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setExpires(JI)V

    return-void
.end method

.method public setIdentity(Ljava/lang/String;)V
    .locals 2

    .line 141
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 142
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setIdentity(JLjava/lang/String;)V

    return-void
.end method

.method public setNatPolicy(Lorg/linphone/core/LinphoneNatPolicy;)V
    .locals 4

    .line 136
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 137
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneNatPolicyImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneNatPolicyImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setNatPolicy(JJ)V

    return-void
.end method

.method public setPrivacy(I)V
    .locals 2

    .line 269
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 270
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setPrivacy(JI)V

    return-void
.end method

.method public setProxy(Ljava/lang/String;)V
    .locals 3

    .line 151
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 152
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setProxy(JLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad proxy address ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPublishExpires(I)V
    .locals 2

    .line 394
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 395
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setPublishExpires(JI)V

    return-void
.end method

.method public setQualityReportingCollector(Ljava/lang/String;)V
    .locals 2

    .line 366
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 367
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setQualityReportingCollector(JLjava/lang/String;)V

    return-void
.end method

.method public setQualityReportingInterval(I)V
    .locals 2

    .line 353
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 354
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setQualityReportingInterval(JI)V

    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 2

    .line 380
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 381
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setRealm(JLjava/lang/String;)V

    return-void
.end method

.method public setRoute(Ljava/lang/String;)V
    .locals 3

    .line 219
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 220
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setRoute(JLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot set route ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->userData:Ljava/lang/Object;

    return-void
.end method
