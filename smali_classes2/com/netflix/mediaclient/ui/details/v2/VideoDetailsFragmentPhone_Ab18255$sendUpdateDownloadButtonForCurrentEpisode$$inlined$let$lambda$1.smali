.class public final Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$sendUpdateDownloadButtonForCurrentEpisode$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FN;->d(Lo/Bb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic c:Lo/FN;


# direct methods
.method public constructor <init>(Lo/FN;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$sendUpdateDownloadButtonForCurrentEpisode$$inlined$let$lambda$1;->c:Lo/FN;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Pair;)V
    .locals 6
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

    .line 928
    invoke-virtual {p1}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/agg;

    if-eqz p1, :cond_0

    .line 929
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$sendUpdateDownloadButtonForCurrentEpisode$$inlined$let$lambda$1;->c:Lo/FN;

    .line 930
    invoke-interface {p1}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "currentEpisodeForDownload.id"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 931
    invoke-interface {p1}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    const-string v3, "currentEpisodeForDownload.type"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 932
    invoke-interface {p1}, Lo/agg;->bb()Lo/AK;

    move-result-object v3

    const-string v4, "currentEpisodeForDownload.playable"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lo/AK;->e()Z

    move-result v3

    .line 933
    invoke-interface {p1}, Lo/agg;->bb()Lo/AK;

    move-result-object v5

    invoke-static {v5, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lo/AK;->ag()Ljava/lang/String;

    move-result-object v5

    .line 934
    invoke-interface {p1}, Lo/agg;->bb()Lo/AK;

    move-result-object p1

    invoke-static {p1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/AK;->V()I

    move-result p1

    move-object v4, v5

    move v5, p1

    .line 929
    invoke-static/range {v0 .. v5}, Lo/FN;->e(Lo/FN;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$sendUpdateDownloadButtonForCurrentEpisode$$inlined$let$lambda$1;->a(Lkotlin/Pair;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
