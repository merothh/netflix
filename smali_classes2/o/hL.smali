.class public final Lo/hL;
.super Lo/bV;
.source ""

# interfaces
.implements Lo/zF;


# instance fields
.field private c:Lo/hR;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lo/bV;-><init>()V

    return-void
.end method

.method private a(Lo/hR;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 108
    invoke-interface {p1}, Lo/hR;->a()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ErrorAgent"

    const-string v1, "Execute background task!!!"

    .line 112
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    invoke-interface {p1}, Lo/hR;->a()Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.ui.error.ACTION_DISPLAY_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public agentName()Ljava/lang/String;
    .locals 1

    const-string v0, "error"

    return-object v0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 118
    :try_start_0
    iput-object v0, p0, Lo/hL;->c:Lo/hR;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Lo/hR;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 81
    :cond_0
    invoke-direct {p0, p1}, Lo/hL;->a(Lo/hR;)V

    .line 82
    iget-object v1, p0, Lo/hL;->c:Lo/hR;

    if-eqz v1, :cond_2

    .line 84
    invoke-interface {v1}, Lo/hR;->e()I

    move-result v1

    invoke-interface {p1}, Lo/hR;->e()I

    move-result v2

    if-lt v1, v2, :cond_1

    return v0

    .line 94
    :cond_1
    iput-object p1, p0, Lo/hL;->c:Lo/hR;

    .line 95
    invoke-virtual {p0}, Lo/hL;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/hL;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v0, "ErrorAgent"

    const-string v1, "No previous errors, display this one"

    .line 98
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-object p1, p0, Lo/hL;->c:Lo/hR;

    .line 100
    invoke-virtual {p0}, Lo/hL;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/hL;->c(Landroid/content/Context;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected doInit()V
    .locals 3

    const-string v0, "ErrorAgent::init done "

    const-string v1, "ErrorAgent"

    .line 41
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    sget-object v2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v2}, Lo/hL;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 43
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e()Lo/hR;
    .locals 1

    .line 49
    iget-object v0, p0, Lo/hL;->c:Lo/hR;

    return-object v0
.end method

.method public declared-synchronized e(Lo/hR;)V
    .locals 1

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lo/hL;->c:Lo/hR;

    if-ne v0, p1, :cond_0

    const-string p1, "ErrorAgent"

    const-string v0, "Current error is reported to user by UI!"

    .line 56
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lo/hL;->c:Lo/hR;

    goto :goto_0

    :cond_0
    const-string p1, "ErrorAgent"

    const-string v0, "Current error is not one that UI just handled!"

    .line 59
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
