.class public final Lo/EG;
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
.field private final d:Lo/Fz;


# direct methods
.method public constructor <init>(Lo/Fz;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Fz;",
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

    .line 13
    move-object v1, p1

    check-cast v1, Lo/UpdateLock;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p2, v0}, Lo/Vibrator;-><init>(Lio/reactivex/Observable;[Lo/UpdateLock;)V

    iput-object p1, p0, Lo/EG;->d:Lo/Fz;

    .line 18
    new-instance p1, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCreditsUIPresenter$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCreditsUIPresenter$1;-><init>(Lo/EG;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p2

    .line 17
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic d(Lo/EG;)Lo/Fz;
    .locals 0

    .line 11
    iget-object p0, p0, Lo/EG;->d:Lo/Fz;

    return-object p0
.end method
