.class public final Lo/jF$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/jF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 300
    iput-boolean v0, p0, Lo/jF$ActionBar;->b:Z

    .line 302
    iput-boolean v0, p0, Lo/jF$ActionBar;->d:Z

    .line 304
    iput-boolean v0, p0, Lo/jF$ActionBar;->e:Z

    return-void
.end method

.method private b(Lo/cr;)V
    .locals 2

    const-string v0, "nf_log_crit"

    if-nez p1, :cond_0

    const-string p1, "Breadcrumb logging config is missing. It should NOT happen! Use default!"

    .line 463
    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;->getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    move-result-object p1

    goto :goto_0

    .line 466
    :cond_0
    sget-object v1, Lo/jy;->a:Lo/jy;

    invoke-virtual {v1}, Lo/jy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/cr;->a(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    move-result-object p1

    .line 474
    :goto_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;->isDisabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Breadcrumb logging is explicitly disabled"

    .line 475
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 476
    iput-boolean p1, p0, Lo/jF$ActionBar;->e:Z

    goto :goto_1

    :cond_1
    const-string p1, "Breadcrumb logging is NOT explicitly disabled, use error logging chance to keep all in sync since we are using only one service, ignore its own disable chance percentage"

    .line 478
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-boolean p1, p0, Lo/jF$ActionBar;->b:Z

    iput-boolean p1, p0, Lo/jF$ActionBar;->e:Z

    :goto_1
    return-void
.end method

.method private b(Lo/cy;)V
    .locals 2

    const-string v0, "nf_log_crit"

    if-nez p1, :cond_0

    const-string p1, "Error logging config is missing. It should NOT happen! Use default!"

    .line 380
    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    move-result-object p1

    goto :goto_0

    .line 383
    :cond_0
    sget-object v1, Lo/jy;->a:Lo/jy;

    invoke-virtual {v1}, Lo/jy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/cy;->a(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    move-result-object p1

    .line 395
    :goto_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "Error logging is explicitly disabled"

    .line 396
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 397
    iput-boolean p1, p0, Lo/jF$ActionBar;->b:Z

    .line 398
    iput-boolean p1, p0, Lo/jF$ActionBar;->d:Z

    goto :goto_1

    :cond_1
    const-string v1, "Error logging is NOT explicitly disabled, apply disable chance percentage"

    .line 400
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->getDisableChancePercentage()I

    move-result p1

    invoke-static {p1}, Lo/adq;->a(I)Z

    move-result p1

    iput-boolean p1, p0, Lo/jF$ActionBar;->b:Z

    .line 404
    sget-object p1, Lo/fT;->e:Lo/fT$Application;

    invoke-virtual {p1}, Lo/fT$Application;->a()Z

    move-result p1

    iput-boolean p1, p0, Lo/jF$ActionBar;->d:Z

    :goto_1
    return-void
.end method

.method private declared-synchronized d(Landroid/content/Context;J)V
    .locals 5

    monitor-enter p0

    .line 421
    :try_start_0
    invoke-static {}, Lo/adk;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "nf_log_crit"

    const-string p2, "Running under test, do NOT enable external crash reporter!"

    .line 422
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    monitor-exit p0

    return-void

    .line 426
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lo/jF$ActionBar;->c:Z

    if-eqz v0, :cond_1

    const-string p1, "nf_log_crit"

    const-string p2, "ExternalCrashReporter is already initialized"

    .line 427
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v0, "nf_log_crit"

    const-string v1, "ExternalCrashReporter was not initialized before..."

    .line 430
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p0}, Lo/jF$ActionBar;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "nf_log_crit"

    const-string v1, "This device is approved for sampling, initialize ExternalCrashReporter"

    .line 434
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "nf_log_crit"

    const-string v1, "This device is NOT approved for sampling"

    .line 436
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :goto_0
    invoke-virtual {p0}, Lo/jF$ActionBar;->b()Z

    move-result v0

    .line 440
    sget-object v1, Lo/jE;->b:Lo/jE$ActionBar;

    invoke-virtual {v1}, Lo/jE$ActionBar;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/jE;

    .line 441
    invoke-interface {v2, p1, v0}, Lo/jE;->d(Landroid/content/Context;Z)V

    if-eqz v0, :cond_3

    const-string v3, "version"

    const-string v4, "7.54.2"

    .line 443
    invoke-interface {v2, v3, v4}, Lo/jE;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sessionId"

    .line 444
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lo/jE;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    .line 447
    iput-boolean p1, p0, Lo/jF$ActionBar;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 448
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private d()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lo/jF$ActionBar;->c:Z

    return v0
.end method

.method static synthetic d(Lo/jF$ActionBar;)Z
    .locals 0

    .line 292
    invoke-direct {p0}, Lo/jF$ActionBar;->d()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lo/jF$ActionBar;->d:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lo/jF$ActionBar;->b:Z

    return v0
.end method

.method public declared-synchronized c(Landroid/content/Context;JLo/cy;Lo/cr;)V
    .locals 0

    monitor-enter p0

    .line 321
    :try_start_0
    invoke-direct {p0, p4}, Lo/jF$ActionBar;->b(Lo/cy;)V

    .line 322
    invoke-direct {p0, p5}, Lo/jF$ActionBar;->b(Lo/cr;)V

    .line 324
    invoke-direct {p0, p1, p2, p3}, Lo/jF$ActionBar;->d(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Z
    .locals 1

    .line 354
    iget-boolean v0, p0, Lo/jF$ActionBar;->e:Z

    return v0
.end method
