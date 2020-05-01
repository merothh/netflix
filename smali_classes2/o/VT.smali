.class public final Lo/VT;
.super Lo/Vs;
.source ""

# interfaces
.implements Lo/Wg;
.implements Lo/Wj;
.implements Lo/Wf;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private final c:Z

.field private d:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

.field private e:Z

.field private final f:Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lo/WI;

    .line 19
    move-object v1, p1

    check-cast v1, Lo/WI;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p2, v0}, Lo/Vs;-><init>(Lio/reactivex/Observable;[Lo/WI;)V

    iput-object p1, p0, Lo/VT;->f:Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;

    .line 24
    sget-object p1, Lo/gp;->c:Lo/gp$ActionBar;

    invoke-virtual {p1}, Lo/gp$ActionBar;->b()Z

    move-result p1

    iput-boolean p1, p0, Lo/VT;->c:Z

    .line 35
    sget-object p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;->e:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    iput-object p1, p0, Lo/VT;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    .line 46
    sget-object p1, Lo/VT$4;->e:Lo/VT$4;

    check-cast p1, Lio/reactivex/functions/Predicate;

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "safeManagedStateObservab\u2026tateEvent.PlayerStarted }"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipPrePlayUIPresenter$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipPrePlayUIPresenter$2;-><init>(Lo/VT;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 47
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 60
    new-instance p1, Lo/VT$1;

    invoke-direct {p1, p0}, Lo/VT$1;-><init>(Lo/VT;)V

    check-cast p1, Lio/reactivex/functions/Predicate;

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "safeManagedStateObservab\u2026showSkipPrePlayButton() }"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipPrePlayUIPresenter$4;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSkipPrePlayUIPresenter$4;-><init>(Lo/VT;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 61
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic a(Lo/VT;Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lo/VT;->b:Z

    return-void
.end method

.method public static final synthetic b(Lo/VT;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lo/VT;->b:Z

    return p0
.end method

.method public static final synthetic c(Lo/VT;)Z
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/VT;->f()Z

    move-result p0

    return p0
.end method

.method public static final synthetic d(Lo/VT;)Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;
    .locals 0

    .line 15
    iget-object p0, p0, Lo/VT;->f:Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;

    return-object p0
.end method

.method private final f()Z
    .locals 3

    .line 38
    invoke-virtual {p0}, Lo/VT;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 39
    iget-boolean v0, p0, Lo/VT;->b:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/VT;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/VT;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2

    :cond_2
    return v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/VT;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lo/VT;->e:Z

    return-void
.end method

.method public a_(Lio/reactivex/Observable;)V
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

    .line 15
    invoke-static {p0, p1}, Lo/Wf$Activity;->a(Lo/Wf;Lio/reactivex/Observable;)V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lo/VT;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lo/VT;->e:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 15
    invoke-static {p0}, Lo/Wj$StateListAnimator;->d(Lo/Wj;)Z

    move-result v0

    return v0
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

    .line 15
    invoke-static {p0, p1}, Lo/Wg$StateListAnimator;->b(Lo/Wg;Lio/reactivex/Observable;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lo/VT;->a:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .locals 1

    .line 15
    invoke-static {p0}, Lo/Wf$Activity;->b(Lo/Wf;)Z

    move-result v0

    return v0
.end method

.method public e()Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/VT;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

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

    .line 15
    invoke-static {p0, p1}, Lo/Wj$StateListAnimator;->d(Lo/Wj;Lio/reactivex/Observable;)V

    return-void
.end method
