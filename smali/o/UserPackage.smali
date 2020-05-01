.class public Lo/UserPackage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UrlInterceptRegistry;


# instance fields
.field private b:Lo/WebBackForwardList;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, Lo/UrlInterceptHandler;

    invoke-direct {v1, p0}, Lo/UrlInterceptHandler;-><init>(Lo/UserPackage;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4, v2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic a()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lo/UserPackage;->e()Lo/WebBackForwardList;

    return-void
.end method

.method static synthetic c(Lo/UserPackage;)V
    .locals 0

    invoke-direct {p0}, Lo/UserPackage;->a()V

    return-void
.end method

.method private e()Lo/WebBackForwardList;
    .locals 5

    .line 38
    iget-object v0, p0, Lo/UserPackage;->b:Lo/WebBackForwardList;

    if-eqz v0, :cond_0

    return-object v0

    .line 41
    :cond_0
    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lo/UserPackage;->b:Lo/WebBackForwardList;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Landroid/content/Context;

    .line 44
    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "device_history"

    const/4 v2, 0x0

    .line 43
    invoke-static {v0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceHistory"

    const-string v2, "deviceHistory %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 47
    invoke-static {v1, v2, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 48
    invoke-static {v0}, Lo/WebBackForwardList;->c(Ljava/lang/String;)Lo/WebBackForwardList;

    move-result-object v0

    iput-object v0, p0, Lo/UserPackage;->b:Lo/WebBackForwardList;

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, v0}, Lo/UserPackage;->e(I)V

    .line 51
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object v0, p0, Lo/UserPackage;->b:Lo/WebBackForwardList;

    return-object v0

    :catchall_0
    move-exception v0

    .line 51
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private e(I)V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lo/UserPackage;->b()Lo/ValueCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lo/ValueCallback;->e()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 59
    :cond_0
    iget-object v0, p0, Lo/UserPackage;->b:Lo/WebBackForwardList;

    invoke-virtual {v0}, Lo/WebBackForwardList;->e()Lo/WebBackForwardList$StateListAnimator;

    move-result-object v0

    invoke-static {p1}, Lo/ValueCallback;->e(I)Lo/ValueCallback;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/WebBackForwardList$StateListAnimator;->d(Lo/ValueCallback;)Lo/WebBackForwardList$StateListAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lo/WebBackForwardList$StateListAnimator;->a()Lo/WebBackForwardList;

    move-result-object p1

    iput-object p1, p0, Lo/UserPackage;->b:Lo/WebBackForwardList;

    .line 60
    const-class p1, Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lo/UserPackage;->b:Lo/WebBackForwardList;

    .line 63
    invoke-virtual {v0}, Lo/WebBackForwardList;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_history"

    .line 60
    invoke-static {p1, v1, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public b()Lo/ValueCallback;
    .locals 1

    .line 33
    invoke-direct {p0}, Lo/UserPackage;->e()Lo/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Lo/WebBackForwardList;->a()Lo/ValueCallback;

    move-result-object v0

    return-object v0
.end method
