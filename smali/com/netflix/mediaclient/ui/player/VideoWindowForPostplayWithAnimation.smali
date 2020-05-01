.class public Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;
.super Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;
.source "VideoWindowForPostplayWithAnimation.java"


# static fields
.field protected static final ANIMATION_DURATION:I = 0x1f4


# instance fields
.field private final END_MARGIN_LEFT_DP:I

.field private final END_MARGIN_TOP_DP:I

.field private final END_WIDTH_DP:I

.field private mAnimator:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 2

    const/16 v0, 0xc

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->END_MARGIN_TOP_DP:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->END_MARGIN_LEFT_DP:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->END_WIDTH_DP:I

    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PostPlayWithAnimation"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->init()V

    return-void
.end method

.method private init()V
    .locals 8

    const/16 v3, 0xc

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v6

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v5

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v3, 0x12c

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v7, v1, v0

    new-instance v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    const/16 v1, 0x1f4

    const/high16 v4, 0x3f800000    # 1.0f

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;-><init>(IIIFIIF)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    return-void
.end method


# virtual methods
.method public animateIn()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->removeCenterInParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->mSurface2:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->removeCenterInParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    const v1, 0x7f0201c7

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setPadding(IIII)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->getCurrentSurfaceState()Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->mOriginalSurfaceState:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->getTransitionToPostPlayAnimationParameters()Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3, v3}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;-><init>(Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;Ljava/lang/Runnable;Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$1;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->mAnimator:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->mAnimator:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected getTransitionToPostPlayAnimationParameters()Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    return-object v0
.end method
