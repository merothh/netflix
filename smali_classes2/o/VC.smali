.class public final Lo/VC;
.super Lo/VW;
.source ""

# interfaces
.implements Lo/Wg;


# instance fields
.field private final b:Lo/Ww;

.field private e:Z


# direct methods
.method public constructor <init>(Lo/Ww;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Ww;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerStateEventObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    move-object v0, p1

    check-cast v0, Lo/WI;

    invoke-direct {p0, v0, p2}, Lo/VW;-><init>(Lo/WI;Lio/reactivex/Observable;)V

    iput-object p1, p0, Lo/VC;->b:Lo/Ww;

    .line 22
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerGradientUIPresenter$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerGradientUIPresenter$1;-><init>(Lo/VC;)V

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

.method public static final synthetic b(Lo/VC;)Lo/Ww;
    .locals 0

    .line 9
    iget-object p0, p0, Lo/VC;->b:Lo/Ww;

    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lo/VC;->e:Z

    return-void
.end method

.method public ap_()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lo/VC;->e:Z

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

    .line 9
    invoke-static {p0, p1}, Lo/Wg$StateListAnimator;->b(Lo/Wg;Lio/reactivex/Observable;)V

    return-void
.end method
