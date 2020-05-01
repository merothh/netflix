.class Lo/nI$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/iB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final a:Ljava/lang/Runnable;

.field private final d:Lo/aeq;

.field final synthetic e:Lo/nI;


# direct methods
.method constructor <init>(Lo/nI;)V
    .locals 3

    .line 726
    iput-object p1, p0, Lo/nI$ActionBar;->e:Lo/nI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    new-instance p1, Lo/nI$ActionBar$4;

    invoke-direct {p1, p0}, Lo/nI$ActionBar$4;-><init>(Lo/nI$ActionBar;)V

    iput-object p1, p0, Lo/nI$ActionBar;->a:Ljava/lang/Runnable;

    .line 727
    new-instance p1, Lo/aeq;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const/16 v2, 0xa

    invoke-direct {p1, v2, v0, v1}, Lo/aeq;-><init>(IJ)V

    iput-object p1, p0, Lo/nI$ActionBar;->d:Lo/aeq;

    return-void
.end method


# virtual methods
.method public onNetflixStartJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 732
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nf_downloadController"

    const-string v4, "onNetflixStartJob jobId=%s"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 734
    sget-object v1, Lo/nI$6;->a:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 736
    :cond_0
    iget-object p1, p0, Lo/nI$ActionBar;->d:Lo/aeq;

    invoke-virtual {p1}, Lo/aeq;->c()Z

    move-result p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 737
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "onNetflixStartJob tooFast=%b"

    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz p1, :cond_1

    return-void

    .line 741
    :cond_1
    iget-object p1, p0, Lo/nI$ActionBar;->e:Lo/nI;

    invoke-static {p1}, Lo/nI;->i(Lo/nI;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lo/nI$ActionBar;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 742
    iget-object p1, p0, Lo/nI$ActionBar;->e:Lo/nI;

    invoke-static {p1}, Lo/nI;->i(Lo/nI;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lo/nI$ActionBar;->a:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public onNetflixStopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 756
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "nf_downloadController"

    const-string v1, "onNetflixStopJob jobId=%s"

    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
