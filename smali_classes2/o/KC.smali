.class public Lo/KC;
.super Lo/KL;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/KC$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/KL<",
        "Lo/AR;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p7}, Lo/KL;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;Landroidx/recyclerview/widget/RecyclerView$Dialog;)Lo/KL$Activity;
    .locals 0

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lo/KL;->a(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;Landroidx/recyclerview/widget/RecyclerView$Dialog;)Lo/KL$Activity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 26
    invoke-super {p0, p1, p2, p3}, Lo/KL;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lo/KL$StateListAnimator;
    .locals 2

    .line 43
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$Dialog;-><init>(II)V

    .line 46
    invoke-virtual {p0}, Lo/KC;->e()Lo/PooledStringWriter;

    move-result-object v1

    invoke-virtual {v1}, Lo/PooledStringWriter;->b()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->leftMargin:I

    .line 47
    invoke-virtual {p0}, Lo/KC;->e()Lo/PooledStringWriter;

    move-result-object v1

    invoke-virtual {v1}, Lo/PooledStringWriter;->b()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->topMargin:I

    .line 48
    invoke-virtual {p0}, Lo/KC;->e()Lo/PooledStringWriter;

    move-result-object v1

    invoke-virtual {v1}, Lo/PooledStringWriter;->b()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->rightMargin:I

    .line 49
    invoke-virtual {p0}, Lo/KC;->e()Lo/PooledStringWriter;

    move-result-object v1

    invoke-virtual {v1}, Lo/PooledStringWriter;->b()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->bottomMargin:I

    if-nez p2, :cond_0

    .line 51
    new-instance p2, Lo/PopupMenu;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lo/PopupMenu;-><init>(Landroid/content/Context;)V

    .line 52
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->qA:I

    invoke-virtual {p2, v1}, Lo/PopupMenu;->setId(I)V

    .line 53
    invoke-virtual {p2, v0}, Lo/PopupMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    new-instance v0, Lo/KC$Activity;

    invoke-direct {v0, p1, p2, p0}, Lo/KC$Activity;-><init>(Landroid/view/ViewGroup;Lo/ResourceCursorTreeAdapter;Lo/PatternMatcher;)V

    return-object v0

    .line 56
    :cond_0
    invoke-virtual {p0, p1, p0, v0}, Lo/KC;->a(Landroid/view/ViewGroup;Lo/PatternMatcher;Landroidx/recyclerview/widget/RecyclerView$Dialog;)Lo/KL$Activity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lo/KL;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lo/KC;->b(Landroid/view/ViewGroup;I)Lo/KL$StateListAnimator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lo/KL;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public bridge synthetic q()Ljava/lang/String;
    .locals 1

    .line 26
    invoke-super {p0}, Lo/KL;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
