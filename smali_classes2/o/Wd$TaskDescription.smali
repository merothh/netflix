.class public final Lo/Wd$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Wd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method public static e(Lo/Wd;Lio/reactivex/Observable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Wd;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "safeManagedStateObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lo/Wd$TaskDescription$StateListAnimator;->a:Lo/Wd$TaskDescription$StateListAnimator;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v1

    const-string p1, "safeManagedStateObservab\u2026.InitialPlaybackLoading }"

    invoke-static {v1, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerInteractiveAwarePresenter$initializeIsInteractiveAwarePresenter$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerInteractiveAwarePresenter$initializeIsInteractiveAwarePresenter$2;-><init>(Lo/Wd;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 13
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method