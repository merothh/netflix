.class public final Lo/KG;
.super Lo/Kz;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/KG$Activity;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lomo"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentAdapter"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchStrategy"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingInfoHolder"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct/range {p0 .. p7}, Lo/Kz;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;Landroidx/recyclerview/widget/RecyclerView$Dialog;)Lo/KL$Activity;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/KG;->e(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;Landroidx/recyclerview/widget/RecyclerView$Dialog;)Lo/KG$Activity;

    move-result-object p1

    check-cast p1, Lo/KL$Activity;

    return-object p1
.end method

.method public b(Landroid/view/ViewGroup;I)Lo/KL$StateListAnimator;
    .locals 5

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$Dialog;-><init>(II)V

    if-nez p2, :cond_0

    .line 56
    new-instance p2, Lo/YJ;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "parent.context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p2, v1, v3, v2, v3}, Lo/YJ;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILo/amc;)V

    .line 57
    new-instance v1, Lo/YG;

    move-object v4, p2

    check-cast v4, Lo/YH;

    invoke-direct {v1, v4, v3, v2, v3}, Lo/YG;-><init>(Lo/YH;Lio/reactivex/subjects/Subject;ILo/amc;)V

    .line 59
    invoke-virtual {p2}, Lo/YJ;->y()Landroid/view/View;

    move-result-object v2

    .line 60
    invoke-virtual {p2}, Lo/YJ;->f()I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/view/View;->setId(I)V

    .line 61
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    move-object p2, p0

    check-cast p2, Lo/PatternMatcher;

    invoke-virtual {p0, p1, v4, v1, p2}, Lo/KG;->a(Landroid/view/ViewGroup;Lo/YH;Lo/YG;Lo/PatternMatcher;)Lo/KL$StateListAnimator;

    move-result-object p1

    goto :goto_0

    .line 65
    :cond_0
    move-object p2, p0

    check-cast p2, Lo/PatternMatcher;

    invoke-virtual {p0, p1, p2, v0}, Lo/KG;->a(Landroid/view/ViewGroup;Lo/PatternMatcher;Landroidx/recyclerview/widget/RecyclerView$Dialog;)Lo/KL$Activity;

    move-result-object p1

    const-string p2, "createLoadingViewHolder(parent, this, lp)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/KL$StateListAnimator;

    :goto_0
    return-object p1
.end method

.method public e(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;Landroidx/recyclerview/widget/RecyclerView$Dialog;)Lo/KG$Activity;
    .locals 2

    const-string p4, "parent"

    invoke-static {p1, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "cover"

    invoke-static {p2, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "configProvider"

    invoke-static {p3, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance p4, Lo/KG$Activity;

    iget-object v0, p0, Lo/KG;->h:Lo/PooledStringReader;

    const-string v1, "mPulseAnimator"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p4, p1, p2, p3, v0}, Lo/KG$Activity;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;Lo/PooledStringReader;)V

    return-object p4
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lo/KG;->b(Landroid/view/ViewGroup;I)Lo/KL$StateListAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p1
.end method
