.class public Lo/Vy;
.super Lo/VW;
.source ""

# interfaces
.implements Lo/Wg;
.implements Lo/Wd;


# instance fields
.field private a:Z

.field private b:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lo/WI;Lio/reactivex/Observable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WI;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Lo/VW;-><init>(Lo/WI;Lio/reactivex/Observable;)V

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerCastPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerCastPresenter$1;-><init>(Lo/Vy;Lo/WI;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p2

    .line 27
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic b(Lo/Vy;Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lo/Vy;->a:Z

    return-void
.end method

.method public static final synthetic b(Lo/Vy;)Z
    .locals 0

    .line 10
    iget-boolean p0, p0, Lo/Vy;->e:Z

    return p0
.end method

.method public static final synthetic c(Lo/Vy;)Z
    .locals 0

    .line 10
    iget-boolean p0, p0, Lo/Vy;->a:Z

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

    .line 10
    invoke-static {p0, p1}, Lo/Wd$TaskDescription;->e(Lo/Wd;Lio/reactivex/Observable;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lo/Vy;->d:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lo/Vy;->b:Z

    return v0
.end method

.method public an_()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lo/Vy;->d:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lo/Vy;->e:Z

    .line 68
    invoke-super {p0}, Lo/VW;->b()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lo/Vy;->e:Z

    .line 61
    iget-boolean v0, p0, Lo/Vy;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/Vy;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
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

    .line 10
    invoke-static {p0, p1}, Lo/Wg$StateListAnimator;->b(Lo/Wg;Lio/reactivex/Observable;)V

    return-void
.end method

.method public d_(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lo/Vy;->b:Z

    return-void
.end method
