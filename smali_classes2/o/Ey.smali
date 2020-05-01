.class public final Lo/Ey;
.super Lo/Vibrator;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Vibrator<",
        "Lo/DC;",
        "Lo/DG;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Lo/Fc;


# direct methods
.method public constructor <init>(Lo/Fc;Lio/reactivex/Observable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Fc;",
            "Lio/reactivex/Observable<",
            "Lo/DC;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lo/UpdateLock;

    .line 14
    move-object v1, p1

    check-cast v1, Lo/UpdateLock;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p2, v0}, Lo/Vibrator;-><init>(Lio/reactivex/Observable;[Lo/UpdateLock;)V

    iput-object p1, p0, Lo/Ey;->e:Lo/Fc;

    .line 19
    new-instance p1, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$1;-><init>(Lo/Ey;)V

    check-cast p1, Lo/alA;

    .line 49
    new-instance v0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$2;-><init>(Lo/Ey;)V

    check-cast v0, Lo/alB;

    .line 52
    new-instance v1, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageProgressiveLoadingPresenter_Ab18255$3;-><init>(Lo/Ey;)V

    check-cast v1, Lo/alA;

    .line 18
    invoke-static {p2, v1, v0, p1}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic b(Lo/Ey;)Lo/Fc;
    .locals 0

    .line 11
    iget-object p0, p0, Lo/Ey;->e:Lo/Fc;

    return-object p0
.end method
