.class public Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;
.super Landroid/support/v7/widget/RecyclerView;
.source "KubrickCwGalleryViewGroup.java"


# static fields
.field static final NUM_REMOVED_VIDEOS:I = 0x3

.field static final NUM_ROWS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KubrickCwGalleryViewGroup"


# instance fields
.field private final adapter:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;

.field private page:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0020

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;->setId(I)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$1;

    const/4 v3, 0x2

    move-object v1, p0

    move-object v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$1;-><init>(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;Landroid/content/Context;IIZ)V

    new-instance v1, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$2;-><init>(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;-><init>(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;->adapter:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;->adapter:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/BarkerUtils;->getCwGalleryWidthType(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->applyContentOverlapPadding(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;->page:I

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
            "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
            ">;III",
            "Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KubrickCwGalleryViewGroup"

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

    :cond_0
    iput p3, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;->page:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;->adapter:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->updateData(Ljava/util/List;IILcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V

    return-void
.end method
