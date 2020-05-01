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

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    sget-object v0, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->MISSING_GUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mGUID:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionBillboardsEnabled:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    sget-object v0, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->MISSING_GUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mGUID:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionBillboardsEnabled:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    sget-object v0, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->MISSING_GUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mGUID:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionBillboardsEnabled:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->hideMotionBB()V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showMotionBB()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateMuteButton()V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->myListButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateMyListState()V

    return-void
.end method

.method private downloadVideo(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    return-void
.end method

.method private generateCallsToAction(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x8

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "Manager is null/notReady - can\'t reload data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

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

    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

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

    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_4

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/BillboardCTA;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->cta2Button:Landroid/widget/Button;

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setupCTAButton(Lcom/netflix/model/leafs/originals/BillboardCTA;Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->myListButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v11, :cond_5

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/BillboardCTA;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->cta1Button:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setupCTAButton(Lcom/netflix/model/leafs/originals/BillboardCTA;Landroid/widget/Button;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getActions()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showMyListButton(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateMyListState()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->cta2Button:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->cta1Button:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private generateDetailsClickListener()Landroid/view/View$OnClickListener;
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    return-object v1
.end method

.method private getInfoText(Lcom/netflix/model/leafs/originals/BillboardSummary;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getSupplementalMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isNSREEpisodic(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-nez v0, :cond_0

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

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBadgeKeys()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->episodeBadge:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->toggleEpisodeBadge(Ljava/util/List;Landroid/widget/TextView;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isNSREShow(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    goto :goto_1
.end method

.method private hideMotionBB()V
    .locals 3

    const/16 v2, 0x8

    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "Hiding motion BB"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionStoryArt:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->muteButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->muteButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private init()V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-direct {v1, v0, p0}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->detailsListener:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f030027

    invoke-virtual {v1, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f0f00c9

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoViewGroup:Landroid/view/View;

    const v1, 0x7f0f00cb

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoViewMargin:Landroid/view/View;

    const v1, 0x7f0f00cf

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    const v1, 0x7f0f00c6

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoPhone:Landroid/widget/TextView;

    const v1, 0x7f0f00cd

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoWrapper:Landroid/view/View;

    const v1, 0x7f0f00ce

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->episodeBadge:Landroid/widget/TextView;

    const v1, 0x7f0f00d0

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->dateBadge:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const v1, 0x7f0f00ca

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->awardsHeadline:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const v1, 0x7f0f00d1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    const v1, 0x7f0f00cc

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->tvCard:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const v1, 0x7f0f00c3

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtFrame:Landroid/widget/FrameLayout;

    const v1, 0x7f0f00c4

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    const v1, 0x7f0f00c5

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionStoryArt:Landroid/view/TextureView;

    const v1, 0x7f0f00d7

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->muteButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isTablet()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shouldShowArtworkOnly(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

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

    :cond_1
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtFrame:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setPaddingStart(Landroid/view/View;I)V

    const v0, 0x7f0f00c7

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlay:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const v0, 0x7f0f00c8

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlayGradient:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlayGradient:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    const v0, 0x7f0f00d3

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->cta1Button:Landroid/widget/Button;

    const v0, 0x7f0f00d4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->cta2Button:Landroid/widget/Button;

    const v0, 0x7f0f00d5

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->myListButton:Landroid/widget/Button;

    const v0, 0x7f0f00d6

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateViewVisibility()V

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

    return-void

    :cond_3
    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    move v1, v0

    goto :goto_0
.end method

.method private isBillboardType(Lcom/netflix/model/leafs/originals/BillboardSummary;Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;)Z
    .locals 2

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

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->NSRE_EPISODIC:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isBillboardType(Lcom/netflix/model/leafs/originals/BillboardSummary;Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;)Z

    move-result v0

    return v0
.end method

.method private isNSREShow(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->NSRE_SHOW:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isBillboardType(Lcom/netflix/model/leafs/originals/BillboardSummary;Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;)Z

    move-result v0

    return v0
.end method

.method private setTonedBackground(Lcom/netflix/model/leafs/originals/BillboardBackground;)V
    .locals 8

    const v7, 0x7f0e00e2

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardBackground;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardBackground;->getTone()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v5, v3, v4, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

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

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

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

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-nez v0, :cond_2

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

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showMotionBB()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->hideMotionBB()V

    goto :goto_0
.end method

.method private setupCTAButton(Lcom/netflix/model/leafs/originals/BillboardCTA;Landroid/widget/Button;)V
    .locals 7

    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getType()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2, v6}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    return-void

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

    :pswitch_0
    invoke-virtual {p2, v6}, Landroid/widget/Button;->setVisibility(I)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showMDPButton()V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showMyListButton(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2, v6}, Landroid/widget/Button;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showListEpisodesButton(Lcom/netflix/model/leafs/originals/BillboardCTA;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getSequenceNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->getTextForCTA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->ignoreBookmark()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "0"

    move-object v6, v0

    :goto_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-virtual {p0, v0, p2, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addPlayableToCTA(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getBookmarkPosition()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

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

    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getVideoId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;

    invoke-direct {v2, p0, p2, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-interface {v0, v1, v5, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "season"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "continue"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;

    invoke-direct {v4, p0, p2, v6, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;Z)V

    invoke-interface {v0, v2, v5, v3, v4}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_1

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

    :cond_7
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getVideoId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;

    invoke-direct {v2, p0, p2, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-interface {v0, v1, v5, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_9

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getVideoId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;

    invoke-direct {v2, p0, p2, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-interface {v0, v1, v5, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getVideoId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;

    invoke-direct {v2, p0, p2, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-interface {v0, v1, v5, v3, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_1

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

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isTablet()Z

    move-result v1

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

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showMDPButton()V

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

    return-void
.end method

.method private showMDPButton()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->generateDetailsClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showMotionBB()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "Showing motion BB"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionStoryArt:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->muteButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateMuteButton()V

    return-void
.end method

.method private showMyListButton(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->myListButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->unregisterAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->myListButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->myListButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getTrackId()I

    move-result v5

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->registerAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    :cond_1
    return-void
.end method

.method private updateAwardsHeadline(Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 8

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getAwardsHeadline()Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    if-eqz v0, :cond_2

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

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->awardsHeadline:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ""

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->awardsHeadline:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateDateBadge(Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getDateBadge()Lcom/netflix/model/leafs/originals/BillboardDateBadge;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardDateBadge;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isNSREShow(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

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

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->dateBadge:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v8}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoWrapper:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ""

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoWrapper:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateLogoSize(Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00f0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->isOriginal()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    div-int/lit8 v0, v2, 0x3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->tvCard:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->tvCard:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateMuteButton()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-eqz v0, :cond_0

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

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->muteButton:Landroid/widget/TextView;

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$5;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0802f6

    goto :goto_0
.end method

.method private updateMyListState()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView$UpdateMyListCallback;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$UpdateMyListCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    invoke-interface {v0, v1, v4, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    :cond_0
    :goto_0
    return-void

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

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoViewGroup:Landroid/view/View;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlay:Landroid/view/View;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlayGradient:Landroid/view/View;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3
.end method


# virtual methods
.method addPlayableToCTA(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/Button;->requestFocus()Z

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;

    invoke-direct {v1, p0, v0, p3, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method addPlayableToCTA(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addPlayableToCTA(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Landroid/widget/Button;Ljava/lang/String;)V

    return-void
.end method

.method public getGUID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mGUID:Ljava/lang/String;

    sget-object v1, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->MISSING_GUID:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createGUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mGUID:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mGUID:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;Z)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtUrl:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v1

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

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BillboardView"

    const-string/jumbo v2, "Data missing when trying to render billboard image"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

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

    :cond_3
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackgroundPortrait()Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getImageUrl(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public getTrackId()I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    if-eqz v1, :cond_0

    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "TrackId found in PlayContextImpl"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "BillboardView"

    const-string/jumbo v2, "TrackId not found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hide()V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->tvCard:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->clear(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->clear(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->detailsListener:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->remove(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources()V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->unregisterAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionBillboardsEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

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

    :cond_2
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$6;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$6;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Z)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected recordImpression(Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    const-string/jumbo v1, "awardCampaign"

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getAwardTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    const-string/jumbo v1, "billboardTheme"

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBillboardTheme()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    const-string/jumbo v1, "billboardType"

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBillboardType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 10

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v8

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v9

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

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "Data missing when trying to render billboard"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateViewVisibility()V

    invoke-virtual {p0, v9}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateOriginalsLayout(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

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

    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-direct {v0, p2, p3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setVisibility(I)V

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

    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v9}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->recordImpression(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardBackground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardBackground;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtUrl:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardLogo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardLogo;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->tvCardUrl:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getSynopsis()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsisText:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getInfoText(Lcom/netflix/model/leafs/originals/BillboardSummary;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateDateBadge(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    invoke-direct {p0, v9}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateAwardsHeadline(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionBillboardsEnabled:Z

    if-eqz v0, :cond_4

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getMotionUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getMotionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getMotionShouldLoop()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setUpMotionBillboard(Ljava/lang/String;Z)V

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v8, p1, v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->castPrefetchAndCacheManifestIfEnabled(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->detailsListener:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->update(Landroid/view/View;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/android/widget/PressedStateHandler;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoPhone:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->generateDetailsClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0, v6}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setPressedStateHandlerEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoPhone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoPhone:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

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

    :goto_1
    invoke-virtual {p0, p1, p5}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

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

    invoke-virtual {v8}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;->IMPRESSION:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    invoke-interface {v0, p1, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->logBillboardActivity(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoPhone:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->isOriginal()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setCutomCroppingEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setPadding(IIII)V

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardBackground;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setTonedBackground(Lcom/netflix/model/leafs/originals/BillboardBackground;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_7

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

    :cond_7
    invoke-direct {p0, v9}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateLogoSize(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

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

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsisText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->generateCallsToAction(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;)V

    goto/16 :goto_1
.end method

.method public bridge synthetic update(Ljava/lang/Object;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 6

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

    const/4 v2, -0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

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

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlay:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlayGradient:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoViewMargin:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBillboardType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "award"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
