.class Lo/jf$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/jf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/jf;


# direct methods
.method constructor <init>(Lo/jf;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lo/jf$3;->d:Lo/jf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 135
    iget-object v0, p0, Lo/jf$3;->d:Lo/jf;

    invoke-static {v0}, Lo/jf;->a(Lo/jf;)Lo/jf$TaskDescription;

    move-result-object v0

    invoke-virtual {v0}, Lo/jf$TaskDescription;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/jf$3;->d:Lo/jf;

    invoke-static {v0}, Lo/jf;->e(Lo/jf;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/jf$3;->d:Lo/jf;

    invoke-static {v0}, Lo/jf;->b(Lo/jf;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "nf_releaseLicense"

    const-string v1, "Check if we have not delivered events from last time our app was running..."

    .line 140
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Lo/jf$3$2;

    invoke-direct {v0, p0}, Lo/jf$3$2;-><init>(Lo/jf$3;)V

    .line 152
    iget-object v1, p0, Lo/jf$3;->d:Lo/jf;

    invoke-static {v1}, Lo/jf;->f(Lo/jf;)Lo/aeL;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/aeL;->c(Lo/aeL$ActionBar;)V

    return-void

    .line 136
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/jf$3;->d:Lo/jf;

    invoke-static {v0}, Lo/jf;->d(Lo/jf;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v1, p0, Lo/jf$3;->d:Lo/jf;

    invoke-static {v1}, Lo/jf;->c(Lo/jf;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
