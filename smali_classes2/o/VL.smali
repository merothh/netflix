.class public Lo/VL;
.super Lo/VW;
.source ""

# interfaces
.implements Lo/Wg;
.implements Lo/Wd;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private final g:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

.field private final i:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lo/WB;


# direct methods
.method public constructor <init>(Lo/WB;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WB;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    move-object v0, p1

    check-cast v0, Lo/WI;

    invoke-direct {p0, v0, p2}, Lo/VW;-><init>(Lo/WI;Lio/reactivex/Observable;)V

    iput-object p1, p0, Lo/VL;->j:Lo/WB;

    iput-object p2, p0, Lo/VL;->g:Lio/reactivex/Observable;

    iput-object p3, p0, Lo/VL;->i:Lio/reactivex/Observable;

    .line 38
    sget-object p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;->e:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    iput-object p1, p0, Lo/VL;->h:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    .line 41
    iget-object p1, p0, Lo/VL;->g:Lio/reactivex/Observable;

    .line 42
    iget-object p2, p0, Lo/VL;->i:Lio/reactivex/Observable;

    check-cast p2, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "safeManagedStateObservab\u2026eUntil(destroyObservable)"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$1;-><init>(Lo/VL;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 43
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic a(Lo/VL;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/VL;->g()V

    return-void
.end method

.method public static final synthetic c(Lo/VL;)Lo/WB;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/VL;->j:Lo/WB;

    return-object p0
.end method

.method private final g()V
    .locals 2

    .line 175
    iget-object v0, p0, Lo/VL;->j:Lo/WB;

    invoke-interface {v0}, Lo/WB;->h()V

    .line 176
    iget-boolean v0, p0, Lo/VL;->d:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lo/VL;->j:Lo/WB;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/WB;->d(Z)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lo/VL;->j:Lo/WB;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lo/WB;->d(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/Observable;)V
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

    .line 16
    invoke-static {p0, p1}, Lo/Wd$TaskDescription;->e(Lo/Wd;Lio/reactivex/Observable;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lo/VL;->c:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lo/VL;->c:Z

    return v0
.end method

.method public b(Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lo/VL;->h:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lo/VL;->e:Z

    return-void
.end method

.method public c()V
    .locals 2

    .line 166
    iget-boolean v0, p0, Lo/VL;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/VL;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/VL;->e()Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;->e:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    if-eq v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Lo/VL;->j:Lo/WB;

    invoke-interface {v0}, Lo/WB;->e()V

    goto :goto_0

    .line 170
    :cond_0
    invoke-super {p0}, Lo/VW;->c()V

    :goto_0
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lo/VL;->d:Z

    return-void
.end method

.method public d(Lio/reactivex/Observable;)V
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

    .line 16
    invoke-static {p0, p1}, Lo/Wg$StateListAnimator;->b(Lo/Wg;Lio/reactivex/Observable;)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lo/VL;->a:Z

    return-void
.end method

.method public d()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lo/VL;->a:Z

    return v0
.end method

.method public d_(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lo/VL;->b:Z

    return-void
.end method

.method public e()Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/VL;->h:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    return-object v0
.end method

.method public h(Z)V
    .locals 9

    .line 145
    iget-object v0, p0, Lo/VL;->j:Lo/WB;

    invoke-interface {v0}, Lo/WB;->o()Lio/reactivex/Observable;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lo/VL;->i:Lio/reactivex/Observable;

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 147
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v3

    const-string v0, "uiView.getSkipButtonAnim\u2026\n                .take(1)"

    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$observeForSkipAnimationEndTakingOne$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$observeForSkipAnimationEndTakingOne$1;-><init>(Lo/VL;Z)V

    move-object v6, v0

    check-cast v6, Lo/alA;

    .line 159
    sget-object p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$observeForSkipAnimationEndTakingOne$2;->a:Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPrimaryControlsPresenter$observeForSkipAnimationEndTakingOne$2;

    move-object v4, p1

    check-cast v4, Lo/alA;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 148
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public h()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lo/VL;->b:Z

    return v0
.end method
