.class public final Lo/EI;
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
.field private final d:Lo/Fl;


# direct methods
.method public constructor <init>(Lo/Fl;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Fl;",
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

    .line 16
    move-object v1, p1

    check-cast v1, Lo/UpdateLock;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p2, v0}, Lo/Vibrator;-><init>(Lio/reactivex/Observable;[Lo/UpdateLock;)V

    iput-object p1, p0, Lo/EI;->d:Lo/Fl;

    .line 20
    sget-object p1, Lo/EI$3;->c:Lo/EI$3;

    check-cast p1, Lio/reactivex/functions/Predicate;

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "safeManagedStateObservab\u2026Description\n            }"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lo/EI$2;->d:Lo/EI$2;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p2

    const-string v0, "safeManagedStateObservab\u2026255\n                    }"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/reactivex/ObservableSource;

    .line 23
    invoke-static {p1, p2}, Lio/reactivex/rxkotlin/ObservablesKt;->zipWith(Lio/reactivex/Observable;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 30
    new-instance p1, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCurrentEpisodeTitlePresenter_Ab18255$3;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCurrentEpisodeTitlePresenter_Ab18255$3;-><init>(Lo/EI;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 61
    sget-object p1, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCurrentEpisodeTitlePresenter_Ab18255$4;->c:Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCurrentEpisodeTitlePresenter_Ab18255$4;

    move-object v1, p1

    check-cast v1, Lo/alA;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 29
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic e(Lo/EI;)Lo/Fl;
    .locals 0

    .line 13
    iget-object p0, p0, Lo/EI;->d:Lo/Fl;

    return-object p0
.end method
