.class public Lorg/chromium/base/task/DefaultTaskExecutor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/chromium/base/task/TaskExecutor;


# instance fields
.field private final mTraitsToRunnerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/base/task/TaskTraits;",
            "Lorg/chromium/base/task/TaskRunner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/task/DefaultTaskExecutor;->mTraitsToRunnerMap:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a()Lorg/chromium/base/task/ChoreographerTaskRunner;
    .locals 1

    invoke-static {}, Lorg/chromium/base/task/DefaultTaskExecutor;->lambda$getChoreographerTaskRunner$0()Lorg/chromium/base/task/ChoreographerTaskRunner;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getChoreographerTaskRunner()Lorg/chromium/base/task/ChoreographerTaskRunner;
    .locals 3

    monitor-enter p0

    .line 71
    :try_start_0
    sget-object v0, Lo/aqD;->d:Lo/aqD;

    .line 72
    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlockingNoException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/task/ChoreographerTaskRunner;

    .line 75
    iget-object v1, p0, Lorg/chromium/base/task/DefaultTaskExecutor;->mTraitsToRunnerMap:Ljava/util/Map;

    sget-object v2, Lorg/chromium/base/task/TaskTraits;->CHOREOGRAPHER_FRAME:Lorg/chromium/base/task/TaskTraits;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static synthetic lambda$getChoreographerTaskRunner$0()Lorg/chromium/base/task/ChoreographerTaskRunner;
    .locals 2

    .line 73
    new-instance v0, Lorg/chromium/base/task/ChoreographerTaskRunner;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/base/task/ChoreographerTaskRunner;-><init>(Landroid/view/Choreographer;)V

    return-object v0
.end method


# virtual methods
.method public createTaskRunner(Lorg/chromium/base/task/TaskTraits;)Lorg/chromium/base/task/TaskRunner;
    .locals 1

    .line 23
    iget-boolean v0, p1, Lorg/chromium/base/task/TaskTraits;->mIsChoreographerFrame:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/base/task/DefaultTaskExecutor;->getChoreographerTaskRunner()Lorg/chromium/base/task/ChoreographerTaskRunner;

    move-result-object p1

    return-object p1

    .line 24
    :cond_0
    new-instance v0, Lorg/chromium/base/task/TaskRunnerImpl;

    invoke-direct {v0, p1}, Lorg/chromium/base/task/TaskRunnerImpl;-><init>(Lorg/chromium/base/task/TaskTraits;)V

    return-object v0
.end method

.method public declared-synchronized postDelayedTask(Lorg/chromium/base/task/TaskTraits;Ljava/lang/Runnable;J)V
    .locals 2

    monitor-enter p0

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/base/task/TaskTraits;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lorg/chromium/base/task/DefaultTaskExecutor;->createTaskRunner(Lorg/chromium/base/task/TaskTraits;)Lorg/chromium/base/task/TaskRunner;

    move-result-object p1

    .line 48
    invoke-interface {p1, p2, p3, p4}, Lorg/chromium/base/task/TaskRunner;->postDelayedTask(Ljava/lang/Runnable;J)V

    .line 49
    invoke-interface {p1}, Lorg/chromium/base/task/TaskRunner;->destroy()V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/chromium/base/task/DefaultTaskExecutor;->mTraitsToRunnerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/task/TaskRunner;

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Lorg/chromium/base/task/TaskRunnerImpl;

    invoke-direct {v0, p1}, Lorg/chromium/base/task/TaskRunnerImpl;-><init>(Lorg/chromium/base/task/TaskTraits;)V

    .line 56
    invoke-virtual {v0}, Lorg/chromium/base/task/TaskRunnerImpl;->disableLifetimeCheck()V

    .line 57
    iget-object v1, p0, Lorg/chromium/base/task/DefaultTaskExecutor;->mTraitsToRunnerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_1
    invoke-interface {v0, p2, p3, p4}, Lorg/chromium/base/task/TaskRunner;->postDelayedTask(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
