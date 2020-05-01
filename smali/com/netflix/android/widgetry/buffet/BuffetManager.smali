.class Lcom/netflix/android/widgetry/buffet/BuffetManager;
.super Ljava/lang/Object;
.source "BuffetManager.java"


# static fields
.field private static final LONG_DURATION_MS:I = 0xabe

.field static final MSG_TIMEOUT:I = 0x0

.field private static final SHORT_DURATION_MS:I = 0x5dc

.field private static sBuffetManager:Lcom/netflix/android/widgetry/buffet/BuffetManager;


# instance fields
.field private mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/netflix/android/widgetry/buffet/BuffetManager$1;

    invoke-direct {v2, p0}, Lcom/netflix/android/widgetry/buffet/BuffetManager$1;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method private cancelSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;I)Z
    .locals 2

    .prologue
    .line 192
    iget-object v0, p1, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    .line 193
    if-eqz v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 196
    invoke-interface {v0, p2}, Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;->dismiss(I)V

    .line 197
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getInstance()Lcom/netflix/android/widgetry/buffet/BuffetManager;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->sBuffetManager:Lcom/netflix/android/widgetry/buffet/BuffetManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/netflix/android/widgetry/buffet/BuffetManager;

    invoke-direct {v0}, Lcom/netflix/android/widgetry/buffet/BuffetManager;-><init>()V

    sput-object v0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->sBuffetManager:Lcom/netflix/android/widgetry/buffet/BuffetManager;

    .line 33
    :cond_0
    sget-object v0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->sBuffetManager:Lcom/netflix/android/widgetry/buffet/BuffetManager;

    return-object v0
.end method

.method private isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->isSnackbar(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNextSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->isSnackbar(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scheduleTimeoutLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;)V
    .locals 6

    .prologue
    .line 211
    iget v0, p1, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->duration:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 224
    :goto_0
    return-void

    .line 216
    :cond_0
    const/16 v0, 0xabe

    .line 217
    iget v1, p1, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->duration:I

    if-lez v1, :cond_2

    .line 218
    iget v0, p1, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->duration:I

    .line 222
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 223
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 219
    :cond_2
    iget v1, p1, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->duration:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 220
    const/16 v0, 0x5dc

    goto :goto_1
.end method

.method private showNextSnackbarLocked(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    .line 179
    iput-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    .line 181
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    iget-object v0, v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    .line 182
    if-eqz v0, :cond_1

    .line 183
    invoke-interface {v0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;->show(Z)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iput-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    goto :goto_0
.end method


# virtual methods
.method public cancelTimeout(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 137
    :cond_0
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dismiss(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;I)V
    .locals 2

    .prologue
    .line 95
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-direct {p0, v0, p2}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->cancelSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;I)Z

    .line 101
    :cond_0
    :goto_0
    monitor-exit v1

    .line 102
    return-void

    .line 98
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isNextSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-direct {p0, v0, p2}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->cancelSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;I)Z

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handleTimeout(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;)V
    .locals 2

    .prologue
    .line 227
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    if-ne v0, p1, :cond_1

    .line 229
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->cancelSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;I)Z

    .line 231
    :cond_1
    monitor-exit v1

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCurrent(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z
    .locals 2

    .prologue
    .line 149
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCurrentOrNext(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z
    .locals 2

    .prologue
    .line 155
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isNextSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDismissed(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    .line 113
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    iget-boolean v0, v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->animated:Z

    invoke-direct {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->showNextSnackbarLocked(Z)V

    .line 117
    :cond_0
    monitor-exit v1

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onShown(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-direct {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->scheduleTimeoutLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;)V

    .line 129
    :cond_0
    monitor-exit v1

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public restoreTimeout(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V
    .locals 2

    .prologue
    .line 141
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-direct {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->scheduleTimeoutLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;)V

    .line 145
    :cond_0
    monitor-exit v1

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public show(ILcom/netflix/android/widgetry/buffet/BuffetManager$Callback;Z)V
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    invoke-direct {p0, p2}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    iput p1, v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->duration:I

    .line 70
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-direct {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->scheduleTimeoutLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;)V

    .line 72
    monitor-exit v1

    .line 92
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-direct {p0, p2}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isNextSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    iput p1, v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->duration:I

    .line 81
    :goto_1
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->cancelSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    monitor-exit v1

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 78
    :cond_1
    :try_start_1
    new-instance v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-direct {v0, p1, p3, p2}, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;-><init>(IZLcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    goto :goto_1

    .line 87
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    .line 89
    invoke-direct {p0, p3}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->showNextSnackbarLocked(Z)V

    .line 91
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
