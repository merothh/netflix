.class public Lo/iH$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/jr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/iH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Application"
.end annotation


# instance fields
.field final synthetic b:Lo/iH;


# direct methods
.method public constructor <init>(Lo/iH;Ljava/lang/String;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lo/iH$Application;->b:Lo/iH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic c(Ljava/lang/String;)V
    .locals 1

    .line 555
    iget-object v0, p0, Lo/iH$Application;->b:Lo/iH;

    invoke-virtual {v0, p1}, Lo/iH;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lo/iH$Application;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/iH$Application;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEventsDelivered(Ljava/lang/String;)V
    .locals 1

    .line 575
    iget-object v0, p0, Lo/iH$Application;->b:Lo/iH;

    iget-object v0, v0, Lo/iH;->d:Lo/jb;

    invoke-virtual {v0}, Lo/jb;->f()V

    .line 576
    iget-object v0, p0, Lo/iH$Application;->b:Lo/iH;

    invoke-virtual {v0, p1}, Lo/iH;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onEventsDeliveryFailed(Ljava/lang/String;)V
    .locals 4

    .line 533
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 537
    :cond_0
    invoke-static {}, Lo/gX;->g()Z

    move-result v0

    const-string v1, "nf_log_cl"

    if-eqz v0, :cond_1

    const-string v0, "Retry is disabled, remove saved payload."

    .line 538
    invoke-static {v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lo/iH$Application;->b:Lo/iH;

    invoke-virtual {v0, p1}, Lo/iH;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Retry is enabled, keep saved payload on failure..."

    .line 541
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :goto_0
    iget-object v0, p0, Lo/iH$Application;->b:Lo/iH;

    iget-object v0, v0, Lo/iH;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 552
    invoke-static {}, Lo/gX;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "On failure to deliver CL payload, policy requres retry on spot."

    .line 553
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lo/iH$Application;->b:Lo/iH;

    iget-object v0, v0, Lo/iH;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lo/iK;

    invoke-direct {v1, p0, p1}, Lo/iK;-><init>(Lo/iH$Application;Ljava/lang/String;)V

    iget-object p1, p0, Lo/iH$Application;->b:Lo/iH;

    iget-object p1, p1, Lo/iH;->d:Lo/jb;

    .line 556
    invoke-virtual {p1}, Lo/jb;->g()J

    move-result-wide v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 554
    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    :cond_2
    const-string p1, "On failure to deliver CL payload, postponing retry."

    .line 558
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
