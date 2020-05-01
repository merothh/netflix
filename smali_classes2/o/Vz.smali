.class public final Lo/Vz;
.super Lo/Vs;
.source ""

# interfaces
.implements Lo/Wg;
.implements Lo/Wa;
.implements Lo/Wi;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private final g:Lo/WL;


# direct methods
.method public constructor <init>(Lo/WL;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WL;",
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

    const/4 v0, 0x1

    new-array v0, v0, [Lo/WI;

    .line 16
    move-object v1, p1

    check-cast v1, Lo/WI;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p2, v0}, Lo/Vs;-><init>(Lio/reactivex/Observable;[Lo/WI;)V

    iput-object p1, p0, Lo/Vz;->g:Lo/WL;

    .line 33
    check-cast p3, Lio/reactivex/ObservableSource;

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "safeManagedStateObservab\u2026eUntil(destroyObservable)"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerBrightnessPresenter$1;-><init>(Lo/Vz;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 34
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic b(Lo/Vz;)Lo/WL;
    .locals 0

    .line 12
    iget-object p0, p0, Lo/Vz;->g:Lo/WL;

    return-object p0
.end method

.method public static final synthetic c(Lo/Vz;Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lo/Vz;->d:Z

    return-void
.end method

.method private final c()Z
    .locals 2

    .line 92
    invoke-virtual {p0}, Lo/Vz;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 95
    :cond_0
    invoke-virtual {p0}, Lo/Vz;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 98
    :cond_1
    invoke-virtual {p0}, Lo/Vz;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 101
    :cond_2
    iget-boolean v0, p0, Lo/Vz;->a:Z

    if-eqz v0, :cond_3

    return v1

    .line 105
    :cond_3
    invoke-static {}, Lo/ady;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lo/Vz;->d:Z

    if-nez v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static final synthetic d(Lo/Vz;Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lo/Vz;->a:Z

    return-void
.end method

.method public static final synthetic e(Lo/Vz;)Z
    .locals 0

    .line 12
    invoke-direct {p0}, Lo/Vz;->c()Z

    move-result p0

    return p0
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

    .line 12
    invoke-static {p0, p1}, Lo/Wi$Activity;->c(Lo/Wi;Lio/reactivex/Observable;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lo/Vz;->c:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lo/Vz;->e:Z

    return v0
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

    .line 12
    invoke-static {p0, p1}, Lo/Wa$TaskDescription;->b(Lo/Wa;Lio/reactivex/Observable;)V

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

    .line 12
    invoke-static {p0, p1}, Lo/Wg$StateListAnimator;->b(Lo/Wg;Lio/reactivex/Observable;)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lo/Vz;->e:Z

    return-void
.end method

.method public d()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lo/Vz;->b:Z

    return v0
.end method

.method public e(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lo/Vz;->b:Z

    return-void
.end method

.method public e()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lo/Vz;->c:Z

    return v0
.end method
