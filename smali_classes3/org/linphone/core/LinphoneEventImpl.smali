.class public Lorg/linphone/core/LinphoneEventImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/linphone/core/LinphoneEvent;


# instance fields
.field private mNativePtr:J

.field private mUserContext:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    return-void
.end method

.method private native acceptSubscription(J)I
.end method

.method private native addCustomHeader(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native denySubscription(JI)I
.end method

.method private native getCore(J)Ljava/lang/Object;
.end method

.method private native getCustomHeader(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native getErrorInfo(J)J
.end method

.method private native getEventName(J)Ljava/lang/String;
.end method

.method private native getReason(J)I
.end method

.method private native getSubscriptionDir(J)I
.end method

.method private native getSubscriptionState(J)I
.end method

.method private native notify(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I
.end method

.method private native sendPublish(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
.end method

.method private native sendSubscribe(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
.end method

.method private native terminate(J)I
.end method

.method private native unref(J)V
.end method

.method private native updatePublish(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I
.end method

.method private native updateSubscribe(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I
.end method


# virtual methods
.method public declared-synchronized acceptSubscription()V
    .locals 3

    monitor-enter p0

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneEventImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    iget-wide v1, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v1, v2}, Lorg/linphone/core/LinphoneEventImpl;->acceptSubscription(J)I

    .line 23
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 23
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addCustomHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 107
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneEventImpl;->addCustomHeader(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized denySubscription(Lorg/linphone/core/Reason;)V
    .locals 3

    monitor-enter p0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneEventImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    :try_start_1
    iget-wide v1, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    iget p1, p1, Lorg/linphone/core/Reason;->mValue:I

    invoke-direct {p0, v1, v2, p1}, Lorg/linphone/core/LinphoneEventImpl;->denySubscription(JI)I

    .line 31
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 31
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .locals 2

    .line 101
    iget-wide v0, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneEventImpl;->unref(J)V

    return-void
.end method

.method public declared-synchronized getCore()Lorg/linphone/core/LinphoneCore;
    .locals 2

    monitor-enter p0

    .line 146
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneEventImpl;->getCore(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCustomHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 113
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneEventImpl;->getCustomHeader(JLjava/lang/String;)Ljava/lang/String;

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

.method public declared-synchronized getErrorInfo()Lorg/linphone/core/ErrorInfo;
    .locals 3

    monitor-enter p0

    .line 140
    :try_start_0
    new-instance v0, Lorg/linphone/core/ErrorInfoImpl;

    iget-wide v1, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v1, v2}, Lorg/linphone/core/LinphoneEventImpl;->getErrorInfo(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/ErrorInfoImpl;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEventName()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 15
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneEventImpl;->getEventName(J)Ljava/lang/String;

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

.method public declared-synchronized getReason()Lorg/linphone/core/Reason;
    .locals 2

    monitor-enter p0

    .line 69
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneEventImpl;->getReason(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/Reason;->fromInt(I)Lorg/linphone/core/Reason;

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

.method public declared-synchronized getSubscriptionDir()Lorg/linphone/core/SubscriptionDir;
    .locals 2

    monitor-enter p0

    .line 85
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneEventImpl;->getSubscriptionDir(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/SubscriptionDir;->fromInt(I)Lorg/linphone/core/SubscriptionDir;

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

.method public declared-synchronized getSubscriptionState()Lorg/linphone/core/SubscriptionState;
    .locals 2

    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneEventImpl;->getSubscriptionState(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/SubscriptionState;->fromInt(I)Lorg/linphone/core/SubscriptionState;

    move-result-object v0
    :try_end_0
    .catch Lorg/linphone/core/LinphoneCoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 95
    :try_start_1
    invoke-virtual {v0}, Lorg/linphone/core/LinphoneCoreException;->printStackTrace()V

    .line 97
    sget-object v0, Lorg/linphone/core/SubscriptionState;->Error:Lorg/linphone/core/SubscriptionState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserContext()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lorg/linphone/core/LinphoneEventImpl;->mUserContext:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notify(Lorg/linphone/core/LinphoneContent;)V
    .locals 8

    .line 37
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneEventImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v0

    monitor-enter v0

    .line 38
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getSubtype()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getData()[B

    move-result-object v6

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getEncoding()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneEventImpl;->notify(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I

    .line 39
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendPublish(Lorg/linphone/core/LinphoneContent;)V
    .locals 8

    .line 130
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneEventImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 132
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getSubtype()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getData()[B

    move-result-object v6

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getEncoding()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneEventImpl;->sendPublish(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneEventImpl;->sendPublish(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 135
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendSubscribe(Lorg/linphone/core/LinphoneContent;)V
    .locals 8

    .line 119
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneEventImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 121
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getSubtype()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getData()[B

    move-result-object v6

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getEncoding()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneEventImpl;->sendSubscribe(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneEventImpl;->sendSubscribe(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 124
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized setUserContext(Ljava/lang/Object;)V
    .locals 0

    monitor-enter p0

    .line 74
    :try_start_0
    iput-object p1, p0, Lorg/linphone/core/LinphoneEventImpl;->mUserContext:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public terminate()V
    .locals 3

    .line 61
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneEventImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v0

    monitor-enter v0

    .line 62
    :try_start_0
    iget-wide v1, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v1, v2}, Lorg/linphone/core/LinphoneEventImpl;->terminate(J)I

    .line 63
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updatePublish(Lorg/linphone/core/LinphoneContent;)V
    .locals 8

    .line 53
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneEventImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v0

    monitor-enter v0

    .line 54
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getSubtype()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getData()[B

    move-result-object v6

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getEncoding()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneEventImpl;->updatePublish(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I

    .line 55
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateSubscribe(Lorg/linphone/core/LinphoneContent;)V
    .locals 8

    .line 45
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneEventImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v0

    monitor-enter v0

    .line 46
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getSubtype()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getData()[B

    move-result-object v6

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getEncoding()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneEventImpl;->updateSubscribe(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I

    .line 47
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
