.class Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$2;
.super Ljava/lang/Object;
.source "GalleryGenresLoMoFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getImageWidth()I
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    .line 152
    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 153
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->access$000(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 155
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v1

    sub-float v0, v2, v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->access$000(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public createItemView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 138
    new-instance v1, Lcom/netflix/mediaclient/android/widget/VideoView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 140
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/VideoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 141
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setAdjustViewBounds(Z)V

    .line 143
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$2;->getImageWidth()I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 144
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->useLolomoBoxArt()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setIsHorizontal(Z)V

    .line 146
    return-object v1

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
