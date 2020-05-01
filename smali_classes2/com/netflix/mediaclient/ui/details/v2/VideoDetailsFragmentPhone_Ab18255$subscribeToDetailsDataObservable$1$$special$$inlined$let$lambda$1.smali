.class final Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1$$special$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->e(Lo/FC;)V
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
        "Lo/agg;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1$$special$$inlined$let$lambda$1;->a:Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lkotlin/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "+",
            "Lo/agg;",
            ">;)V"
        }
    .end annotation

    .line 342
    invoke-virtual {p1}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/agg;

    if-eqz p1, :cond_1

    .line 343
    invoke-interface {p1}, Lo/agg;->bb()Lo/AK;

    move-result-object v0

    const-string v1, "falkorVideo.playable"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    sget-object v1, Lcom/netflix/model/leafs/Bookmark;->Companion:Lcom/netflix/model/leafs/Bookmark$Companion;

    .line 345
    invoke-interface {p1}, Lo/agg;->P()I

    move-result v2

    .line 346
    invoke-interface {p1}, Lo/agg;->S()I

    move-result v3

    .line 347
    invoke-interface {p1}, Lo/agg;->ao()Ljava/lang/Integer;

    move-result-object v4

    .line 344
    invoke-virtual {v1, v2, v3, v4}, Lcom/netflix/model/leafs/Bookmark$Companion;->calculateProgress(IILjava/lang/Integer;)I

    move-result v1

    int-to-float v1, v1

    .line 350
    invoke-interface {p1}, Lo/agg;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->playbackGraph()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 355
    :cond_0
    invoke-interface {p1}, Lo/agg;->S()I

    move-result v2

    invoke-interface {p1}, Lo/agg;->P()I

    move-result p1

    sub-int p1, v2, p1

    .line 357
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1$$special$$inlined$let$lambda$1;->a:Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v2}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v2

    .line 358
    new-instance v3, Lo/DC$ComponentCallbacks2;

    .line 360
    sget-object v4, Lo/UZ;->b:Lo/UZ;

    invoke-virtual {v4, v0}, Lo/UZ;->a(Lo/AK;)Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-direct {v3, v1, v0, p1}, Lo/DC$ComponentCallbacks2;-><init>(FLjava/lang/String;I)V

    check-cast v3, Lo/VintfObject;

    .line 1157
    const-class p1, Lo/DC;

    invoke-virtual {v2, p1, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :cond_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1$$special$$inlined$let$lambda$1;->e(Lkotlin/Pair;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
