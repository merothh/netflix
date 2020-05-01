.class Lcom/netflix/msl/msg/MslControl$TaskStackBuilder;
.super Ljava/util/concurrent/AbstractExecutorService;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/msl/msg/MslControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskStackBuilder"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 266
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$TaskStackBuilder;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/msl/msg/MslControl$3;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/netflix/msl/msg/MslControl$TaskStackBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$TaskStackBuilder;->a:Z

    if-nez v0, :cond_0

    .line 277
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 276
    :cond_0
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    const-string v0, "Synchronous executor already shut down."

    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isShutdown()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$TaskStackBuilder;->a:Z

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$TaskStackBuilder;->a:Z

    return v0
.end method

.method public shutdown()V
    .locals 1

    const/4 v0, 0x1

    .line 309
    iput-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$TaskStackBuilder;->a:Z

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 317
    iput-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$TaskStackBuilder;->a:Z

    .line 318
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
