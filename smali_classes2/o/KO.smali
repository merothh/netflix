.class public final Lo/KO;
.super Lo/KL;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/KO$Application;
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

    .line 24
    invoke-direct/range {p0 .. p7}, Lo/KL;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/ViewGroup;I)Lo/KL$StateListAnimator;
    .locals 8

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$Dialog;-><init>(II)V

    .line 42
    invoke-virtual {p0}, Lo/KO;->e()Lo/PooledStringWriter;

    move-result-object v1

    invoke-virtual {v1}, Lo/PooledStringWriter;->b()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->leftMargin:I

    .line 43
    invoke-virtual {p0}, Lo/KO;->e()Lo/PooledStringWriter;

    move-result-object v1

    invoke-virtual {v1}, Lo/PooledStringWriter;->b()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->topMargin:I

    .line 44
    invoke-virtual {p0}, Lo/KO;->e()Lo/PooledStringWriter;

    move-result-object v1

    invoke-virtual {v1}, Lo/PooledStringWriter;->b()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->rightMargin:I

    .line 45
    invoke-virtual {p0}, Lo/KO;->e()Lo/PooledStringWriter;

    move-result-object v1

    invoke-virtual {v1}, Lo/PooledStringWriter;->b()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->bottomMargin:I

    if-nez p2, :cond_0

    .line 47
    new-instance p2, Lo/RemoteViewsAdapter;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v1, "parent.context"

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lo/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    .line 48
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->tK:I

    invoke-virtual {p2, v1}, Lo/RemoteViewsAdapter;->setId(I)V

    .line 49
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, v0}, Lo/RemoteViewsAdapter;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    new-instance v0, Lo/KO$Application;

    invoke-direct {v0, p1, p2, p0}, Lo/KO$Application;-><init>(Landroid/view/ViewGroup;Lo/RemoteViewsAdapter;Lo/KO;)V

    check-cast v0, Lo/KL$StateListAnimator;

    goto :goto_0

    .line 52
    :cond_0
    move-object p2, p0

    check-cast p2, Lo/PatternMatcher;

    invoke-virtual {p0, p1, p2, v0}, Lo/KO;->a(Landroid/view/ViewGroup;Lo/PatternMatcher;Landroidx/recyclerview/widget/RecyclerView$Dialog;)Lo/KL$Activity;

    move-result-object p1

    const-string p2, "createLoadingViewHolder(parent, this, lp)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lo/KL$StateListAnimator;

    :goto_0
    return-object v0
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lo/KO;->b(Landroid/view/ViewGroup;I)Lo/KL$StateListAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p1
.end method
