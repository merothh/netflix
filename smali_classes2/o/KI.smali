.class public abstract Lo/KI;
.super Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/KI$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/ViewStub;

.field private final g:Lo/KI$TaskDescription;


# direct methods
.method constructor <init>(Landroid/view/View;Lo/PooledStringWriter;ILo/KI$TaskDescription;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$TaskDescription;-><init>(Landroid/view/View;Lo/PooledStringWriter;I)V

    .line 46
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->gF:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    iput-object p2, p0, Lo/KI;->d:Landroid/view/ViewStub;

    .line 47
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/KI;->c:Landroid/view/View;

    .line 48
    iput-object p4, p0, Lo/KI;->g:Lo/KI$TaskDescription;

    .line 49
    iget-object p1, p0, Lo/KI;->b:Lo/ParcelableParcel;

    invoke-static {}, Lo/Yh;->a()Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/ParcelableParcel;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    .line 53
    invoke-static {}, Lo/ady;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lo/KI;->b:Lo/ParcelableParcel;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/ParcelableParcel;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$FragmentManager;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lo/KI;)Lo/KI$TaskDescription;
    .locals 0

    .line 32
    iget-object p0, p0, Lo/KI;->g:Lo/KI$TaskDescription;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V
    .locals 6

    .line 61
    iget-object v0, p0, Lo/KI;->b:Lo/ParcelableParcel;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Lolomo.Lomo[%s]"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ParcelableParcel;->setTrackingName(Ljava/lang/String;)V

    .line 62
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/KI;->e(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-virtual {p0, p1}, Lo/KI;->a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 109
    iget-object v0, p0, Lo/KI;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/KI;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lo/KI;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 75
    iget-object v0, p0, Lo/KI;->d:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    .line 76
    iget-object v1, p0, Lo/KI;->a:Landroid/view/View;

    if-nez v1, :cond_1

    .line 78
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/KI;->a:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lo/KI;->a:Landroid/view/View;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->qv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    .line 80
    iget-object v1, p0, Lo/KI;->a:Landroid/view/View;

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->ta:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 82
    new-instance v2, Lo/KI$4;

    invoke-direct {v2, p0}, Lo/KI$4;-><init>(Lo/KI;)V

    invoke-virtual {v0, v2}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->f:I

    invoke-virtual {v0, v2}, Lo/HorizontalScrollView;->b(I)V

    .line 94
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->r:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "row error ui should have a retry button"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 101
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/KI;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lo/KI;->c:Landroid/view/View;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lo/KI;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public e(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p0}, Lo/KI;->e()V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lo/KI;->d()V

    :goto_0
    return-void
.end method
