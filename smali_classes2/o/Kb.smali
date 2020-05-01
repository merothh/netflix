.class public final Lo/Kb;
.super Lo/ParcelableParcel;
.source ""


# instance fields
.field private d:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lo/ParcelableParcel;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {p0, v0}, Lo/Kb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->v:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 51
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 43
    iget-object p1, p0, Lo/Kb;->d:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    if-nez p1, :cond_0

    const-string v0, "baseListAdapter"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    instance-of v0, p1, Lo/KL;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    check-cast p1, Lo/KL;

    if-eqz p1, :cond_2

    move-object v0, p0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lo/KL;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 2

    .line 38
    iget-object v0, p0, Lo/Kb;->d:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    if-nez v0, :cond_0

    const-string v1, "baseListAdapter"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Activity;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lo/Kb;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;Z)V

    return-void
.end method

.method public final setBaseListAdapter(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "baseListAdapter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lo/Kb;->d:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    return-void
.end method
