.class Lo/ContextHubInfo$Application;
.super Lo/TaskSingleDrainer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ContextHubInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/TaskSingleDrainer<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/ContextHubInfo;


# direct methods
.method private constructor <init>(Lo/ContextHubInfo;Lo/BrightnessChangeEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "TT;>;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lo/ContextHubInfo$Application;->a:Lo/ContextHubInfo;

    .line 74
    invoke-direct {p0, p2}, Lo/TaskSingleDrainer;-><init>(Lo/BrightnessChangeEvent;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/ContextHubInfo;Lo/BrightnessChangeEvent;Lo/ContextHubInfo$4;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lo/ContextHubInfo$Application;-><init>(Lo/ContextHubInfo;Lo/BrightnessChangeEvent;)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 99
    iget-object v0, p0, Lo/ContextHubInfo$Application;->a:Lo/ContextHubInfo;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lo/ContextHubInfo$Application;->a:Lo/ContextHubInfo;

    invoke-static {v1}, Lo/ContextHubInfo;->c(Lo/ContextHubInfo;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-nez v1, :cond_0

    .line 102
    iget-object v2, p0, Lo/ContextHubInfo$Application;->a:Lo/ContextHubInfo;

    invoke-static {v2}, Lo/ContextHubInfo;->d(Lo/ContextHubInfo;)I

    .line 104
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 107
    iget-object v0, p0, Lo/ContextHubInfo$Application;->a:Lo/ContextHubInfo;

    invoke-static {v0}, Lo/ContextHubInfo;->b(Lo/ContextHubInfo;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lo/ContextHubInfo$Application$1;

    invoke-direct {v2, p0, v1}, Lo/ContextHubInfo$Application$1;-><init>(Lo/ContextHubInfo$Application;Landroid/util/Pair;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 104
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method protected b(Ljava/lang/Throwable;)V
    .locals 1

    .line 87
    invoke-virtual {p0}, Lo/ContextHubInfo$Application;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/BrightnessChangeEvent;->e(Ljava/lang/Throwable;)V

    .line 88
    invoke-direct {p0}, Lo/ContextHubInfo$Application;->b()V

    return-void
.end method

.method protected c(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lo/ContextHubInfo$Application;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    .line 80
    invoke-static {p2}, Lo/ContextHubInfo$Application;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    invoke-direct {p0}, Lo/ContextHubInfo$Application;->b()V

    :cond_0
    return-void
.end method

.method protected e()V
    .locals 1

    .line 93
    invoke-virtual {p0}, Lo/ContextHubInfo$Application;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0}, Lo/BrightnessChangeEvent;->c()V

    .line 94
    invoke-direct {p0}, Lo/ContextHubInfo$Application;->b()V

    return-void
.end method
