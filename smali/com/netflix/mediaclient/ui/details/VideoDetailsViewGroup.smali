.class public Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
.super Landroid/widget/LinearLayout;
.source "VideoDetailsViewGroup.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoDetailsViewGroup"

.field public static final UPDATE_CAPABILITIES_BADGES:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.UPDATE_CAPABILITIES_BADGES"

.field private static final mCapabilityBadgesMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionBarDummyView:Landroid/view/View;

.field private addToMyList:Landroid/widget/TextView;

.field private addToMyListGroup:Landroid/view/View;

.field private addToMyListLabel:Landroid/widget/TextView;

.field private backgroundImg:Landroid/widget/ImageView;

.field private badgesPadding:I

.field private basicInfo:Landroid/widget/TextView;

.field protected basicInfoBadges:Landroid/widget/TextView;

.field protected copyright:Landroid/view/ViewGroup;

.field private creators:Landroid/widget/TextView;

.field protected details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

.field protected episodeBadge:Landroid/widget/TextView;

.field protected episodeTitle:Landroid/widget/TextView;

.field private footerViewGroup:Landroid/view/ViewGroup;

.field protected horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field protected imgGroup:Landroid/view/ViewGroup;

.field private mMovieDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

.field protected onCWClickListener:Landroid/view/View$OnClickListener;

.field protected play:Landroid/view/View;

.field protected ratingBar:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

.field private final ratingsUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected relatedTitle:Landroid/widget/TextView;

.field private starring:Landroid/widget/TextView;

.field protected supplemental:Landroid/widget/TextView;

.field protected synopsis:Landroid/widget/TextView;

.field protected title:Landroid/widget/TextView;

.field private final updateCapabilityBadges:Landroid/content/BroadcastReceiver;

.field private videoId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$1;

    const-class v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$1;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->mCapabilityBadgesMap:Ljava/util/EnumMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 574
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->ratingsUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 596
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateCapabilityBadges:Landroid/content/BroadcastReceiver;

    .line 112
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->init()V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 574
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->ratingsUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 596
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateCapabilityBadges:Landroid/content/BroadcastReceiver;

    .line 117
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->init()V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 574
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->ratingsUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 596
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateCapabilityBadges:Landroid/content/BroadcastReceiver;

    .line 122
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->init()V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method private addIconFontBadges(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 548
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->basicInfoBadges:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 549
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->basicInfoBadges:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->badgesPadding:I

    :goto_0
    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 550
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->basicInfoBadges:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 549
    goto :goto_0
.end method

.method private createCapabilitiesMap(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/EnumMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            ")",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 516
    const/4 v1, 0x0

    .line 518
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MdxUtils;->isCurrentMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 519
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTargetCapabilities()Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_6

    .line 525
    :goto_0
    if-nez v0, :cond_0

    .line 526
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getLocalCapabilities(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;

    move-result-object v0

    .line 529
    :cond_0
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 530
    sget-object v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->_5dot1:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->shouldShow5dot1Icon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->shouldShowDolbyVisionIcon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 533
    sget-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->DOLBY_VISION:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    :cond_1
    :goto_1
    return-object v1

    .line 534
    :cond_2
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->shouldShowHdr10Icon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 535
    sget-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->HDR10:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 536
    :cond_3
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->shouldShowUhdIcon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 537
    sget-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->UHD:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 538
    :cond_4
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->shouldShowHdIcon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 539
    sget-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->HD:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 540
    :cond_5
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->shouldShow3DIcon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    sget-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->_3D:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private getBadgesPadding()I
    .locals 2

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0166

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getIfValidOrFallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method private getInterBadgePadding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    const-string/jumbo v0, "  "

    return-object v0
.end method

.method private hasWatched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z
    .locals 1

    .prologue
    .line 477
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->hasWatched()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 130
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getlayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 131
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setOrientation(I)V

    .line 132
    invoke-static {p0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->setLayoutDirection(Landroid/view/View;)V

    .line 135
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->actionBarDummyView:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->actionBarDummyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addView(Landroid/view/View;I)V

    .line 138
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViews()V

    .line 140
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getBadgesPadding()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->badgesPadding:I

    .line 142
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setImgLayoutListener()V

    .line 144
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$2;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->onCWClickListener:Landroid/view/View$OnClickListener;

    .line 152
    return-void
.end method

.method private isNSREShow(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z
    .locals 2

    .prologue
    .line 471
    instance-of v0, p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 472
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isNSRE()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 471
    :goto_0
    return v0

    .line 473
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setImgLayoutListener()V
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string/jumbo v0, "VideoDetailsViewGroup"

    const-string/jumbo v1, "setImgLayoutListener()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 211
    return-void
.end method

.method private showCurrentEpisodeDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z
    .locals 1

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->isNSREShow(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->hasWatched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePlayButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->play:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 348
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->play:Landroid/view/View;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isPreRelease()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 350
    :cond_0
    return-void

    .line 348
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateRating(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->ratingBar:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->ratingBar:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-static {p0}, Lcom/netflix/mediaclient/util/ViewUtils;->getRatingBarDataProviderSafely(Landroid/view/View;)Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->update(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;)V

    .line 386
    :cond_0
    return-void
.end method


# virtual methods
.method protected alignViews()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 226
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isCoppolaContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    const v0, 0x7f0f011f

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->imgGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 234
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->requestLayout()V

    .line 235
    const-string/jumbo v0, "VideoDetailsViewGroup"

    const-string/jumbo v1, "img group width zero height!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->calculateImageHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method protected calculateImageHeight()I
    .locals 5

    .prologue
    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->imgGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    .line 243
    if-gtz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    .line 247
    :cond_0
    int-to-float v1, v0

    const/high16 v2, 0x3f100000    # 0.5625f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 249
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    const-string/jumbo v2, "VideoDetailsViewGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "imgGroup.getMeasuredWidth(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->imgGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", height: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_1
    return v1
.end method

.method protected findViews()V
    .locals 1

    .prologue
    .line 155
    const v0, 0x7f0f0099

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->ratingBar:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    .line 156
    const v0, 0x7f0f023a

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addToMyListGroup:Landroid/view/View;

    .line 157
    const v0, 0x7f0f0122

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addToMyList:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0f023b

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addToMyListLabel:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f0f01b6

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->mMovieDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 160
    const v0, 0x7f0f0120

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->basicInfo:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f0f01ce

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeBadge:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f0f01cf

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeTitle:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f0f00b8

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f0f00ba

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->synopsis:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f0f01d0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->starring:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f0f01d1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->creators:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f0f00b1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 168
    const v0, 0x7f0f00bf

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->title:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f0f0123

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->imgGroup:Landroid/view/ViewGroup;

    .line 170
    const v0, 0x7f0f018c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->backgroundImg:Landroid/widget/ImageView;

    .line 172
    const v0, 0x7f0f00c2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f0f0121

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->basicInfoBadges:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f0f00c1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->footerViewGroup:Landroid/view/ViewGroup;

    .line 176
    const v0, 0x7f0f038c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->copyright:Landroid/view/ViewGroup;

    .line 177
    const v0, 0x7f0f00c0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->play:Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->ratingBar:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->setLayoutDirection(Landroid/view/View;)V

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addToMyList:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->setLayoutDirection(Landroid/view/View;)V

    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->mMovieDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->setLayoutDirection(Landroid/view/View;)V

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->basicInfo:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->setLayoutDirection(Landroid/view/View;)V

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->synopsis:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->setLayoutDirection(Landroid/view/View;)V

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->starring:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->setLayoutDirection(Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->creators:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->setLayoutDirection(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->title:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->setLayoutDirection(Landroid/view/View;)V

    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->setLayoutDirection(Landroid/view/View;)V

    .line 188
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->imgGroup:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->setLayoutDirection(Landroid/view/View;)V

    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->setLayoutDirection(Landroid/view/View;)V

    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->footerViewGroup:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->setLayoutDirection(Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->copyright:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->setLayoutDirection(Landroid/view/View;)V

    .line 192
    return-void
.end method

.method public getAddToMyListButton()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addToMyList:Landroid/widget/TextView;

    return-object v0
.end method

.method public getAddToMyListButtonLabel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addToMyListLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getBackgroundImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->backgroundImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getDownloadButton()Lcom/netflix/mediaclient/ui/offline/DownloadButton;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->mMovieDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    return-object v0
.end method

.method public getFooterViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->footerViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getHeroImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    return-object v0
.end method

.method public getMyListGroup()Landroid/view/View;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addToMyListGroup:Landroid/view/View;

    return-object v0
.end method

.method protected getlayoutId()I
    .locals 1

    .prologue
    .line 126
    const v0, 0x7f030117

    return v0
.end method

.method public hideRelatedTitle()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 556
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 558
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->ratingsUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.netflix.falkor.ACTION_NOTIFY_OF_RATINGS_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 561
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateCapabilityBadges:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.UPDATE_CAPABILITIES_BADGES"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 564
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 568
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 570
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->ratingsUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 571
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateCapabilityBadges:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 572
    return-void
.end method

.method public refreshImagesIfNecessary()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->refreshImageIfNecessary()V

    .line 302
    :cond_0
    return-void
.end method

.method public removeActionBarDummyView()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->actionBarDummyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->actionBarDummyView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->removeView(Landroid/view/View;)V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->actionBarDummyView:Landroid/view/View;

    .line 296
    :cond_0
    return-void
.end method

.method public setCopyright(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->copyright:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 373
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getCopyright()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->copyright:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 375
    new-instance v0, Lcom/netflix/mediaclient/ui/details/CopyrightView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->copyright:Landroid/view/ViewGroup;

    invoke-direct {v0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/details/CopyrightView;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->copyright:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3

    .prologue
    .line 608
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    const-string/jumbo v0, "VideoDetailsViewGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVisibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->getVisibilityAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 612
    return-void
.end method

.method protected setupImageClicks(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 4

    .prologue
    .line 490
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isPreRelease()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->requestFocus()Z

    .line 495
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->onCWClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;-><init>(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public showRelatedTitle()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    :cond_0
    return-void
.end method

.method protected updateBadges(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 5

    .prologue
    .line 396
    const-string/jumbo v2, ""

    .line 397
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->createCapabilitiesMap(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/EnumMap;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 399
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v4, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->mCapabilityBadgesMap:Ljava/util/EnumMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getInterBadgePadding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 402
    goto :goto_0

    .line 403
    :cond_0
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addIconFontBadges(Ljava/lang/String;)V

    .line 404
    return-void

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method protected updateBasicInfo(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->basicInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isAvailableToStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->basicInfo:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;->getBasicInfoString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    :cond_0
    return-void
.end method

.method protected updateCredits(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 420
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->starring:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 421
    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;->getStarringText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 422
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 423
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->starring:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->creators:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 431
    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;->getCreatorsText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 432
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 433
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->creators:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    :cond_1
    :goto_1
    return-void

    .line 425
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->starring:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->starring:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 436
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->creators:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->creators:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x8

    .line 314
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->videoId:Ljava/lang/String;

    .line 315
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 316
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 317
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 319
    invoke-virtual {p0, p1, v0, v3}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateImage(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateRelatedTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 321
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 323
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateBasicInfo(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V

    .line 324
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateBadges(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 326
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateRating(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 327
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateSynopsis(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 329
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateCredits(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V

    .line 331
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updatePlayButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 333
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->starring:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->creators:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move v0, v1

    .line 334
    :goto_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->showCurrentEpisodeDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 335
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateNSREFields(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    .line 344
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 333
    goto :goto_0

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 338
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeBadge:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 340
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected updateImage(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 450
    invoke-static {p2}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getHorzDispUrl()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 452
    :goto_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->showCurrentEpisodeDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 453
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    .line 454
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeHorzDispUrl()Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getIfValidOrFallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 459
    :goto_1
    invoke-static {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 464
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    const/4 v6, 0x1

    move-object v4, p3

    .line 459
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setupImageClicks(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 468
    return-void

    .line 450
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getStoryUrl()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v2, v1

    goto :goto_1
.end method

.method public updateNSREFields(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 353
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeTitle()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeBadges()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeBadge:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->toggleEpisodeBadge(Ljava/util/List;Landroid/widget/TextView;)V

    .line 357
    if-eqz v0, :cond_0

    .line 358
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080171

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getSupplementalMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->starring:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->creators:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeTitle:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getSupplementalMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->starring:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->creators:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateRelatedTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 6

    .prologue
    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080207

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_0
    return-void
.end method

.method public updateSynopsis(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 3

    .prologue
    .line 407
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getSynopsis()Ljava/lang/String;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->synopsis:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 409
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->showCurrentEpisodeDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    .line 411
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeSynopsis()Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getIfValidOrFallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->synopsis:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    :cond_1
    return-void

    .line 415
    :cond_2
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method protected updateTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->title:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    :cond_0
    return-void
.end method
