.class public Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;
.super Ljava/lang/Object;
.source "VideoWindowForPostplayWithScaling.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplay;


# static fields
.field protected static TAG:Ljava/lang/String;


# instance fields
.field private final END_MARGIN_LEFT_DP:I

.field private final END_MARGIN_TOP_DP:I

.field private final END_WIDTH_DP:I

.field protected mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field protected mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

.field protected mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

.field protected mParent:Landroid/widget/RelativeLayout;

.field protected mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

.field protected mSurface2:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "nf_postplay"

    sput-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 8

    const/16 v4, 0x12c

    const/4 v1, 0x0

    const/16 v3, 0xc

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->END_MARGIN_TOP_DP:I

    iput v3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->END_MARGIN_LEFT_DP:I

    iput v4, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->END_WIDTH_DP:I

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0f028c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    const v0, 0x7f0f028d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    const v0, 0x7f0f017e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mParent:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "PostPlayWithScaling:: surface not found"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "PostPlayWithScaling:: surface2 not found"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mParent:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "PostPlayWithScaling:: rootFrame not found"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v6

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v5

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v7, v2, v0

    new-instance v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    const/high16 v4, 0x3f800000    # 1.0f

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;-><init>(IIIFIIF)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    return-void
.end method


# virtual methods
.method protected addCenterInParent(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public animateIn()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PostPlayWithScaling:: doTransitionToPostPlay starts"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->getCurrentSurfaceState()Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doTransitionToPostPlay bottom margin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v2, v2, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->bottomMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doTransitionToPostPlay top margin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v2, v2, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->topMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doTransitionToPostPlay left margin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v2, v2, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->leftMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doTransitionToPostPlay right margin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v2, v2, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->rightMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doTransitionToPostPlay new left margin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doTransitionToPostPlay new top margin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->removeCenterInParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->removeCenterInParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getEndScale()F

    move-result v0

    invoke-virtual {p0, v3, v3, v0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->resizeVideo(IIF)V

    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PostPlayWithScaling:: doTransitionToPostPlay ends after request layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .locals 9

    const/16 v8, 0xd

    const/4 v7, -0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "PostPlayWithScaling:: doTransitionFromPostPlay starts"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Previos state unknown"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;-><init>(IIIII)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    :cond_0
    invoke-virtual {v6, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v0, v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->leftMargin:I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v1, v1, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->topMargin:I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v2, v2, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->rightMargin:I

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v3, v3, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->bottomMargin:I

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0, v6}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v1, v1, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->surfaceMode:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setMode(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->postInvalidate()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v1, v1, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->leftMargin:I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v2, v2, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->topMargin:I

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v3, v3, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->rightMargin:I

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v4, v4, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->postInvalidate()V

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PostPlayWithScaling:: doTransitionFromPostPlay ends after request layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public canVideoVindowResize()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getCurrentSurfaceState()Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    iget v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v4, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getMode()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;-><init>(IIIII)V

    return-object v0
.end method

.method protected getTransitionToPostPlayAnimationParameters()Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    return-object v0
.end method

.method protected removeCenterInParent(Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v3, 0xd

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method

.method protected resizeSurfaceView(IIF)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setScale(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->postInvalidate()V

    return-void
.end method

.method protected resizeTextureView(II)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method protected resizeVideo(IIF)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$1;-><init>(Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;IIF)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->VISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->VISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->INVISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->mSurface2:Landroid/view/TextureView;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->INVISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    goto :goto_0
.end method
