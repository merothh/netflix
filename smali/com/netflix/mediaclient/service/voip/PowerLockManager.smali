.class Lcom/netflix/mediaclient/service/voip/PowerLockManager;
.super Ljava/lang/Object;
.source "PowerLockManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_voip"


# instance fields
.field private mAgent:Lcom/netflix/mediaclient/service/ServiceAgent;

.field private mAudioRoutingChangedReceiver:Lcom/netflix/mediaclient/service/voip/PowerLockManager$AudioRoutingChangedReceiver;

.field private mCallInProgress:Z

.field private mConnectedHeadphones:Z

.field private mContex:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSpeakerOn:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/service/voip/PowerLockManager$AudioRoutingChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/voip/PowerLockManager$AudioRoutingChangedReceiver;-><init>(Lcom/netflix/mediaclient/service/voip/PowerLockManager;Lcom/netflix/mediaclient/service/voip/PowerLockManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mAudioRoutingChangedReceiver:Lcom/netflix/mediaclient/service/voip/PowerLockManager$AudioRoutingChangedReceiver;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mContex:Landroid/content/Context;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mAgent:Lcom/netflix/mediaclient/service/ServiceAgent;

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/voip/PowerLockManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->handleStateChange()V

    return-void
.end method

.method private acquireCpuLock()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mContex:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-nez v0, :cond_2

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Power manager is not available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x1

    :try_start_0
    const-string/jumbo v2, "nf_voip"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "acquireCpuLock: acquiring..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "acquireCpuLock: acquired."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Failed to created new wake lock for promixity!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private acquireScreenLock()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mAgent:Lcom/netflix/mediaclient/service/ServiceAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/util/DeviceCategory;->TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Device is tablet, do NOT acquire screen lock!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Device is phone, do acquire screen lock!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mContex:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-nez v0, :cond_2

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Power manager is not available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/16 v1, 0x20

    :try_start_0
    const-string/jumbo v2, "nf_voip"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Proximity screen wake off is supported on this device. Aquiring..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Proximity sensor aquired."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Failed to created new wake lock for promixity!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Proximity screen wake off is not supported on this device"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleStateChange()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->setStates()V

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCallInProgress:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mSpeakerOn:Z

    if-eqz v2, :cond_1

    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Speaker is on, release proximity lock."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Release proximity lock..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->releaseScreenLock()V

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mConnectedHeadphones:Z

    if-eqz v2, :cond_2

    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Headphones are used for call, release proximity lock."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v2, "Internal speaker is used, acquire proximity lock."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Acquire proximity lock..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->acquireScreenLock()V

    goto :goto_0
.end method

.method private releaseCpuLock()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "releaseCpuLock: releasing..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "releaseCpuLock: lock already released!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private releaseScreenLock()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "releaseScreenLock: releasing..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "releaseScreenLock: lock already released!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setStates()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mContex:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mConnectedHeadphones:Z

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mSpeakerOn:Z

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "nf_voip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wired headphone on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "nf_voip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bluetooth headphone on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mConnectedHeadphones:Z

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mSpeakerOn:Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized callEnded()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCallInProgress:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->releaseScreenLock()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->releaseCpuLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mContex:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mAudioRoutingChangedReceiver:Lcom/netflix/mediaclient/service/voip/PowerLockManager$AudioRoutingChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized callStarted()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCallInProgress:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->acquireCpuLock()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->handleStateChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mContex:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mAudioRoutingChangedReceiver:Lcom/netflix/mediaclient/service/voip/PowerLockManager$AudioRoutingChangedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Failed to register audio jack receiver"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSpeakerOn(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->handleStateChange()V

    return-void
.end method
