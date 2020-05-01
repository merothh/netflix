.class final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;-><init>(Landroid/view/View;Lo/alA;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Nh;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1;->d:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/Nh;)V
    .locals 8

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    sget-object v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 360
    invoke-virtual {p1}, Lo/Nh;->i()Lio/reactivex/Observable;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1;->d:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->v(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Lio/reactivex/Observable;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 362
    sget-object v1, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1$4;->c:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1$4;

    check-cast v1, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 363
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    const-string v0, "item.playProgress\n      \u2026dSchedulers.mainThread())"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1$3;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1$3;-><init>(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1;Lo/Nh;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    .line 368
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1;->d:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->m(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Lo/alA;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 364
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1;->d:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {p1}, Lo/Nh;->l()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->d(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;Z)V

    .line 371
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1;->d:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {p1}, Lo/Nh;->o()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->a(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;Z)V

    .line 372
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1;->d:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->k(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Landroid/widget/ToggleButton;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x4

    .line 642
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1;->d:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {p1}, Lo/Nh;->x()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->b(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;I)V

    .line 375
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1;->d:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {p1}, Lo/Nh;->y()I

    move-result p1

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->d(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;I)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, Lo/Nh;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1;->c(Lo/Nh;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
