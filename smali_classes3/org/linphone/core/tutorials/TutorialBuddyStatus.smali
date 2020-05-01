.class public Lorg/linphone/core/tutorials/TutorialBuddyStatus;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/linphone/core/LinphoneCoreListener;


# instance fields
.field private TutorialNotifier:Lorg/linphone/core/tutorials/TutorialNotifier;

.field private running:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lorg/linphone/core/tutorials/TutorialNotifier;

    invoke-direct {v0}, Lorg/linphone/core/tutorials/TutorialNotifier;-><init>()V

    iput-object v0, p0, Lorg/linphone/core/tutorials/TutorialBuddyStatus;->TutorialNotifier:Lorg/linphone/core/tutorials/TutorialNotifier;

    return-void
.end method

.method public constructor <init>(Lorg/linphone/core/tutorials/TutorialNotifier;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/linphone/core/tutorials/TutorialBuddyStatus;->TutorialNotifier:Lorg/linphone/core/tutorials/TutorialNotifier;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    .line 119
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    array-length v0, p0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_2

    .line 124
    new-instance v0, Lorg/linphone/core/tutorials/TutorialBuddyStatus;

    invoke-direct {v0}, Lorg/linphone/core/tutorials/TutorialBuddyStatus;-><init>()V

    .line 127
    :try_start_0
    aget-object v2, p0, v1

    .line 130
    array-length v3, p0

    const/4 v4, 0x0

    if-le v3, v1, :cond_0

    aget-object v1, p0, v1

    goto :goto_0

    :cond_0
    move-object v1, v4

    .line 132
    :goto_0
    array-length v3, p0

    const/4 v5, 0x2

    if-le v3, v5, :cond_1

    aget-object v4, p0, v5

    .line 134
    :cond_1
    invoke-virtual {v0, v2, v1, v4}, Lorg/linphone/core/tutorials/TutorialBuddyStatus;->launchTutorial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    .line 120
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad number of arguments ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] should be 1, 2 or 3"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private write(Ljava/lang/String;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/linphone/core/tutorials/TutorialBuddyStatus;->TutorialNotifier:Lorg/linphone/core/tutorials/TutorialNotifier;

    invoke-virtual {v0, p1}, Lorg/linphone/core/tutorials/TutorialNotifier;->notify(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public authInfoRequested(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public authenticationRequested(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneAuthInfo;Lorg/linphone/core/LinphoneCore$AuthMethod;)V
    .locals 0

    return-void
.end method

.method public byeReceived(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public callEncryptionChanged(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public callState(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCall$State;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public callStatsUpdated(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCallStats;)V
    .locals 0

    return-void
.end method

.method public configuringStatus(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCore$RemoteProvisioningState;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public displayMessage(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public displayStatus(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public displayWarning(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dtmfReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;I)V
    .locals 0

    return-void
.end method

.method public ecCalibrationStatus(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public fileTransferProgressIndication(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneContent;I)V
    .locals 0

    return-void
.end method

.method public fileTransferRecv(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneContent;[BI)V
    .locals 0

    return-void
.end method

.method public fileTransferSend(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneContent;Ljava/nio/ByteBuffer;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public friendListCreated(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneFriendList;)V
    .locals 0

    return-void
.end method

.method public friendListRemoved(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneFriendList;)V
    .locals 0

    return-void
.end method

.method public globalState(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCore$GlobalState;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public infoReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneInfoMessage;)V
    .locals 0

    return-void
.end method

.method public isComposingReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatRoom;)V
    .locals 0

    return-void
.end method

.method public launchTutorial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "Exited"

    const-string v1, "Shutting down..."

    .line 143
    invoke-static {}, Lorg/linphone/core/LinphoneCoreFactory;->instance()Lorg/linphone/core/LinphoneCoreFactory;

    move-result-object v2

    const/4 v3, 0x0

    .line 147
    invoke-virtual {v2, p0, v3}, Lorg/linphone/core/LinphoneCoreFactory;->createLinphoneCore(Lorg/linphone/core/LinphoneCoreListener;Ljava/lang/Object;)Lorg/linphone/core/LinphoneCore;

    move-result-object v4

    .line 153
    :try_start_0
    invoke-interface {v4, p1}, Lorg/linphone/core/LinphoneCore;->createFriendWithAddress(Ljava/lang/String;)Lorg/linphone/core/LinphoneFriend;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Could not create friend; weird SIP address?"

    .line 155
    invoke-direct {p0, p1}, Lorg/linphone/core/tutorials/TutorialBuddyStatus;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :goto_0
    invoke-direct {p0, v1}, Lorg/linphone/core/tutorials/TutorialBuddyStatus;->write(Ljava/lang/String;)V

    .line 232
    invoke-interface {v4}, Lorg/linphone/core/LinphoneCore;->destroy()V

    .line 233
    invoke-direct {p0, v0}, Lorg/linphone/core/tutorials/TutorialBuddyStatus;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v5, "Interrupted!\nAborting"

    const/4 v6, 0x1

    if-eqz p2, :cond_2

    .line 161
    :try_start_1
    invoke-virtual {v2, p2}, Lorg/linphone/core/LinphoneCoreFactory;->createLinphoneAddress(Ljava/lang/String;)Lorg/linphone/core/LinphoneAddress;

    move-result-object v7

    .line 162
    invoke-interface {v7}, Lorg/linphone/core/LinphoneAddress;->getUserName()Ljava/lang/String;

    move-result-object v8

    .line 163
    invoke-interface {v7}, Lorg/linphone/core/LinphoneAddress;->getDomain()Ljava/lang/String;

    move-result-object v7

    if-eqz p3, :cond_1

    .line 168
    invoke-virtual {v2, v8, p3, v3, v7}, Lorg/linphone/core/LinphoneCoreFactory;->createAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/LinphoneAuthInfo;

    move-result-object p3

    invoke-interface {v4, p3}, Lorg/linphone/core/LinphoneCore;->addAuthInfo(Lorg/linphone/core/LinphoneAuthInfo;)V

    .line 172
    :cond_1
    invoke-interface {v4, p2, v7, v3, v6}, Lorg/linphone/core/LinphoneCore;->createProxyConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object p2

    .line 173
    invoke-interface {p2, v6}, Lorg/linphone/core/LinphoneProxyConfig;->enablePublish(Z)V

    .line 174
    invoke-interface {v4, p2}, Lorg/linphone/core/LinphoneCore;->addProxyConfig(Lorg/linphone/core/LinphoneProxyConfig;)V

    .line 175
    invoke-interface {v4, p2}, Lorg/linphone/core/LinphoneCore;->setDefaultProxyConfig(Lorg/linphone/core/LinphoneProxyConfig;)V

    .line 176
    :goto_1
    invoke-interface {p2}, Lorg/linphone/core/LinphoneProxyConfig;->isRegistered()Z

    move-result p3

    if-nez p3, :cond_2

    .line 177
    invoke-interface {v4}, Lorg/linphone/core/LinphoneCore;->iterate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v7, 0x3e8

    .line 179
    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 181
    :catch_0
    :try_start_3
    invoke-direct {p0, v5}, Lorg/linphone/core/tutorials/TutorialBuddyStatus;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-interface {p1, v6}, Lorg/linphone/core/LinphoneFriend;->enableSubscribes(Z)V

    .line 191
    sget-object p2, Lorg/linphone/core/LinphoneFriend$SubscribePolicy;->SPAccept:Lorg/linphone/core/LinphoneFriend$SubscribePolicy;

    invoke-interface {p1, p2}, Lorg/linphone/core/LinphoneFriend;->setIncSubscribePolicy(Lorg/linphone/core/LinphoneFriend$SubscribePolicy;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    :try_start_4
    invoke-interface {v4, p1}, Lorg/linphone/core/LinphoneCore;->addFriend(Lorg/linphone/core/LinphoneFriend;)V
    :try_end_4
    .catch Lorg/linphone/core/LinphoneCoreException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 201
    :try_start_5
    sget-object p2, Lorg/linphone/core/OnlineStatus;->Online:Lorg/linphone/core/OnlineStatus;

    const/4 p3, 0x0

    invoke-interface {v4, p3, v3, p2}, Lorg/linphone/core/LinphoneCore;->setPresenceInfo(ILjava/lang/String;Lorg/linphone/core/OnlineStatus;)V

    .line 205
    iput-boolean v6, p0, Lorg/linphone/core/tutorials/TutorialBuddyStatus;->running:Z

    .line 206
    :goto_2
    iget-boolean p2, p0, Lorg/linphone/core/tutorials/TutorialBuddyStatus;->running:Z

    if-eqz p2, :cond_3

    .line 207
    invoke-interface {v4}, Lorg/linphone/core/LinphoneCore;->iterate()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-wide/16 v6, 0x32

    .line 209
    :try_start_6
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 211
    :catch_1
    :try_start_7
    invoke-direct {p0, v5}, Lorg/linphone/core/tutorials/TutorialBuddyStatus;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_3
    sget-object p2, Lorg/linphone/core/OnlineStatus;->Offline:Lorg/linphone/core/OnlineStatus;

    invoke-interface {v4, p3, v3, p2}, Lorg/linphone/core/LinphoneCore;->setPresenceInfo(ILjava/lang/String;Lorg/linphone/core/OnlineStatus;)V

    .line 220
    invoke-interface {v4}, Lorg/linphone/core/LinphoneCore;->iterate()V

    .line 223
    invoke-interface {p1}, Lorg/linphone/core/LinphoneFriend;->edit()V

    .line 224
    invoke-interface {p1, p3}, Lorg/linphone/core/LinphoneFriend;->enableSubscribes(Z)V

    .line 225
    invoke-interface {p1}, Lorg/linphone/core/LinphoneFriend;->done()V

    .line 226
    invoke-interface {v4}, Lorg/linphone/core/LinphoneCore;->iterate()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 230
    invoke-direct {p0, v1}, Lorg/linphone/core/tutorials/TutorialBuddyStatus;->write(Ljava/lang/String;)V

    .line 232
    invoke-interface {v4}, Lorg/linphone/core/LinphoneCore;->destroy()V

    .line 233
    invoke-direct {p0, v0}, Lorg/linphone/core/tutorials/TutorialBuddyStatus;->write(Ljava/lang/String;)V

    return-void

    .line 196
    :catch_2
    :try_start_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error while adding friend "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/linphone/core/LinphoneFriend;->getAddress()Lorg/linphone/core/LinphoneAddress;

    move-result-object p1

    invoke-interface {p1}, Lorg/linphone/core/LinphoneAddress;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to linphone"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/linphone/core/tutorials/TutorialBuddyStatus;->write(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 230
    invoke-direct {p0, v1}, Lorg/linphone/core/tutorials/TutorialBuddyStatus;->write(Ljava/lang/String;)V

    .line 232
    invoke-interface {v4}, Lorg/linphone/core/LinphoneCore;->destroy()V

    .line 233
    invoke-direct {p0, v0}, Lorg/linphone/core/tutorials/TutorialBuddyStatus;->write(Ljava/lang/String;)V

    throw p1
.end method

.method public messageReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatRoom;Lorg/linphone/core/LinphoneChatMessage;)V
    .locals 0

    return-void
.end method

.method public messageReceivedUnableToDecrypted(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatRoom;Lorg/linphone/core/LinphoneChatMessage;)V
    .locals 0

    return-void
.end method

.method public networkReachableChanged(Lorg/linphone/core/LinphoneCore;Z)V
    .locals 0

    return-void
.end method

.method public newSubscriptionRequest(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneFriend;Ljava/lang/String;)V
    .locals 1

    .line 83
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/linphone/core/LinphoneFriend;->getAddress()Lorg/linphone/core/LinphoneAddress;

    move-result-object v0

    invoke-interface {v0}, Lorg/linphone/core/LinphoneAddress;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] wants to see your status, accepting"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/linphone/core/tutorials/TutorialBuddyStatus;->write(Ljava/lang/String;)V

    .line 84
    invoke-interface {p2}, Lorg/linphone/core/LinphoneFriend;->edit()V

    .line 85
    sget-object p3, Lorg/linphone/core/LinphoneFriend$SubscribePolicy;->SPAccept:Lorg/linphone/core/LinphoneFriend$SubscribePolicy;

    invoke-interface {p2, p3}, Lorg/linphone/core/LinphoneFriend;->setIncSubscribePolicy(Lorg/linphone/core/LinphoneFriend$SubscribePolicy;)V

    .line 86
    invoke-interface {p2}, Lorg/linphone/core/LinphoneFriend;->done()V

    .line 89
    :try_start_0
    invoke-interface {p1, p2}, Lorg/linphone/core/LinphoneCore;->addFriend(Lorg/linphone/core/LinphoneFriend;)V
    :try_end_0
    .catch Lorg/linphone/core/LinphoneCoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error while adding friend ["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/linphone/core/LinphoneFriend;->getAddress()Lorg/linphone/core/LinphoneAddress;

    move-result-object p2

    invoke-interface {p2}, Lorg/linphone/core/LinphoneAddress;->getUserName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] to linphone in the callback"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/linphone/core/tutorials/TutorialBuddyStatus;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifyPresenceReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneFriend;)V
    .locals 1

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "New state ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/linphone/core/LinphoneFriend;->getStatus()Lorg/linphone/core/OnlineStatus;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] for user id ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/linphone/core/LinphoneFriend;->getAddress()Lorg/linphone/core/LinphoneAddress;

    move-result-object p2

    invoke-interface {p2}, Lorg/linphone/core/LinphoneAddress;->getUserName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/linphone/core/tutorials/TutorialBuddyStatus;->write(Ljava/lang/String;)V

    return-void
.end method

.method public notifyReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneAddress;[B)V
    .locals 0

    return-void
.end method

.method public notifyReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneEvent;Ljava/lang/String;Lorg/linphone/core/LinphoneContent;)V
    .locals 0

    return-void
.end method

.method public publishStateChanged(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneEvent;Lorg/linphone/core/PublishState;)V
    .locals 0

    return-void
.end method

.method public registrationState(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneProxyConfig;Lorg/linphone/core/LinphoneCore$RegistrationState;Ljava/lang/String;)V
    .locals 0

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/linphone/core/LinphoneProxyConfig;->getIdentity()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/linphone/core/tutorials/TutorialBuddyStatus;->write(Ljava/lang/String;)V

    return-void
.end method

.method public show(Lorg/linphone/core/LinphoneCore;)V
    .locals 0

    return-void
.end method

.method public stopMainLoop()V
    .locals 1

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lorg/linphone/core/tutorials/TutorialBuddyStatus;->running:Z

    return-void
.end method

.method public subscriptionStateChanged(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneEvent;Lorg/linphone/core/SubscriptionState;)V
    .locals 0

    return-void
.end method

.method public transferState(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCall$State;)V
    .locals 0

    return-void
.end method

.method public uploadProgressIndication(Lorg/linphone/core/LinphoneCore;II)V
    .locals 0

    return-void
.end method

.method public uploadStateChanged(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
