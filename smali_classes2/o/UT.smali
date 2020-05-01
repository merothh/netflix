.class public Lo/UT;
.super Lo/UM;
.source ""


# instance fields
.field private final a:Lo/Xg;

.field private final b:Lo/WJ;

.field private final c:Lo/IpUtils;

.field private final d:Lo/Xq;

.field private final e:Lo/Xm;

.field private final j:Lo/WW;


# direct methods
.method public constructor <init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MenuInflater;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mainContainer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lo/UM;-><init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 34
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lo/UT;->c(Landroid/view/ViewGroup;)Lo/Xq;

    move-result-object v0

    iput-object v0, p0, Lo/UT;->d:Lo/Xq;

    .line 35
    new-instance v0, Lo/IpUtils;

    invoke-direct {v0, p1}, Lo/IpUtils;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UT;->c:Lo/IpUtils;

    .line 36
    new-instance v0, Lo/Xg;

    invoke-direct {v0, p1}, Lo/Xg;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UT;->a:Lo/Xg;

    .line 37
    new-instance v0, Lo/WJ;

    invoke-direct {v0, p1}, Lo/WJ;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UT;->b:Lo/WJ;

    .line 38
    new-instance v0, Lo/Xm;

    invoke-direct {v0, p1}, Lo/Xm;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UT;->e:Lo/Xm;

    .line 39
    new-instance v0, Lo/WW;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/WW;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object v0, p0, Lo/UT;->j:Lo/WW;

    .line 44
    invoke-virtual {p0, p2, p3}, Lo/UT;->d(Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 45
    invoke-virtual {p0}, Lo/UT;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lo/UT;->d:Lo/Xq;

    invoke-virtual {v0}, Lo/Xq;->w()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {p0, p2, p3}, Lo/UT;->a(Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 51
    new-instance p1, Lo/VQ;

    iget-object v0, p0, Lo/UT;->e:Lo/Xm;

    check-cast v0, Lo/WH;

    invoke-direct {p1, v0, p2, p3}, Lo/VQ;-><init>(Lo/WH;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 52
    invoke-virtual {p0}, Lo/UT;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lo/UT;->e:Lo/Xm;

    invoke-virtual {v0}, Lo/Xm;->w()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance p1, Lo/VS;

    iget-object v0, p0, Lo/UT;->a:Lo/Xg;

    check-cast v0, Lo/WE;

    invoke-direct {p1, v0, p2}, Lo/VS;-><init>(Lo/WE;Lio/reactivex/Observable;)V

    .line 57
    invoke-virtual {p0}, Lo/UT;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lo/UT;->a:Lo/Xg;

    invoke-virtual {v0}, Lo/Xg;->w()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance p1, Lo/Vw;

    iget-object v0, p0, Lo/UT;->b:Lo/WJ;

    check-cast v0, Lo/WI;

    invoke-direct {p1, v0, p2}, Lo/Vw;-><init>(Lo/WI;Lio/reactivex/Observable;)V

    .line 61
    invoke-virtual {p0}, Lo/UT;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lo/UT;->b:Lo/WJ;

    invoke-virtual {v0}, Lo/WJ;->w()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p0, p2, p3}, Lo/UT;->c(Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 68
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/PlayerUIControlsPostPlayEverywhere$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/PlayerUIControlsPostPlayEverywhere$1;-><init>(Lo/UT;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p2

    .line 67
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "playerStateEventObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    new-instance p2, Lo/VK;

    iget-object v0, p0, Lo/UT;->c:Lo/IpUtils;

    check-cast v0, Lo/NsdServiceInfo;

    invoke-direct {p2, v0, p1}, Lo/VK;-><init>(Lo/NsdServiceInfo;Lio/reactivex/Observable;)V

    return-void
.end method

.method public b(Lo/Factory2;)V
    .locals 5

    const-string v0, "mainContainerConstraintSet"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lo/UT;->a:Lo/Xg;

    invoke-virtual {v0}, Lo/Xg;->a()I

    move-result v0

    iget-object v1, p0, Lo/UT;->b:Lo/WJ;

    invoke-virtual {v1}, Lo/WJ;->a()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-virtual {p1, v0, v3, v1, v2}, Lo/Factory2;->e(IIII)V

    .line 98
    iget-object v0, p0, Lo/UT;->a:Lo/Xg;

    invoke-virtual {v0}, Lo/Xg;->a()I

    move-result v0

    iget-object v1, p0, Lo/UT;->j:Lo/WW;

    invoke-virtual {v1}, Lo/WW;->a()I

    move-result v1

    invoke-virtual {p1, v0, v2, v1, v3}, Lo/Factory2;->e(IIII)V

    .line 100
    iget-object v0, p0, Lo/UT;->b:Lo/WJ;

    invoke-virtual {v0}, Lo/WJ;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v1, v3}, Lo/Factory2;->e(IIII)V

    .line 101
    iget-object v0, p0, Lo/UT;->b:Lo/WJ;

    invoke-virtual {v0}, Lo/WJ;->a()I

    move-result v0

    const/4 v4, 0x6

    invoke-virtual {p1, v0, v4, v1, v4}, Lo/Factory2;->e(IIII)V

    .line 103
    iget-object v0, p0, Lo/UT;->e:Lo/Xm;

    invoke-virtual {v0}, Lo/Xm;->a()I

    move-result v0

    iget-object v1, p0, Lo/UT;->b:Lo/WJ;

    invoke-virtual {v1}, Lo/WJ;->a()I

    move-result v1

    invoke-virtual {p1, v0, v3, v1, v2}, Lo/Factory2;->e(IIII)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;)Lo/Xq;
    .locals 1

    const-string v0, "mainContainer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v0, Lo/Xq;

    invoke-direct {v0, p1}, Lo/Xq;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public c(Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "playerStateEventObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance v0, Lo/VH;

    iget-object v1, p0, Lo/UT;->j:Lo/WW;

    check-cast v1, Lo/WA;

    invoke-direct {v0, v1, p1, p2}, Lo/VH;-><init>(Lo/WA;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 127
    invoke-virtual {p0}, Lo/UT;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lo/UT;->j:Lo/WW;

    invoke-virtual {p2}, Lo/WW;->w()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object p1, p0, Lo/UT;->j:Lo/WW;

    invoke-virtual {p1}, Lo/WW;->w()Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lio/reactivex/subjects/Subject;

    invoke-virtual {p0, p1}, Lo/UT;->e(Lio/reactivex/subjects/Subject;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type io.reactivex.subjects.Subject<com.netflix.mediaclient.ui.player.v2.PlayerUIEvent>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Z)V
    .locals 1

    .line 83
    new-instance p1, Lo/Factory2;

    invoke-direct {p1}, Lo/Factory2;-><init>()V

    .line 84
    invoke-virtual {p0}, Lo/UT;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/Factory2;->d(Lo/MenuInflater;)V

    .line 89
    invoke-virtual {p0, p1}, Lo/UT;->b(Lo/Factory2;)V

    .line 92
    invoke-virtual {p0}, Lo/UT;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/Factory2;->a(Lo/MenuInflater;)V

    return-void
.end method

.method public d(Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "playerStateEventObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    new-instance p2, Lo/VZ;

    iget-object v0, p0, Lo/UT;->d:Lo/Xq;

    check-cast v0, Lo/WK;

    invoke-direct {p2, v0, p1}, Lo/VZ;-><init>(Lo/WK;Lio/reactivex/Observable;)V

    return-void
.end method
