.class public final Lo/VQ;
.super Lo/Vibrator;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Vibrator<",
        "Lo/UP;",
        "Lo/UU;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private final f:Lo/WH;

.field private final h:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/WH;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WH;",
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

    new-array v1, v0, [Lo/UpdateLock;

    .line 17
    move-object v2, p1

    check-cast v2, Lo/UpdateLock;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, p2, v1}, Lo/Vibrator;-><init>(Lio/reactivex/Observable;[Lo/UpdateLock;)V

    iput-object p1, p0, Lo/VQ;->f:Lo/WH;

    iput-object p2, p0, Lo/VQ;->j:Lio/reactivex/Observable;

    iput-object p3, p0, Lo/VQ;->h:Lio/reactivex/Observable;

    .line 22
    iput-boolean v0, p0, Lo/VQ;->d:Z

    .line 36
    iget-object p1, p0, Lo/VQ;->j:Lio/reactivex/Observable;

    .line 37
    sget-object p2, Lo/VQ$3;->d:Lo/VQ$3;

    check-cast p2, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 p2, 0x1

    .line 38
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "safeManagedStateObservab\u2026er }\n            .take(1)"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$2;-><init>(Lo/VQ;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 39
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 45
    iget-object v6, p0, Lo/VQ;->j:Lio/reactivex/Observable;

    .line 47
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$3;-><init>(Lo/VQ;)V

    move-object v9, p1

    check-cast v9, Lo/alA;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    .line 46
    invoke-static/range {v6 .. v11}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 102
    iget-object p1, p0, Lo/VQ;->f:Lo/WH;

    invoke-interface {p1}, Lo/WH;->w()Lio/reactivex/Observable;

    move-result-object p1

    .line 103
    iget-object p2, p0, Lo/VQ;->h:Lio/reactivex/Observable;

    check-cast p2, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 104
    new-instance p2, Lo/VQ$1;

    invoke-direct {p2, p0}, Lo/VQ$1;-><init>(Lo/VQ;)V

    check-cast p2, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->skipWhile(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "uiView.uiEventsThatNeeds\u2026 .skipWhile { isLoading }"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$5;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$5;-><init>(Lo/VQ;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 105
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic d(Lo/VQ;)Lo/WH;
    .locals 0

    .line 12
    iget-object p0, p0, Lo/VQ;->f:Lo/WH;

    return-object p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lo/VQ;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lo/VQ;->b:Z

    return v0
.end method

.method public final b(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lo/VQ;->c:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lo/VQ;->d:Z

    return v0
.end method

.method public final c(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lo/VQ;->d:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lo/VQ;->a:Z

    return v0
.end method

.method public final d(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lo/VQ;->e:Z

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lo/VQ;->e:Z

    return v0
.end method

.method public final e(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lo/VQ;->b:Z

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lo/VQ;->c:Z

    return v0
.end method

.method public final h()V
    .locals 9

    .line 138
    iget-object v0, p0, Lo/VQ;->j:Lio/reactivex/Observable;

    .line 139
    sget-object v1, Lo/VQ$StateListAnimator;->e:Lo/VQ$StateListAnimator;

    check-cast v1, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 140
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v3

    const-string v0, "safeManagedStateObservab\u2026ks }\n            .take(1)"

    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$observeCreditMarksTakingOne$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTappablePresenter$observeCreditMarksTakingOne$2;-><init>(Lo/VQ;)V

    move-object v6, v0

    check-cast v6, Lo/alA;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 141
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
