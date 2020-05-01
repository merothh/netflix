.class public Lo/ZG;
.super Landroid/widget/BaseAdapter;
.source ""


# instance fields
.field private final a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Bx;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/app/Activity;

.field private final d:Z

.field private final e:Landroid/widget/GridView;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/GridView;Z)V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ZG;->b:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lo/ZG;->c:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Lo/ZG;->e:Landroid/widget/GridView;

    .line 44
    iput-boolean p3, p0, Lo/ZG;->d:Z

    .line 46
    const-class p3, Lo/v;

    invoke-static {p3}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/v;

    invoke-interface {p3, p1}, Lo/v;->a(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lo/ZG;->a:I

    .line 47
    iget p1, p0, Lo/ZG;->a:I

    invoke-virtual {p2, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 49
    invoke-virtual {p2}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lo/ZG$3;

    invoke-direct {p2, p0}, Lo/ZG$3;-><init>(Lo/ZG;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic a(Lo/ZG;)I
    .locals 0

    .line 26
    iget p0, p0, Lo/ZG;->a:I

    return p0
.end method

.method static synthetic b(Lo/ZG;I)I
    .locals 0

    .line 26
    iput p1, p0, Lo/ZG;->i:I

    return p1
.end method

.method static synthetic c(Lo/ZG;)Landroid/widget/GridView;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/ZG;->e:Landroid/widget/GridView;

    return-object p0
.end method

.method private d(I)I
    .locals 1

    .line 110
    iget v0, p0, Lo/ZG;->a:I

    div-int/2addr p1, v0

    mul-int p1, p1, v0

    return p1
.end method

.method static synthetic d(Lo/ZG;)I
    .locals 0

    .line 26
    iget p0, p0, Lo/ZG;->i:I

    return p0
.end method


# virtual methods
.method public c(I)Lo/AR;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/ZG;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AR;

    return-object p1
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Bx;",
            ">;)V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lo/ZG;->b:Ljava/util/List;

    .line 106
    invoke-virtual {p0}, Lo/ZG;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 66
    iget-boolean v0, p0, Lo/ZG;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ZG;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lo/ZG;->d(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ZG;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/ZG;->c(I)Lo/AR;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 83
    new-instance p2, Lo/ResourceCursorTreeAdapter;

    iget-object v0, p0, Lo/ZG;->c:Landroid/app/Activity;

    invoke-direct {p2, v0}, Lo/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lo/ZG;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->Q:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 86
    invoke-virtual {p2, v0, v0, v0, v0}, Lo/ResourceCursorTreeAdapter;->setPadding(IIII)V

    .line 88
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lo/ZG;->i:I

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 89
    invoke-virtual {p2, v0}, Lo/ResourceCursorTreeAdapter;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-virtual {p2, p3}, Lo/ResourceCursorTreeAdapter;->setAdjustViewBounds(Z)V

    .line 91
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Lo/ResourceCursorTreeAdapter;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 96
    :cond_0
    move-object v0, p2

    check-cast v0, Lo/ResourceCursorTreeAdapter;

    .line 97
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->g()Z

    move-result v1

    xor-int/2addr v1, p3

    invoke-virtual {v0, v1}, Lo/ResourceCursorTreeAdapter;->setIsHorizontal(Z)V

    .line 99
    new-instance v1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object v2, Lcom/netflix/cl/model/AppView;->searchResults:Lcom/netflix/cl/model/AppView;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    .line 100
    invoke-virtual {p0, p1}, Lo/ZG;->c(I)Lo/AR;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p1, p3}, Lo/ResourceCursorTreeAdapter;->a(Lo/AR;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V

    return-object p2
.end method
