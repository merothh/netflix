.class public Lo/VB;
.super Lo/VW;
.source ""

# interfaces
.implements Lo/Wg;
.implements Lo/Wd;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CheckResult"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/VB$Activity;
    }
.end annotation


# static fields
.field public static final d:Lo/VB$Activity;


# instance fields
.field private final a:Lo/Wv;

.field private b:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/VB$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/VB$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/VB;->d:Lo/VB$Activity;

    return-void
.end method

.method public constructor <init>(Lo/Wv;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Wv;",
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

    .line 23
    move-object v0, p1

    check-cast v0, Lo/WI;

    invoke-direct {p0, v0, p2}, Lo/VW;-><init>(Lo/WI;Lio/reactivex/Observable;)V

    iput-object p1, p0, Lo/VB;->a:Lo/Wv;

    .line 35
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$1;-><init>(Lo/VB;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 69
    sget-object p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$2;->d:Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$2;

    move-object v1, p1

    check-cast v1, Lo/alA;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p2

    .line 34
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 72
    iget-object p1, p0, Lo/VB;->a:Lo/Wv;

    invoke-interface {p1}, Lo/Wv;->w()Lio/reactivex/Observable;

    move-result-object p1

    .line 73
    check-cast p3, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "uiView.uiEventsThatNeeds\u2026eUntil(destroyObservable)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance p2, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$3;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$3;-><init>(Lo/VB;)V

    check-cast p2, Lo/alA;

    .line 91
    sget-object p3, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$4;->c:Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$4;

    check-cast p3, Lo/alA;

    .line 92
    sget-object v0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$5;->b:Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerFullScreenPresenter$5;

    check-cast v0, Lo/alB;

    .line 74
    invoke-static {p1, p3, v0, p2}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic b(Lo/VB;)Lo/Wv;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/VB;->a:Lo/Wv;

    return-object p0
.end method

.method public static final synthetic c(Lo/VB;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lo/VB;->h()V

    return-void
.end method

.method public static final synthetic e(Lo/VB;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lo/VB;->g()V

    return-void
.end method

.method private final g()V
    .locals 4

    .line 102
    iget-object v0, p0, Lo/VB;->a:Lo/Wv;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/Wv;->d(Z)V

    .line 103
    iget-object v0, p0, Lo/VB;->a:Lo/Wv;

    new-instance v2, Lo/UU$Intent;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v1}, Lo/UU$Intent;-><init>(IZ)V

    invoke-interface {v0, v2}, Lo/Wv;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private final h()V
    .locals 4

    .line 97
    iget-object v0, p0, Lo/VB;->a:Lo/Wv;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lo/Wv;->d(Z)V

    .line 98
    iget-object v0, p0, Lo/VB;->a:Lo/Wv;

    new-instance v2, Lo/UU$Intent;

    const/4 v3, 0x6

    invoke-direct {v2, v3, v1}, Lo/UU$Intent;-><init>(IZ)V

    invoke-interface {v0, v2}, Lo/Wv;->e(Ljava/lang/Object;)V

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

    .line 18
    invoke-static {p0, p1}, Lo/Wd$TaskDescription;->e(Lo/Wd;Lio/reactivex/Observable;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lo/VB;->e:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lo/VB;->b:Z

    return v0
.end method

.method public ao_()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lo/VB;->e:Z

    return v0
.end method

.method public c()V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lo/VB;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-super {p0}, Lo/VW;->c()V

    :cond_0
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

    .line 18
    invoke-static {p0, p1}, Lo/Wg$StateListAnimator;->b(Lo/Wg;Lio/reactivex/Observable;)V

    return-void
.end method

.method public d_(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lo/VB;->b:Z

    return-void
.end method
