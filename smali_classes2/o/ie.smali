.class public Lo/ie;
.super Lo/ih;
.source ""


# instance fields
.field private final c:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "Lo/bY$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Lo/cz;


# direct methods
.method public constructor <init>(Lio/reactivex/subjects/PublishSubject;Landroid/content/Context;Lo/cz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;",
            "Landroid/content/Context;",
            "Lo/cz;",
            ")V"
        }
    .end annotation

    .line 29
    sget-object v0, Lo/bY$TaskDescription;->b:Lo/bY$TaskDescription;

    invoke-direct {p0, v0, p1}, Lo/ih;-><init>(Lo/bY$TaskDescription;Lio/reactivex/subjects/PublishSubject;)V

    .line 34
    new-instance p1, Lo/ie$4;

    const-string v0, "VoIp"

    invoke-direct {p1, p0, v0}, Lo/ie$4;-><init>(Lo/ie;Ljava/lang/String;)V

    iput-object p1, p0, Lo/ie;->c:Lio/reactivex/Observer;

    .line 30
    iput-object p2, p0, Lo/ie;->d:Landroid/content/Context;

    .line 31
    iput-object p3, p0, Lo/ie;->e:Lo/cz;

    return-void
.end method


# virtual methods
.method protected d()Z
    .locals 1

    .line 72
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->j()Lo/Plugin;

    move-result-object v0

    invoke-interface {v0}, Lo/Plugin;->b()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 9

    .line 46
    invoke-virtual {p0}, Lo/ie;->c()Z

    move-result v0

    const-string v1, "nf_module_installer"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    .line 47
    iget-object v3, p0, Lo/ie;->a:Lo/bY$TaskDescription;

    invoke-virtual {v3}, Lo/bY$TaskDescription;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "already installed %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lo/ie;->d:Landroid/content/Context;

    const-wide/16 v4, 0x0

    const-string v6, "voip_module_not_installed_time"

    invoke-static {v0, v6, v4, v5}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v0, v7, v4

    if-nez v0, :cond_1

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 54
    iget-object v0, p0, Lo/ie;->d:Landroid/content/Context;

    invoke-static {v0, v6, v7, v8}, Lo/aer;->d(Landroid/content/Context;Ljava/lang/String;J)V

    .line 56
    :cond_1
    invoke-virtual {p0}, Lo/ie;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v7

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    .line 59
    iget-object v0, p0, Lo/ie;->e:Lo/cz;

    invoke-interface {v0}, Lo/cz;->av()I

    move-result v0

    new-array v6, v3, [Ljava/lang/Object;

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "checkVoipModuleInstallation deadlineDays=%d"

    invoke-static {v1, v7, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-ltz v0, :cond_2

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 67
    iget-object v4, p0, Lo/ie;->a:Lo/bY$TaskDescription;

    invoke-virtual {v4}, Lo/bY$TaskDescription;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "requesting install of %s"

    invoke-static {v1, v2, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 68
    iget-object v1, p0, Lo/ie;->c:Lio/reactivex/Observer;

    invoke-virtual {p0, v1, v0}, Lo/ie;->d(Lio/reactivex/Observer;Z)V

    return-void
.end method
