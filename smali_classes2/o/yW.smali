.class public Lo/yW;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/yW$ActionBar;
    }
.end annotation


# instance fields
.field private a:Landroid/media/AudioManager;

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Lo/yW$ActionBar;

.field private e:Z

.field private f:Landroid/bluetooth/BluetoothAdapter;

.field private h:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private i:Landroid/bluetooth/BluetoothHeadset;

.field private j:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/yW$ActionBar;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    iput-object p1, p0, Lo/yW;->b:Landroid/content/Context;

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lo/yW;->e:Z

    .line 42
    iget-object p1, p0, Lo/yW;->b:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lo/yW;->a:Landroid/media/AudioManager;

    .line 43
    iput-object p2, p0, Lo/yW;->d:Lo/yW$ActionBar;

    return-void
.end method

.method static synthetic c(Lo/yW;)Lo/yW$ActionBar;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/yW;->d:Lo/yW$ActionBar;

    return-object p0
.end method

.method static synthetic c(Lo/yW;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lo/yW;->e:Z

    return p1
.end method

.method static synthetic e(Lo/yW;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 18
    iput-object p1, p0, Lo/yW;->i:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method private h()V
    .locals 5

    .line 57
    iget-boolean v0, p0, Lo/yW;->e:Z

    const-string v1, "nf_voip_bluetooth"

    if-eqz v0, :cond_0

    const-string v0, "[BluetoothAudioManager] Already started, skipping..."

    .line 58
    invoke-static {v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 62
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/yW;->f:Landroid/bluetooth/BluetoothAdapter;

    .line 64
    iget-object v0, p0, Lo/yW;->f:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lo/yW;->h:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "[BluetoothAudioManager] Headset profile was already opened, let\'s close it"

    .line 66
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lo/yW;->f:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lo/yW;->i:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 70
    :cond_1
    new-instance v0, Lo/yW$5;

    invoke-direct {v0, p0}, Lo/yW$5;-><init>(Lo/yW;)V

    iput-object v0, p0, Lo/yW;->h:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 88
    iget-object v0, p0, Lo/yW;->f:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lo/yW;->b:Landroid/content/Context;

    iget-object v4, p0, Lo/yW;->h:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v3, v4, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "[BluetoothAudioManager] getProfileProxy failed !"

    .line 89
    invoke-static {v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "[BluetoothAudioManager] Interface disabled on device"

    .line 92
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lo/yW;->b:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "nf_voip_bluetooth"

    const-string v1, "[BluetoothAudioManager] broadcast receiver started"

    .line 51
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0}, Lo/yW;->h()V

    return-void
.end method

.method public b()Z
    .locals 5

    .line 129
    iget-object v0, p0, Lo/yW;->f:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/yW;->a:Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lo/yW;->i:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 133
    iput-object v2, p0, Lo/yW;->j:Landroid/bluetooth/BluetoothDevice;

    .line 134
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 135
    iget-object v3, p0, Lo/yW;->i:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 136
    iput-object v2, p0, Lo/yW;->j:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    const-string v0, "[BluetoothAudioManager] Headset found, bluetooth audio route available"

    goto :goto_0

    :cond_2
    const-string v0, "[BluetoothAudioManager] No headset found, bluetooth audio route unavailable"

    :goto_0
    const-string v2, "nf_voip_bluetooth"

    .line 141
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method public c()V
    .locals 2

    .line 150
    iget-object v0, p0, Lo/yW;->a:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 152
    iget-object v0, p0, Lo/yW;->a:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    const-string v0, "nf_voip_bluetooth"

    const-string v1, "[BluetoothAudioManager] SCO disconnected!"

    .line 153
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 3

    .line 98
    iget-object v0, p0, Lo/yW;->f:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/yW;->a:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {p0}, Lo/yW;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lo/yW;->a:Landroid/media/AudioManager;

    const-string v1, "nf_voip_bluetooth"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[BluetoothAudioManager] SCO off, let\'s start it"

    .line 101
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lo/yW;->a:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 103
    iget-object v0, p0, Lo/yW;->a:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lo/yW;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "[BluetoothAudioManager] Audio route ok"

    .line 113
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "[BluetoothAudioManager] Audio route not ok."

    .line 115
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_2
    return v1
.end method

.method public e()Z
    .locals 2

    .line 125
    iget-object v0, p0, Lo/yW;->i:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/yW;->j:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/yW;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/yW;->a:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 5

    const-string v0, "nf_voip_bluetooth"

    const-string v1, "[BluetoothAudioManager] Stopping..."

    .line 158
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 159
    iput-boolean v1, p0, Lo/yW;->e:Z

    .line 161
    invoke-virtual {p0}, Lo/yW;->c()V

    .line 163
    iget-object v1, p0, Lo/yW;->f:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lo/yW;->h:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lo/yW;->i:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 164
    invoke-virtual {v1, v4, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 165
    iput-object v2, p0, Lo/yW;->h:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 167
    :cond_0
    iput-object v2, p0, Lo/yW;->j:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "[BluetoothAudioManager] Stopped!"

    .line 169
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public i()V
    .locals 2

    .line 174
    :try_start_0
    invoke-virtual {p0}, Lo/yW;->f()V

    .line 175
    iget-object v0, p0, Lo/yW;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_voip_bluetooth"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 183
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "nf_voip_bluetooth"

    if-eqz v0, :cond_1

    const-string p1, "android.media.extra.SCO_AUDIO_STATE"

    .line 185
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const-string p1, "[BluetoothAudioManager] SCO state: connected"

    .line 187
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iput-boolean p2, p0, Lo/yW;->c:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_3

    const-string p1, "[BluetoothAudioManager] SCO state: disconnected"

    .line 190
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iput-boolean v1, p0, Lo/yW;->c:Z

    goto :goto_0

    :cond_1
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 195
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "[BluetoothAudioManager] State: disconnected, stopping Blutooth"

    .line 197
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Lo/yW;->f()V

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    const-string p1, "[BluetoothAudioManager] State: connected, starting Bluetooth"

    .line 200
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0}, Lo/yW;->h()V

    :cond_3
    :goto_0
    return-void
.end method
