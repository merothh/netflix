.class public Lcom/netflix/mediaclient/ui/player/PlayScreen;
.super Ljava/lang/Object;
.source "PlayScreen.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/player/Screen;


# static fields
.field static final EANBLE_DEBUG_METADAT:Z = false

.field protected static final TAG:Ljava/lang/String; = "screen"


# instance fields
.field private currentTimelineProgress:I

.field protected listeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

.field protected mBackground:Landroid/widget/RelativeLayout;

.field protected mBif:Landroid/widget/ImageView;

.field private mBifAnim:Landroid/view/ViewPropertyAnimator;

.field protected mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

.field protected mBufferingOverlay:Landroid/view/View;

.field protected mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field protected mDebugData:Landroid/widget/TextView;

.field private mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

.field protected mFlipper:Landroid/widget/ViewFlipper;

.field protected mHolder:Landroid/view/SurfaceHolder;

.field private mIsAdvisoryDisabled:Z

.field protected mLoadingOverlay:Landroid/view/View;

.field protected mNavigationBarSetVisibleInProgress:Z

.field private mPendingState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

.field private mPlaybackControlOverlayId:Ljava/lang/String;

.field private mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

.field private mQuickActions:Landroid/view/View;

.field private mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

.field protected final mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

.field protected mTabletBifsLayout:Landroid/view/View;

.field protected mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

.field protected mWatermarkDisplayArea:Landroid/widget/RelativeLayout;

.field private mZoomEnabled:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mZoomEnabled:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Argument can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->listeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/TopPanel;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/BottomPanel;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f028c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    iget-object v2, p2, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->tapListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->addTapListener(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    iget-object v2, p2, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setSurfaceMeasureListener(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;)V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p2, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->surfaceListener:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_3
    const v0, 0x7f0f017f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mFlipper:Landroid/widget/ViewFlipper;

    const v0, 0x7f0f017e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBackground:Landroid/widget/RelativeLayout;

    const v0, 0x7f0f028f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mWatermarkDisplayArea:Landroid/widget/RelativeLayout;

    const v0, 0x7f0f02a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBufferingOverlay:Landroid/view/View;

    const v0, 0x7f0f0290

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mLoadingOverlay:Landroid/view/View;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0f029f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBif:Landroid/widget/ImageView;

    const v0, 0x7f0f029e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTabletBifsLayout:Landroid/view/View;

    const v0, 0x7f0f0297

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mQuickActions:Landroid/view/View;

    invoke-static {p1, p3}, Lcom/netflix/mediaclient/ui/player/PostPlayFactory;->create(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    return-void

    :cond_4
    const v0, 0x7f0f028e

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/player/PlayScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mIsAdvisoryDisabled:Z

    return p1
.end method

.method static createInstance(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)Lcom/netflix/mediaclient/ui/player/PlayScreen;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "PlayScreen for JB (Android 4.1+"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayScreenJB;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenJB;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "PlayScreen for Froyo/Gingerbread (Android 2.2-2.3) - default"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V

    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;-><init>(Lcom/netflix/mediaclient/ui/player/PlayScreen;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setDecorator(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    new-instance v2, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getDecorator()Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;-><init>(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;-><init>(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setDecorator(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V

    :cond_2
    return-object v0

    :cond_3
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v3, "Amazon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "KFOT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "KFTT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "KFJWA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "KFJWI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "PlayScreen for Amazon Kindle HD"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleHD;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleHD;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V

    goto :goto_0

    :cond_5
    const/16 v2, 0xe

    if-lt v1, v2, :cond_6

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "PlayScreen for ICS (Android 4+"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayScreenICS;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenICS;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V

    goto/16 :goto_0

    :cond_6
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "Kindle Fire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v2, "Amazon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "PlayScreen for Amazon Kindle Fire"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleFire;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleFire;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V

    goto/16 :goto_0
.end method

.method public static isBrowseValid(Lcom/netflix/mediaclient/android/fragment/NetflixFrag;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCoppolaPortrait()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZoomEnabled()Z
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "screen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mZoomEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mZoomEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", surface.canVideoBeZoomed()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->canVideoBeZoomed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mZoomEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->canVideoBeZoomed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToInterrupted()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeVisibleDialog()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isDialogFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDialogFrag()V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->clearPanel()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->showNavigationBar()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->setSubtitleVisibility(Z)V

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Interrupted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private moveToLoaded()V
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v0, "screen"

    const-string/jumbo v2, "STATE_LOADED"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isStalled()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->enableButtons(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e00ed

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBackground:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBackground:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setBackgroundColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPlaybackControlOverlayId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playbackControls:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPlaybackControlOverlayId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionEnded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPlaybackControlOverlayId:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->playerOverlayVisibility(Z)V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private moveToLoadedTapped()V
    .locals 3

    const/4 v1, 0x1

    const-string/jumbo v0, "screen"

    const-string/jumbo v2, "STATE_LOADED_TAPPED"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isStalled()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->enableButtons(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e00ed

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBackground:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBackground:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setBackgroundColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playbackControls:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionStart(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPlaybackControlOverlayId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->playerOverlayVisibility(Z)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToLoading()V
    .locals 2

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "STATE_LOADING, default"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static resolveContentView(Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)I
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->EpisodesForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->SignupForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    if-ne p0, v0, :cond_1

    :cond_0
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "playout_phone_episode"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0300c8

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->EpisodesForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->SignupForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    if-ne p0, v0, :cond_3

    :cond_2
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "playout_tablet_episode"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0300cc

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->RecommendationForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    if-ne p0, v0, :cond_4

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "playout_tablet_movie"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0300cd

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "playout_phone_movie"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0300c9

    goto :goto_0
.end method

.method private setToolbarVisibility(Z)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isCoppolaPortrait()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPlayerFragment()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eq v0, p1, :cond_3

    invoke-static {v1, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    :cond_3
    return-void
.end method


# virtual methods
.method addWatermark(Lcom/netflix/mediaclient/media/Watermark;)V
    .locals 7

    const/4 v6, -0x2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mWatermarkDisplayArea:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Watermark;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "screen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Display watermark "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x77

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setGravity(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f080233

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Watermark;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a01f4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/media/Watermark;->getStyle(Landroid/content/Context;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->applyStyle(Landroid/widget/TextView;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;F)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v2, Lcom/netflix/mediaclient/media/Watermark$Anchor;->top_center:Lcom/netflix/mediaclient/media/Watermark$Anchor;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Watermark;->getAnchor()Lcom/netflix/mediaclient/media/Watermark$Anchor;

    move-result-object v3

    if-ne v2, v3, :cond_3

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mWatermarkDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a01f2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    :cond_3
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1
.end method

.method public declared-synchronized canExitPlaybackEndOfPlay()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v3, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v2, v3, :cond_0

    const-string/jumbo v1, "screen"

    const-string/jumbo v2, "We are in post play state, do not exit player activity"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->endOfPlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PostPlay;->wasPostPlayDismissed()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "screen"

    const-string/jumbo v2, "Postplay was dismissed, force postplay"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->endOfPlay()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/player/PostPlay;->setBackgroundImageVisible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string/jumbo v0, "screen"

    const-string/jumbo v2, "Not in postplay, exit activity"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method public changeActionState(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->changeActionState(ZZ)V

    return-void
.end method

.method public changeActionState(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "changeActionState() was called when activity is already not in valid state - skipping..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->changeActionState(Z)V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->changeActionState(ZZ)V

    goto :goto_0
.end method

.method clearPanel()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Playing:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    goto :goto_0
.end method

.method createAdvisories()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "PlayerFragment getCurrentAsset() is null. Advisory notice is disabled."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mIsAdvisoryDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isBrowseValid(Lcom/netflix/mediaclient/android/fragment/NetflixFrag;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/player/PlayScreen$1;

    invoke-direct {v3, p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen$1;-><init>(Lcom/netflix/mediaclient/ui/player/PlayScreen;Lcom/netflix/mediaclient/servicemgr/Asset;)V

    invoke-interface {v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchAdvisories(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V

    goto :goto_0
.end method

.method declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->listeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->listeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->tapListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->removeTapListener(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;)Z

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->listeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->surfaceListener:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->destroy()V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->destroy()V

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->destroy()V

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableButtons(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isCoppolaPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->enableButtons(Z)V

    :cond_0
    return-void
.end method

.method public finishDragging()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setTopPanelVisibility(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setDraggingState(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isCoppolaPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setToolbarVisibility(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->finishDragging()V

    goto :goto_0
.end method

.method public getController()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTimelineProgress()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->currentTimelineProgress:I

    return v0
.end method

.method public getDecorator()Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    return-object v0
.end method

.method getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getListeners()Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->listeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    return-object v0
.end method

.method getPlayerFragment()Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    return-object v0
.end method

.method getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    return-object v0
.end method

.method public getState()Lcom/netflix/mediaclient/ui/player/PlayerUiState;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    return-object v0
.end method

.method public final getSurfaceView()Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    return-object v0
.end method

.method public getTimeStringForMs()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getFormatter()Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getCurrentProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/TimeFormatterHelper;->getStringForMs(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeXAndUpdateHandler(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getTimeXAndUpdateHandler(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    return-object v0
.end method

.method hideAdvisories()V
    .locals 0

    invoke-static {}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->dismissAll()V

    return-void
.end method

.method hideNavigationBar()V
    .locals 2

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "hide nav noop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected hideQuickActions()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mQuickActions:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mQuickActions:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideTopBottomPanel()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->hide()V

    :cond_1
    return-void
.end method

.method declared-synchronized inInterruptedOrPendingInterrupted()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Interrupter:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPendingState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Interrupter:Lcom/netflix/mediaclient/ui/player/PlayerUiState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized inPostPlayOrPendingPostplay()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "screen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "inPostPlayOrPendingPostplay, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", pending state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPendingState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPendingState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method initProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->initProgress(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setTimelineMaxProgress(I)V

    :cond_0
    return-void
.end method

.method isAdvisoryDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mIsAdvisoryDisabled:Z

    return v0
.end method

.method public moveToPostPlay()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeVisibleDialog()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isDialogFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDialogFrag()V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->clearPanel()V

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "POST_PLAY"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->showNavigationBar()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->transitionToPostPlay()V

    return-void
.end method

.method declared-synchronized moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "moveToState() mController is already in finishing state, do nothing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, p1, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "screen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveToState() Already in this state, do nothing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPendingState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToLoading()V

    :goto_1
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPendingState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "screen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveToState() finished moving to state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Playing:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToLoaded()V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PlayingWithTrickPlayOverlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToLoadedTapped()V

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToPostPlay()V

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Interrupter:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToInterrupted()V

    goto :goto_1

    :cond_8
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Invalid state set, ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onAssetUpdated(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onAssetUpdated(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public onLanguageUpdated(Lcom/netflix/mediaclient/media/Language;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onLanguageUpdated(Lcom/netflix/mediaclient/media/Language;)V

    :cond_0
    return-void
.end method

.method onPause()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onPause()V

    :cond_0
    return-void
.end method

.method onResume()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onResume()V

    :cond_0
    return-void
.end method

.method onStart()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onStart()V

    :cond_0
    return-void
.end method

.method onStop()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onStop()V

    :cond_0
    return-void
.end method

.method onTap(Z)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "screen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PlayScreen tap received. Event driven: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_3

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Hack to make player overlay visible on ICS+ devices. It is only called when event is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Navigation bar visibility was already triggered. Ignore."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Navigation bar is now visible. Make player overlay visible."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_4

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Loading, noop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Event is received. We are either not on ICS+ phone or this is tap to hide overlay."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Playing:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_5

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Move to PlayingWithTrickPlayOverlay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PlayingWithTrickPlayOverlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PlayingWithTrickPlayOverlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_6

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Move to Playing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Playing:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->wasPostPlayDismissed()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "PostPlay was dismissed before, stay in it!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isAutoPlayEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->transitionFromPostPlay()V

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Move to PlayingWithTrickPlayOverlay from post play"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Playing:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->transitionFromPostPlay()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->hideNavigationBar()V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "This should not be possible, ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->StreamingPlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "screen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoDetailsFetched not passing to decorator, playbackType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playExtraHandlerAnimation(ILjava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isCoppolaPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playExtraHandlerAnimation(ILjava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playExtraHandlerAnimation(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected playerOverlayVisibility(Z)V
    .locals 3

    const/16 v2, 0x400

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getController()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_9

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz p1, :cond_1

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->hide()V

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->hide()V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->onPlayerOverlayVisibiltyChange(Z)V

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playerOverlayVisibility(Z)V

    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setToolbarVisibility(Z)V

    :cond_8
    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_0

    :cond_a
    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isZoomEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->setZoomEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->show()V

    :cond_c
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->show()V

    goto :goto_1
.end method

.method removeSplashScreen()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "=========================>"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PlayingWithTrickPlayOverlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Playing:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    goto :goto_0
.end method

.method setBufferingOverlayVisibility(Z)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBufferingOverlay:Landroid/view/View;

    if-nez v0, :cond_0

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "bufferingOverlay is NULL!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "screen"

    const-string/jumbo v2, "Subtitles ARE visible"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v1, "screen"

    const-string/jumbo v2, "Display buffering overlay"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "screen"

    const-string/jumbo v2, "Remove buffering overlay"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method setDebugData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method setDebugDataVisibility(Z)V
    .locals 0

    return-void
.end method

.method public setDecorator(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    return-void
.end method

.method public setMediaImage(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->updatePlaybackStatus(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getController()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isCoppolaContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->setMediaImage(Z)V

    :cond_1
    return-void
.end method

.method public setPlayPauseVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->setPlayPauseVisibility(I)V

    return-void
.end method

.method setProgress(IIZ)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setProgress(IIZZ)I

    move-result v0

    return v0
.end method

.method setProgress(IIZZ)I
    .locals 1

    iput p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->currentTimelineProgress:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1, p3}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setTimelineProgress(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->setProgress(IIZZ)I

    return p1
.end method

.method public setSeekbarTrackingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->setSeekbarTrackingEnabled(Z)V

    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTopPanelVisibility(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isCoppolaPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PlayingWithTrickPlayOverlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-eq v0, v1, :cond_2

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Player UI is NOT visible. Do not make top panel visible"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->show()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->hide()V

    goto :goto_0
.end method

.method public setZoom(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setMode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setMode(I)V

    goto :goto_0
.end method

.method public setZoomEnabledByPlayertype(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mZoomEnabled:Z

    return-void
.end method

.method public setZoomImage(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->setZoomImage(Z)V

    :cond_0
    return-void
.end method

.method public setZoomVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->setZoomVisibility(I)V

    return-void
.end method

.method protected shouldPlaybackRelatedOptionBePossible()Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isStalled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showAdvisories()V
    .locals 0

    invoke-static {}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->showAll()V

    return-void
.end method

.method public showBif(Ljava/nio/ByteBuffer;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getCurrentTime()Lcom/netflix/mediaclient/ui/player/CurrentTime;

    move-result-object v2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->setBifDownloaded(Z)V

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBif:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v2, 0x28

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTabletBifsLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTabletBifsLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getTimeXAndUpdateHandler(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v3, v1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTabletBifsLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBif:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "bitmap is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "bif data is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showBottomPanel()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isCoppolaPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->show()V

    :cond_0
    return-void
.end method

.method showNavigationBar()V
    .locals 2

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "show nav noop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method showSplashScreen()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "=========================> display spash screen"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    :cond_0
    return-void
.end method

.method public startBif(Ljava/nio/ByteBuffer;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTabletBifsLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBifAnim:Landroid/view/ViewPropertyAnimator;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->showBif(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBif:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method

.method startCurrentTime(Ljava/nio/ByteBuffer;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getCurrentTime()Lcom/netflix/mediaclient/ui/player/CurrentTime;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getCurrentTime()Lcom/netflix/mediaclient/ui/player/CurrentTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->start(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public startDragging()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->changeActionState(ZZ)V

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setTopPanelVisibility(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setDraggingState(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isCoppolaPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setToolbarVisibility(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->startDragging()V

    goto :goto_0
.end method

.method public startSeamlessMode()V
    .locals 0

    return-void
.end method

.method public stopBif()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBifAnim:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBifAnim:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBifAnim:Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTabletBifsLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTabletBifsLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBif:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method stopCurrentTime(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getCurrentTime()Lcom/netflix/mediaclient/ui/player/CurrentTime;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getCurrentTime()Lcom/netflix/mediaclient/ui/player/CurrentTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->stop(Z)V

    goto :goto_0
.end method
