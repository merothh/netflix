.class final Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1$onFalkorVideoFetched$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;->d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/agg;

.field final synthetic d:Lo/bs;

.field final synthetic e:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;Lo/agg;Lo/bs;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1$onFalkorVideoFetched$1;->e:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1$onFalkorVideoFetched$1;->a:Lo/agg;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1$onFalkorVideoFetched$1;->d:Lo/bs;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1$onFalkorVideoFetched$1;->e:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;->d:Lio/reactivex/ObservableEmitter;

    .line 85
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    .line 86
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1$onFalkorVideoFetched$1;->a:Lo/agg;

    .line 87
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1$onFalkorVideoFetched$1;->e:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;->a:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;->d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 88
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1$onFalkorVideoFetched$1;->e:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;->a:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;->a:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;->c:Lo/Lv;

    invoke-virtual {v4}, Lo/Lv;->o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v4

    const-string v5, "requireNetflixActivity()"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1$onFalkorVideoFetched$1;->d:Lo/bs;

    .line 85
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;-><init>(Lo/agg;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/bs;)V

    .line 84
    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1$onFalkorVideoFetched$1;->e:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;->d:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1$onFalkorVideoFetched$1;->d()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method
