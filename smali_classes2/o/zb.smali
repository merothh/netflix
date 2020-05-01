.class public Lo/zb;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/zb$StateListAnimator;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Landroid/os/PowerManager$WakeLock;

.field private e:Landroid/os/PowerManager$WakeLock;

.field private f:Lo/bV;

.field private g:Z

.field private h:Lo/zb$StateListAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/bV;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lo/zb$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/zb$StateListAnimator;-><init>(Lo/zb;Lo/zb$4;)V

    iput-object v0, p0, Lo/zb;->h:Lo/zb$StateListAnimator;

    if-eqz p1, :cond_0

    .line 75
    iput-object p1, p0, Lo/zb;->b:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lo/zb;->f:Lo/bV;

    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()V
    .locals 2

    .line 170
    iget-object v0, p0, Lo/zb;->e:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    const-string v1, "nf_voip"

    if-eqz v0, :cond_1

    const-string v0, "releaseScreenLock: releasing..."

    .line 175
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lo/zb;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_1
    const-string v0, "releaseScreenLock: lock already released!"

    .line 178
    invoke-static {v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lo/zb;->e:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method static synthetic b(Lo/zb;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lo/zb;->g()V

    return-void
.end method

.method private d()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 134
    iget-object v0, p0, Lo/zb;->e:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lo/zb;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 138
    :cond_0
    iget-object v0, p0, Lo/zb;->f:Lo/bV;

    invoke-virtual {v0}, Lo/bV;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->b()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/util/DeviceCategory;->b:Lcom/netflix/mediaclient/util/DeviceCategory;

    const-string v2, "nf_voip"

    if-eq v0, v1, :cond_1

    const-string v0, "Device is tablet (like), do NOT acquire screen lock!"

    .line 140
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "Device is phone, do acquire screen lock!"

    .line 143
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lo/zb;->b:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-nez v0, :cond_2

    const-string v0, "Power manager is not available!"

    .line 148
    invoke-static {v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/16 v1, 0x20

    .line 154
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lo/zb;->e:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Failed to created new wake lock for promixity!"

    .line 156
    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :goto_0
    iget-object v0, p0, Lo/zb;->e:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    const-string v0, "Proximity screen wake off is supported on this device. Aquiring..."

    .line 160
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lo/zb;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v0, "Proximity sensor aquired."

    .line 162
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v0, "Proximity screen wake off is not supported on this device"

    .line 164
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private e()V
    .locals 3

    .line 102
    iget-object v0, p0, Lo/zb;->b:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lo/zb;->a:Z

    .line 107
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    iput-boolean v0, p0, Lo/zb;->g:Z

    goto :goto_0

    .line 113
    :cond_2
    iput-boolean v1, p0, Lo/zb;->a:Z

    .line 114
    iput-boolean v1, p0, Lo/zb;->g:Z

    :goto_0
    return-void
.end method

.method private g()V
    .locals 4

    .line 226
    invoke-direct {p0}, Lo/zb;->e()V

    .line 228
    iget-boolean v0, p0, Lo/zb;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 233
    iget-boolean v1, p0, Lo/zb;->g:Z

    const/4 v2, 0x1

    const-string v3, "nf_voip"

    if-eqz v1, :cond_1

    const-string v0, "Speaker is on, release proximity lock."

    .line 234
    invoke-static {v3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    :cond_1
    iget-boolean v1, p0, Lo/zb;->a:Z

    if-eqz v1, :cond_2

    const-string v0, "Headphones are used for call, release proximity lock."

    .line 237
    invoke-static {v3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "Internal speaker is used, acquire proximity lock."

    .line 240
    invoke-static {v3, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    const-string v0, "Release proximity lock..."

    .line 244
    invoke-static {v3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0}, Lo/zb;->a()V

    goto :goto_1

    :cond_3
    const-string v0, "Acquire proximity lock..."

    .line 247
    invoke-static {v3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-direct {p0}, Lo/zb;->d()V

    :goto_1
    return-void
.end method

.method private i()V
    .locals 3

    .line 185
    iget-object v0, p0, Lo/zb;->d:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lo/zb;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 189
    :cond_0
    iget-object v0, p0, Lo/zb;->b:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "nf_voip"

    if-nez v0, :cond_1

    const-string v0, "Power manager is not available!"

    .line 191
    invoke-static {v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 197
    :try_start_0
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lo/zb;->d:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "Failed to created new wake lock for promixity!"

    .line 199
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    iget-object v0, p0, Lo/zb;->d:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    const-string v0, "acquireCpuLock: acquiring..."

    .line 203
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lo/zb;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v0, "acquireCpuLock: acquired."

    .line 205
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private j()V
    .locals 2

    .line 211
    iget-object v0, p0, Lo/zb;->d:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    const-string v1, "nf_voip"

    if-eqz v0, :cond_1

    const-string v0, "releaseCpuLock: releasing..."

    .line 216
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lo/zb;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_1
    const-string v0, "releaseCpuLock: lock already released!"

    .line 219
    invoke-static {v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lo/zb;->d:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 253
    invoke-direct {p0}, Lo/zb;->g()V

    return-void
.end method

.method public declared-synchronized b()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 84
    :try_start_0
    iput-boolean v0, p0, Lo/zb;->c:Z

    .line 86
    invoke-direct {p0}, Lo/zb;->i()V

    .line 87
    invoke-direct {p0}, Lo/zb;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lo/zb;->b:Landroid/content/Context;

    iget-object v2, p0, Lo/zb;->h:Lo/zb$StateListAnimator;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v1, "nf_voip"

    const-string v2, "Failed to register audio jack receiver"

    .line 96
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 122
    :try_start_0
    iput-boolean v0, p0, Lo/zb;->c:Z

    .line 123
    invoke-direct {p0}, Lo/zb;->a()V

    .line 124
    invoke-direct {p0}, Lo/zb;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    iget-object v0, p0, Lo/zb;->b:Landroid/content/Context;

    iget-object v1, p0, Lo/zb;->h:Lo/zb$StateListAnimator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :catchall_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
