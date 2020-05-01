.class public Lorg/linphone/core/LinphoneFriendImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/linphone/core/LinphoneFriend;
.implements Ljava/io/Serializable;


# instance fields
.field protected final transient nativePtr:J

.field private userdData:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0}, Lorg/linphone/core/LinphoneFriendImpl;->newLinphoneFriend(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide p1, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneFriendImpl;->newLinphoneFriend(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    return-void
.end method

.method private native addAddress(JJ)V
.end method

.method private native addPhoneNumber(JLjava/lang/String;)V
.end method

.method private native done(J)V
.end method

.method private native edit(J)V
.end method

.method private native enableSubscribes(JZ)V
.end method

.method private native finalize(J)V
.end method

.method private native getAddress(J)J
.end method

.method private native getAddresses(J)[J
.end method

.method private native getCore(J)Ljava/lang/Object;
.end method

.method private native getFamilyName(J)Ljava/lang/String;
.end method

.method private native getGivenName(J)Ljava/lang/String;
.end method

.method private native getIncSubscribePolicy(J)I
.end method

.method private native getName(J)Ljava/lang/String;
.end method

.method private native getOrganization(J)Ljava/lang/String;
.end method

.method private native getPhoneNumbers(J)[Ljava/lang/Object;
.end method

.method private native getPresenceModel(J)Ljava/lang/Object;
.end method

.method private native getPresenceModelForUri(JLjava/lang/String;)Ljava/lang/Object;
.end method

.method private native getRefKey(J)Ljava/lang/String;
.end method

.method private native getStatus(J)I
.end method

.method private getSyncObject()Ljava/lang/Object;
    .locals 2

    .line 131
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getCore(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method

.method private native getVcardToString(J)Ljava/lang/String;
.end method

.method private native isAlreadyPresentInFriendList(J)Z
.end method

.method private native isPresenceReceived(J)Z
.end method

.method private native isSubscribesEnabled(J)Z
.end method

.method private native newLinphoneFriend(Ljava/lang/String;)J
.end method

.method private native removeAddress(JJ)V
.end method

.method private native removePhoneNumber(JLjava/lang/String;)V
.end method

.method private native setAddress(JJ)V
.end method

.method private native setFamilyName(JLjava/lang/String;)V
.end method

.method private native setGivenName(JLjava/lang/String;)V
.end method

.method private native setIncSubscribePolicy(JI)V
.end method

.method private native setName(JLjava/lang/String;)V
.end method

.method private native setOrganization(JLjava/lang/String;)V
.end method

.method private native setPresenceModel(JJ)V
.end method

.method private native setRefKey(JLjava/lang/String;)V
.end method


# virtual methods
.method public addAddress(Lorg/linphone/core/LinphoneAddress;)V
    .locals 4

    .line 214
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneFriendImpl;->addAddress(JJ)V

    return-void
.end method

.method public addPhoneNumber(Ljava/lang/String;)V
    .locals 2

    .line 239
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneFriendImpl;->addPhoneNumber(JLjava/lang/String;)V

    return-void
.end method

.method public done()V
    .locals 3

    .line 117
    invoke-direct {p0}, Lorg/linphone/core/LinphoneFriendImpl;->getSyncObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 118
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v1, v2}, Lorg/linphone/core/LinphoneFriendImpl;->done(J)V

    .line 119
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public edit()V
    .locals 3

    .line 112
    invoke-direct {p0}, Lorg/linphone/core/LinphoneFriendImpl;->getSyncObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 113
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v1, v2}, Lorg/linphone/core/LinphoneFriendImpl;->edit(J)V

    .line 114
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enableSubscribes(Z)V
    .locals 3

    .line 89
    invoke-direct {p0}, Lorg/linphone/core/LinphoneFriendImpl;->getSyncObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 90
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v1, v2, p1}, Lorg/linphone/core/LinphoneFriendImpl;->enableSubscribes(JZ)V

    .line 91
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected finalize()V
    .locals 5

    .line 65
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 66
    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->finalize(J)V

    .line 68
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAddress()Lorg/linphone/core/LinphoneAddress;
    .locals 5

    .line 74
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getAddress(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 76
    new-instance v2, Lorg/linphone/core/LinphoneAddressImpl;

    sget-object v3, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {v2, v0, v1, v3}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAddresses()[Lorg/linphone/core/LinphoneAddress;
    .locals 7

    .line 201
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getAddresses(J)[J

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 204
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Lorg/linphone/core/LinphoneAddress;

    const/4 v2, 0x0

    .line 205
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 206
    new-instance v3, Lorg/linphone/core/LinphoneAddressImpl;

    aget-wide v4, v0, v2

    sget-object v6, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {v3, v4, v5, v6}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 2

    .line 172
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getFamilyName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 2

    .line 183
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getGivenName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncSubscribePolicy()Lorg/linphone/core/LinphoneFriend$SubscribePolicy;
    .locals 2

    .line 86
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getIncSubscribePolicy(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneFriend$SubscribePolicy;->fromInt(I)Lorg/linphone/core/LinphoneFriend$SubscribePolicy;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 161
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 122
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    return-wide v0
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 2

    .line 195
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getOrganization(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumbers()[Ljava/lang/String;
    .locals 4

    .line 226
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getPhoneNumbers(J)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 230
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 231
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getPresenceModel()Lorg/linphone/core/PresenceModel;
    .locals 2

    .line 103
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getPresenceModel(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/PresenceModel;

    return-object v0
.end method

.method public getPresenceModelForUri(Ljava/lang/String;)Lorg/linphone/core/PresenceModel;
    .locals 2

    .line 106
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneFriendImpl;->getPresenceModelForUri(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/linphone/core/PresenceModel;

    return-object p1
.end method

.method public getRefKey()Ljava/lang/String;
    .locals 2

    .line 143
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getRefKey(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lorg/linphone/core/OnlineStatus;
    .locals 2

    .line 100
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getStatus(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/OnlineStatus;->fromInt(I)Lorg/linphone/core/OnlineStatus;

    move-result-object v0

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->userdData:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized getVcardToString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 148
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getVcardToString(J)Ljava/lang/String;

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

.method public isAlreadyPresentInFriendList()Z
    .locals 2

    .line 251
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->isAlreadyPresentInFriendList(J)Z

    move-result v0

    return v0
.end method

.method public isPresenceReceived()Z
    .locals 2

    .line 97
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->isPresenceReceived(J)Z

    move-result v0

    return v0
.end method

.method public isSubscribesEnabled()Z
    .locals 2

    .line 94
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->isSubscribesEnabled(J)Z

    move-result v0

    return v0
.end method

.method public removeAddress(Lorg/linphone/core/LinphoneAddress;)V
    .locals 4

    .line 220
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneFriendImpl;->removeAddress(JJ)V

    return-void
.end method

.method public removePhoneNumber(Ljava/lang/String;)V
    .locals 2

    .line 245
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneFriendImpl;->removePhoneNumber(JLjava/lang/String;)V

    return-void
.end method

.method public setAddress(Lorg/linphone/core/LinphoneAddress;)V
    .locals 4

    .line 71
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneFriendImpl;->setAddress(JJ)V

    return-void
.end method

.method public setFamilyName(Ljava/lang/String;)V
    .locals 2

    .line 167
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneFriendImpl;->setFamilyName(JLjava/lang/String;)V

    return-void
.end method

.method public setGivenName(Ljava/lang/String;)V
    .locals 2

    .line 178
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneFriendImpl;->setGivenName(JLjava/lang/String;)V

    return-void
.end method

.method public setIncSubscribePolicy(Lorg/linphone/core/LinphoneFriend$SubscribePolicy;)V
    .locals 3

    .line 81
    invoke-direct {p0}, Lorg/linphone/core/LinphoneFriendImpl;->getSyncObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 82
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    iget p1, p1, Lorg/linphone/core/LinphoneFriend$SubscribePolicy;->mValue:I

    invoke-direct {p0, v1, v2, p1}, Lorg/linphone/core/LinphoneFriendImpl;->setIncSubscribePolicy(JI)V

    .line 83
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .line 155
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneFriendImpl;->setName(JLjava/lang/String;)V

    return-void
.end method

.method public setOrganization(Ljava/lang/String;)V
    .locals 2

    .line 189
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneFriendImpl;->setOrganization(JLjava/lang/String;)V

    return-void
.end method

.method public setPresenceModel(Lorg/linphone/core/PresenceModel;)V
    .locals 4

    .line 109
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/PresenceModelImpl;

    invoke-virtual {p1}, Lorg/linphone/core/PresenceModelImpl;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneFriendImpl;->setPresenceModel(JJ)V

    return-void
.end method

.method public setRefKey(Ljava/lang/String;)V
    .locals 3

    .line 137
    invoke-direct {p0}, Lorg/linphone/core/LinphoneFriendImpl;->getSyncObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 138
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v1, v2, p1}, Lorg/linphone/core/LinphoneFriendImpl;->setRefKey(JLjava/lang/String;)V

    .line 139
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

    .line 50
    iput-object p1, p0, Lorg/linphone/core/LinphoneFriendImpl;->userdData:Ljava/lang/Object;

    return-void
.end method
