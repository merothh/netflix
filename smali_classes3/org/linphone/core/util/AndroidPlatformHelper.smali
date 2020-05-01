.class public Lorg/linphone/core/util/AndroidPlatformHelper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mMcastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    check-cast p1, Landroid/content/Context;

    const-string v0, "wifi"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "power"

    .line 53
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lorg/linphone/core/util/AndroidPlatformHelper;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "connectivity"

    .line 54
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lorg/linphone/core/util/AndroidPlatformHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 56
    iget-object p1, p0, Lorg/linphone/core/util/AndroidPlatformHelper;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "AndroidPlatformHelper"

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lorg/linphone/core/util/AndroidPlatformHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 57
    iget-object p1, p0, Lorg/linphone/core/util/AndroidPlatformHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object p1

    iput-object p1, p0, Lorg/linphone/core/util/AndroidPlatformHelper;->mMcastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 59
    iget-object p1, p0, Lorg/linphone/core/util/AndroidPlatformHelper;->mMcastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    const/4 p1, 0x3

    .line 60
    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object p1

    iput-object p1, p0, Lorg/linphone/core/util/AndroidPlatformHelper;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 61
    iget-object p1, p0, Lorg/linphone/core/util/AndroidPlatformHelper;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    return-void
.end method


# virtual methods
.method public acquireCpuLock()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "acquireCpuLock()"

    aput-object v2, v0, v1

    .line 105
    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lorg/linphone/core/util/AndroidPlatformHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method public acquireMcastLock()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "acquireMcastLock()"

    aput-object v2, v0, v1

    .line 97
    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lorg/linphone/core/util/AndroidPlatformHelper;->mMcastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    return-void
.end method

.method public acquireWifiLock()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "acquireWifiLock()"

    aput-object v2, v0, v1

    .line 89
    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lorg/linphone/core/util/AndroidPlatformHelper;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    return-void
.end method

.method public getDnsServers()[Ljava/lang/String;
    .locals 6

    .line 69
    iget-object v0, p0, Lorg/linphone/core/util/AndroidPlatformHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/linphone/core/util/AndroidPlatformHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/linphone/core/util/AndroidPlatformHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 73
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 78
    :cond_1
    iget-object v0, p0, Lorg/linphone/core/util/AndroidPlatformHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    add-int/lit8 v5, v3, 0x1

    .line 83
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    move v3, v5

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "getDnsServers() returning"

    aput-object v3, v0, v2

    .line 85
    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getPowerManager()Ljava/lang/Object;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/linphone/core/util/AndroidPlatformHelper;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method public releaseCpuLock()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "releaseCpuLock()"

    aput-object v2, v0, v1

    .line 109
    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lorg/linphone/core/util/AndroidPlatformHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public releaseMcastLock()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "releaseMcastLock()"

    aput-object v2, v0, v1

    .line 101
    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lorg/linphone/core/util/AndroidPlatformHelper;->mMcastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    return-void
.end method

.method public releaseWifiLock()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "releaseWifiLock()"

    aput-object v2, v0, v1

    .line 93
    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lorg/linphone/core/util/AndroidPlatformHelper;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    return-void
.end method
