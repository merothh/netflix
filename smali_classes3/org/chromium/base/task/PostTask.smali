.class public Lorg/chromium/base/task/PostTask;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final sLock:Ljava/lang/Object;

.field private static sPreNativeTaskRunners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/chromium/base/task/TaskRunner;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPrenativeThreadPoolExecutor:Ljava/util/concurrent/Executor;

.field private static sPrenativeThreadPoolExecutorOverride:Ljava/util/concurrent/Executor;

.field private static final sTaskExecutors:[Lorg/chromium/base/task/TaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/task/PostTask;->sLock:Ljava/lang/Object;

    .line 25
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 26
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/PostTask;->sPreNativeTaskRunners:Ljava/util/Set;

    .line 27
    new-instance v0, Lorg/chromium/base/task/ChromeThreadPoolExecutor;

    invoke-direct {v0}, Lorg/chromium/base/task/ChromeThreadPoolExecutor;-><init>()V

    sput-object v0, Lorg/chromium/base/task/PostTask;->sPrenativeThreadPoolExecutor:Ljava/util/concurrent/Executor;

    .line 29
    invoke-static {}, Lorg/chromium/base/task/PostTask;->getInitialTaskExecutors()[Lorg/chromium/base/task/TaskExecutor;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/PostTask;->sTaskExecutors:[Lorg/chromium/base/task/TaskExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInitialTaskExecutors()[Lorg/chromium/base/task/TaskExecutor;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/chromium/base/task/TaskExecutor;

    .line 33
    new-instance v1, Lorg/chromium/base/task/DefaultTaskExecutor;

    invoke-direct {v1}, Lorg/chromium/base/task/DefaultTaskExecutor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static getPrenativeThreadPoolExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 211
    sget-object v0, Lorg/chromium/base/task/PostTask;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    sget-object v1, Lorg/chromium/base/task/PostTask;->sPrenativeThreadPoolExecutorOverride:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    .line 213
    sget-object v1, Lorg/chromium/base/task/PostTask;->sPrenativeThreadPoolExecutorOverride:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-object v1

    .line 214
    :cond_0
    sget-object v1, Lorg/chromium/base/task/PostTask;->sPrenativeThreadPoolExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getTaskExecutorForTraits(Lorg/chromium/base/task/TaskTraits;)Lorg/chromium/base/task/TaskExecutor;
    .locals 1

    .line 236
    sget-object v0, Lorg/chromium/base/task/PostTask;->sTaskExecutors:[Lorg/chromium/base/task/TaskExecutor;

    iget-byte p0, p0, Lorg/chromium/base/task/TaskTraits;->mExtensionId:B

    aget-object p0, v0, p0

    return-object p0
.end method

.method private static native nativePostDelayedTask(ZIZZB[BLjava/lang/Runnable;J)V
.end method

.method private static onNativeSchedulerReady()V
    .locals 3
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 241
    sget-object v0, Lorg/chromium/base/task/PostTask;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    sget-object v1, Lorg/chromium/base/task/PostTask;->sPreNativeTaskRunners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/base/task/TaskRunner;

    .line 243
    invoke-interface {v2}, Lorg/chromium/base/task/TaskRunner;->initNativeTaskRunner()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 245
    sput-object v1, Lorg/chromium/base/task/PostTask;->sPreNativeTaskRunners:Ljava/util/Set;

    .line 246
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static onNativeSchedulerShutdown()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 252
    sget-object v0, Lorg/chromium/base/task/PostTask;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_0
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 254
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lorg/chromium/base/task/PostTask;->sPreNativeTaskRunners:Ljava/util/Set;

    .line 255
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static postDelayedTask(Lorg/chromium/base/task/TaskTraits;Ljava/lang/Runnable;J)V
    .locals 10

    .line 84
    sget-object v0, Lorg/chromium/base/task/PostTask;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lorg/chromium/base/task/PostTask;->sPreNativeTaskRunners:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 86
    invoke-static {p0}, Lorg/chromium/base/task/PostTask;->getTaskExecutorForTraits(Lorg/chromium/base/task/TaskTraits;)Lorg/chromium/base/task/TaskExecutor;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Lorg/chromium/base/task/TaskExecutor;->postDelayedTask(Lorg/chromium/base/task/TaskTraits;Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 88
    :cond_0
    iget-boolean v1, p0, Lorg/chromium/base/task/TaskTraits;->mPrioritySetExplicitly:Z

    iget v2, p0, Lorg/chromium/base/task/TaskTraits;->mPriority:I

    iget-boolean v3, p0, Lorg/chromium/base/task/TaskTraits;->mMayBlock:Z

    iget-boolean v4, p0, Lorg/chromium/base/task/TaskTraits;->mUseThreadPool:Z

    iget-byte v5, p0, Lorg/chromium/base/task/TaskTraits;->mExtensionId:B

    iget-object v6, p0, Lorg/chromium/base/task/TaskTraits;->mExtensionData:[B

    move-object v7, p1

    move-wide v8, p2

    invoke-static/range {v1 .. v9}, Lorg/chromium/base/task/PostTask;->nativePostDelayedTask(ZIZZB[BLjava/lang/Runnable;J)V

    .line 92
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static postTask(Lorg/chromium/base/task/TaskTraits;Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 75
    invoke-static {p0, p1, v0, v1}, Lorg/chromium/base/task/PostTask;->postDelayedTask(Lorg/chromium/base/task/TaskTraits;Ljava/lang/Runnable;J)V

    return-void
.end method

.method static registerPreNativeTaskRunnerLocked(Lorg/chromium/base/task/TaskRunner;)Z
    .locals 1

    .line 228
    sget-object v0, Lorg/chromium/base/task/PostTask;->sPreNativeTaskRunners:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 229
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
