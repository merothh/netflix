.class Lo/LocalServerSocket;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:Lo/IpSecTransformResponse;

.field private b:Z

.field private final d:Landroid/os/Message;

.field private e:Lo/KeepalivePacketData$Application;


# direct methods
.method constructor <init>(Lo/IpSecTransformResponse;Landroid/os/Message;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lo/LocalServerSocket;->b:Z

    .line 43
    iput-object p2, p0, Lo/LocalServerSocket;->d:Landroid/os/Message;

    .line 44
    iput-object p1, p0, Lo/LocalServerSocket;->a:Lo/IpSecTransformResponse;

    .line 45
    iget-object p1, p0, Lo/LocalServerSocket;->d:Landroid/os/Message;

    iget-object p2, p0, Lo/LocalServerSocket;->a:Lo/IpSecTransformResponse;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lo/LocalServerSocket;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lo/LocalServerSocket;->e:Lo/KeepalivePacketData$Application;

    invoke-virtual {v0}, Lo/KeepalivePacketData$Application;->a()Lo/KeepalivePacketData;

    move-result-object v0

    iget-object v1, p0, Lo/LocalServerSocket;->a:Lo/IpSecTransformResponse;

    invoke-virtual {v0, v1}, Lo/KeepalivePacketData;->a(Lo/IpSecTransformResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lo/LocalServerSocket;->e:Lo/KeepalivePacketData$Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    monitor-enter p0

    .line 50
    :try_start_0
    instance-of p1, p2, Lo/KeepalivePacketData$Application;

    if-nez p1, :cond_0

    const-string p1, "FJD.ExternalReceiver"

    const-string p2, "Unknown service connected"

    .line 51
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 54
    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lo/LocalServerSocket;->b:Z

    if-eqz p1, :cond_1

    const-string p1, "FJD.ExternalReceiver"

    const-string p2, "onServiceConnected Duplicate calls. Ignored."

    .line 55
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 58
    :try_start_2
    iput-boolean p1, p0, Lo/LocalServerSocket;->b:Z

    .line 61
    check-cast p2, Lo/KeepalivePacketData$Application;

    iput-object p2, p0, Lo/LocalServerSocket;->e:Lo/KeepalivePacketData$Application;

    .line 63
    iget-object p1, p0, Lo/LocalServerSocket;->e:Lo/KeepalivePacketData$Application;

    invoke-virtual {p1}, Lo/KeepalivePacketData$Application;->a()Lo/KeepalivePacketData;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lo/LocalServerSocket;->a:Lo/IpSecTransformResponse;

    iget-object v0, p0, Lo/LocalServerSocket;->d:Landroid/os/Message;

    invoke-virtual {p1, p2, v0}, Lo/KeepalivePacketData;->e(Lo/IpSecTransform;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x0

    .line 70
    :try_start_0
    iput-object p1, p0, Lo/LocalServerSocket;->e:Lo/KeepalivePacketData$Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
