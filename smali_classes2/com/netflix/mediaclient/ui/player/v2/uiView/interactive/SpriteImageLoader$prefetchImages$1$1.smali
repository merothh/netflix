.class final Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1;->e(Lo/Am;Lcom/netflix/model/leafs/originals/interactive/AssetManifest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field final synthetic a:Lo/Am;

.field final synthetic b:Ljava/util/Collection;

.field c:I

.field private e:Lo/aor;


# direct methods
.method constructor <init>(Ljava/util/Collection;Lo/Am;Lo/ale;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1$1;->b:Ljava/util/Collection;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1$1;->a:Lo/Am;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILo/ale;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    .line 291
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1$1;->c:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lo/akf;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1$1;->e:Lo/aor;

    .line 292
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1$1;->b:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/Image;

    .line 293
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Image;->url()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1$1;->a:Lo/Am;

    .line 296
    sget-object v2, Lcom/netflix/mediaclient/api/res/AssetType;->l:Lcom/netflix/mediaclient/api/res/AssetType;

    .line 297
    sget-object v3, Lo/XJ$Application;->d:Lo/XJ$Application;

    check-cast v3, Lo/zU;

    .line 294
    invoke-virtual {v1, v0, v2, v3}, Lo/Am;->e(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lo/zU;)Z

    move-result v0

    .line 298
    invoke-static {v0}, Lo/alm;->c(Z)Ljava/lang/Boolean;

    goto :goto_0

    .line 301
    :cond_1
    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1

    :cond_2
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

    new-instance v0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1$1;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1$1;->b:Ljava/util/Collection;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1$1;->a:Lo/Am;

    invoke-direct {v0, v1, v2, p2}, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1$1;-><init>(Ljava/util/Collection;Lo/Am;Lo/ale;)V

    check-cast p1, Lo/aor;

    iput-object p1, v0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1$1;->e:Lo/aor;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/ale;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1$1;->d(Ljava/lang/Object;Lo/ale;)Lo/ale;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1$1;

    sget-object p2, Lo/akj;->a:Lo/akj;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1$1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
