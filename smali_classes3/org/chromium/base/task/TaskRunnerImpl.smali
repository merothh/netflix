.class public Lorg/chromium/base/task/TaskRunnerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/chromium/base/task/TaskRunner;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mIsDestroying:Z

.field private final mLifetimeAssert:Lorg/chromium/base/LifetimeAssert;

.field protected final mLock:Ljava/lang/Object;

.field protected mNativeTaskRunnerAndroid:J

.field protected mPreNativeDelayedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mPreNativeTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected final mRunPreNativeTaskClosure:Ljava/lang/Runnable;

.field private final mTaskRunnerType:I

.field private final mTaskTraits:Lorg/chromium/base/task/TaskTraits;

.field private final mTraceEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lorg/chromium/base/task/TaskTraits;)V
    .locals 2

    const-string v0, "TaskRunnerImpl"

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/base/task/TaskRunnerImpl;-><init>(Lorg/chromium/base/task/TaskTraits;Ljava/lang/String;I)V

    return-void
.end method

.method protected constructor <init>(Lorg/chromium/base/task/TaskTraits;Ljava/lang/String;I)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mLock:Ljava/lang/Object;

    .line 33
    new-instance v0, Lo/aqz;

    invoke-direct {v0, p0}, Lo/aqz;-><init>(Lorg/chromium/base/task/TaskRunnerImpl;)V

    iput-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mRunPreNativeTaskClosure:Ljava/lang/Runnable;

    .line 36
    invoke-static {p0}, Lorg/chromium/base/LifetimeAssert;->create(Ljava/lang/Object;)Lorg/chromium/base/LifetimeAssert;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mLifetimeAssert:Lorg/chromium/base/LifetimeAssert;

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/LinkedList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeDelayedTasks:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mTaskTraits:Lorg/chromium/base/task/TaskTraits;

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".PreNativeTask.run"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mTraceEvent:Ljava/lang/String;

    .line 60
    iput p3, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mTaskRunnerType:I

    .line 61
    invoke-static {p0}, Lorg/chromium/base/task/PostTask;->registerPreNativeTaskRunnerLocked(Lorg/chromium/base/task/TaskRunner;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/base/task/TaskRunnerImpl;->initNativeTaskRunner()V

    :cond_0
    return-void
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeInit(IZIZZB[B)J
.end method

.method private native nativePostDelayedTask(JLjava/lang/Runnable;J)V
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 66
    iget-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mLifetimeAssert:Lorg/chromium/base/LifetimeAssert;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/chromium/base/LifetimeAssert;->setSafeToGc(Lorg/chromium/base/LifetimeAssert;Z)V

    .line 68
    iput-boolean v2, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mIsDestroying:Z

    .line 69
    invoke-virtual {p0}, Lorg/chromium/base/task/TaskRunnerImpl;->destroyInternal()V

    .line 70
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected destroyInternal()V
    .locals 5

    .line 75
    iget-wide v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mNativeTaskRunnerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lorg/chromium/base/task/TaskRunnerImpl;->nativeDestroy(J)V

    .line 76
    :cond_0
    iput-wide v2, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mNativeTaskRunnerAndroid:J

    return-void
.end method

.method public disableLifetimeCheck()V
    .locals 2

    .line 81
    iget-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mLifetimeAssert:Lorg/chromium/base/LifetimeAssert;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/base/LifetimeAssert;->setSafeToGc(Lorg/chromium/base/LifetimeAssert;Z)V

    return-void
.end method

.method public initNativeTaskRunner()V
    .locals 2

    .line 150
    iget-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/base/task/TaskRunnerImpl;->initNativeTaskRunnerInternal()V

    .line 152
    invoke-virtual {p0}, Lorg/chromium/base/task/TaskRunnerImpl;->migratePreNativeTasksToNative()V

    .line 153
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected initNativeTaskRunnerInternal()V
    .locals 13

    .line 158
    iget-wide v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mNativeTaskRunnerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 159
    iget v6, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mTaskRunnerType:I

    iget-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mTaskTraits:Lorg/chromium/base/task/TaskTraits;

    iget-boolean v7, v0, Lorg/chromium/base/task/TaskTraits;->mPrioritySetExplicitly:Z

    iget-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mTaskTraits:Lorg/chromium/base/task/TaskTraits;

    iget v8, v0, Lorg/chromium/base/task/TaskTraits;->mPriority:I

    iget-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mTaskTraits:Lorg/chromium/base/task/TaskTraits;

    iget-boolean v9, v0, Lorg/chromium/base/task/TaskTraits;->mMayBlock:Z

    iget-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mTaskTraits:Lorg/chromium/base/task/TaskTraits;

    iget-boolean v10, v0, Lorg/chromium/base/task/TaskTraits;->mUseThreadPool:Z

    iget-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mTaskTraits:Lorg/chromium/base/task/TaskTraits;

    iget-byte v11, v0, Lorg/chromium/base/task/TaskTraits;->mExtensionId:B

    iget-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mTaskTraits:Lorg/chromium/base/task/TaskTraits;

    iget-object v12, v0, Lorg/chromium/base/task/TaskTraits;->mExtensionData:[B

    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Lorg/chromium/base/task/TaskRunnerImpl;->nativeInit(IZIZZB[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mNativeTaskRunnerAndroid:J

    :cond_0
    return-void
.end method

.method protected migratePreNativeTasksToNative()V
    .locals 5

    .line 168
    iget-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    .line 170
    invoke-virtual {p0, v1, v2, v3}, Lorg/chromium/base/task/TaskRunnerImpl;->postDelayedTaskToNative(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeDelayedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 173
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lorg/chromium/base/task/TaskRunnerImpl;->postDelayedTaskToNative(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/LinkedList;

    .line 176
    iput-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeDelayedTasks:Ljava/util/List;

    :cond_2
    return-void
.end method

.method protected native nativeBelongsToCurrentThread(J)Z
.end method

.method public postDelayedTask(Ljava/lang/Runnable;J)V
    .locals 4

    .line 91
    iget-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/base/task/TaskRunnerImpl;->postDelayedTaskToNative(Ljava/lang/Runnable;J)V

    .line 95
    monitor-exit v0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    .line 102
    iget-object p2, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {p0}, Lorg/chromium/base/task/TaskRunnerImpl;->schedulePreNativeTask()V

    goto :goto_0

    .line 105
    :cond_1
    new-instance v1, Landroid/util/Pair;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    iget-object p1, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeDelayedTasks:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1
.end method

.method protected postDelayedTaskToNative(Ljava/lang/Runnable;J)V
    .locals 6

    .line 182
    iget-wide v1, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mNativeTaskRunnerAndroid:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/base/task/TaskRunnerImpl;->nativePostDelayedTask(JLjava/lang/Runnable;J)V

    return-void
.end method

.method public runPreNativeTask()V
    .locals 4

    .line 123
    iget-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mTraceEvent:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    .line 125
    :try_start_0
    iget-object v1, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    iget-object v2, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_0
    return-void

    .line 127
    :cond_1
    :try_start_2
    iget-object v2, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 128
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    :try_start_3
    iget-object v1, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mTaskTraits:Lorg/chromium/base/task/TaskTraits;

    iget v1, v1, Lorg/chromium/base/task/TaskTraits;->mPriority:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/16 v1, 0xa

    .line 137
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .line 134
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 131
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 140
    :goto_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_4

    .line 141
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception v2

    .line 128
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    .line 123
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v0, :cond_5

    .line 141
    :try_start_7
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v2
.end method

.method protected schedulePreNativeTask()V
    .locals 2

    .line 116
    invoke-static {}, Lorg/chromium/base/task/PostTask;->getPrenativeThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mRunPreNativeTaskClosure:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
