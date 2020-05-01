.class public Lo/JZ;
.super Lo/KL;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/KL<",
        "Lo/AR;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lo/Am;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 9

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 23
    invoke-direct/range {v0 .. v8}, Lo/KL;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;Lo/Am;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;I)I
    .locals 0

    .line 33
    invoke-static {p1, p2}, Lo/Kl$TaskDescription;->b(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;Landroidx/recyclerview/widget/RecyclerView$Dialog;)Lo/KL$Activity;
    .locals 0

    .line 20
    invoke-super {p0, p1, p2, p3, p4}, Lo/KL;->a(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;Landroidx/recyclerview/widget/RecyclerView$Dialog;)Lo/KL$Activity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 20
    invoke-super {p0, p1, p2, p3}, Lo/KL;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public bridge synthetic b(Landroid/view/ViewGroup;I)Lo/KL$StateListAnimator;
    .locals 0

    .line 20
    invoke-super {p0, p1, p2}, Lo/KL;->b(Landroid/view/ViewGroup;I)Lo/KL$StateListAnimator;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/netflix/model/leafs/ListOfMoviesSummary;)V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lo/JZ;->g()Lo/Ky;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreListAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreListAdapter$1;-><init>(Lo/JZ;Lcom/netflix/model/leafs/ListOfMoviesSummary;)V

    invoke-virtual {v0, v1}, Lo/Ky;->d(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Lo/Ky;

    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Lo/JZ;->a(Lo/Ky;)V

    return-void
.end method

.method public d(Landroid/content/Context;Lo/Am;IILo/zU;)V
    .locals 6

    .line 38
    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    invoke-virtual {p0}, Lo/JZ;->j()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v1

    const/4 v4, 0x0

    move v2, p3

    move v3, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lo/zG;->e(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZLo/zU;)Z

    return-void
.end method

.method public bridge synthetic onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lo/KL;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public bridge synthetic onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lo/KL;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public bridge synthetic q()Ljava/lang/String;
    .locals 1

    .line 20
    invoke-super {p0}, Lo/KL;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()I
    .locals 2

    .line 28
    invoke-virtual {p0}, Lo/JZ;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lo/JZ;->e()Lo/PooledStringWriter;

    move-result-object v1

    invoke-static {v0, v1}, Lo/Kl$TaskDescription;->e(ILo/PooledStringWriter;)I

    move-result v0

    return v0
.end method
