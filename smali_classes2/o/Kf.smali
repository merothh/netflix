.class public Lo/Kf;
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


# instance fields
.field private a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/Am;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 9

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 39
    invoke-direct/range {v0 .. v8}, Lo/KL;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;Lo/Am;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    move-object v1, p3

    .line 40
    iput-object v1, v0, Lo/Kf;->a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;I)I
    .locals 0

    .line 50
    invoke-static {p1, p2}, Lo/Kl$TaskDescription;->b(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;Landroidx/recyclerview/widget/RecyclerView$Dialog;)Lo/KL$Activity;
    .locals 0

    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Lo/KL;->a(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;Landroidx/recyclerview/widget/RecyclerView$Dialog;)Lo/KL$Activity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 29
    invoke-super {p0, p1, p2, p3}, Lo/KL;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public bridge synthetic b(Landroid/view/ViewGroup;I)Lo/KL$StateListAnimator;
    .locals 0

    .line 29
    invoke-super {p0, p1, p2}, Lo/KL;->b(Landroid/view/ViewGroup;I)Lo/KL$StateListAnimator;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/netflix/model/leafs/ListOfMoviesSummary;)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lo/Kf;->g()Lo/Ky;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo/GallerySimilarsListAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/GallerySimilarsListAdapter$2;-><init>(Lo/Kf;Lcom/netflix/model/leafs/ListOfMoviesSummary;)V

    invoke-virtual {v0, v1}, Lo/Ky;->d(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Lo/Ky;

    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Lo/Kf;->a(Lo/Ky;)V

    return-void
.end method

.method public d(Landroid/content/Context;Lo/Am;IILo/zU;)V
    .locals 1

    .line 55
    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object p1

    new-instance p2, Lo/AutofillServiceHelper;

    invoke-virtual {p0}, Lo/Kf;->j()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object p3

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lo/Kf;->a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v0, 0x0

    invoke-direct {p2, p3, p4, v0}, Lo/AutofillServiceHelper;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V

    new-instance p3, Lo/Kf$1;

    invoke-direct {p3, p0, p5}, Lo/Kf$1;-><init>(Lo/Kf;Lo/zU;)V

    invoke-interface {p1, p2, p3}, Lo/zG;->a(Lo/ConfirmationCallback;Lo/zU;)V

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 73
    invoke-virtual {p0}, Lo/Kf;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lo/KL;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public bridge synthetic onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lo/KL;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public bridge synthetic q()Ljava/lang/String;
    .locals 1

    .line 29
    invoke-super {p0}, Lo/KL;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()I
    .locals 2

    .line 45
    invoke-virtual {p0}, Lo/Kf;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lo/Kf;->e()Lo/PooledStringWriter;

    move-result-object v1

    invoke-static {v0, v1}, Lo/Kl$TaskDescription;->e(ILo/PooledStringWriter;)I

    move-result v0

    return v0
.end method
