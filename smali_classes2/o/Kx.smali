.class public final Lo/Kx;
.super Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;
.source ""


# instance fields
.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/Kx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/Kx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 25
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 26
    sget p3, Lo/IHwInterface$ActionBar;->s:I

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Kx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final e()Landroid/view/View;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/Kx;->e:Landroid/view/View;

    return-object v0
.end method

.method public final setHeaderView(Landroid/view/View;)V
    .locals 3

    .line 32
    iget-object v0, p0, Lo/Kx;->e:Landroid/view/View;

    .line 33
    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 34
    invoke-virtual {p0}, Lo/Kx;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->c(Landroid/view/View;)Z

    .line 37
    invoke-virtual {p0}, Lo/Kx;->c()Lo/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ParcelFileDescriptor;->e(I)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_4

    .line 39
    iget-object v2, p0, Lo/Kx;->e:Landroid/view/View;

    if-nez v2, :cond_2

    .line 40
    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->a(Landroid/view/View;)V

    .line 41
    invoke-virtual {p0}, Lo/Kx;->c()Lo/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 60
    invoke-static {p1}, Lo/FilterWriter;->y(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lo/ParcelFileDescriptor;->e(I)V

    goto :goto_0

    .line 64
    :cond_1
    new-instance v2, Lo/Kx$Application;

    invoke-direct {v2, v1, p0, p1, v0}, Lo/Kx$Application;-><init>(Lo/ParcelFileDescriptor;Lo/Kx;Landroid/view/View;Landroid/view/View;)V

    check-cast v2, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 45
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lo/ParcelFileDescriptor;->e(I)V

    .line 46
    invoke-virtual {p0}, Lo/Kx;->invalidate()V

    goto :goto_1

    .line 49
    :cond_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Only one header view allowed !"

    .line 50
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 34
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.lolomo.LolomoRecyclerViewAdapter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_4
    :goto_1
    iput-object p1, p0, Lo/Kx;->e:Landroid/view/View;

    return-void
.end method
