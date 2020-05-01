.class public Lcom/netflix/mediaclient/ui/lomo/BillboardView;
.super Landroid/widget/RelativeLayout;
.source "BillboardView.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;",
        ">;"
    }
.end annotation


# static fields
.field public static final MOTION_BB_MAX_LOOPS:I = 0x3

.field public static final MUTE_VOLUME:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "BillboardView"


# instance fields
.field private addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

.field private awardsHeadline:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private cta1Button:Landroid/widget/Button;

.field private cta2Button:Landroid/widget/Button;

.field private dateBadge:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private detailsListener:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

.field private episodeBadge:Landroid/widget/TextView;

.field private impressionParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private info:Landroid/widget/TextView;

.field private infoButton:Landroid/widget/Button;

.field private infoPhone:Landroid/widget/TextView;

.field private infoText:Ljava/lang/String;

.field private infoViewGroup:Landroid/view/View;

.field private infoViewMargin:Landroid/view/View;

.field private infoWrapper:Landroid/view/View;

.field private isTablet:Z

.field private mGUID:Ljava/lang/String;

.field private mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

.field private motionBillboardsEnabled:Z

.field private motionStoryArt:Landroid/view/TextureView;

.field private muteButton:Landroid/widget/TextView;

.field private myListButton:Landroid/widget/Button;

.field private playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field private shadowOverlay:Landroid/view/View;

.field private shadowOverlayGradient:Landroid/view/View;

.field private showArtworkOnly:Z

.field private storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

.field private storyArtFrame:Landroid/widget/FrameLayout;

.field private storyArtUrl:Ljava/lang/String;

.field private synopsis:Landroid/widget/TextView;

.field private synopsisText:Ljava/lang/String;

.field private tvCard:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private tvCardUrl:Ljava/lang/String;

.field private video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 97
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    .line 101
    sget-object v0, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->MISSING_GUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mGUID:Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionBillboardsEnabled:Z

    .line 145
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->init()V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    .line 101
    sget-object v0, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->MISSING_GUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mGUID:Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionBillboardsEnabled:Z

    .line 150
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->init()V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    .line 101
    sget-object v0, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->MISSING_GUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mGUID:Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionBillboardsEnabled:Z

    .line 155
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->init()V

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->hideMotionBB()V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showMotionBB()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateMuteButton()V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->myListButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateMyListState()V

    return-void
.end method

.method private downloadVideo(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 799
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    const-string/jumbo v0, "BillboardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Downloading motion billboard video - url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->motionBillboard:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView$4;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$4;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 821
    return-void
.end method

.method private generateCallsToAction(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 428
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    :cond_0
    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "Manager is null/notReady - can\'t reload data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :goto_0
    return-void

    .line 434
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 436
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 437
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardCTA;

    const-string/jumbo v1, ""

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "play"

    const-string/jumbo v4, ""

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string/jumbo v6, "play"

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v7}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/netflix/model/leafs/originals/BillboardCTA;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v8

    .line 441
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 447
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_4

    .line 448
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/BillboardCTA;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->cta2Button:Landroid/widget/Button;

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setupCTAButton(Lcom/netflix/model/leafs/originals/BillboardCTA;Landroid/widget/Button;)V

    .line 449
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->myListButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 455
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v11, :cond_5

    .line 456
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/BillboardCTA;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->cta1Button:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setupCTAButton(Lcom/netflix/model/leafs/originals/BillboardCTA;Landroid/widget/Button;)V

    goto :goto_0

    .line 439
    :cond_3
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getActions()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 451
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showMyListButton(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 452
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateMyListState()V

    .line 453
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->cta2Button:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 458
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->cta1Button:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private generateDetailsClickListener()Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 506
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    return-object v1
.end method

.method private getInfoText(Lcom/netflix/model/leafs/originals/BillboardSummary;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 404
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getSupplementalMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    .line 405
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isNSREEpisodic(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-nez v0, :cond_0

    .line 408
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080171

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    .line 410
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBadgeKeys()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->episodeBadge:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->toggleEpisodeBadge(Ljava/util/List;Landroid/widget/TextView;)V

    .line 412
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isNSREShow(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v0, :cond_1

    .line 413
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 417
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 424
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    return-object v0

    .line 408
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    goto :goto_0

    .line 419
    :cond_4
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v0, :cond_2

    .line 420
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    goto :goto_1
.end method

.method private hideMotionBB()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 832
    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "Hiding motion BB"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setVisibility(I)V

    .line 834
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionStoryArt:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 835
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->muteButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 836
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->muteButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 837
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setFocusable(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 162
    new-instance v1, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-direct {v1, v0, p0}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->detailsListener:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    .line 163
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 164
    const v4, 0x7f030027

    invoke-virtual {v1, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 166
    const v1, 0x7f0f00c9

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoViewGroup:Landroid/view/View;

    .line 167
    const v1, 0x7f0f00cb

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoViewMargin:Landroid/view/View;

    .line 168
    const v1, 0x7f0f00cf

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    .line 169
    const v1, 0x7f0f00c6

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoPhone:Landroid/widget/TextView;

    .line 170
    const v1, 0x7f0f00cd

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoWrapper:Landroid/view/View;

    .line 171
    const v1, 0x7f0f00ce

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->episodeBadge:Landroid/widget/TextView;

    .line 172
    const v1, 0x7f0f00d0

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->dateBadge:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 173
    const v1, 0x7f0f00ca

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->awardsHeadline:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 174
    const v1, 0x7f0f00d1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    .line 175
    const v1, 0x7f0f00cc

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->tvCard:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 176
    const v1, 0x7f0f00c3

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtFrame:Landroid/widget/FrameLayout;

    .line 177
    const v1, 0x7f0f00c4

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    .line 178
    const v1, 0x7f0f00c5

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionStoryArt:Landroid/view/TextureView;

    .line 179
    const v1, 0x7f0f00d7

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->muteButton:Landroid/widget/TextView;

    .line 181
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isTablet()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    .line 184
    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shouldShowArtworkOnly(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    .line 185
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    const-string/jumbo v1, "BillboardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTablet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", showArtworkOnly: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_1
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v1, :cond_3

    move v1, v2

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtFrame:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setPaddingStart(Landroid/view/View;I)V

    .line 194
    const v0, 0x7f0f00c7

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlay:Landroid/view/View;

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 196
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 198
    const v0, 0x7f0f00c8

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlayGradient:Landroid/view/View;

    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlayGradient:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 200
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 202
    const v0, 0x7f0f00d3

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->cta1Button:Landroid/widget/Button;

    .line 203
    const v0, 0x7f0f00d4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->cta2Button:Landroid/widget/Button;

    .line 204
    const v0, 0x7f0f00d5

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->myListButton:Landroid/widget/Button;

    .line 205
    const v0, 0x7f0f00d6

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoButton:Landroid/widget/Button;

    .line 206
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateViewVisibility()V

    .line 207
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getMotionBBTestCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_TWO:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionBillboardsEnabled:Z

    .line 208
    return-void

    .line 191
    :cond_3
    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    move v1, v0

    goto :goto_0
.end method

.method private isBillboardType(Lcom/netflix/model/leafs/originals/BillboardSummary;Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;)Z
    .locals 2

    .prologue
    .line 140
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBillboardType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBillboardType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNSREEpisodic(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->NSRE_EPISODIC:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isBillboardType(Lcom/netflix/model/leafs/originals/BillboardSummary;Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;)Z

    move-result v0

    return v0
.end method

.method private isNSREShow(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->NSRE_SHOW:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isBillboardType(Lcom/netflix/model/leafs/originals/BillboardSummary;Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;)Z

    move-result v0

    return v0
.end method

.method private setTonedBackground(Lcom/netflix/model/leafs/originals/BillboardBackground;)V
    .locals 8

    .prologue
    const v7, 0x7f0e00e2

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 734
    if-eqz p1, :cond_0

    .line 735
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardBackground;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtUrl:Ljava/lang/String;

    .line 736
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardBackground;->getTone()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 739
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 741
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 742
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 745
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v5, v3, v4, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 746
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 747
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v5, v3, v4, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method private setUpMotionBillboard(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 753
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->isDonePlaying()Z

    move-result v0

    if-nez v0, :cond_3

    .line 754
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    const-string/jumbo v0, "BillboardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Showing motion billboard with action buttons, video url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setVisibility(I)V

    .line 758
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-nez v0, :cond_2

    .line 759
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/MotionBillboardMediaPlayerWrapper;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionStoryArt:Landroid/view/TextureView;

    const/4 v3, 0x3

    const/4 v4, 0x0

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->motionBillboard:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v6, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;

    invoke-direct {v6, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/lomo/MotionBillboardMediaPlayerWrapper;-><init>(Landroid/view/TextureView;ZIFLcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    .line 789
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->downloadVideo(Ljava/lang/String;)V

    .line 796
    :goto_0
    return-void

    .line 791
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showMotionBB()V

    goto :goto_0

    .line 794
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->hideMotionBB()V

    goto :goto_0
.end method

.method private setupCTAButton(Lcom/netflix/model/leafs/originals/BillboardCTA;Landroid/widget/Button;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 525
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getType()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 567
    invoke-virtual {p2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 570
    :goto_1
    return-void

    .line 525
    :sswitch_0
    const-string/jumbo v2, "mdp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "addToPlaylist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v4

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "details"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "play"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 527
    :pswitch_0
    invoke-virtual {p2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 528
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showMDPButton()V

    goto :goto_1

    .line 531
    :pswitch_1
    invoke-virtual {p2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showMyListButton(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    goto :goto_1

    .line 535
    :pswitch_2
    invoke-virtual {p2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 536
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showListEpisodesButton(Lcom/netflix/model/leafs/originals/BillboardCTA;)V

    goto :goto_1

    .line 539
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 540
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getSequenceNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->getTextForCTA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 541
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->ignoreBookmark()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "0"

    move-object v6, v0

    .line 542
    :goto_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 543
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 544
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-virtual {p0, v0, p2, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addPlayableToCTA(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 541
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getBookmarkPosition()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    .line 546
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "trailer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "recap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 547
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getVideoId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;

    invoke-direct {v2, p0, p2, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-interface {v0, v1, v5, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_1

    .line 548
    :cond_4
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "season"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 549
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "continue"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 550
    if-eqz v1, :cond_5

    .line 551
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;

    invoke-direct {v4, p0, p2, v6, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;Z)V

    invoke-interface {v0, v2, v5, v3, v4}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_1

    .line 553
    :cond_5
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getVideoId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    new-instance v5, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;

    invoke-direct {v5, p0, p2, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_1

    .line 555
    :cond_6
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "episode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "show"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 556
    :cond_7
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getVideoId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;

    invoke-direct {v2, p0, p2, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-interface {v0, v1, v5, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_1

    .line 558
    :cond_8
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_9

    .line 559
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getVideoId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;

    invoke-direct {v2, p0, p2, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-interface {v0, v1, v5, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_1

    .line 561
    :cond_9
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getVideoId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;

    invoke-direct {v2, p0, p2, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-interface {v0, v1, v5, v3, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_1

    .line 525
    :sswitch_data_0
    .sparse-switch
        0x1a5b9 -> :sswitch_0
        0x348b34 -> :sswitch_3
        0x5cd8f242 -> :sswitch_2
        0x700608ee -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static shouldShowArtworkOnly(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isTablet()Z

    move-result v1

    .line 215
    :goto_0
    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private showListEpisodesButton(Lcom/netflix/model/leafs/originals/BillboardCTA;)V
    .locals 4

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showMDPButton()V

    .line 521
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getSequenceNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->getTextForCTA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 522
    return-void
.end method

.method private showMDPButton()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->generateDetailsClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    return-void
.end method

.method private showMotionBB()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 824
    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "Showing motion BB"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setVisibility(I)V

    .line 826
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionStoryArt:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 827
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->muteButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 828
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateMuteButton()V

    .line 829
    return-void
.end method

.method private showMyListButton(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 463
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->myListButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 464
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 465
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 466
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->unregisterAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 467
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->myListButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->myListButton:Landroid/widget/Button;

    .line 471
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getTrackId()I

    move-result v5

    move-object v3, p1

    move-object v4, p2

    .line 470
    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    .line 472
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->registerAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 474
    :cond_1
    return-void
.end method

.method private updateAwardsHeadline(Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 719
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getAwardsHeadline()Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;

    move-result-object v0

    .line 720
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 722
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    if-eqz v0, :cond_2

    .line 723
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->awardsHeadline:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 727
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->awardsHeadline:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 731
    :goto_2
    return-void

    .line 719
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 720
    :cond_1
    const-string/jumbo v2, ""

    goto :goto_1

    .line 729
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->awardsHeadline:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateDateBadge(Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 703
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getDateBadge()Lcom/netflix/model/leafs/originals/BillboardDateBadge;

    move-result-object v0

    .line 704
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardDateBadge;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 706
    :goto_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isNSREShow(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 707
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->dateBadge:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 710
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->dateBadge:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v8}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoWrapper:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 716
    :goto_2
    return-void

    .line 703
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 704
    :cond_1
    const-string/jumbo v2, ""

    goto :goto_1

    .line 713
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoWrapper:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateLogoSize(Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 6

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 683
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00f0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 684
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v2

    .line 686
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->isOriginal()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 689
    div-int/lit8 v0, v2, 0x3

    .line 691
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 689
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 693
    int-to-double v2, v0

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 696
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->tvCard:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 697
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 698
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 699
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->tvCard:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    return-void
.end method

.method private updateMuteButton()V
    .locals 3

    .prologue
    .line 840
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    .line 841
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->muteButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0802f4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->muteButton:Landroid/widget/TextView;

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$5;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 852
    :cond_0
    return-void

    .line 841
    :cond_1
    const v0, 0x7f0802f6

    goto :goto_0
.end method

.method private updateMyListState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 477
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 478
    if-eqz v0, :cond_0

    .line 479
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_1

    .line 480
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView$UpdateMyListCallback;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$UpdateMyListCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    invoke-interface {v0, v1, v4, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/netflix/mediaclient/ui/lomo/BillboardView$UpdateMyListCallback;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$UpdateMyListCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method private updateViewVisibility()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 219
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoViewGroup:Landroid/view/View;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlay:Landroid/view/View;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlayGradient:Landroid/view/View;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    return-void

    :cond_0
    move v0, v2

    .line 219
    goto :goto_0

    :cond_1
    move v0, v2

    .line 220
    goto :goto_1

    :cond_2
    move v0, v2

    .line 221
    goto :goto_2

    :cond_3
    move v2, v1

    .line 226
    goto :goto_3
.end method


# virtual methods
.method addPlayableToCTA(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 661
    invoke-virtual {p2}, Landroid/widget/Button;->requestFocus()Z

    .line 662
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;

    invoke-direct {v1, p0, v0, p3, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    return-void
.end method

.method addPlayableToCTA(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 656
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addPlayableToCTA(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Landroid/widget/Button;Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method public getGUID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mGUID:Ljava/lang/String;

    sget-object v1, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->MISSING_GUID:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 676
    invoke-static {}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createGUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mGUID:Ljava/lang/String;

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mGUID:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;Z)Ljava/lang/String;
    .locals 5

    .prologue
    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtUrl:Ljava/lang/String;

    .line 255
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v1, :cond_1

    .line 256
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardLogo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardBackground;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackgroundPortrait()Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    move-result-object v2

    if-nez v2, :cond_2

    .line 258
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    const-string/jumbo v1, "BillboardView"

    const-string/jumbo v2, "Data missing when trying to render billboard image"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_1
    :goto_0
    return-object v0

    .line 262
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 263
    const-string/jumbo v2, "BillboardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Showing artwork only, image url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_3
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackgroundPortrait()Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getImageUrl(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public getTrackId()I
    .locals 3

    .prologue
    .line 488
    const/4 v0, -0x1

    .line 489
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    if-eqz v1, :cond_0

    .line 490
    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "TrackId found in PlayContextImpl"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v0

    .line 495
    :goto_0
    return v0

    .line 493
    :cond_0
    const-string/jumbo v1, "BillboardView"

    const-string/jumbo v2, "TrackId not found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->tvCard:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->clear(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    .line 237
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->clear(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    .line 238
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->detailsListener:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->remove(Landroid/view/View;)V

    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources()V

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->unregisterAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 250
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .prologue
    .line 856
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionBillboardsEnabled:Z

    if-nez v0, :cond_1

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 861
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 865
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 866
    const-string/jumbo v1, "BillboardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Billboard has focus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_2
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$6;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$6;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Z)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected recordImpression(Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 3

    .prologue
    .line 362
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    .line 363
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    const-string/jumbo v1, "awardCampaign"

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getAwardTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    const-string/jumbo v1, "billboardTheme"

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBillboardTheme()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    const-string/jumbo v1, "billboardType"

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBillboardType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    return-void
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v8

    .line 274
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v9

    .line 276
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardLogo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardBackground;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackgroundPortrait()Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    move-result-object v0

    if-nez v0, :cond_2

    .line 277
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "Data missing when trying to render billboard"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateViewVisibility()V

    .line 356
    invoke-virtual {p0, v9}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateOriginalsLayout(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    .line 357
    return-void

    .line 282
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    const-string/jumbo v0, "BillboardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updating billboard, title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", story url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getStoryUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-direct {v0, p2, p3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 287
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    .line 289
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setVisibility(I)V

    .line 290
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 291
    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {p0, v9}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->recordImpression(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    .line 295
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardBackground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardBackground;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtUrl:Ljava/lang/String;

    .line 296
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardLogo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardLogo;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->tvCardUrl:Ljava/lang/String;

    .line 297
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getSynopsis()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsisText:Ljava/lang/String;

    .line 298
    invoke-direct {p0, v9}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getInfoText(Lcom/netflix/model/leafs/originals/BillboardSummary;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    .line 300
    invoke-direct {p0, v9}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateDateBadge(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    .line 301
    invoke-direct {p0, v9}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateAwardsHeadline(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    .line 302
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionBillboardsEnabled:Z

    if-eqz v0, :cond_4

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getMotionUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 303
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getMotionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getMotionShouldLoop()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setUpMotionBillboard(Ljava/lang/String;Z)V

    .line 307
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v8, p1, v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->castPrefetchAndCacheManifestIfEnabled(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 309
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->detailsListener:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->update(Landroid/view/View;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/android/widget/PressedStateHandler;)V

    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoPhone:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->generateDetailsClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v0, :cond_6

    .line 313
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0, v6}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setPressedStateHandlerEnabled(Z)V

    .line 315
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 316
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoPhone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoPhone:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setPadding(IIII)V

    .line 344
    :goto_1
    invoke-virtual {p0, p1, p5}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;Z)Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 348
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    const-string/jumbo v0, "BillboardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loggin billboard impression for video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {v8}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;->IMPRESSION:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    invoke-interface {v0, p1, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->logBillboardActivity(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 322
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoPhone:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->isOriginal()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setCutomCroppingEnabled(Z)V

    .line 326
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setPadding(IIII)V

    .line 327
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardBackground;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setTonedBackground(Lcom/netflix/model/leafs/originals/BillboardBackground;)V

    .line 329
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 330
    const-string/jumbo v0, "BillboardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Showing static billboard with action buttons, image url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_7
    invoke-direct {p0, v9}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateLogoSize(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    .line 334
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->tvCard:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->tvCardUrl:Ljava/lang/String;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 338
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsisText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->generateCallsToAction(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;)V

    goto/16 :goto_1
.end method

.method public bridge synthetic update(Ljava/lang/Object;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 6

    .prologue
    .line 72
    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    return-void
.end method

.method protected updateOriginalsLayout(Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 369
    if-nez p1, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->isOriginal()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isNSREEpisodic(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isCurrentLocaleRTL()Z

    move-result v0

    if-nez v0, :cond_3

    .line 377
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 378
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlay:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlayGradient:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoViewMargin:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 384
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 385
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 395
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBillboardType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "award"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 396
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 398
    :cond_4
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
