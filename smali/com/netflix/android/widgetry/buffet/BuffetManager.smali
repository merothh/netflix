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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/netflix/android/widgetry/buffet/BuffetManager$1;

    invoke-direct {v2, p0}, Lcom/netflix/android/widgetry/buffet/BuffetManager$1;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private cancelSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;I)Z
    .locals 2

    iget-object v0, p1, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;->dismiss(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getInstance()Lcom/netflix/android/widgetry/buffet/BuffetManager;
    .locals 1

    sget-object v0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->sBuffetManager:Lcom/netflix/android/widgetry/buffet/BuffetManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/android/widgetry/buffet/BuffetManager;

    invoke-direct {v0}, Lcom/netflix/android/widgetry/buffet/BuffetManager;-><init>()V

    sput-object v0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->sBuffetManager:Lcom/netflix/android/widgetry/buffet/BuffetManager;

    :cond_0
    sget-object v0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->sBuffetManager:Lcom/netflix/android/widgetry/buffet/BuffetManager;

    return-object v0
.end method

.method private isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z
    .locals 1

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

    iget v0, p1, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->duration:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0xabe

    iget v1, p1, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->duration:I

    if-lez v1, :cond_2

    iget v0, p1, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->duration:I

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    iget v1, p1, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->duration:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/16 v0, 0x5dc

    goto :goto_1
.end method

.method private showNextSnackbarLocked(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    iput-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    iget-object v0, v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;->show(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    goto :goto_0
.end method


# virtual methods
.method public cancelTimeout(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V
    .locals 3

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dismiss(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;I)V
    .locals 2

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-direct {p0, v0, p2}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->cancelSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;I)Z

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isNextSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-direct {p0, v0, p2}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->cancelSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;I)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handleTimeout(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;)V
    .locals 2

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->cancelSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;I)Z

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCurrent(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z
    .locals 2

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCurrentOrNext(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z
    .locals 2

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

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

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDismissed(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V
    .locals 2

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    iget-boolean v0, v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->animated:Z

    invoke-direct {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->showNextSnackbarLocked(Z)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onShown(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V
    .locals 2

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-direct {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->scheduleTimeoutLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public restoreTimeout(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V
    .locals 2

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-direct {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->scheduleTimeoutLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public show(ILcom/netflix/android/widgetry/buffet/BuffetManager$Callback;Z)V
    .locals 3

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p2}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    iput p1, v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->duration:I

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-direct {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->scheduleTimeoutLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isNextSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    iput p1, v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->duration:I

    :goto_1
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->cancelSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;I)Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-direct {v0, p1, p3, p2}, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;-><init>(IZLcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-direct {p0, p3}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->showNextSnackbarLocked(Z)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
