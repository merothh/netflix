.class public Lo/VK;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>(Lo/NsdServiceInfo;Lio/reactivex/Observable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/NsdServiceInfo;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-interface {p1}, Lo/NsdServiceInfo;->e()V

    .line 15
    invoke-interface {p1}, Lo/NsdServiceInfo;->f()V

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLoadingSpinnerPresenter$1;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLoadingSpinnerPresenter$1;-><init>(Lo/NsdServiceInfo;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    .line 31
    sget-object p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLoadingSpinnerPresenter$2;->c:Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLoadingSpinnerPresenter$2;

    move-object v2, p1

    check-cast v2, Lo/alA;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p2

    .line 18
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
