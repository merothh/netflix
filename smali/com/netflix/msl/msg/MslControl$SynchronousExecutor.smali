.class Lcom/netflix/msl/msg/MslControl$SynchronousExecutor;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "MslControl.java"


# instance fields
.field private shutdown:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$SynchronousExecutor;->shutdown:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/msl/msg/MslControl$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/msl/msg/MslControl$SynchronousExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$SynchronousExecutor;->shutdown:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string/jumbo v1, "Synchronous executor already shut down."

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public isShutdown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$SynchronousExecutor;->shutdown:Z

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$SynchronousExecutor;->shutdown:Z

    return v0
.end method

.method public shutdown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$SynchronousExecutor;->shutdown:Z

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$SynchronousExecutor;->shutdown:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
