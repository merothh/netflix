.class public Lo/VW;
.super Lo/Vs;
.source ""

# interfaces
.implements Lo/Wj;
.implements Lo/Wa;
.implements Lo/Wb;
.implements Lo/Wk;


# instance fields
.field private a:Z

.field private b:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

.field private c:Z

.field private final d:Lo/WI;

.field private e:Z


# direct methods
.method public constructor <init>(Lo/WI;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WI;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiPlayerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lo/WI;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 17
    invoke-direct {p0, p2, v0}, Lo/Vs;-><init>(Lio/reactivex/Observable;[Lo/WI;)V

    iput-object p1, p0, Lo/VW;->d:Lo/WI;

    .line 26
    sget-object p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;->e:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    iput-object p1, p0, Lo/VW;->b:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    .line 36
    sget-object p1, Lo/VW$3;->b:Lo/VW$3;

    check-cast p1, Lio/reactivex/functions/Predicate;

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "safeManagedStateObservab\u2026vent.PlayerShowPostPlay }"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTouchAwarePresenter$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTouchAwarePresenter$2;-><init>(Lo/VW;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 37
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 45
    sget-object p1, Lo/VW$4;->b:Lo/VW$4;

    check-cast p1, Lio/reactivex/functions/Predicate;

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "safeManagedStateObservab\u2026hangedEvent\n            }"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTouchAwarePresenter$4;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTouchAwarePresenter$4;-><init>(Lo/VW;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 53
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 95
    iget-object v0, p0, Lo/VW;->d:Lo/WI;

    invoke-interface {v0}, Lo/WI;->b()V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lo/VW;->b:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    return-void
.end method

.method public b(Lio/reactivex/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "safeManagedStateObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0, p1}, Lo/Wa$TaskDescription;->b(Lo/Wa;Lio/reactivex/Observable;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 87
    invoke-virtual {p0}, Lo/VW;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lo/VW;->d:Lo/WI;

    invoke-interface {v0}, Lo/WI;->r()V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lo/VW;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lo/VW;->d:Lo/WI;

    invoke-interface {v0}, Lo/WI;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lio/reactivex/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "safeManagedStateObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0, p1}, Lo/Wk$TaskDescription;->c(Lo/Wk;Lio/reactivex/Observable;)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lo/VW;->a:Z

    return-void
.end method

.method public d()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lo/VW;->a:Z

    return v0
.end method

.method public e()Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/VW;->b:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    return-object v0
.end method

.method public e(Lio/reactivex/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "safeManagedStateObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0, p1}, Lo/Wj$StateListAnimator;->d(Lo/Wj;Lio/reactivex/Observable;)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lo/VW;->e:Z

    return-void
.end method

.method public g(Lio/reactivex/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "safeManagedStateObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0, p1}, Lo/Wb$TaskDescription;->b(Lo/Wb;Lio/reactivex/Observable;)V

    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lo/VW;->c:Z

    return-void
.end method

.method public j()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lo/VW;->c:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lo/VW;->e:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .line 13
    invoke-static {p0}, Lo/Wj$StateListAnimator;->d(Lo/Wj;)Z

    move-result v0

    return v0
.end method

.method public final n()Lo/WI;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/VW;->d:Lo/WI;

    return-object v0
.end method
