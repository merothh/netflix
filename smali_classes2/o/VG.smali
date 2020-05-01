.class public final Lo/VG;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Landroid/view/ViewGroup;

.field private c:Z

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Ljava/util/List;Lio/reactivex/Observable;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lo/UU;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mainContainer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoViewDependentViewIds"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerUiEventObservable"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/VG;->b:Landroid/view/ViewGroup;

    iput-object p2, p0, Lo/VG;->d:Ljava/util/List;

    .line 31
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLayoutTransitionPresenter$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLayoutTransitionPresenter$1;-><init>(Lo/VG;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p3

    .line 30
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 50
    check-cast p5, Lio/reactivex/ObservableSource;

    invoke-virtual {p4, p5}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "playerUiEventObservable\n\u2026eUntil(destroyObservable)"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLayoutTransitionPresenter$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLayoutTransitionPresenter$2;-><init>(Lo/VG;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 51
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic a(Lo/VG;Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lo/VG;->c:Z

    return-void
.end method

.method public static final synthetic a(Lo/VG;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lo/VG;->c:Z

    return p0
.end method

.method public static final synthetic c(Lo/VG;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lo/VG;->e:Z

    return p0
.end method

.method private final d()V
    .locals 3

    .line 70
    new-instance v0, Lo/BigInteger;

    invoke-direct {v0}, Lo/BigInteger;-><init>()V

    const-wide/16 v1, 0x15e

    .line 71
    invoke-virtual {v0, v1, v2}, Lo/BigInteger;->d(J)Lo/BasicPermission;

    .line 72
    iget-object v1, p0, Lo/VG;->d:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 77
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 72
    invoke-virtual {v0, v2}, Lo/BigInteger;->b(I)Lo/BasicPermission;

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Lo/VG;->b:Landroid/view/ViewGroup;

    check-cast v0, Lo/CharsetDecoder;

    invoke-static {v1, v0}, Lo/Watchable;->d(Landroid/view/ViewGroup;Lo/CharsetDecoder;)V

    return-void
.end method

.method public static final synthetic d(Lo/VG;Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lo/VG;->e:Z

    return-void
.end method

.method public static final synthetic e(Lo/VG;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lo/VG;->d()V

    return-void
.end method
