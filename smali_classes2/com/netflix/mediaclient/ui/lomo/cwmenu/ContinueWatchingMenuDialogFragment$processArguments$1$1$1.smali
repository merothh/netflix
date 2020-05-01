.class public final Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;

.field final synthetic d:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter;",
            ")V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;->a:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;->d:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1, p2}, Lo/cq;->d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 75
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p2

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    sget-object p2, Lo/bw;->a:Lo/bw$ActionBar;

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;->a:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;->a:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;->c:Lo/Lv;

    invoke-virtual {v0}, Lo/Lv;->o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    check-cast v0, Lo/UnicodeScript;

    .line 264
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1$Activity;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1$Activity;-><init>(Lo/UnicodeScript;)V

    check-cast v1, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.create { emit\u2026       }\n        })\n    }"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2, v0}, Lo/bw$ActionBar;->a(Lio/reactivex/Observable;)Lo/bs;

    move-result-object p2

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;->a:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;->a:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;->c:Lo/Lv;

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1$onFalkorVideoFetched$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1$onFalkorVideoFetched$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;Lo/agg;Lo/bs;)V

    check-cast v1, Lo/alB;

    invoke-static {v0, p1, p2, v1}, Lo/Lv;->a(Lo/Lv;Lo/agg;Lo/bs;Lo/alB;)V

    goto :goto_1

    .line 76
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;->d:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    .line 77
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1$1;->a:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1$1;->a:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;->c:Lo/Lv;

    invoke-virtual {p1}, Lo/Lv;->dismiss()V

    :goto_1
    return-void
.end method
