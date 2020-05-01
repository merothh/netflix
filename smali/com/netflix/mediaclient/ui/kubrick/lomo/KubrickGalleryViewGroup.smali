.class public Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;
.super Landroid/support/v7/widget/RecyclerView;
.source "KubrickGalleryViewGroup.java"


# static fields
.field static final NUM_REMOVED_VIDEOS:I = 0x3

.field static final NUM_ROWS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KubrickGalleryViewGroup"


# instance fields
.field private final adapter:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;

.field private page:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 42
    const v0, 0x7f0f0020

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;->setId(I)V

    .line 43
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$1;

    const/4 v3, 0x2

    move-object v1, p0

    move-object v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$1;-><init>(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;Landroid/content/Context;IIZ)V

    .line 54
    new-instance v1, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$2;-><init>(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 63
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;-><init>(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;->adapter:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;->adapter:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;->STANDARD:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    invoke-static {v0, p0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->applyContentOverlapPadding(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;)V

    .line 68
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setPaddingBottom(Landroid/view/View;I)V

    .line 71
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;->page:I

    return v0
.end method


# virtual methods
.method public updateDataThenViews(Ljava/util/List;IIILcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;",
            ">;III",
            "Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string/jumbo v0, "KubrickGalleryViewGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting data, first: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/DataUtil;->getFirstItemSafely(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", num per page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", listViewPos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    iput p3, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;->page:I

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;->adapter:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->updateData(Ljava/util/List;IILcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V

    .line 81
    return-void
.end method
