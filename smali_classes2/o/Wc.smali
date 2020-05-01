.class public final Lo/Wc;
.super Lo/Vs;
.source ""

# interfaces
.implements Lo/Wd;
.implements Lo/Wf;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CheckResult"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/Vh;Lio/reactivex/Observable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Vh;",
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

    .line 17
    move-object v1, p1

    check-cast v1, Lo/WI;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p2, v0}, Lo/Vs;-><init>(Lio/reactivex/Observable;[Lo/WI;)V

    .line 28
    new-instance v0, Lo/Wc$1;

    invoke-direct {v0, p0}, Lo/Wc$1;-><init>(Lo/Wc;)V

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v0, "safeManagedStateObservab\u2026 && isDebug\n            }"

    invoke-static {v1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveDebugPresenter$2;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveDebugPresenter$2;-><init>(Lo/Wc;Lo/Vh;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 54
    sget-object p1, Lo/Wc$3;->a:Lo/Wc$3;

    check-cast p1, Lio/reactivex/functions/Predicate;

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "safeManagedStateObservab\u2026.InitialPlaybackLoading }"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveDebugPresenter$4;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveDebugPresenter$4;-><init>(Lo/Wc;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic a(Lo/Wc;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lo/Wc;->d:Z

    return p0
.end method

.method public static final synthetic b(Lo/Wc;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lo/Wc;->b:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    return-void
.end method

.method public static final synthetic b(Lo/Wc;Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lo/Wc;->d:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/Wc;->e:Ljava/lang/String;

    return-object v0
.end method

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

    .line 14
    invoke-static {p0, p1}, Lo/Wd$TaskDescription;->e(Lo/Wd;Lio/reactivex/Observable;)V

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

    .line 14
    invoke-static {p0, p1}, Lo/Wf$Activity;->a(Lo/Wf;Lio/reactivex/Observable;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lo/Wc;->e:Ljava/lang/String;

    return-void
.end method

.method public d_(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lo/Wc;->a:Z

    return-void
.end method
