.class public Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;
.super Landroid/widget/RelativeLayout;
.source "KubrickHeroView.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KubrickHeroView"


# instance fields
.field private certification:Landroid/widget/TextView;

.field protected clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

.field private durationInfo:Landroid/widget/TextView;

.field private hdIcon:Landroid/view/View;

.field private heroImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

.field private infoGroup:Landroid/view/View;

.field protected playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field private rating:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

.field private final ratingsUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private shadow:Landroid/view/View;

.field private synopsis:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private titleImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private videoId:Ljava/lang/String;

.field private year:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView$2;-><init>(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->ratingsUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView$2;-><init>(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->ratingsUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView$2;-><init>(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->ratingsUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->infoGroup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->shadow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;)Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->rating:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    return-object v0
.end method

.method private findViews()V
    .locals 1

    const v0, 0x7f0f01ac

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->heroImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    const v0, 0x7f0f01af

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->title:Landroid/widget/TextView;

    const v0, 0x7f0f00be

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->titleImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const v0, 0x7f0f0099

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->rating:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    const v0, 0x7f0f009a

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->year:Landroid/widget/TextView;

    const v0, 0x7f0f009b

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->certification:Landroid/widget/TextView;

    const v0, 0x7f0f009c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->durationInfo:Landroid/widget/TextView;

    const v0, 0x7f0f009d

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->hdIcon:Landroid/view/View;

    const v0, 0x7f0f01b1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->synopsis:Landroid/widget/TextView;

    const v0, 0x7f0f01ae

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->infoGroup:Landroid/view/View;

    const v0, 0x7f0f01ad

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->shadow:Landroid/view/View;

    return-void
.end method

.method private init()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->setFocusable(Z)V

    const v0, 0x7f0201e6

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setPaddingBottom(Landroid/view/View;I)V

    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030075

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->findViews()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->heroImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setCropPointYOffsetPx(I)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->heroImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f100000    # 0.5625f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f2ac083    # 0.667f

    :goto_0
    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    new-instance v1, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-direct {v1, v0, p0}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->infoGroup:Landroid/view/View;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->getLomoFragImageOffsetLeftPx(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setPaddingStart(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->infoGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView$1;-><init>(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method private updateBasicInfo(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->rating:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->update(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->hdIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->shouldShowHdIcon(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->updateYear(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->updateCertification(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->updateDuration(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateCertification(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V
    .locals 2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getCertification()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->certification:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->certification:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDuration(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V
    .locals 4

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getSeasonCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->durationInfo:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getNumSeasonsLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->durationInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->durationInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getRuntime()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->durationInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/TimeUtils;->getFormattedTime(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->durationInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->durationInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSynopsis(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V
    .locals 2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getNarrative()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->synopsis:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateYear(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V
    .locals 2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getYear()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->year:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->year:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;Z)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getLomoVideoViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageUrl(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public hide()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->heroImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->clear(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->remove(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->videoId:Ljava/lang/String;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->ratingsUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.netflix.falkor.ACTION_NOTIFY_OF_RATINGS_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->ratingsUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 10

    invoke-virtual {p0, p1, p5}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;Z)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KubrickHeroView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update - imgUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-direct {v0, p2, p3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->videoId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->updateBasicInfo(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->updateSynopsis(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getTitleImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->canDisplayTransparentWebpImages()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->title:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->titleImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->heroImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-static {v9}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->heroImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->heroImage:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getTitle()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    const/4 v6, 0x1

    if-eqz p4, :cond_4

    const/4 v7, 0x1

    :goto_2
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v2, v9

    invoke-interface/range {v0 .. v8}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZILandroid/graphics/Bitmap$Config;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->heroImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->update(Landroid/view/View;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/android/widget/PressedStateHandler;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->title:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->titleImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->titleImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->heroImage:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getTitle()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-interface/range {v0 .. v8}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZILandroid/graphics/Bitmap$Config;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public bridge synthetic update(Ljava/lang/Object;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 6

    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    return-void
.end method
