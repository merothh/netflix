.class Lo/jd$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/jd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/jd;


# direct methods
.method constructor <init>(Lo/jd;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lo/jd$3;->a:Lo/jd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 207
    iget-object v0, p0, Lo/jd$3;->a:Lo/jd;

    invoke-static {v0}, Lo/jd;->c(Lo/jd;)Lo/jd$TaskDescription;

    move-result-object v0

    invoke-virtual {v0}, Lo/jd$TaskDescription;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/jd$3;->a:Lo/jd;

    invoke-static {v0}, Lo/jd;->a(Lo/jd;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "nf_pds_logs"

    const-string v1, "Check if we have not delivered events from last time our app was runnung..."

    .line 212
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v0, Lo/jd$3$3;

    invoke-direct {v0, p0}, Lo/jd$3$3;-><init>(Lo/jd$3;)V

    .line 224
    iget-object v1, p0, Lo/jd$3;->a:Lo/jd;

    invoke-static {v1}, Lo/jd;->e(Lo/jd;)Lo/aeL;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/aeL;->c(Lo/aeL$ActionBar;)V

    return-void

    .line 208
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/jd$3;->a:Lo/jd;

    invoke-static {v0}, Lo/jd;->b(Lo/jd;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v1, p0, Lo/jd$3;->a:Lo/jd;

    invoke-static {v1}, Lo/jd;->d(Lo/jd;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
