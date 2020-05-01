.class final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/GY$Application;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Z

.field final synthetic d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;Z)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1$1;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1$1;->c:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/GY$Application;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1$1;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    sget-object v1, Lo/GK$StateListAnimator$StateListAnimator;->a:Lo/GK$StateListAnimator$StateListAnimator;

    check-cast v1, Lo/GK$StateListAnimator;

    invoke-virtual {v0, v1}, Lo/GK;->c(Lo/GK$StateListAnimator;)V

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1$1;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    invoke-virtual {p1}, Lo/GY$Application;->b()Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/GK;->c(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;)V

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1$1;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    invoke-static {v0}, Lo/GK;->c(Lo/GK;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 186
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1$1;->c:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1$1;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    invoke-static {v1}, Lo/GK;->c(Lo/GK;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v1

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lo/GY$Application;->e()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lo/akz;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 187
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1$1;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    invoke-static {v0}, Lo/GK;->c(Lo/GK;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    invoke-virtual {p1}, Lo/GY$Application;->e()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 192
    :goto_1
    invoke-static {}, Lo/ady;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 194
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1$1;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    invoke-virtual {p1}, Lo/GK;->w()V

    .line 195
    sget-object p1, Lo/GK;->a:Lo/GK$ActionBar;

    check-cast p1, Lo/MessagePdu;

    :cond_2
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Lo/GY$Application;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1$1;->c(Lo/GY$Application;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
