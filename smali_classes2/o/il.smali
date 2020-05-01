.class public Lo/il;
.super Lo/ih;
.source ""


# instance fields
.field private final d:Lo/cz;

.field private final e:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "Lo/bY$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/subjects/PublishSubject;Lo/cz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;",
            "Lo/cz;",
            ")V"
        }
    .end annotation

    .line 52
    sget-object v0, Lo/bY$TaskDescription;->d:Lo/bY$TaskDescription;

    invoke-direct {p0, v0, p1}, Lo/ih;-><init>(Lo/bY$TaskDescription;Lio/reactivex/subjects/PublishSubject;)V

    .line 23
    new-instance p1, Lo/il$5;

    const-string v0, "InAppWideVine"

    invoke-direct {p1, p0, v0}, Lo/il$5;-><init>(Lo/il;Ljava/lang/String;)V

    iput-object p1, p0, Lo/il;->e:Lio/reactivex/Observer;

    .line 53
    iput-object p2, p0, Lo/il;->d:Lo/cz;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 59
    invoke-virtual {p0}, Lo/il;->c()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "nf_module_installer"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lo/il;->a:Lo/bY$TaskDescription;

    invoke-virtual {v1}, Lo/bY$TaskDescription;->e()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "already installed %s"

    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 64
    :cond_0
    invoke-static {}, Lo/adq;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lo/il;->a:Lo/bY$TaskDescription;

    invoke-virtual {v1}, Lo/bY$TaskDescription;->e()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "x86 architecture is not supported for %s"

    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 69
    :cond_1
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v4, "prefetch_module_inapp_widevine"

    invoke-static {v0, v4, v3}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    sget-object v0, Lo/fX;->e:Lo/fX$ActionBar;

    invoke-virtual {v0}, Lo/fX$ActionBar;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/il;->d:Lo/cz;

    invoke-virtual {p0, v0}, Lo/il;->b(Lo/cz;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lo/il;->a:Lo/bY$TaskDescription;

    invoke-virtual {v1}, Lo/bY$TaskDescription;->e()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "requesting install of %s"

    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 72
    iget-object v0, p0, Lo/il;->e:Lio/reactivex/Observer;

    invoke-virtual {p0}, Lo/il;->d()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lo/il;->d(Lio/reactivex/Observer;Z)V

    :cond_3
    return-void
.end method

.method protected c(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method protected c(Lo/bY$ActionBar;)V
    .locals 0

    return-void
.end method
