.class final Lo/AbsListView$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AbsListView;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/ObservableSource<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/AbsListView;

.field final synthetic d:Lcom/netflix/mediaclient/android/sharing/impl/types/ShareableInternal;


# direct methods
.method constructor <init>(Lo/AbsListView;Lcom/netflix/mediaclient/android/sharing/impl/types/ShareableInternal;)V
    .locals 0

    iput-object p1, p0, Lo/AbsListView$Application;->c:Lo/AbsListView;

    iput-object p2, p0, Lo/AbsListView$Application;->d:Lcom/netflix/mediaclient/android/sharing/impl/types/ShareableInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lo/AnalogClock;

    invoke-virtual {p0, p1}, Lo/AbsListView$Application;->e(Lo/AnalogClock;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lo/AnalogClock;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AnalogClock<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "Lkotlin/Pair<",
            "Lo/AnalogClock<",
            "TT;>;",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation

    const-string v0, "shareTarget"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lo/AbsListView;->b:Lo/AbsListView$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 87
    iget-object v0, p0, Lo/AbsListView$Application;->c:Lo/AbsListView;

    invoke-virtual {v0}, Lo/AbsListView;->b()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    check-cast v0, Lo/Serializable;

    iget-object v1, p0, Lo/AbsListView$Application;->d:Lcom/netflix/mediaclient/android/sharing/impl/types/ShareableInternal;

    check-cast v1, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    invoke-virtual {p1, v0, v1}, Lo/AnalogClock;->b(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)Lio/reactivex/Single;

    move-result-object v0

    .line 90
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    .line 92
    new-instance v1, Lo/AbsListView$Application$2;

    invoke-direct {v1, p1}, Lo/AbsListView$Application$2;-><init>(Lo/AnalogClock;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 95
    iget-object v0, p0, Lo/AbsListView$Application;->c:Lo/AbsListView;

    invoke-virtual {v0}, Lo/AbsListView;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v0

    .line 161
    new-instance v1, Lo/AbsListView$Application$StateListAnimator;

    invoke-direct {v1, v0}, Lo/AbsListView$Application$StateListAnimator;-><init>(Lo/UnicodeScript;)V

    check-cast v1, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.create { emit\u2026       }\n        })\n    }"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/reactivex/ObservableSource;

    .line 95
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method
