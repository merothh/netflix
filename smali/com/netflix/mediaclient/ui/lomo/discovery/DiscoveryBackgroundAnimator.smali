.class public Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;
.super Ljava/lang/Object;
.source "DiscoveryBackgroundAnimator.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$BlurredStoryArtProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "DiscoveryBackgroundAnimator"


# instance fields
.field private final MAX_BG_ALPHA:I

.field private final MAX_BLUR_RADIUS:I

.field private blurredBottomImageView:Landroid/widget/ImageView;

.field private blurredImages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private blurredTopImageView:Landroid/widget/ImageView;

.field private bottomGradient:Landroid/widget/ImageView;

.field private bottomView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field currentOffset:F

.field private currentPage:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;",
            ">;"
        }
    .end annotation
.end field

.field protected final errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

.field private mainHandler:Landroid/os/Handler;

.field private nextPage:I

.field private poolExecutor:Ljava/util/concurrent/ExecutorService;

.field private topView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9b

    iput v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->MAX_BG_ALPHA:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->MAX_BLUR_RADIUS:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->nextPage:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->topView:Landroid/view/View;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->bottomView:Landroid/view/View;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredImages:Landroid/util/SparseArray;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->addBottomGradientIfNeeded()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->currentPage:I

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredBottomImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;ILandroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->setBlurredImage(ILandroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->nextPage:I

    return v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredTopImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredImages:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->updateBackgrounds(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addBottomGradientIfNeeded()V
    .locals 8

    const v3, 0x7f0f0009

    const v2, 0x7f0f0008

    const/16 v7, 0x50

    const/4 v6, 0x0

    const/4 v5, -0x1

    const-string/jumbo v0, "DiscoveryBackgroundAnimator"

    const-string/jumbo v1, "addBottomGradientIfNeeded()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->bottomView:Landroid/view/View;

    const v1, 0x7f0f000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->bottomGradient:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->bottomGradient:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->bottomGradient:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->bottomGradient:Landroid/widget/ImageView;

    const v1, 0x7f0201ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->bottomGradient:Landroid/widget/ImageView;

    const v1, 0x7f0f000a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredTopImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredTopImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setId(I)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredBottomImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredBottomImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->bottomView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->bottomGradient:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0126

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v2, v5, v3, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredTopImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredBottomImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03008a

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_0
    new-instance v0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->bottomView:Landroid/view/View;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    return-void

    :cond_0
    const-string/jumbo v0, "DiscoveryBackgroundAnimator"

    const-string/jumbo v1, "bottomGradient view was found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->bottomView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredTopImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->bottomView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredBottomImageView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private getBackgroundUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;->getVertStoryArtUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "DiscoveryBackgroundAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got vertical story art for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;->getVertStoryArtUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;->getVertStoryArtUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "DiscoveryBackgroundAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NO vertical story art for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hasDataForPage(I)Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBlurredImage(ILandroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredImages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "DiscoveryBackgroundAnimator"

    const-string/jumbo v1, "Fragment was destroyed - skipping setBlurredImage() call"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;Landroid/graphics/Bitmap;ILandroid/widget/ImageView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredImages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v0, "DiscoveryBackgroundAnimator"

    const-string/jumbo v1, "Skipping bitmap set as it was not blurred yet"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->currentPage:I

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->updateBackgrounds(I)V

    const-string/jumbo v1, "DiscoveryBackgroundAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting an updated blur image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " to view: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateBackgrounds(I)V
    .locals 4

    const/high16 v3, 0x431b0000    # 155.0f

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredTopImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredBottomImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "DiscoveryBackgroundAnimator"

    const-string/jumbo v1, "updateBackgrounds() was called but views are not ready yet - skipping"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "DiscoveryBackgroundAnimator"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBackgrounds() pos: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "; offset: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->currentOffset:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "; flag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->currentPage:I

    if-ne v0, p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->currentOffset:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->currentOffset:F

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->currentOffset:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->currentOffset:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateDrawables()V
    .locals 6

    const-string/jumbo v0, "DiscoveryBackgroundAnimator"

    const-string/jumbo v1, "updateDrawables()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->currentPage:I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->hasDataForPage(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->data:Ljava/util/List;

    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->currentPage:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->getBackgroundUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->topView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->topView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    new-instance v5, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$2;

    invoke-direct {v5, p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$2;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)V

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->getImg(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;IILcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)V

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->nextPage:I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->hasDataForPage(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->data:Ljava/util/List;

    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->nextPage:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->getBackgroundUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    new-instance v5, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$3;

    invoke-direct {v5, p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$3;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)V

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->getImg(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;IILcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SPY-8068 - NO data for currentPage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->currentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DiscoveryBackgroundAnimator"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SPY-8068 - NO data for nextPage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->nextPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DiscoveryBackgroundAnimator"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const-string/jumbo v0, "DiscoveryBackgroundAnimator"

    const-string/jumbo v1, "Destroying background thread(s)"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public getBlurredStoryArt()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->blurredBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onPageScrolled(IF)V
    .locals 3

    const-string/jumbo v0, "DiscoveryBackgroundAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageScrolled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->currentPage:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->currentPage:I

    if-nez v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->currentPage:I

    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->nextPage:I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->updateDrawables()V

    :cond_1
    iput p2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->currentOffset:F

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->updateBackgrounds(I)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->data:Ljava/util/List;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->setData(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->updateDrawables()V

    return-void
.end method
