.class final Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->onThumbsRatingClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lkotlin/Pair<",
        "+",
        "Lo/AQ;",
        "+",
        "Lcom/netflix/mediaclient/android/app/Status;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/alN;

.field final synthetic d:Ljava/lang/Long;

.field final synthetic e:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;Ljava/lang/Long;Lo/alN;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$1;->e:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$1;->d:Ljava/lang/Long;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$1;->c:Lo/alN;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lo/AQ;",
            "+",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AQ;

    .line 204
    invoke-virtual {p1}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    .line 205
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 206
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$1;->e:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->getItemClickSubject()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    sget-object v1, Lo/Lz$TaskDescription;->c:Lo/Lz$TaskDescription;

    invoke-virtual {p1, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 207
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$1;->d:Ljava/lang/Long;

    invoke-virtual {p1, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 209
    invoke-interface {v0}, Lo/AQ;->getUserThumbRating()I

    move-result p1

    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$1;->e:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->access$setCurrentThumbsRating$p(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;I)V

    .line 211
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$1;->e:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->access$setRatingApiCallInProgress$p(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;Z)V

    .line 212
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$1;->e:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->requestModelBuild()V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$1;->c:Lo/alN;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$1;->d:Ljava/lang/Long;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    const-string v2, "status.statusCode"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Lo/alN;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$1;->a(Lkotlin/Pair;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
