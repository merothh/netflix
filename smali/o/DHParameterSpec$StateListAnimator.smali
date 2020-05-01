.class Lo/DHParameterSpec$StateListAnimator;
.super Ljava/util/concurrent/FutureTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DHParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lo/GCMParameterSpec<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/DHParameterSpec;


# direct methods
.method constructor <init>(Lo/DHParameterSpec;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lo/GCMParameterSpec<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lo/DHParameterSpec$StateListAnimator;->b:Lo/DHParameterSpec;

    .line 164
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    .line 169
    invoke-virtual {p0}, Lo/DHParameterSpec$StateListAnimator;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 175
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/DHParameterSpec$StateListAnimator;->b:Lo/DHParameterSpec;

    invoke-virtual {p0}, Lo/DHParameterSpec$StateListAnimator;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/GCMParameterSpec;

    invoke-static {v0, v1}, Lo/DHParameterSpec;->c(Lo/DHParameterSpec;Lo/GCMParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 177
    :goto_0
    iget-object v1, p0, Lo/DHParameterSpec$StateListAnimator;->b:Lo/DHParameterSpec;

    new-instance v2, Lo/GCMParameterSpec;

    invoke-direct {v2, v0}, Lo/GCMParameterSpec;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lo/DHParameterSpec;->c(Lo/DHParameterSpec;Lo/GCMParameterSpec;)V

    :goto_1
    return-void
.end method
