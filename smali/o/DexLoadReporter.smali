.class public Lo/DexLoadReporter;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lo/ContextImpl;

.field private final c:Lo/FragmentState;

.field private volatile d:Z

.field private final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lo/ContextImpl;Lo/FragmentState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request;",
            ">;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request;",
            ">;",
            "Lo/ContextImpl;",
            "Lo/FragmentState;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lo/DexLoadReporter;->d:Z

    .line 64
    iput-object p1, p0, Lo/DexLoadReporter;->e:Ljava/util/concurrent/BlockingQueue;

    .line 65
    iput-object p2, p0, Lo/DexLoadReporter;->a:Ljava/util/concurrent/BlockingQueue;

    .line 66
    iput-object p3, p0, Lo/DexLoadReporter;->b:Lo/ContextImpl;

    .line 67
    iput-object p4, p0, Lo/DexLoadReporter;->c:Lo/FragmentState;

    return-void
.end method

.method static synthetic e(Lo/DexLoadReporter;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 33
    iget-object p0, p0, Lo/DexLoadReporter;->a:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lo/DexLoadReporter;->d:Z

    .line 76
    invoke-virtual {p0}, Lo/DexLoadReporter;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 5

    const/16 v0, 0xa

    .line 82
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 85
    iget-object v0, p0, Lo/DexLoadReporter;->b:Lo/ContextImpl;

    invoke-interface {v0}, Lo/ContextImpl;->c()V

    .line 91
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lo/DexLoadReporter;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;

    const-string v1, "cache-queue-take"

    .line 92
    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Lcom/android/volley/Request;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "cache-discard-canceled"

    .line 96
    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v1, p0, Lo/DexLoadReporter;->b:Lo/ContextImpl;

    invoke-virtual {v0}, Lcom/android/volley/Request;->n()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/ContextImpl;->a(Ljava/lang/String;)Lo/ContextImpl$StateListAnimator;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "cache-miss"

    .line 103
    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lo/DexLoadReporter;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {v1}, Lo/ContextImpl$StateListAnimator;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "cache-hit-expired"

    .line 111
    invoke-virtual {v0, v2}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->d(Lo/ContextImpl$StateListAnimator;)V

    .line 113
    iget-object v1, p0, Lo/DexLoadReporter;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v2, "cache-hit"

    .line 118
    invoke-virtual {v0, v2}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 119
    new-instance v2, Lo/ExitTransitionCoordinator;

    iget-object v3, v1, Lo/ContextImpl$StateListAnimator;->a:[B

    iget-object v4, v1, Lo/ContextImpl$StateListAnimator;->f:Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Lo/ExitTransitionCoordinator;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/android/volley/Request;->e(Lo/ExitTransitionCoordinator;)Lo/FragmentManagerNonConfig;

    move-result-object v2

    const-string v3, "cache-hit-parsed"

    .line 121
    invoke-virtual {v0, v3}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1}, Lo/ContextImpl$StateListAnimator;->c()Z

    move-result v3

    if-nez v3, :cond_4

    .line 125
    sget-object v1, Lcom/android/volley/Request$ResourceLocationType;->b:Lcom/android/volley/Request$ResourceLocationType;

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->a(Lcom/android/volley/Request$ResourceLocationType;)V

    .line 126
    iget-object v1, p0, Lo/DexLoadReporter;->c:Lo/FragmentState;

    invoke-interface {v1, v0, v2}, Lo/FragmentState;->c(Lcom/android/volley/Request;Lo/FragmentManagerNonConfig;)V

    goto :goto_0

    :cond_4
    const-string v3, "cache-hit-refresh-needed"

    .line 131
    invoke-virtual {v0, v3}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->d(Lo/ContextImpl$StateListAnimator;)V

    const/4 v1, 0x1

    .line 135
    iput-boolean v1, v2, Lo/FragmentManagerNonConfig;->c:Z

    .line 139
    iget-object v1, p0, Lo/DexLoadReporter;->c:Lo/FragmentState;

    new-instance v3, Lo/DexLoadReporter$3;

    invoke-direct {v3, p0, v0}, Lo/DexLoadReporter$3;-><init>(Lo/DexLoadReporter;Lcom/android/volley/Request;)V

    invoke-interface {v1, v0, v2, v3}, Lo/FragmentState;->b(Lcom/android/volley/Request;Lo/FragmentManagerNonConfig;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    nop

    .line 153
    iget-boolean v0, p0, Lo/DexLoadReporter;->d:Z

    if-eqz v0, :cond_0

    return-void
.end method
