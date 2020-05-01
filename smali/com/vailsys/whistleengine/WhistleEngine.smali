.class public Lcom/vailsys/whistleengine/WhistleEngine;
.super Landroid/app/Service;
.source "WhistleEngine.java"


# instance fields
.field private appState:Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

.field private callsActive:I

.field private context:Landroid/content/Context;

.field private eventHandler:Landroid/os/Handler;

.field private eventListener:Lcom/vailsys/whistleengine/WhistleEngineDelegate;

.field private powerManagement:Lcom/vailsys/whistleengine/PowerManagement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "whistleengine"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/vailsys/whistleengine/WhistleEngine;->loadInitialization()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    sget-object v0, Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;->UNKNOWN:Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    iput-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine;->appState:Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    return-void
.end method

.method private NormalizeAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string/jumbo v0, "sip:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngineDelegate;
    .locals 1

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine;->eventListener:Lcom/vailsys/whistleengine/WhistleEngineDelegate;

    return-object v0
.end method

.method private native addDialXHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private callConnected(I)V
    .locals 1

    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngine$3;

    invoke-direct {v0, p0, p1}, Lcom/vailsys/whistleengine/WhistleEngine$3;-><init>(Lcom/vailsys/whistleengine/WhistleEngine;I)V

    invoke-direct {p0, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->callbackEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private callDisconnected(I)V
    .locals 1

    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngine$4;

    invoke-direct {v0, p0, p1}, Lcom/vailsys/whistleengine/WhistleEngine$4;-><init>(Lcom/vailsys/whistleengine/WhistleEngine;I)V

    invoke-direct {p0, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->callbackEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private declared-synchronized callEnded()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vailsys/whistleengine/WhistleEngine;->callsActive:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vailsys/whistleengine/WhistleEngine;->callsActive:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine;->appState:Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    sget-object v1, Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;->FOREGROUND:Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->stopForeground(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private callEnded(I)V
    .locals 1

    invoke-direct {p0}, Lcom/vailsys/whistleengine/WhistleEngine;->callEnded()V

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine;->eventListener:Lcom/vailsys/whistleengine/WhistleEngineDelegate;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngine$7;

    invoke-direct {v0, p0, p1}, Lcom/vailsys/whistleengine/WhistleEngine$7;-><init>(Lcom/vailsys/whistleengine/WhistleEngine;I)V

    invoke-direct {p0, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->callbackEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private callFailed(ILjava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngine$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vailsys/whistleengine/WhistleEngine$5;-><init>(Lcom/vailsys/whistleengine/WhistleEngine;ILjava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->callbackEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private callRinging(I)V
    .locals 1

    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngine$2;

    invoke-direct {v0, p0, p1}, Lcom/vailsys/whistleengine/WhistleEngine$2;-><init>(Lcom/vailsys/whistleengine/WhistleEngine;I)V

    invoke-direct {p0, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->callbackEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private callSecured(IZ)V
    .locals 1

    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngine$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/vailsys/whistleengine/WhistleEngine$12;-><init>(Lcom/vailsys/whistleengine/WhistleEngine;IZ)V

    invoke-direct {p0, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->callbackEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private callbackEvent(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private configureThresholds(Lcom/vailsys/whistleengine/WhistleEngineThresholds;)V
    .locals 9

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->getSIPThreshold()Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->getYellow()I

    move-result v1

    invoke-virtual {p1}, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->getSIPThreshold()Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->getRed()I

    move-result v2

    invoke-virtual {p1}, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->getRTTThreshold()Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->getYellow()I

    move-result v3

    invoke-virtual {p1}, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->getRTTThreshold()Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->getRed()I

    move-result v4

    invoke-virtual {p1}, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->getJitterThreshold()Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->getYellow()I

    move-result v5

    invoke-virtual {p1}, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->getJitterThreshold()Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->getRed()I

    move-result v6

    invoke-virtual {p1}, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->getPacketLossThreshold()Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->getYellow()I

    move-result v7

    invoke-virtual {p1}, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->getPacketLossThreshold()Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->getRed()I

    move-result v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/vailsys/whistleengine/WhistleEngine;->setConnectivityThresholds(IIIIIIII)V

    :cond_0
    return-void
.end method

.method private connectivityUpdate(II)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;->RED:Lcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;

    :goto_1
    new-instance v1, Lcom/vailsys/whistleengine/WhistleEngine$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/vailsys/whistleengine/WhistleEngine$6;-><init>(Lcom/vailsys/whistleengine/WhistleEngine;ILcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;)V

    invoke-direct {p0, v1}, Lcom/vailsys/whistleengine/WhistleEngine;->callbackEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;->YELLOW:Lcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;->GREEN:Lcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private engineNotReady()V
    .locals 1

    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngine$11;

    invoke-direct {v0, p0}, Lcom/vailsys/whistleengine/WhistleEngine$11;-><init>(Lcom/vailsys/whistleengine/WhistleEngine;)V

    invoke-direct {p0, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->callbackEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private engineReady()V
    .locals 1

    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngine$10;

    invoke-direct {v0, p0}, Lcom/vailsys/whistleengine/WhistleEngine$10;-><init>(Lcom/vailsys/whistleengine/WhistleEngine;)V

    invoke-direct {p0, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->callbackEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private incomingCall(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/vailsys/whistleengine/WhistleEngine;->newCallActive()V

    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngine$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/vailsys/whistleengine/WhistleEngine$1;-><init>(Lcom/vailsys/whistleengine/WhistleEngine;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->callbackEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initAudio(Lcom/vailsys/whistleengine/WhistleEngineConfig;)V
    .locals 7

    const v0, 0xbb80

    const/16 v1, 0x7d00

    const/16 v2, 0x5dc0

    const/16 v3, 0x3e80

    const/16 v4, 0x1f40

    invoke-static {}, Lcom/vailsys/whistleengine/AudioUtils;->getSampleRate()I

    move-result v5

    invoke-virtual {p1}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->getSampleRate()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-gtz v5, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Unable to initialize audio"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-lt v5, v0, :cond_1

    :goto_0
    invoke-virtual {p1}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->getEchoCanceler()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/vailsys/whistleengine/WhistleEngine;->setAudioConfiguration(IZ)V

    return-void

    :cond_1
    if-lt v5, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-lt v5, v2, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    if-lt v5, v3, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    if-lt v5, v4, :cond_5

    move v0, v4

    goto :goto_0

    :cond_5
    move v0, v5

    goto :goto_0
.end method

.method private initNetworking(Lcom/vailsys/whistleengine/WhistleEngineConfig;)V
    .locals 6

    invoke-virtual {p1}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->getTransportMode()Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

    move-result-object v0

    sget-object v1, Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;->UDP:Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/vailsys/whistleengine/WhistleEngine;->setUDPMode()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vailsys/whistleengine/BindAddress;->getBestBindAddress(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-direct {p0, v1, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->setBindAddress(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->getTransportMode()Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

    move-result-object v0

    sget-object v1, Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;->TLS:Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->getTLSPort()I

    move-result v1

    invoke-virtual {p1}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->getPrivateKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->getRootCertificate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->getCertificateAuthorityFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->getCertificateChain()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vailsys/whistleengine/WhistleEngine;->setTLSMode(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static native loadInitialization()V
.end method

.method private networkFailure(I)V
    .locals 1

    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngine$14;

    invoke-direct {v0, p0, p1}, Lcom/vailsys/whistleengine/WhistleEngine$14;-><init>(Lcom/vailsys/whistleengine/WhistleEngine;I)V

    invoke-direct {p0, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->callbackEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private declared-synchronized newCallActive()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vailsys/whistleengine/WhistleEngine;->callsActive:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vailsys/whistleengine/WhistleEngine;->callsActive:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine;->appState:Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    sget-object v1, Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;->FOREGROUND:Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/vailsys/whistleengine/WhistleEngine;->startForeground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private passwordDialog(Z)V
    .locals 1

    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngine$8;

    invoke-direct {v0, p0, p1}, Lcom/vailsys/whistleengine/WhistleEngine$8;-><init>(Lcom/vailsys/whistleengine/WhistleEngine;Z)V

    invoke-direct {p0, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->callbackEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registrationSuccessful()V
    .locals 1

    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngine$9;

    invoke-direct {v0, p0}, Lcom/vailsys/whistleengine/WhistleEngine$9;-><init>(Lcom/vailsys/whistleengine/WhistleEngine;)V

    invoke-direct {p0, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->callbackEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private selectedCodec(ILjava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngine$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vailsys/whistleengine/WhistleEngine$13;-><init>(Lcom/vailsys/whistleengine/WhistleEngine;ILjava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->callbackEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private native setAccountInfoNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method private native setApplicationIdentifier(Ljava/lang/String;)V
.end method

.method private static native setAudioConfiguration(IZ)V
.end method

.method private native setBindAddress(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native setConnectivityThresholds(IIIIIIII)V
.end method

.method private native setJNIEngine(I)V
.end method

.method private native setTLSMode(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native setUDPMode()V
.end method

.method private startForeground()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/app/Notification;->flags:I

    const v1, 0x12443

    invoke-virtual {p0, v1, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WhistleEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to start foreground operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native stopNative()V
.end method


# virtual methods
.method public native answer(I)V
.end method

.method public declared-synchronized applicationInBackground()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;->BACKGROUND:Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    iput-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine;->appState:Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    iget v0, p0, Lcom/vailsys/whistleengine/WhistleEngine;->callsActive:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/vailsys/whistleengine/WhistleEngine;->startForeground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized applicationInForeground()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;->FOREGROUND:Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    iput-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine;->appState:Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    iget v0, p0, Lcom/vailsys/whistleengine/WhistleEngine;->callsActive:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->stopForeground(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dial(ILjava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/vailsys/whistleengine/WhistleEngine;->dialnative(ILjava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/vailsys/whistleengine/WhistleEngine;->newCallActive()V

    :cond_0
    return v0
.end method

.method public dial(ILjava/lang/String;Lcom/vailsys/whistleengine/DialExtra;)I
    .locals 3

    invoke-virtual {p3}, Lcom/vailsys/whistleengine/DialExtra;->getXHeaders()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->addDialXHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/vailsys/whistleengine/WhistleEngine;->dial(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public native dialnative(ILjava/lang/String;)I
.end method

.method public native getInputLevel()F
.end method

.method public native getLineLevel(I)F
.end method

.method public native getMaxLines()I
.end method

.method public native hangup(I)V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngine$WhistleEngineBinder;

    invoke-direct {v0, p0}, Lcom/vailsys/whistleengine/WhistleEngine$WhistleEngineBinder;-><init>(Lcom/vailsys/whistleengine/WhistleEngine;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/vailsys/whistleengine/PowerManagement;

    invoke-direct {v0, p0}, Lcom/vailsys/whistleengine/PowerManagement;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine;->powerManagement:Lcom/vailsys/whistleengine/PowerManagement;

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine;->powerManagement:Lcom/vailsys/whistleengine/PowerManagement;

    invoke-virtual {v0}, Lcom/vailsys/whistleengine/PowerManagement;->acquireLocks()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/vailsys/whistleengine/WhistleEngine;->stop()V

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine;->powerManagement:Lcom/vailsys/whistleengine/PowerManagement;

    invoke-virtual {v0}, Lcom/vailsys/whistleengine/PowerManagement;->releaseLocks()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->stopForeground(Z)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public native retryRegistrationAuth()V
.end method

.method public setAccountInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/vailsys/whistleengine/WhistleEngine;->NormalizeAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/vailsys/whistleengine/WhistleEngine;->setAccountInfoNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public native setMute(Z)V
.end method

.method public native setOutputVolume(F)V
.end method

.method public native setSpeaker(Z)V
.end method

.method public start(Lcom/vailsys/whistleengine/WhistleEngineDelegate;Lcom/vailsys/whistleengine/WhistleEngineConfig;Landroid/content/Context;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->setJNIEngine(I)V

    iput-object p1, p0, Lcom/vailsys/whistleengine/WhistleEngine;->eventListener:Lcom/vailsys/whistleengine/WhistleEngineDelegate;

    iput-object p3, p0, Lcom/vailsys/whistleengine/WhistleEngine;->context:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine;->eventHandler:Landroid/os/Handler;

    invoke-direct {p0, p2}, Lcom/vailsys/whistleengine/WhistleEngine;->initAudio(Lcom/vailsys/whistleengine/WhistleEngineConfig;)V

    invoke-virtual {p2}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->getProxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->getRegistrationEnabled()Z

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/vailsys/whistleengine/WhistleEngine;->setAccountInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p2}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->getApplicationIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->setApplicationIdentifier(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/vailsys/whistleengine/WhistleEngine;->initNetworking(Lcom/vailsys/whistleengine/WhistleEngineConfig;)V

    invoke-virtual {p2}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->getConnectivityThresholds()Lcom/vailsys/whistleengine/WhistleEngineThresholds;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vailsys/whistleengine/WhistleEngine;->configureThresholds(Lcom/vailsys/whistleengine/WhistleEngineThresholds;)V

    return-void
.end method

.method public native startDTMF(C)V
.end method

.method public native startSound(Ljava/lang/String;ZZF)V
.end method

.method public stop()V
    .locals 1

    invoke-direct {p0}, Lcom/vailsys/whistleengine/WhistleEngine;->stopNative()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine;->eventListener:Lcom/vailsys/whistleengine/WhistleEngineDelegate;

    return-void
.end method

.method public native stopDTMF()V
.end method

.method public native stopSound(Ljava/lang/String;)V
.end method
