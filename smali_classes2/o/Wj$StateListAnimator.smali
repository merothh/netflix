.class public final Lo/Wj$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Wj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method public static d(Lo/Wj;Lio/reactivex/Observable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Wj;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "safeManagedStateObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lo/Wj$StateListAnimator$Activity;->b:Lo/Wj$StateListAnimator$Activity;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v1

    const-string p1, "safeManagedStateObservab\u2026anupAndStartNewPlayback }"

    invoke-static {v1, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerInteractiveChoicePointAwarePresenter$initializeInteractiveChoicePointAwarePresenter$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerInteractiveChoicePointAwarePresenter$initializeInteractiveChoicePointAwarePresenter$2;-><init>(Lo/Wj;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    .line 24
    sget-object p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerInteractiveChoicePointAwarePresenter$initializeInteractiveChoicePointAwarePresenter$3;->d:Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerInteractiveChoicePointAwarePresenter$initializeInteractiveChoicePointAwarePresenter$3;

    move-object v2, p0

    check-cast v2, Lo/alA;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 16
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static d(Lo/Wj;)Z
    .locals 1

    .line 32
    invoke-interface {p0}, Lo/Wj;->e()Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    move-result-object p0

    sget-object v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;->e:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
