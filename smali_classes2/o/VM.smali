.class public Lo/VM;
.super Lo/VW;
.source ""

# interfaces
.implements Lo/Wg;
.implements Lo/Wh;


# instance fields
.field private b:Z

.field private d:Z

.field private final e:Lo/WC;


# direct methods
.method public constructor <init>(Lo/WC;Lio/reactivex/Observable;Lo/UK;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WC;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;",
            "Lo/UK;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerRepository"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v0, p1

    check-cast v0, Lo/WI;

    invoke-direct {p0, v0, p2}, Lo/VW;-><init>(Lo/WI;Lio/reactivex/Observable;)V

    iput-object p1, p0, Lo/VM;->e:Lo/WC;

    .line 40
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$1;-><init>(Lo/VM;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p2

    .line 39
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 88
    invoke-virtual {p3}, Lo/UK;->d()Lio/reactivex/Observable;

    move-result-object p1

    .line 89
    check-cast p4, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p4}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 90
    sget-object p2, Lo/VM$5;->c:Lo/VM$5;

    check-cast p2, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "playerRepository.dataEve\u2026it.videoDetails != null }"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$3;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSecondaryControlsPresenter$3;-><init>(Lo/VM;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 91
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic c(Lo/VM;)Lo/WC;
    .locals 0

    .line 22
    iget-object p0, p0, Lo/VM;->e:Lo/WC;

    return-object p0
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

    .line 22
    invoke-static {p0, p1}, Lo/Wh$TaskDescription;->d(Lo/Wh;Lio/reactivex/Observable;)V

    return-void
.end method

.method public a(Lo/Bc;)V
    .locals 1

    .line 127
    invoke-virtual {p0}, Lo/VM;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lo/ia;->b(Lo/Bc;)Lo/agg;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lo/VM;->e:Lo/WC;

    invoke-interface {p1}, Lo/WC;->h()V

    goto :goto_0

    .line 130
    :cond_0
    iget-object p1, p0, Lo/VM;->e:Lo/WC;

    invoke-interface {p1}, Lo/WC;->i()V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lo/VM;->b:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lo/VM;->b:Z

    return v0
.end method

.method public c()V
    .locals 1

    .line 103
    invoke-virtual {p0}, Lo/VM;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-super {p0}, Lo/VW;->c()V

    .line 105
    iget-object v0, p0, Lo/VM;->e:Lo/WC;

    invoke-interface {v0}, Lo/WC;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lo/VM;->f()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lo/VM;->d:Z

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

    .line 22
    invoke-static {p0, p1}, Lo/Wg$StateListAnimator;->b(Lo/Wg;Lio/reactivex/Observable;)V

    return-void
.end method

.method public f()V
    .locals 6

    .line 112
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 113
    new-instance v1, Lcom/netflix/cl/model/event/discrete/Presented;

    .line 114
    sget-object v2, Lcom/netflix/cl/model/AppView;->nextEpisodeButton:Lcom/netflix/cl/model/AppView;

    const/4 v3, 0x0

    .line 115
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 119
    sget v4, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "trackId"

    .line 117
    invoke-static {v5, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 116
    invoke-static {v4}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Ljava/util/Map;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v4

    .line 113
    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/cl/model/event/discrete/Presented;-><init>(Lcom/netflix/cl/model/AppView;Ljava/lang/Boolean;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    .line 112
    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    return-void
.end method

.method public h()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lo/VM;->d:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lo/VM;->e:Lo/WC;

    invoke-interface {v0}, Lo/WC;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/VM;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/VM;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
