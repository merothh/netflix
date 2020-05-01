.class public abstract Lo/KeepalivePacketData;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/KeepalivePacketData$Application;,
        Lo/KeepalivePacketData$TaskDescription;
    }
.end annotation


# instance fields
.field private final b:Lo/TextWatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TextWatcher<",
            "Ljava/lang/String;",
            "Lo/KeepalivePacketData$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lo/KeepalivePacketData$Application;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 82
    new-instance v0, Lo/TextWatcher;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/TextWatcher;-><init>(I)V

    iput-object v0, p0, Lo/KeepalivePacketData;->b:Lo/TextWatcher;

    .line 83
    new-instance v0, Lo/KeepalivePacketData$Application;

    invoke-direct {v0, p0}, Lo/KeepalivePacketData$Application;-><init>(Lo/KeepalivePacketData;)V

    iput-object v0, p0, Lo/KeepalivePacketData;->d:Lo/KeepalivePacketData$Application;

    return-void
.end method


# virtual methods
.method a(Lo/IpSecTransformResponse;)V
    .locals 3

    .line 121
    iget-object v0, p0, Lo/KeepalivePacketData;->b:Lo/TextWatcher;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lo/KeepalivePacketData;->b:Lo/TextWatcher;

    invoke-virtual {p1}, Lo/IpSecTransformResponse;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/TextWatcher;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/KeepalivePacketData$TaskDescription;

    if-nez v1, :cond_1

    const-string p1, "FJD.JobService"

    const/4 v1, 0x3

    .line 125
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "FJD.JobService"

    const-string v1, "Provided job has already been executed."

    .line 126
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    monitor-exit v0

    return-void

    .line 130
    :cond_1
    invoke-virtual {p0, p1}, Lo/KeepalivePacketData;->a(Lo/IpSecTransform;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 131
    :goto_0
    invoke-virtual {v1, p1}, Lo/KeepalivePacketData$TaskDescription;->a(I)V

    .line 132
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract a(Lo/IpSecTransform;)Z
.end method

.method public abstract d(Lo/IpSecTransform;)Z
.end method

.method protected final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 200
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method e(Lo/IpSecTransform;Landroid/os/Message;)V
    .locals 6

    .line 105
    iget-object v0, p0, Lo/KeepalivePacketData;->b:Lo/TextWatcher;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lo/KeepalivePacketData;->b:Lo/TextWatcher;

    invoke-interface {p1}, Lo/IpSecTransform;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/TextWatcher;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p2, "FJD.JobService"

    .line 107
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Job with tag = %s was already running."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 108
    invoke-interface {p1}, Lo/IpSecTransform;->e()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    monitor-exit v0

    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lo/KeepalivePacketData;->b:Lo/TextWatcher;

    invoke-interface {p1}, Lo/IpSecTransform;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lo/KeepalivePacketData$TaskDescription;

    const/4 v5, 0x0

    invoke-direct {v4, p2, v5}, Lo/KeepalivePacketData$TaskDescription;-><init>(Landroid/os/Message;Lo/KeepalivePacketData$2;)V

    invoke-virtual {v1, v3, v4}, Lo/TextWatcher;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p0, p1}, Lo/KeepalivePacketData;->d(Lo/IpSecTransform;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 115
    iget-object p2, p0, Lo/KeepalivePacketData;->b:Lo/TextWatcher;

    invoke-interface {p1}, Lo/IpSecTransform;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/TextWatcher;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/KeepalivePacketData$TaskDescription;

    invoke-virtual {p1, v2}, Lo/KeepalivePacketData$TaskDescription;->a(I)V

    .line 117
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 168
    iget-object p1, p0, Lo/KeepalivePacketData;->d:Lo/KeepalivePacketData$Application;

    return-object p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 205
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 0

    .line 191
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 0

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 160
    invoke-virtual {p0, p3}, Lo/KeepalivePacketData;->stopSelf(I)V

    const/4 p1, 0x2

    return p1
.end method

.method public final onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .line 210
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 5

    .line 173
    iget-object v0, p0, Lo/KeepalivePacketData;->b:Lo/TextWatcher;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lo/KeepalivePacketData;->b:Lo/TextWatcher;

    invoke-virtual {v1}, Lo/TextWatcher;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 175
    iget-object v3, p0, Lo/KeepalivePacketData;->b:Lo/TextWatcher;

    iget-object v4, p0, Lo/KeepalivePacketData;->b:Lo/TextWatcher;

    invoke-virtual {v4, v1}, Lo/TextWatcher;->c(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/KeepalivePacketData$TaskDescription;

    if-eqz v3, :cond_1

    .line 177
    iget-object v4, v3, Lo/KeepalivePacketData$TaskDescription;->a:Landroid/os/Message;

    iget-object v4, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lo/IpSecTransform;

    invoke-virtual {p0, v4}, Lo/KeepalivePacketData;->a(Lo/IpSecTransform;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    :goto_1
    invoke-virtual {v3, v4}, Lo/KeepalivePacketData$TaskDescription;->a(I)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 184
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 184
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
