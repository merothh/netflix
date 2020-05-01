.class public final Lo/VP;
.super Lo/VM;
.source ""


# instance fields
.field private c:Z

.field private d:Z

.field private final e:Lo/WC;


# direct methods
.method public constructor <init>(Lo/WC;Lio/reactivex/Observable;Lo/UK;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WC;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;",
            "Lo/UK;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerRepository"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lo/VM;-><init>(Lo/WC;Lio/reactivex/Observable;Lo/UK;Lio/reactivex/Observable;)V

    iput-object p1, p0, Lo/VP;->e:Lo/WC;

    .line 29
    sget-object p1, Lo/VP$2;->b:Lo/VP$2;

    check-cast p1, Lio/reactivex/functions/Predicate;

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "safeManagedStateObservab\u2026tionUpdated\n            }"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter_Ab12543$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter_Ab12543$2;-><init>(Lo/VP;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 33
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final a(Lo/Tv;)V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lo/VP;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lo/Tv;->g()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lo/Tv;->g()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq p1, v0, :cond_1

    .line 47
    :cond_0
    iget-object p1, p0, Lo/VP;->e:Lo/WC;

    invoke-interface {p1}, Lo/WC;->i()V

    .line 48
    iget-object p1, p0, Lo/VP;->e:Lo/WC;

    invoke-interface {p1}, Lo/WC;->j()V

    .line 50
    :cond_1
    invoke-virtual {p0}, Lo/VP;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 51
    iget-object p1, p0, Lo/VP;->e:Lo/WC;

    invoke-interface {p1}, Lo/WC;->e()V

    .line 53
    :cond_2
    iget-object p1, p0, Lo/VP;->e:Lo/WC;

    invoke-interface {p1}, Lo/WC;->g()V

    return-void
.end method

.method public static final synthetic a(Lo/VP;Z)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lo/VP;->b(Z)V

    return-void
.end method

.method public static final synthetic b(Lo/VP;Lo/Tv;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lo/VP;->a(Lo/Tv;)V

    return-void
.end method

.method private final b(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lo/VP;->c:Z

    .line 58
    iget-object p1, p0, Lo/VP;->e:Lo/WC;

    invoke-interface {p1}, Lo/WC;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lo/VP;->i()Z

    move-result p1

    if-nez p1, :cond_0

    .line 59
    iget-object p1, p0, Lo/VP;->e:Lo/WC;

    invoke-interface {p1}, Lo/WC;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lo/VP;->d:Z

    return-void
.end method

.method public h()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lo/VP;->d:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 65
    invoke-super {p0}, Lo/VM;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/VP;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
