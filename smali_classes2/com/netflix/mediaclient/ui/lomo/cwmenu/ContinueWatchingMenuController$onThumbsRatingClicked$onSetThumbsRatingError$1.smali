.class final Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$onSetThumbsRatingError$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


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
        "Lo/alN<",
        "Ljava/lang/Long;",
        "Lcom/netflix/mediaclient/StatusCode;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;I)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$onSetThumbsRatingError$1;->b:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    iput p2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$onSetThumbsRatingError$1;->e:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Long;Lcom/netflix/mediaclient/StatusCode;)V
    .locals 2

    const-string v0, "errorStatus"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$onSetThumbsRatingError$1;->b:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->getItemClickSubject()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    sget-object v1, Lo/Lz$TaskDescription;->c:Lo/Lz$TaskDescription;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 184
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/cl/model/Error;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/netflix/cl/ExtLogger;->failedAction(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Z

    .line 187
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gO:I

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lo/adk;->c(II)V

    .line 188
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$onSetThumbsRatingError$1;->b:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    iget p2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$onSetThumbsRatingError$1;->e:I

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->access$setCurrentThumbsRating$p(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;I)V

    .line 189
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$onSetThumbsRatingError$1;->b:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->access$setRatingApiCallInProgress$p(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;Z)V

    .line 190
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$onSetThumbsRatingError$1;->b:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->requestModelBuild()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$onThumbsRatingClicked$onSetThumbsRatingError$1;->c(Ljava/lang/Long;Lcom/netflix/mediaclient/StatusCode;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
