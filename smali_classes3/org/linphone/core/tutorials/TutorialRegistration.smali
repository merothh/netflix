.class public Lorg/linphone/core/tutorials/TutorialRegistration;
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

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lorg/linphone/core/tutorials/TutorialNotifier;

    invoke-direct {v0}, Lorg/linphone/core/tutorials/TutorialNotifier;-><init>()V

    iput-object v0, p0, Lorg/linphone/core/tutorials/TutorialRegistration;->TutorialNotifier:Lorg/linphone/core/tutorials/TutorialNotifier;

    return-void
.end method

.method public constructor <init>(Lorg/linphone/core/tutorials/TutorialNotifier;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/linphone/core/tutorials/TutorialRegistration;->TutorialNotifier:Lorg/linphone/core/tutorials/TutorialNotifier;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    .line 103
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 108
    new-instance v0, Lorg/linphone/core/tutorials/TutorialRegistration;

    invoke-direct {v0}, Lorg/linphone/core/tutorials/TutorialRegistration;-><init>()V

    const/4 v2, 0x1

    .line 111
    :try_start_0
    aget-object v2, p0, v2

    .line 113
    aget-object p0, p0, v1

    .line 114
    invoke-virtual {v0, v2, p0}, Lorg/linphone/core/tutorials/TutorialRegistration;->launchTutorial(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 104
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad number of arguments"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private sleep(I)V
    .locals 2

    int-to-long v0, p1

    .line 189
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Interrupted!\nAborting"

    .line 191
    invoke-direct {p0, p1}, Lorg/linphone/core/tutorials/TutorialRegistration;->write(Ljava/lang/String;)V

    return-void
.end method

.method private write(Ljava/lang/String;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/linphone/core/tutorials/TutorialRegistration;->TutorialNotifier:Lorg/linphone/core/tutorials/TutorialNotifier;

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

.method public launchTutorial(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "Shutting down linphone..."

    .line 123
    invoke-static {}, Lorg/linphone/core/LinphoneCoreFactory;->instance()Lorg/linphone/core/LinphoneCoreFactory;

    move-result-object v1

    const/4 v2, 0x0

    .line 127
    invoke-virtual {v1, p0, v2}, Lorg/linphone/core/LinphoneCoreFactory;->createLinphoneCore(Lorg/linphone/core/LinphoneCoreListener;Ljava/lang/Object;)Lorg/linphone/core/LinphoneCore;

    move-result-object v3

    .line 133
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/linphone/core/LinphoneCoreFactory;->createLinphoneAddress(Ljava/lang/String;)Lorg/linphone/core/LinphoneAddress;

    move-result-object v4

    .line 134
    invoke-interface {v4}, Lorg/linphone/core/LinphoneAddress;->getUserName()Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-interface {v4}, Lorg/linphone/core/LinphoneAddress;->getDomain()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {v1, v5, p2, v2, v4}, Lorg/linphone/core/LinphoneCoreFactory;->createAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/LinphoneAuthInfo;

    move-result-object p2

    invoke-interface {v3, p2}, Lorg/linphone/core/LinphoneCore;->addAuthInfo(Lorg/linphone/core/LinphoneAuthInfo;)V

    :cond_0
    const/4 p2, 0x1

    .line 144
    invoke-interface {v3, p1, v4, v2, p2}, Lorg/linphone/core/LinphoneCore;->createProxyConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object p1

    const/16 v1, 0x7d0

    .line 145
    invoke-interface {p1, v1}, Lorg/linphone/core/LinphoneProxyConfig;->setExpires(I)V

    .line 146
    invoke-interface {v3, p1}, Lorg/linphone/core/LinphoneCore;->addProxyConfig(Lorg/linphone/core/LinphoneProxyConfig;)V

    .line 147
    invoke-interface {v3, p1}, Lorg/linphone/core/LinphoneCore;->setDefaultProxyConfig(Lorg/linphone/core/LinphoneProxyConfig;)V

    .line 152
    iput-boolean p2, p0, Lorg/linphone/core/tutorials/TutorialRegistration;->running:Z

    .line 153
    :goto_0
    iget-boolean p1, p0, Lorg/linphone/core/tutorials/TutorialRegistration;->running:Z

    const/16 v1, 0x32

    if-eqz p1, :cond_1

    .line 154
    invoke-interface {v3}, Lorg/linphone/core/LinphoneCore;->iterate()V

    .line 155
    invoke-direct {p0, v1}, Lorg/linphone/core/tutorials/TutorialRegistration;->sleep(I)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-interface {v3}, Lorg/linphone/core/LinphoneCore;->getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object p1

    invoke-interface {p1}, Lorg/linphone/core/LinphoneProxyConfig;->edit()Lorg/linphone/core/LinphoneProxyConfig;

    .line 161
    invoke-interface {v3}, Lorg/linphone/core/LinphoneCore;->getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lorg/linphone/core/LinphoneProxyConfig;->enableRegister(Z)Lorg/linphone/core/LinphoneProxyConfig;

    .line 162
    invoke-interface {v3}, Lorg/linphone/core/LinphoneCore;->getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object p1

    invoke-interface {p1}, Lorg/linphone/core/LinphoneProxyConfig;->done()V

    .line 163
    :goto_1
    invoke-interface {v3}, Lorg/linphone/core/LinphoneCore;->getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object p1

    invoke-interface {p1}, Lorg/linphone/core/LinphoneProxyConfig;->getState()Lorg/linphone/core/LinphoneCore$RegistrationState;

    move-result-object p1

    sget-object v2, Lorg/linphone/core/LinphoneCore$RegistrationState;->RegistrationCleared:Lorg/linphone/core/LinphoneCore$RegistrationState;

    if-eq p1, v2, :cond_2

    .line 164
    invoke-interface {v3}, Lorg/linphone/core/LinphoneCore;->iterate()V

    .line 165
    invoke-direct {p0, v1}, Lorg/linphone/core/tutorials/TutorialRegistration;->sleep(I)V

    goto :goto_1

    .line 169
    :cond_2
    invoke-interface {v3}, Lorg/linphone/core/LinphoneCore;->getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object p1

    invoke-interface {p1}, Lorg/linphone/core/LinphoneProxyConfig;->edit()Lorg/linphone/core/LinphoneProxyConfig;

    .line 170
    invoke-interface {v3}, Lorg/linphone/core/LinphoneCore;->getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/linphone/core/LinphoneProxyConfig;->enableRegister(Z)Lorg/linphone/core/LinphoneProxyConfig;

    .line 171
    invoke-interface {v3}, Lorg/linphone/core/LinphoneCore;->getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object p1

    invoke-interface {p1}, Lorg/linphone/core/LinphoneProxyConfig;->done()V

    .line 173
    :goto_2
    invoke-interface {v3}, Lorg/linphone/core/LinphoneCore;->getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object p1

    invoke-interface {p1}, Lorg/linphone/core/LinphoneProxyConfig;->getState()Lorg/linphone/core/LinphoneCore$RegistrationState;

    move-result-object p1

    sget-object p2, Lorg/linphone/core/LinphoneCore$RegistrationState;->RegistrationOk:Lorg/linphone/core/LinphoneCore$RegistrationState;

    if-eq p1, p2, :cond_3

    .line 174
    invoke-interface {v3}, Lorg/linphone/core/LinphoneCore;->getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object p1

    invoke-interface {p1}, Lorg/linphone/core/LinphoneProxyConfig;->getState()Lorg/linphone/core/LinphoneCore$RegistrationState;

    move-result-object p1

    sget-object p2, Lorg/linphone/core/LinphoneCore$RegistrationState;->RegistrationFailed:Lorg/linphone/core/LinphoneCore$RegistrationState;

    if-eq p1, p2, :cond_3

    .line 175
    invoke-interface {v3}, Lorg/linphone/core/LinphoneCore;->iterate()V

    .line 176
    invoke-direct {p0, v1}, Lorg/linphone/core/tutorials/TutorialRegistration;->sleep(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 181
    :cond_3
    invoke-direct {p0, v0}, Lorg/linphone/core/tutorials/TutorialRegistration;->write(Ljava/lang/String;)V

    .line 183
    invoke-interface {v3}, Lorg/linphone/core/LinphoneCore;->destroy()V

    return-void

    :catchall_0
    move-exception p1

    .line 181
    invoke-direct {p0, v0}, Lorg/linphone/core/tutorials/TutorialRegistration;->write(Ljava/lang/String;)V

    .line 183
    invoke-interface {v3}, Lorg/linphone/core/LinphoneCore;->destroy()V

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
    .locals 0

    return-void
.end method

.method public notifyPresenceReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneFriend;)V
    .locals 0

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

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/linphone/core/LinphoneProxyConfig;->getIdentity()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/linphone/core/tutorials/TutorialRegistration;->write(Ljava/lang/String;)V

    return-void
.end method

.method public show(Lorg/linphone/core/LinphoneCore;)V
    .locals 0

    return-void
.end method

.method public stopMainLoop()V
    .locals 1

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lorg/linphone/core/tutorials/TutorialRegistration;->running:Z

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
