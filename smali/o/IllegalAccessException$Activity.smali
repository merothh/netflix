.class final Lo/IllegalAccessException$Activity;
.super Landroidx/loader/content/ModernAsyncTask;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/IllegalAccessException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/ModernAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic d:Lo/IllegalAccessException;

.field private final g:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lo/IllegalAccessException;)V
    .locals 1

    .line 48
    iput-object p1, p0, Lo/IllegalAccessException$Activity;->d:Lo/IllegalAccessException;

    invoke-direct {p0}, Landroidx/loader/content/ModernAsyncTask;-><init>()V

    .line 49
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lo/IllegalAccessException$Activity;->g:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method protected varargs c([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TD;"
        }
    .end annotation

    .line 60
    :try_start_0
    iget-object p1, p0, Lo/IllegalAccessException$Activity;->d:Lo/IllegalAccessException;

    invoke-virtual {p1}, Lo/IllegalAccessException;->onLoadInBackground()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroidx/core/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p0}, Lo/IllegalAccessException$Activity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 71
    :cond_0
    throw p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 83
    :try_start_0
    iget-object v0, p0, Lo/IllegalAccessException$Activity;->d:Lo/IllegalAccessException;

    invoke-virtual {v0, p0, p1}, Lo/IllegalAccessException;->dispatchOnLoadComplete(Lo/IllegalAccessException$Activity;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object p1, p0, Lo/IllegalAccessException$Activity;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/IllegalAccessException$Activity;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public synthetic d([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lo/IllegalAccessException$Activity;->c([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 94
    :try_start_0
    iget-object v0, p0, Lo/IllegalAccessException$Activity;->d:Lo/IllegalAccessException;

    invoke-virtual {v0, p0, p1}, Lo/IllegalAccessException;->dispatchOnCancelled(Lo/IllegalAccessException$Activity;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object p1, p0, Lo/IllegalAccessException$Activity;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/IllegalAccessException$Activity;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lo/IllegalAccessException$Activity;->a:Z

    .line 105
    iget-object v0, p0, Lo/IllegalAccessException$Activity;->d:Lo/IllegalAccessException;

    invoke-virtual {v0}, Lo/IllegalAccessException;->executePendingTask()V

    return-void
.end method