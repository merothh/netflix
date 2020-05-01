.class final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;->c(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/GY$StateListAnimator;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1$1;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/GY$StateListAnimator;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1$1;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;->e:Lo/GK;

    sget-object v1, Lo/GK$StateListAnimator$StateListAnimator;->a:Lo/GK$StateListAnimator$StateListAnimator;

    check-cast v1, Lo/GK$StateListAnimator;

    invoke-virtual {v0, v1}, Lo/GK;->c(Lo/GK$StateListAnimator;)V

    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1$1;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;->e:Lo/GK;

    invoke-virtual {p1}, Lo/GY$StateListAnimator;->c()Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/GK;->c(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;)V

    .line 243
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1$1;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;->e:Lo/GK;

    invoke-static {v0}, Lo/GK;->c(Lo/GK;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    invoke-virtual {p1}, Lo/GY$StateListAnimator;->b()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    move-result-object p1

    invoke-static {p1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 245
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1$1;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;->e:Lo/GK;

    invoke-virtual {p1}, Lo/GK;->w()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Lo/GY$StateListAnimator;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1$1;->a(Lo/GY$StateListAnimator;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
