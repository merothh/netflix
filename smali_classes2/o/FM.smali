.class public Lo/FM;
.super Lo/Vibrator;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Vibrator<",
        "Lo/FH;",
        "Lo/FJ;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Lo/FQ;


# direct methods
.method public constructor <init>(Lo/FQ;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FQ;",
            "Lio/reactivex/Observable<",
            "Lo/FH;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lo/UpdateLock;

    .line 22
    move-object v1, p1

    check-cast v1, Lo/UpdateLock;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 20
    invoke-direct {p0, p2, v0}, Lo/Vibrator;-><init>(Lio/reactivex/Observable;[Lo/UpdateLock;)V

    iput-object p1, p0, Lo/FM;->e:Lo/FQ;

    .line 27
    new-instance p1, Lcom/netflix/mediaclient/ui/details/v2/presenter/DetailsPageTabsContentPresenter$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/v2/presenter/DetailsPageTabsContentPresenter$1;-><init>(Lo/FM;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p2

    .line 26
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic a(Lo/FM;)Lo/FQ;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/FM;->e:Lo/FQ;

    return-object p0
.end method


# virtual methods
.method public b(Lo/Bc;)V
    .locals 3

    const-string v0, "details"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    check-cast p1, Lo/agg;

    .line 95
    invoke-interface {p1}, Lo/agg;->aJ()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 97
    iget-object v1, p0, Lo/FM;->e:Lo/FQ;

    invoke-interface {p1}, Lo/agg;->aL()Lcom/netflix/model/leafs/TrackableListSummary;

    move-result-object p1

    invoke-interface {v1, p1}, Lo/FQ;->a(Lcom/netflix/model/leafs/TrackableListSummary;)V

    .line 98
    iget-object p1, p0, Lo/FM;->e:Lo/FQ;

    invoke-interface {p1, v0}, Lo/FQ;->e(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public d(Lo/Bc;)V
    .locals 3

    const-string v0, "details"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    check-cast p1, Lo/agg;

    .line 84
    invoke-interface {p1}, Lo/agg;->aC()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 86
    iget-object v1, p0, Lo/FM;->e:Lo/FQ;

    invoke-interface {p1}, Lo/agg;->aD()Lcom/netflix/model/leafs/TrackableListSummary;

    move-result-object p1

    invoke-interface {v1, p1}, Lo/FQ;->d(Lcom/netflix/model/leafs/TrackableListSummary;)V

    .line 87
    iget-object p1, p0, Lo/FM;->e:Lo/FQ;

    invoke-interface {p1, v0}, Lo/FQ;->d(Ljava/util/List;)V

    :cond_0
    return-void
.end method
