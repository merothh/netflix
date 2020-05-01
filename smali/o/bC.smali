.class public final Lo/bC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/bs;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CheckResult"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/disposables/CompositeDisposable;

.field private final c:Lo/Zx;


# direct methods
.method public constructor <init>(Lio/reactivex/Observable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "destroyObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lo/bC;->a:Lio/reactivex/disposables/CompositeDisposable;

    .line 36
    new-instance v0, Lo/Zx;

    invoke-direct {v0}, Lo/Zx;-><init>()V

    iput-object v0, p0, Lo/bC;->c:Lo/Zx;

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/repository/impl/NetflixRepositoryImpl$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/repository/impl/NetflixRepositoryImpl$1;-><init>(Lo/bC;)V

    move-object v3, v0

    check-cast v3, Lo/alB;

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/repository/impl/NetflixRepositoryImpl$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/repository/impl/NetflixRepositoryImpl$2;-><init>(Lo/bC;)V

    move-object v2, v0

    check-cast v2, Lo/alA;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    .line 39
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final a()V
    .locals 1

    .line 82
    iget-object v0, p0, Lo/bC;->a:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public static final synthetic b(Lo/bC;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/bC;->a()V

    return-void
.end method

.method public static final synthetic c(Lo/bC;)Lo/Zx;
    .locals 0

    .line 30
    iget-object p0, p0, Lo/bC;->c:Lo/Zx;

    return-object p0
.end method


# virtual methods
.method public b(Lo/DateTransformation;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/DateTransformation<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "fetchTask"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lo/bC$ActionBar;

    invoke-direct {v0, p0, p1}, Lo/bC$ActionBar;-><init>(Lo/bC;Lo/DateTransformation;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.create { subs\u2026              )\n        }"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b()Lio/reactivex/disposables/CompositeDisposable;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/bC;->a:Lio/reactivex/disposables/CompositeDisposable;

    return-object v0
.end method

.method public d(Lo/DateTransformation;Lo/alA;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/DateTransformation<",
            "TT;>;",
            "Lo/alA<",
            "-",
            "Lo/bz<",
            "+TT;>;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fetchTask"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onResult"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lo/bC;->a:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lo/bC;->c:Lo/Zx;

    invoke-virtual {v1, p1}, Lo/Zx;->e(Lo/DateTransformation;)Lio/reactivex/Observable;

    move-result-object v2

    .line 69
    new-instance p1, Lcom/netflix/mediaclient/repository/impl/NetflixRepositoryImpl$fetchTask$2;

    invoke-direct {p1, p2}, Lcom/netflix/mediaclient/repository/impl/NetflixRepositoryImpl$fetchTask$2;-><init>(Lo/alA;)V

    move-object v5, p1

    check-cast v5, Lo/alA;

    .line 72
    new-instance p1, Lcom/netflix/mediaclient/repository/impl/NetflixRepositoryImpl$fetchTask$3;

    invoke-direct {p1, p2}, Lcom/netflix/mediaclient/repository/impl/NetflixRepositoryImpl$fetchTask$3;-><init>(Lo/alA;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 68
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 67
    invoke-static {v0, p1}, Lio/reactivex/rxkotlin/DisposableKt;->plusAssign(Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
