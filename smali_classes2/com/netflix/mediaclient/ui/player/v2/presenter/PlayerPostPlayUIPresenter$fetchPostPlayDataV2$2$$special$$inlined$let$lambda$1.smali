.class final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2$$special$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2;->a(Lo/UP;)V
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
        "Lcom/netflix/mediaclient/android/app/Status;",
        "+",
        "Lcom/netflix/model/leafs/PostPlayExperience;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Tv;

.field final synthetic c:Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2;

.field final synthetic e:Lo/UP;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2;Lo/Tv;Lo/UP;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2$$special$$inlined$let$lambda$1;->c:Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2$$special$$inlined$let$lambda$1;->a:Lo/Tv;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2$$special$$inlined$let$lambda$1;->e:Lo/UP;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lkotlin/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "+",
            "Lcom/netflix/model/leafs/PostPlayExperience;",
            ">;)V"
        }
    .end annotation

    .line 194
    invoke-virtual {p1}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2$$special$$inlined$let$lambda$1;->c:Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2;->d:Lo/VH;

    invoke-static {v0}, Lo/VH;->d(Lo/VH;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {p1}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/netflix/model/leafs/PostPlayExperience;

    .line 195
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->b(Lcom/netflix/model/leafs/PostPlayExperience;)V

    goto :goto_0

    .line 196
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.model.leafs.PostPlayExperience"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerPostPlayUIPresenter$fetchPostPlayDataV2$2$$special$$inlined$let$lambda$1;->e(Lkotlin/Pair;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
