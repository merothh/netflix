.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VJ;-><init>(Lo/Wx;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/UP;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lio/reactivex/Observable;

.field final synthetic d:Lio/reactivex/Observable;

.field final synthetic e:Lo/VJ;


# direct methods
.method public constructor <init>(Lo/VJ;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2;->e:Lo/VJ;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2;->d:Lio/reactivex/Observable;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2;->c:Lio/reactivex/Observable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/UP;)V
    .locals 8

    .line 64
    invoke-static {}, Lo/VJ;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Inside PlayerPrepareInterrupter - Time to prepare interrupter display observable"

    .line 63
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2;->e:Lo/VJ;

    invoke-static {p1}, Lo/VJ;->c(Lo/VJ;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 69
    invoke-static {}, Lo/VJ;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Time to show the interrupter"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2;->e:Lo/VJ;

    invoke-static {p1}, Lo/VJ;->e(Lo/VJ;)Lo/Wx;

    move-result-object p1

    invoke-interface {p1}, Lo/Wx;->j()V

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2;->d:Lio/reactivex/Observable;

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2;->e:Lo/VJ;

    invoke-static {v0}, Lo/VJ;->d(Lo/VJ;)Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2;->c:Lio/reactivex/Observable;

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-static {v0, v1}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 75
    sget-object v0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2$4;->b:Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2$4;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v0, 0x1

    .line 76
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v2

    const-string p1, "safeManagedStateObservab\u2026                 .take(1)"

    invoke-static {v2, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2$2;-><init>(Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2;)V

    move-object v5, p1

    check-cast v5, Lo/alA;

    const/4 v4, 0x0

    .line 82
    sget-object p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2$3;->a:Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2$3;

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 77
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2;->a(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
