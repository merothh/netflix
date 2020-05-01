.class public Lo/ig;
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

.field private final d:Lo/cz;


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

    .line 31
    sget-object v0, Lo/bY$TaskDescription;->c:Lo/bY$TaskDescription;

    invoke-direct {p0, v0, p1}, Lo/ih;-><init>(Lo/bY$TaskDescription;Lio/reactivex/subjects/PublishSubject;)V

    .line 18
    new-instance p1, Lo/ig$4;

    const-string v0, "av1"

    invoke-direct {p1, p0, v0}, Lo/ig$4;-><init>(Lo/ig;Ljava/lang/String;)V

    iput-object p1, p0, Lo/ig;->c:Lio/reactivex/Observer;

    .line 32
    iput-object p2, p0, Lo/ig;->d:Lo/cz;

    return-void
.end method


# virtual methods
.method public e()V
    .locals 4

    .line 37
    invoke-virtual {p0}, Lo/ig;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "nf_module_installer"

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 38
    iget-object v2, p0, Lo/ig;->a:Lo/bY$TaskDescription;

    invoke-virtual {v2}, Lo/bY$TaskDescription;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "already installed %s"

    invoke-static {v3, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lo/ig;->d:Lo/cz;

    invoke-virtual {p0, v0}, Lo/ig;->b(Lo/cz;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lo/fX;->e:Lo/fX$ActionBar;

    invoke-virtual {v0}, Lo/fX$ActionBar;->a()Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    .line 42
    iget-object v2, p0, Lo/ig;->a:Lo/bY$TaskDescription;

    invoke-virtual {v2}, Lo/bY$TaskDescription;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "requesting install of %s"

    invoke-static {v3, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 43
    iget-object v0, p0, Lo/ig;->c:Lio/reactivex/Observer;

    invoke-virtual {p0}, Lo/ig;->d()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lo/ig;->d(Lio/reactivex/Observer;Z)V

    :cond_1
    return-void
.end method
