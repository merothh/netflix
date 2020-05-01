.class public final Lo/VD;
.super Lo/Vs;
.source ""

# interfaces
.implements Lo/Wg;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CheckResult"
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Lo/Wy;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lo/Wy;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Wy;",
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

    new-array v1, v0, [Lo/WI;

    .line 20
    move-object v2, p1

    check-cast v2, Lo/WI;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, p2, v1}, Lo/Vs;-><init>(Lio/reactivex/Observable;[Lo/WI;)V

    iput-object p1, p0, Lo/VD;->b:Lo/Wy;

    .line 26
    iput-boolean v0, p0, Lo/VD;->d:Z

    .line 31
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerImmersiveModePresenter$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerImmersiveModePresenter$1;-><init>(Lo/VD;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p2

    .line 30
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 55
    sget-object p1, Lo/VD$2;->d:Lo/VD$2;

    check-cast p1, Lio/reactivex/functions/Predicate;

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    .line 56
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x8ca

    invoke-virtual {p1, v0, v1, p2}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    .line 57
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "safeManagedStateObservab\u2026dSchedulers.mainThread())"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerImmersiveModePresenter$3;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerImmersiveModePresenter$3;-><init>(Lo/VD;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    .line 58
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final c(ZZ)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lo/VD;->d:Z

    .line 73
    iput-boolean p2, p0, Lo/VD;->c:Z

    if-eqz p1, :cond_1

    .line 76
    iget-boolean p1, p0, Lo/VD;->c:Z

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lo/VD;->b:Lo/Wy;

    invoke-interface {p1}, Lo/Wy;->f()V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lo/VD;->b:Lo/Wy;

    invoke-interface {p1}, Lo/Wy;->i()V

    goto :goto_0

    .line 82
    :cond_1
    iget-object p1, p0, Lo/VD;->b:Lo/Wy;

    invoke-interface {p1}, Lo/Wy;->i()V

    :goto_0
    return-void
.end method

.method public static synthetic d(Lo/VD;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 69
    iget-boolean p1, p0, Lo/VD;->d:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 70
    iget-boolean p2, p0, Lo/VD;->c:Z

    :cond_1
    invoke-direct {p0, p1, p2}, Lo/VD;->c(ZZ)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lo/VD;->a:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lo/VD;->a:Z

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

    .line 16
    invoke-static {p0, p1}, Lo/Wg$StateListAnimator;->b(Lo/Wg;Lio/reactivex/Observable;)V

    return-void
.end method
