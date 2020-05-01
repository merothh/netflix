.class Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$4;
.super Ljava/lang/Object;
.source "MovieDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# instance fields
.field private height:I

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

.field private width:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$4;->calculateViewDimensions()V

    return-void
.end method

.method private calculateViewDimensions()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/mdx/MementoMovieDetailsActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget v1, v1, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->numColumns:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$4;->width:I

    iget v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$4;->width:I

    int-to-float v0, v0

    const v1, 0x3fb70a3d    # 1.43f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$4;->height:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget v1, v1, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->numColumns:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0122

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public createItemView()Landroid/view/View;
    .locals 4

    new-instance v0, Lcom/netflix/mediaclient/android/widget/VideoView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setAdjustViewBounds(Z)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$4;->width:I

    iget v3, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$4;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method
