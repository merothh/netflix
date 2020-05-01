.class public Lo/VH;
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
.field private a:Lio/reactivex/disposables/Disposable;

.field private b:Z

.field private c:Z

.field private d:Lcom/netflix/mediaclient/ui/player/PostPlay;

.field private final e:Lo/WA;

.field private final i:Lio/reactivex/Observable;
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
.method public constructor <init>(Lo/WA;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WA;",
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

    new-array v0, v0, [Lo/UpdateLock;

    .line 23
    move-object v1, p1

    check-cast v1, Lo/UpdateLock;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p2, v0}, Lo/Vibrator;-><init>(Lio/reactivex/Observable;[Lo/UpdateLock;)V

    iput-object p1, p0, Lo/VH;->e:Lo/WA;

    iput-object p2, p0, Lo/VH;->j:Lio/reactivex/Observable;

    iput-object p3, p0, Lo/VH;->i:Lio/reactivex/Observable;

    .line 36
    sget-object p1, Lo/gV;->d:Lo/gV$StateListAnimator;

    invoke-virtual {p1}, Lo/gV$StateListAnimator;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lo/VH;->c()V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lo/VH;->b()V

    .line 43
    :goto_0
    iget-object p1, p0, Lo/VH;->j:Lio/reactivex/Observable;

    .line 44
    sget-object p2, Lo/VH$1;->b:Lo/VH$1;

    check-cast p2, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 p2, 0x1

    .line 45
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "safeManagedStateObservab\u2026ap})\n            .take(1)"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 47
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$2;-><init>(Lo/VH;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 46
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 52
    iget-object v6, p0, Lo/VH;->j:Lio/reactivex/Observable;

    const/4 v7, 0x0

    .line 54
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$3;-><init>(Lo/VH;)V

    move-object v9, p1

    check-cast v9, Lo/alA;

    .line 123
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$4;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$4;-><init>(Lo/VH;)V

    move-object v8, p1

    check-cast v8, Lo/alB;

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 53
    invoke-static/range {v6 .. v11}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic b(Lo/VH;)Lio/reactivex/Observable;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/VH;->i:Lio/reactivex/Observable;

    return-object p0
.end method

.method public static final synthetic b(Lo/VH;Lcom/netflix/mediaclient/ui/player/PostPlay;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lo/VH;->d:Lcom/netflix/mediaclient/ui/player/PostPlay;

    return-void
.end method

.method public static final synthetic c(Lo/VH;)Lo/WA;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/VH;->e:Lo/WA;

    return-object p0
.end method

.method public static final synthetic d(Lo/VH;)Lcom/netflix/mediaclient/ui/player/PostPlay;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/VH;->d:Lcom/netflix/mediaclient/ui/player/PostPlay;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 9

    .line 132
    iget-object v0, p0, Lo/VH;->a:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 133
    :cond_0
    iget-object v0, p0, Lo/VH;->j:Lio/reactivex/Observable;

    .line 134
    sget-object v1, Lo/VH$ActionBar;->e:Lo/VH$ActionBar;

    check-cast v1, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 135
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v3

    const-string v0, "safeManagedStateObservab\u2026ay }\n            .take(1)"

    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 137
    new-instance v0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayData$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayData$2;-><init>(Lo/VH;)V

    move-object v6, v0

    check-cast v6, Lo/alA;

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 136
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lo/VH;->a:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public c()V
    .locals 9

    .line 161
    iget-object v0, p0, Lo/VH;->a:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 162
    :cond_0
    iget-object v0, p0, Lo/VH;->j:Lio/reactivex/Observable;

    .line 163
    sget-object v1, Lo/VH$TaskDescription;->a:Lo/VH$TaskDescription;

    check-cast v1, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 164
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v3

    const-string v0, "safeManagedStateObservab\u2026V2 }\n            .take(1)"

    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 166
    new-instance v0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2;-><init>(Lo/VH;)V

    move-object v6, v0

    check-cast v6, Lo/alA;

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 165
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lo/VH;->a:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lo/VH;->c:Z

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lo/VH;->c:Z

    return v0
.end method

.method public final e(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lo/VH;->b:Z

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lo/VH;->b:Z

    return v0
.end method
