.class final Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;-><init>(Landroid/view/View;Lo/alA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/HY;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1;->c:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/HY;)V
    .locals 9

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    sget-object v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->c:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 311
    invoke-virtual {p1}, Lo/HY;->g()Lo/AK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p1}, Lo/HY;->F()Lio/reactivex/Observable;

    move-result-object v1

    .line 313
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1;->c:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->p(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lio/reactivex/Observable;

    move-result-object v2

    check-cast v2, Lio/reactivex/ObservableSource;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    .line 314
    sget-object v2, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1$TaskDescription;->b:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1$TaskDescription;

    check-cast v2, Lio/reactivex/functions/Predicate;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v1

    .line 315
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v3

    const-string v1, "item.playProgress\n      \u2026dSchedulers.mainThread())"

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1$$special$$inlined$let$lambda$1;

    invoke-direct {v1, v0, p0, p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1$$special$$inlined$let$lambda$1;-><init>(Lo/AK;Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1;Lo/HY;)V

    move-object v6, v1

    check-cast v6, Lo/alA;

    const/4 v5, 0x0

    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1;->c:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->g(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lo/alA;

    move-result-object v4

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 316
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1;->c:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-virtual {p1}, Lo/HY;->t()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->c(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;Z)V

    .line 327
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1;->c:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-virtual {p1}, Lo/HY;->p()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->d(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;Z)V

    .line 328
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1;->c:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->n(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Landroid/widget/ToggleButton;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x4

    .line 587
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Lo/HY;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1;->a(Lo/HY;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
