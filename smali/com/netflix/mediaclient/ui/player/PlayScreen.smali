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

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mZoomEnabled:Z

    .line 187
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Argument can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 192
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->listeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    .line 194
    new-instance v0, Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/TopPanel;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    .line 195
    new-instance v0, Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/BottomPanel;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    .line 197
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 198
    const v0, 0x7f0f028c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    iget-object v2, p2, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->tapListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->addTapListener(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;)V

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mHolder:Landroid/view/SurfaceHolder;

    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    iget-object v2, p2, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setSurfaceMeasureListener(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;)V

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p2, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->surfaceListener:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 209
    :cond_3
    const v0, 0x7f0f017f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mFlipper:Landroid/widget/ViewFlipper;

    .line 210
    const v0, 0x7f0f017e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBackground:Landroid/widget/RelativeLayout;

    .line 211
    const v0, 0x7f0f028f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mWatermarkDisplayArea:Landroid/widget/RelativeLayout;

    .line 221
    const v0, 0x7f0f02a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBufferingOverlay:Landroid/view/View;

    .line 222
    const v0, 0x7f0f0290

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mLoadingOverlay:Landroid/view/View;

    .line 224
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0f029f

    .line 225
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBif:Landroid/widget/ImageView;

    .line 227
    const v0, 0x7f0f029e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTabletBifsLayout:Landroid/view/View;

    .line 228
    const v0, 0x7f0f0297

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mQuickActions:Landroid/view/View;

    .line 229
    invoke-static {p1, p3}, Lcom/netflix/mediaclient/ui/player/PostPlayFactory;->create(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    .line 231
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    .line 232
    return-void

    .line 224
    :cond_4
    const v0, 0x7f0f028e

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/player/PlayScreen;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mIsAdvisoryDisabled:Z

    return p1
.end method

.method static createInstance(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)Lcom/netflix/mediaclient/ui/player/PlayScreen;
    .locals 4

    .prologue
    .line 1125
    const/4 v0, 0x0

    .line 1126
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    .line 1127
    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    .line 1128
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "PlayScreen for JB (Android 4.1+"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayScreenJB;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenJB;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V

    .line 1144
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1145
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "PlayScreen for Froyo/Gingerbread (Android 2.2-2.3) - default"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V

    .line 1149
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;-><init>(Lcom/netflix/mediaclient/ui/player/PlayScreen;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setDecorator(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V

    .line 1152
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1153
    new-instance v1, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    new-instance v2, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getDecorator()Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;-><init>(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;-><init>(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setDecorator(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V

    .line 1156
    :cond_2
    return-object v0

    .line 1130
    :cond_3
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v3, "Amazon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "KFOT"

    .line 1131
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

    .line 1132
    :cond_4
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "PlayScreen for Amazon Kindle HD"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleHD;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleHD;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V

    goto :goto_0

    .line 1134
    :cond_5
    const/16 v2, 0xe

    if-lt v1, v2, :cond_6

    .line 1135
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "PlayScreen for ICS (Android 4+"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayScreenICS;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenICS;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V

    goto/16 :goto_0

    .line 1137
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

    .line 1139
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "PlayScreen for Amazon Kindle Fire"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleFire;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleFire;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V

    goto/16 :goto_0
.end method

.method public static isBrowseValid(Lcom/netflix/mediaclient/android/fragment/NetflixFrag;)Z
    .locals 1

    .prologue
    .line 497
    if-eqz p0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 497
    :goto_0
    return v0

    .line 499
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCoppolaPortrait()Z
    .locals 1

    .prologue
    .line 680
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

    .prologue
    .line 1242
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
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

    .line 1246
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mZoomEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->canVideoBeZoomed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1247
    const/4 v0, 0x1

    .line 1249
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToInterrupted()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeVisibleDialog()V

    .line 337
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isDialogFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDialogFrag()V

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->clearPanel()V

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    .line 342
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->showNavigationBar()V

    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->setSubtitleVisibility(Z)V

    .line 344
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Interrupted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method private moveToLoaded()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 450
    const-string/jumbo v0, "screen"

    const-string/jumbo v2, "STATE_LOADED"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isStalled()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 453
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->enableButtons(Z)V

    .line 455
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e00ed

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 456
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBackground:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 457
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBackground:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 459
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    if-eqz v2, :cond_1

    .line 460
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setBackgroundColor(I)V

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPlaybackControlOverlayId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playbackControls:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPlaybackControlOverlayId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionEnded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPlaybackControlOverlayId:Ljava/lang/String;

    .line 468
    :cond_2
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->playerOverlayVisibility(Z)V

    .line 469
    return-void

    :cond_3
    move v0, v1

    .line 452
    goto :goto_0
.end method

.method private moveToLoadedTapped()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 473
    const-string/jumbo v0, "screen"

    const-string/jumbo v2, "STATE_LOADED_TAPPED"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isStalled()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 476
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->enableButtons(Z)V

    .line 478
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e00ed

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 479
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBackground:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 480
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBackground:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 482
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    if-eqz v2, :cond_1

    .line 483
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setBackgroundColor(I)V

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playbackControls:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionStart(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPlaybackControlOverlayId:Ljava/lang/String;

    .line 487
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->playerOverlayVisibility(Z)V

    .line 488
    return-void

    .line 475
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToLoading()V
    .locals 2

    .prologue
    .line 360
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "STATE_LOADING, default"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void
.end method

.method static resolveContentView(Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)I
    .locals 2

    .prologue
    .line 1314
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->EpisodesForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->SignupForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    if-ne p0, v0, :cond_1

    .line 1316
    :cond_0
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "playout_phone_episode"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const v0, 0x7f0300c8

    .line 1331
    :goto_0
    return v0

    .line 1319
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->EpisodesForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->SignupForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    if-ne p0, v0, :cond_3

    .line 1321
    :cond_2
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "playout_tablet_episode"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    const v0, 0x7f0300cc

    goto :goto_0

    .line 1325
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->RecommendationForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    if-ne p0, v0, :cond_4

    .line 1326
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "playout_tablet_movie"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    const v0, 0x7f0300cd

    goto :goto_0

    .line 1330
    :cond_4
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "playout_phone_movie"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    const v0, 0x7f0300c9

    goto :goto_0
.end method

.method private setToolbarVisibility(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 433
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 434
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    .line 435
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 436
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 439
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

    .line 440
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    const/4 v0, 0x1

    .line 441
    :cond_2
    if-eq v0, p1, :cond_3

    .line 442
    invoke-static {v1, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 446
    :cond_3
    return-void
.end method


# virtual methods
.method addWatermark(Lcom/netflix/mediaclient/media/Watermark;)V
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 1351
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mWatermarkDisplayArea:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Watermark;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1352
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
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

    .line 1356
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;-><init>(Landroid/content/Context;)V

    .line 1357
    const/16 v0, 0x77

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setGravity(I)V

    .line 1359
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    .line 1360
    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setPadding(IIII)V

    .line 1361
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

    .line 1362
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1365
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1366
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a01f4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 1371
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/media/Watermark;->getStyle(Landroid/content/Context;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->applyStyle(Landroid/widget/TextView;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;F)V

    .line 1373
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1375
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1376
    sget-object v2, Lcom/netflix/mediaclient/media/Watermark$Anchor;->top_center:Lcom/netflix/mediaclient/media/Watermark$Anchor;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Watermark;->getAnchor()Lcom/netflix/mediaclient/media/Watermark$Anchor;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 1377
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1381
    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mWatermarkDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1383
    :cond_1
    return-void

    .line 1368
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a01f2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    .line 1379
    :cond_3
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1
.end method

.method public declared-synchronized canExitPlaybackEndOfPlay()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 925
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v3, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v2, v3, :cond_0

    .line 926
    const-string/jumbo v1, "screen"

    const-string/jumbo v2, "We are in post play state, do not exit player activity"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->endOfPlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    :goto_0
    monitor-exit p0

    return v0

    .line 930
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PostPlay;->wasPostPlayDismissed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 931
    const-string/jumbo v1, "screen"

    const-string/jumbo v2, "Postplay was dismissed, force postplay"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    .line 933
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->endOfPlay()V

    .line 934
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/player/PostPlay;->setBackgroundImageVisible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 925
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 939
    :cond_1
    :try_start_2
    const-string/jumbo v0, "screen"

    const-string/jumbo v2, "Not in postplay, exit activity"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 940
    goto :goto_0
.end method

.method public changeActionState(Z)V
    .locals 1

    .prologue
    .line 959
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->changeActionState(ZZ)V

    .line 960
    return-void
.end method

.method public changeActionState(ZZ)V
    .locals 2

    .prologue
    .line 970
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 971
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "changeActionState() was called when activity is already not in valid state - skipping..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    if-eqz v0, :cond_2

    .line 976
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->changeActionState(Z)V

    .line 979
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->changeActionState(ZZ)V

    goto :goto_0
.end method

.method clearPanel()V
    .locals 2

    .prologue
    .line 810
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    .line 811
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_0

    .line 816
    :goto_0
    return-void

    .line 814
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Playing:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    goto :goto_0
.end method

.method createAdvisories()V
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    .line 237
    if-nez v0, :cond_1

    .line 238
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "PlayerFragment getCurrentAsset() is null. Advisory notice is disabled."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mIsAdvisoryDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isBrowseValid(Lcom/netflix/mediaclient/android/fragment/NetflixFrag;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
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

    .prologue
    .line 760
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->listeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->listeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->tapListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->removeTapListener(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;)Z

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->listeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->surfaceListener:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    if-eqz v0, :cond_2

    .line 770
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->destroy()V

    .line 773
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    if-eqz v0, :cond_3

    .line 774
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->destroy()V

    .line 777
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    if-eqz v0, :cond_4

    .line 778
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->destroy()V

    .line 781
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_5

    .line 782
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    :cond_5
    monitor-exit p0

    return-void

    .line 760
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableButtons(Z)V
    .locals 1

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isCoppolaPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->enableButtons(Z)V

    .line 609
    :cond_0
    return-void
.end method

.method public finishDragging()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 627
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setTopPanelVisibility(Z)V

    .line 629
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setDraggingState(Z)V

    .line 633
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isCoppolaPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setToolbarVisibility(Z)V

    .line 638
    :goto_0
    return-void

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->finishDragging()V

    goto :goto_0
.end method

.method public getController()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTimelineProgress()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->currentTimelineProgress:I

    return v0
.end method

.method public getDecorator()Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    return-object v0
.end method

.method getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getListeners()Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->listeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    return-object v0
.end method

.method getPlayerFragment()Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    return-object v0
.end method

.method getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    return-object v0
.end method

.method public getState()Lcom/netflix/mediaclient/ui/player/PlayerUiState;
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    return-object v0
.end method

.method public final getSurfaceView()Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    return-object v0
.end method

.method public getTimeStringForMs()Ljava/lang/String;
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getFormatter()Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    move-result-object v0

    .line 650
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getCurrentProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/TimeFormatterHelper;->getStringForMs(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeXAndUpdateHandler(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getTimeXAndUpdateHandler(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    return-object v0
.end method

.method hideAdvisories()V
    .locals 0

    .prologue
    .line 289
    invoke-static {}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->dismissAll()V

    .line 290
    return-void
.end method

.method hideNavigationBar()V
    .locals 2

    .prologue
    .line 1285
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "hide nav noop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    return-void
.end method

.method protected hideQuickActions()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mQuickActions:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mQuickActions:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 494
    :cond_0
    return-void
.end method

.method public hideTopBottomPanel()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->hide()V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->hide()V

    .line 430
    :cond_1
    return-void
.end method

.method declared-synchronized inInterruptedOrPendingInterrupted()Z
    .locals 2

    .prologue
    .line 1303
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

    .prologue
    .line 1296
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1297
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

    .line 1299
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

    .line 1296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method initProgress(I)V
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->initProgress(I)V

    .line 673
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setTimelineMaxProgress(I)V

    .line 676
    :cond_0
    return-void
.end method

.method isAdvisoryDisabled()Z
    .locals 1

    .prologue
    .line 1341
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mIsAdvisoryDisabled:Z

    return v0
.end method

.method public moveToPostPlay()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeVisibleDialog()V

    .line 349
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isDialogFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDialogFrag()V

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->clearPanel()V

    .line 353
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "POST_PLAY"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    .line 355
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->showNavigationBar()V

    .line 356
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->transitionToPostPlay()V

    .line 357
    return-void
.end method

.method declared-synchronized moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V
    .locals 3

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    :cond_0
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "moveToState() mController is already in finishing state, do nothing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 301
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, p1, :cond_3

    .line 302
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
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

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 308
    :cond_3
    :try_start_2
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPendingState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    .line 309
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne p1, v0, :cond_4

    .line 310
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToLoading()V

    .line 323
    :goto_1
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPendingState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    .line 326
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
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

    .line 311
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Playing:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne p1, v0, :cond_5

    .line 312
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToLoaded()V

    goto :goto_1

    .line 313
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PlayingWithTrickPlayOverlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne p1, v0, :cond_6

    .line 314
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToLoadedTapped()V

    goto :goto_1

    .line 315
    :cond_6
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne p1, v0, :cond_7

    .line 316
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToPostPlay()V

    goto :goto_1

    .line 317
    :cond_7
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Interrupter:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne p1, v0, :cond_8

    .line 318
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToInterrupted()V

    goto :goto_1

    .line 320
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

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onAssetUpdated(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    .line 1185
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    if-eqz v0, :cond_1

    .line 1203
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1205
    :cond_1
    return-void
.end method

.method public onLanguageUpdated(Lcom/netflix/mediaclient/media/Language;)V
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onLanguageUpdated(Lcom/netflix/mediaclient/media/Language;)V

    .line 1191
    :cond_0
    return-void
.end method

.method onPause()V
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onPause()V

    .line 743
    :cond_0
    return-void
.end method

.method onResume()V
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onResume()V

    .line 753
    :cond_0
    return-void
.end method

.method onStart()V
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onStart()V

    .line 722
    :cond_0
    return-void
.end method

.method onStop()V
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onStop()V

    .line 733
    :cond_0
    return-void
.end method

.method onTap(Z)V
    .locals 3

    .prologue
    .line 509
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
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

    .line 513
    :cond_0
    if-nez p1, :cond_3

    .line 514
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Hack to make player overlay visible on ICS+ devices. It is only called when event is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    if-eqz v0, :cond_2

    .line 516
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Navigation bar visibility was already triggered. Ignore."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_1
    :goto_0
    return-void

    .line 519
    :cond_2
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Navigation bar is now visible. Make player overlay visible."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    .line 527
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_4

    .line 528
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Loading, noop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 523
    :cond_3
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Event is received. We are either not on ICS+ phone or this is tap to hide overlay."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    goto :goto_1

    .line 529
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Playing:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_5

    .line 530
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Move to PlayingWithTrickPlayOverlay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PlayingWithTrickPlayOverlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    goto :goto_0

    .line 532
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PlayingWithTrickPlayOverlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_6

    .line 533
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Move to Playing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Playing:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    goto :goto_0

    .line 535
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_8

    .line 536
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->wasPostPlayDismissed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 537
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "PostPlay was dismissed before, stay in it!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isAutoPlayEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->transitionFromPostPlay()V

    goto :goto_0

    .line 542
    :cond_7
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Move to PlayingWithTrickPlayOverlay from post play"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Playing:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    .line 544
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->transitionFromPostPlay()V

    .line 545
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->hideNavigationBar()V

    goto/16 :goto_0

    .line 549
    :cond_8
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "This should not be possible, ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V
    .locals 3

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->StreamingPlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne p2, v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 1179
    :goto_0
    return-void

    .line 1177
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

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isCoppolaPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playExtraHandlerAnimation(ILjava/lang/Runnable;)V

    .line 646
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playExtraHandlerAnimation(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected playerOverlayVisibility(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 375
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getController()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 376
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_9

    :cond_0
    const/4 v0, 0x1

    .line 378
    :goto_0
    if-eqz p1, :cond_1

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 380
    :cond_1
    if-eqz v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    if-eqz v0, :cond_3

    .line 385
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->hide()V

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    if-eqz v0, :cond_4

    .line 389
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->hide()V

    .line 407
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v1

    if-nez v1, :cond_6

    .line 410
    :cond_5
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->onPlayerOverlayVisibiltyChange(Z)V

    .line 413
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_7

    .line 414
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playerOverlayVisibility(Z)V

    .line 417
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 418
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setToolbarVisibility(Z)V

    .line 420
    :cond_8
    return-void

    .line 376
    :cond_9
    const/4 v0, 0x0

    goto :goto_0

    .line 393
    :cond_a
    if-eqz v0, :cond_b

    .line 394
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 397
    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    if-eqz v0, :cond_c

    .line 398
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isZoomEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->setZoomEnabled(Z)V

    .line 399
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->show()V

    .line 402
    :cond_c
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    if-eqz v0, :cond_4

    .line 403
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->show()V

    goto :goto_1
.end method

.method removeSplashScreen()V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_2

    .line 690
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "=========================>"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 694
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PlayingWithTrickPlayOverlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    .line 699
    :cond_1
    :goto_0
    return-void

    .line 695
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 697
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Playing:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    goto :goto_0
.end method

.method setBufferingOverlayVisibility(Z)V
    .locals 3

    .prologue
    .line 878
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBufferingOverlay:Landroid/view/View;

    .line 879
    if-nez v0, :cond_0

    .line 880
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "bufferingOverlay is NULL!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :goto_0
    return-void

    .line 887
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 888
    const-string/jumbo v1, "screen"

    const-string/jumbo v2, "Subtitles ARE visible"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_1
    if-eqz p1, :cond_2

    .line 891
    const-string/jumbo v1, "screen"

    const-string/jumbo v2, "Display buffering overlay"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 898
    :cond_2
    const-string/jumbo v1, "screen"

    const-string/jumbo v2, "Remove buffering overlay"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method setDebugData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 830
    return-void
.end method

.method setDebugDataVisibility(Z)V
    .locals 0

    .prologue
    .line 851
    return-void
.end method

.method public setDecorator(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V
    .locals 0

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    .line 1161
    return-void
.end method

.method public setMediaImage(Z)V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->updatePlaybackStatus(Z)V

    .line 590
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getController()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isCoppolaContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->setMediaImage(Z)V

    .line 593
    :cond_1
    return-void
.end method

.method public setPlayPauseVisibility(I)V
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->setPlayPauseVisibility(I)V

    .line 1259
    return-void
.end method

.method setProgress(IIZ)I
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setProgress(IIZZ)I

    move-result v0

    return v0
.end method

.method setProgress(IIZZ)I
    .locals 1

    .prologue
    .line 572
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->currentTimelineProgress:I

    .line 573
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1, p3}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setTimelineProgress(IZ)V

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->setProgress(IIZZ)I

    .line 578
    return p1
.end method

.method public setSeekbarTrackingEnabled(Z)V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->setSeekbarTrackingEnabled(Z)V

    .line 603
    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    .line 1111
    if-eqz v0, :cond_0

    .line 1112
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->setTitle(Ljava/lang/String;)V

    .line 1114
    :cond_0
    return-void
.end method

.method public setTopPanelVisibility(Z)V
    .locals 2

    .prologue
    .line 990
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isCoppolaPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 994
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    if-eqz v0, :cond_0

    .line 995
    if-eqz p1, :cond_3

    .line 996
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PlayingWithTrickPlayOverlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-eq v0, v1, :cond_2

    .line 997
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Player UI is NOT visible. Do not make top panel visible"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1000
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->show()V

    goto :goto_0

    .line 1002
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->hide()V

    goto :goto_0
.end method

.method public setZoom(Z)V
    .locals 2

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    if-eqz v0, :cond_0

    .line 1210
    if-eqz p1, :cond_1

    .line 1211
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setMode(I)V

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1213
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setMode(I)V

    goto :goto_0
.end method

.method public setZoomEnabledByPlayertype(Z)V
    .locals 0

    .prologue
    .line 1237
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mZoomEnabled:Z

    .line 1238
    return-void
.end method

.method public setZoomImage(Z)V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->setZoomImage(Z)V

    .line 599
    :cond_0
    return-void
.end method

.method public setZoomVisibility(I)V
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->setZoomVisibility(I)V

    .line 1266
    return-void
.end method

.method protected shouldPlaybackRelatedOptionBePossible()Z
    .locals 2

    .prologue
    .line 950
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

    .prologue
    .line 285
    invoke-static {}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->showAll()V

    .line 286
    return-void
.end method

.method public showBif(Ljava/nio/ByteBuffer;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1011
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return-void

    .line 1016
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getCurrentTime()Lcom/netflix/mediaclient/ui/player/CurrentTime;

    move-result-object v2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->setBifDownloaded(Z)V

    .line 1018
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBif:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 1019
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1020
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v2, 0x28

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v2

    .line 1022
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTabletBifsLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1023
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTabletBifsLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getTimeXAndUpdateHandler(Landroid/view/View;)I

    move-result v3

    .line 1024
    invoke-virtual {v0, v3, v1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1025
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTabletBifsLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1028
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 1029
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1030
    if-eqz v0, :cond_4

    .line 1031
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBif:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1016
    goto :goto_1

    .line 1033
    :cond_4
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "bitmap is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1036
    :cond_5
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "bif data is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showBottomPanel()V
    .locals 1

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isCoppolaPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->show()V

    .line 665
    :cond_0
    return-void
.end method

.method showNavigationBar()V
    .locals 2

    .prologue
    .line 1292
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "show nav noop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    return-void
.end method

.method showSplashScreen()V
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-eq v0, v1, :cond_0

    .line 707
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "=========================> display spash screen"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 712
    :cond_0
    return-void
.end method

.method public startBif(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1041
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1046
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTabletBifsLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBifAnim:Landroid/view/ViewPropertyAnimator;

    .line 1051
    :goto_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->showBif(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 1049
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBif:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method

.method startCurrentTime(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    .line 1082
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getCurrentTime()Lcom/netflix/mediaclient/ui/player/CurrentTime;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1083
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getCurrentTime()Lcom/netflix/mediaclient/ui/player/CurrentTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->start(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public startDragging()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 612
    invoke-virtual {p0, v2, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->changeActionState(ZZ)V

    .line 613
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setTopPanelVisibility(Z)V

    .line 615
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setDraggingState(Z)V

    .line 619
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isCoppolaPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setToolbarVisibility(Z)V

    .line 624
    :goto_0
    return-void

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->startDragging()V

    goto :goto_0
.end method

.method public startSeamlessMode()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public stopBif()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1055
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1061
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBifAnim:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_2

    .line 1062
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBifAnim:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1063
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBifAnim:Landroid/view/ViewPropertyAnimator;

    .line 1064
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTabletBifsLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1066
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTabletBifsLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 1069
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBif:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method stopCurrentTime(Z)V
    .locals 2

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1101
    :cond_0
    :goto_0
    return-void

    .line 1097
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    .line 1098
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getCurrentTime()Lcom/netflix/mediaclient/ui/player/CurrentTime;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1099
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getCurrentTime()Lcom/netflix/mediaclient/ui/player/CurrentTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->stop(Z)V

    goto :goto_0
.end method
