.class public final Lo/VS;
.super Lo/Vs;
.source ""

# interfaces
.implements Lo/Wg;


# instance fields
.field private final b:Lo/WE;

.field private e:Z


# direct methods
.method public constructor <init>(Lo/WE;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WE;",
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

    .line 13
    move-object v1, p1

    check-cast v1, Lo/WI;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p2, v0}, Lo/Vs;-><init>(Lio/reactivex/Observable;[Lo/WI;)V

    iput-object p1, p0, Lo/VS;->b:Lo/WE;

    .line 22
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSubtitlesUIPresenter$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSubtitlesUIPresenter$1;-><init>(Lo/VS;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p2

    .line 21
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic b(Lo/VS;)Lo/WE;
    .locals 0

    .line 9
    iget-object p0, p0, Lo/VS;->b:Lo/WE;

    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lo/VS;->e:Z

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

    .line 9
    invoke-static {p0, p1}, Lo/Wg$StateListAnimator;->b(Lo/Wg;Lio/reactivex/Observable;)V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lo/VS;->e:Z

    return v0
.end method
