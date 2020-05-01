.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GK;->e(Ljava/lang/String;)Lo/aoU;
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
.field a:I

.field final synthetic b:Ljava/lang/String;

.field private c:Lo/aor;

.field final synthetic e:Lo/GK;


# direct methods
.method public constructor <init>(Lo/GK;Ljava/lang/String;Lo/ale;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;->e:Lo/GK;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;->b:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILo/ale;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    .line 234
    iget v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;->a:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lo/akf;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;->c:Lo/aor;

    .line 235
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;->e:Lo/GK;

    invoke-virtual {p1}, Lo/GK;->m()Lo/GI;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/GI;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;->e:Lo/GK;

    invoke-static {v0}, Lo/GK;->a(Lo/GK;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    const-string p1, "repo.fetchItem(postId)\n \u2026takeUntil(destroySubject)"

    invoke-static {v1, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1$1;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    const/4 v3, 0x0

    .line 247
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1$2;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;)V

    move-object v2, p1

    check-cast v2, Lo/alA;

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 237
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 252
    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1

    :cond_0
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

    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;->e:Lo/GK;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;-><init>(Lo/GK;Ljava/lang/String;Lo/ale;)V

    check-cast p1, Lo/aor;

    iput-object p1, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;->c:Lo/aor;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/ale;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;->d(Ljava/lang/Object;Lo/ale;)Lo/ale;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;

    sget-object p2, Lo/akj;->a:Lo/akj;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
