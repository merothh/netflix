.class final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$callback$1$onExtrasFeedItemFetched$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$Activity;->a(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
        "Lcom/netflix/model/leafs/ExtrasFeedItemSummary;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$Activity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$callback$1$onExtrasFeedItemFetched$1;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$Activity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemSummary"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$callback$1$onExtrasFeedItemFetched$1;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$Activity;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$Activity;->e:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2;->a:Lio/reactivex/ObservableEmitter;

    .line 162
    new-instance v1, Lo/GY$StateListAnimator;

    invoke-direct {v1, p1, p2}, Lo/GY$StateListAnimator;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;)V

    .line 161
    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 167
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$callback$1$onExtrasFeedItemFetched$1;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$Activity;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$Activity;->e:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 145
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    check-cast p2, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$callback$1$onExtrasFeedItemFetched$1;->c(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
