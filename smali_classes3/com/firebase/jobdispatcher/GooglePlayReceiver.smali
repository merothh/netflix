.class public Lcom/firebase/jobdispatcher/GooglePlayReceiver;
.super Landroid/app/Service;
.source ""

# interfaces
.implements Lo/IpConfiguration$Activity;


# static fields
.field private static final b:Lo/IpSecTunnelInterfaceResponse;


# instance fields
.field private final a:Lo/DhcpResults;

.field private final c:Ljava/lang/Object;

.field private d:Lo/IpConfiguration;

.field e:Landroid/os/Messenger;

.field private f:Lo/TextWatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TextWatcher<",
            "Ljava/lang/String;",
            "Lo/TextWatcher<",
            "Ljava/lang/String;",
            "Lo/IpSecUdpEncapResponse;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    new-instance v0, Lo/IpSecTunnelInterfaceResponse;

    const-string v1, "com.firebase.jobdispatcher."

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/IpSecTunnelInterfaceResponse;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->b:Lo/IpSecTunnelInterfaceResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->c:Ljava/lang/Object;

    .line 59
    new-instance v0, Lo/DhcpResults;

    invoke-direct {v0}, Lo/DhcpResults;-><init>()V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->a:Lo/DhcpResults;

    .line 75
    new-instance v0, Lo/TextWatcher;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/TextWatcher;-><init>(I)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->f:Lo/TextWatcher;

    return-void
.end method

.method private static a(Lo/IpSecUdpEncapResponse;I)V
    .locals 1

    .line 80
    :try_start_0
    invoke-interface {p0, p1}, Lo/IpSecUdpEncapResponse;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "FJD.GooglePlayReceiver"

    const-string v0, "Encountered error running callback"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private b()Landroid/os/Messenger;
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->e:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lo/IpSecConfig;

    .line 132
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lo/IpSecConfig;-><init>(Landroid/os/Looper;Lcom/firebase/jobdispatcher/GooglePlayReceiver;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->e:Landroid/os/Messenger;

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->e:Landroid/os/Messenger;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static e()Lo/IpSecTunnelInterfaceResponse;
    .locals 1

    .line 209
    sget-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->b:Lo/IpSecTunnelInterfaceResponse;

    return-object v0
.end method


# virtual methods
.method public a()Lo/IpConfiguration;
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->d:Lo/IpConfiguration;

    if-nez v1, :cond_0

    .line 142
    new-instance v1, Lo/IpConfiguration;

    invoke-direct {v1, p0, p0}, Lo/IpConfiguration;-><init>(Landroid/content/Context;Lo/IpConfiguration$Activity;)V

    iput-object v1, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->d:Lo/IpConfiguration;

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->d:Lo/IpConfiguration;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 146
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized b(Lo/IpSecTransformResponse;I)V
    .locals 5

    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->f:Lo/TextWatcher;

    invoke-virtual {p1}, Lo/IpSecTransformResponse;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/TextWatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 192
    monitor-exit p0

    return-void

    .line 195
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lo/IpSecTransformResponse;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/TextWatcher;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/IpSecUdpEncapResponse;

    if-eqz v1, :cond_2

    const-string v2, "FJD.GooglePlayReceiver"

    const/4 v3, 0x2

    .line 197
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "FJD.GooglePlayReceiver"

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending jobFinished for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/IpSecTransformResponse;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    invoke-static {v1, p2}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->a(Lo/IpSecUdpEncapResponse;I)V

    .line 203
    :cond_2
    invoke-virtual {v0}, Lo/TextWatcher;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 204
    iget-object p2, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->f:Lo/TextWatcher;

    invoke-virtual {p1}, Lo/IpSecTransformResponse;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/TextWatcher;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method c(Landroid/content/Intent;)Lo/IpSecTransformResponse;
    .locals 3

    .line 152
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "FJD.GooglePlayReceiver"

    if-nez p1, :cond_0

    const-string p1, "No data provided, terminating"

    .line 154
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->a:Lo/DhcpResults;

    invoke-virtual {v2, p1}, Lo/DhcpResults;->e(Landroid/os/Bundle;)Lo/IpSecUdpEncapResponse;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p1, "no callback found"

    .line 161
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 164
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->e(Landroid/os/Bundle;Lo/IpSecUdpEncapResponse;)Lo/IpSecTransformResponse;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/os/Bundle;Lo/IpSecUdpEncapResponse;)Lo/IpSecTransformResponse;
    .locals 3

    .line 169
    sget-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->b:Lo/IpSecTunnelInterfaceResponse;

    invoke-virtual {v0, p1}, Lo/IpSecTunnelInterfaceResponse;->b(Landroid/os/Bundle;)Lo/IpSecTransformResponse;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "FJD.GooglePlayReceiver"

    const-string v0, "unable to decode job"

    .line 171
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 172
    invoke-static {p2, p1}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->a(Lo/IpSecUdpEncapResponse;I)V

    const/4 p1, 0x0

    return-object p1

    .line 175
    :cond_0
    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->f:Lo/TextWatcher;

    invoke-virtual {p1}, Lo/IpSecTransformResponse;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/TextWatcher;

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Lo/TextWatcher;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/TextWatcher;-><init>(I)V

    .line 179
    iget-object v1, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->f:Lo/TextWatcher;

    invoke-virtual {p1}, Lo/IpSecTransformResponse;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lo/TextWatcher;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_1
    invoke-virtual {p1}, Lo/IpSecTransformResponse;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lo/TextWatcher;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    if-eqz p1, :cond_1

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 122
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->b()Landroid/os/Messenger;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 89
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const/4 p2, 0x2

    if-nez p1, :cond_1

    const-string p1, "FJD.GooglePlayReceiver"

    const-string v0, "Null Intent passed, terminating"

    .line 92
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 107
    monitor-enter p0

    .line 108
    :try_start_1
    iget-object p1, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->f:Lo/TextWatcher;

    invoke-virtual {p1}, Lo/TextWatcher;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p0, p3}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->stopSelf(I)V

    .line 111
    :cond_0
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 96
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.gcm.ACTION_TASK_READY"

    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    invoke-virtual {p0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->a()Lo/IpConfiguration;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->c(Landroid/content/Intent;)Lo/IpSecTransformResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/IpConfiguration;->c(Lo/IpSecTransformResponse;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 107
    monitor-enter p0

    .line 108
    :try_start_3
    iget-object p1, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->f:Lo/TextWatcher;

    invoke-virtual {p1}, Lo/TextWatcher;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 109
    invoke-virtual {p0, p3}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->stopSelf(I)V

    .line 111
    :cond_2
    monitor-exit p0

    return p2

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_3
    :try_start_4
    const-string p1, "com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE"

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz p1, :cond_5

    .line 107
    monitor-enter p0

    .line 108
    :try_start_5
    iget-object p1, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->f:Lo/TextWatcher;

    invoke-virtual {p1}, Lo/TextWatcher;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 109
    invoke-virtual {p0, p3}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->stopSelf(I)V

    .line 111
    :cond_4
    monitor-exit p0

    return p2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :cond_5
    :try_start_6
    const-string p1, "FJD.GooglePlayReceiver"

    const-string v0, "Unknown action received, terminating"

    .line 104
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 107
    monitor-enter p0

    .line 108
    :try_start_7
    iget-object p1, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->f:Lo/TextWatcher;

    invoke-virtual {p1}, Lo/TextWatcher;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 109
    invoke-virtual {p0, p3}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->stopSelf(I)V

    .line 111
    :cond_6
    monitor-exit p0

    return p2

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1

    :catchall_4
    move-exception p1

    .line 107
    monitor-enter p0

    .line 108
    :try_start_8
    iget-object p2, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->f:Lo/TextWatcher;

    invoke-virtual {p2}, Lo/TextWatcher;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 109
    invoke-virtual {p0, p3}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->stopSelf(I)V

    .line 111
    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw p1

    :catchall_5
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw p1
.end method
