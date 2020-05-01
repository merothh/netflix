.class public Lo/Ke;
.super Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ke$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter<",
        "Lo/Ke$TaskDescription;",
        "Lo/AU;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p7}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/ParcelFormatException$Activity;IZ)V
    .locals 0

    .line 32
    check-cast p1, Lo/Ke$TaskDescription;

    invoke-virtual {p0, p1, p2, p3}, Lo/Ke;->e(Lo/Ke$TaskDescription;IZ)V

    return-void
.end method

.method protected c(Lo/Ke$TaskDescription;Lo/AU;IZ)V
    .locals 6

    .line 62
    iget-object v1, p0, Lo/Ke;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {p0}, Lo/Ke;->g()Lo/Ky;

    move-result-object v2

    move-object v0, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lo/Ke$TaskDescription;->a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Ky;Lo/AU;IZ)V

    return-void
.end method

.method public d(Landroid/view/ViewGroup;I)Lo/Ke$TaskDescription;
    .locals 2

    .line 42
    new-instance p2, Lo/Jg;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lo/Jg;-><init>(Landroid/content/Context;)V

    .line 43
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->iZ:I

    invoke-virtual {p2, v0}, Lo/Jg;->setId(I)V

    .line 44
    new-instance v0, Lo/Ke$TaskDescription;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->iZ:I

    invoke-direct {v0, p1, p2, p0, v1}, Lo/Ke$TaskDescription;-><init>(Landroid/view/ViewGroup;Lo/Jg;Lo/PatternMatcher;I)V

    return-object v0
.end method

.method protected e(Lo/Ke$TaskDescription;IZ)V
    .locals 0

    .line 67
    invoke-virtual {p1}, Lo/Ke$TaskDescription;->c()V

    return-void
.end method

.method public synthetic e(Lo/ParcelFormatException$Activity;Lo/AR;IZ)V
    .locals 0

    .line 32
    check-cast p1, Lo/Ke$TaskDescription;

    check-cast p2, Lo/AU;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/Ke;->c(Lo/Ke$TaskDescription;Lo/AU;IZ)V

    return-void
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lo/Ke;->d(Landroid/view/ViewGroup;I)Lo/Ke$TaskDescription;

    move-result-object p1

    return-object p1
.end method

.method public s()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
