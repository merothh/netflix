.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GK;->d(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lo/alN<",
        "Lo/aor;",
        "Lo/ale<",
        "-",
        "Lo/akj;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field b:I

.field final synthetic c:Lo/GK;

.field private d:Lo/aor;


# direct methods
.method public constructor <init>(Lo/GK;ZLo/ale;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->a:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILo/ale;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    .line 150
    iget v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->b:I

    if-nez v0, :cond_a

    invoke-static {p1}, Lo/akf;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->d:Lo/aor;

    .line 153
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    invoke-virtual {p1}, Lo/GK;->h()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    invoke-virtual {p1}, Lo/GK;->l()Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;->isExpired()Z

    move-result p1

    if-eq p1, v0, :cond_2

    :cond_0
    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->a:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    invoke-virtual {p1}, Lo/GK;->f()Lo/GK$StateListAnimator;

    move-result-object p1

    sget-object v2, Lo/GK$StateListAnimator$TaskDescription;->d:Lo/GK$StateListAnimator$TaskDescription;

    invoke-static {p1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 155
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    const/4 v3, 0x0

    check-cast v3, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    invoke-virtual {v2, v3}, Lo/GK;->c(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;)V

    .line 157
    :cond_3
    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->a:Z

    if-eqz v2, :cond_4

    .line 159
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lo/GK;->d(Ljava/lang/String;)V

    .line 163
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    invoke-virtual {v2}, Lo/GK;->l()Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    move-result-object v2

    if-nez v2, :cond_6

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    invoke-static {v2}, Lo/GK;->c(Lo/GK;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v2

    invoke-virtual {v2}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lo/alm;->b(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v3, v1

    .line 165
    :goto_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    invoke-virtual {v1}, Lo/GK;->l()Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    invoke-static {v1}, Lo/GK;->c(Lo/GK;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_4

    .line 169
    :cond_7
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    invoke-virtual {v1}, Lo/GK;->e()I

    move-result v1

    add-int/2addr v1, v3

    .line 170
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    invoke-virtual {v2}, Lo/GK;->l()Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;->getLength()I

    move-result v2

    invoke-static {v2}, Lo/alm;->b(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_3

    :cond_8
    const v2, 0x7fffffff

    .line 168
    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_5

    .line 166
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    invoke-virtual {v1}, Lo/GK;->e()I

    move-result v1

    :goto_5
    sub-int/2addr v1, v0

    move v4, v1

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    invoke-virtual {v0}, Lo/GK;->m()Lo/GI;

    move-result-object v2

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    invoke-virtual {v0}, Lo/GK;->h()Ljava/lang/String;

    move-result-object v5

    .line 178
    iget-boolean v7, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->a:Z

    move v6, p1

    .line 173
    invoke-virtual/range {v2 .. v7}, Lo/GI;->c(IILjava/lang/String;ZZ)Lio/reactivex/Observable;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    invoke-static {v1}, Lo/GK;->a(Lo/GK;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v2

    const-string v0, "repo.fetchFeed(\n        \u2026takeUntil(destroySubject)"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1$1;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;Z)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    const/4 v4, 0x0

    .line 198
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1$2;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 181
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 203
    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Ljava/lang/Object;Lo/ale;)Lo/ale;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/ale<",
            "*>;)",
            "Lo/ale<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c:Lo/GK;

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->a:Z

    invoke-direct {v0, v1, v2, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;-><init>(Lo/GK;ZLo/ale;)V

    check-cast p1, Lo/aor;

    iput-object p1, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->d:Lo/aor;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/ale;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->d(Ljava/lang/Object;Lo/ale;)Lo/ale;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;

    sget-object p2, Lo/akj;->a:Lo/akj;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
