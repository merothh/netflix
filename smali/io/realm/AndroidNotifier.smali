.class Lio/realm/AndroidNotifier;
.super Ljava/lang/Object;
.source "AndroidNotifier.java"

# interfaces
.implements Lio/realm/internal/RealmNotifier;


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lio/realm/HandlerController;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lio/realm/AndroidNotifier;->isAutoRefreshAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    .line 38
    :cond_0
    return-void
.end method

.method private static isAutoRefreshAvailable()Z
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/realm/AndroidNotifier;->isIntentServiceThread()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isIntentServiceThread()Z
    .locals 2

    .prologue
    .line 160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    const-string/jumbo v1, "IntentService["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 115
    iput-object v1, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    .line 117
    :cond_0
    return-void
.end method

.method public completeAsyncObject(Lio/realm/internal/async/QueryUpdateTask$Result;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    const v1, 0x3c50ea2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 133
    :cond_0
    return-void
.end method

.method public completeAsyncResults(Lio/realm/internal/async/QueryUpdateTask$Result;)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    const v1, 0x2547029

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 125
    :cond_0
    return-void
.end method

.method public completeUpdateAsyncQueries(Lio/realm/internal/async/QueryUpdateTask$Result;)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    const v1, 0x1709e79

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 150
    :cond_0
    return-void
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCommitByLocalThread()V
    .locals 3

    .prologue
    const v2, 0x9de8d6d

    .line 43
    iget-object v0, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 59
    iput v2, v0, Landroid/os/Message;->what:I

    .line 60
    iget-object v1, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    iget-object v1, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    const v2, 0xe3d1b0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    iget-object v1, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public notifyCommitByOtherThread()V
    .locals 4

    .prologue
    const v3, 0xe3d1b0

    .line 80
    iget-object v0, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x1

    .line 88
    iget-object v1, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    const v2, 0x9de8d6d

    .line 89
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    iget-object v0, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v0

    .line 92
    :cond_2
    if-nez v0, :cond_0

    .line 93
    const-string/jumbo v0, "Cannot update Looper threads when the Looper has quit. Use realm.setAutoRefresh(false) to prevent this."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    :cond_0
    return-void
.end method

.method public throwBackgroundException(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lio/realm/AndroidNotifier;->handler:Landroid/os/Handler;

    const v1, 0x6197ecb

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    :cond_0
    return-void
.end method
