.class public Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;
.super Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
.source "BarkerVideoDetailsViewGroup.java"


# static fields
.field private static final ROW_HEIGHT_LANDSCAPE_SCALE_FACTOR:F = 0.9f

.field private static final ROW_HEIGHT_PORTRAIT_SCALE_FACTOR:F = 1.1f


# instance fields
.field private actions:Landroid/view/View;

.field private barker:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;

.field protected basicSupplementalInfo:Landroid/widget/TextView;

.field private bookmarkDuration:Landroid/widget/TextView;

.field private bookmarkGroup:Landroid/view/ViewGroup;

.field private bookmarkProgressBar:Landroid/widget/ProgressBar;

.field private bookmarkValue:Landroid/widget/TextView;

.field private certification:Landroid/widget/TextView;

.field private credits:Landroid/view/View;

.field private dataSelectorEpisodes:Landroid/widget/RadioButton;

.field private dataSelectorEpisodesTop:Landroid/view/View;

.field private dataSelectorGroup:Landroid/widget/RadioGroup;

.field private dataSelectorRelated:Landroid/widget/RadioButton;

.field private dataSelectorRelatedTop:Landroid/view/View;

.field private detailFlipper:Landroid/widget/LinearLayout;

.field private detailSpacer:Landroid/view/View;

.field private hdIcon:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

.field protected horzDispImg2:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private leftGroup:Landroid/view/View;

.field private myList:Landroid/widget/Button;

.field private rate:Landroid/view/View;

.field private ratingContainer:Landroid/view/View;

.field private shadow:Landroid/view/View;

.field protected titleImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private year:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->barker:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->showRatingDialog()V

    return-void
.end method

.method private alignShadow(I)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->shadow:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->shadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    return-void
.end method

.method private manageDetailsOrientation()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->detailFlipper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->detailSpacer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->detailFlipper:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->barker:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->isSynopsisAndCreditsInSameRow()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->detailSpacer:Landroid/view/View;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->barker:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->isSynopsisAndCreditsInSameRow()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method private setYear(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->year:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getYear()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->year:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->year:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setupActionButtons()V
    .locals 0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->setupRateButton()V

    return-void
.end method

.method private setupRadioButtons()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup$DataSelectorButtonListener;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup$DataSelectorButtonListener;-><init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodes:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodes:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private showRatingDialog()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_0
    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->rate:Landroid/view/View;

    const v4, 0x7f0300ea

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->create(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Landroid/view/View;IZ)Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string/jumbo v2, "frag_dialog"

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    goto :goto_0
.end method

.method private updateCertification(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->certification:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getCertification()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->certification:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->certification:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateHD(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->hdIcon:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->hdIcon:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->shouldShowHdIcon(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private updateMessage(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getSupplementalMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getSupplementalMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateSupplementalInfo(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V
    .locals 4

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->basicSupplementalInfo:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getSeasonCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->basicSupplementalInfo:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getNumSeasonsLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->basicSupplementalInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->basicSupplementalInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getRuntime()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->basicSupplementalInfo:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getRuntime()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/TimeUtils;->getFormattedTime(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->basicSupplementalInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->basicSupplementalInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected alignHeroImage()V
    .locals 4

    const v0, 0x3f8ccccd    # 1.1f

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenAspectRatio(Landroid/content/Context;)F

    move-result v1

    const v2, 0x3fcccccd    # 1.6f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v0, 0x3f666666    # 0.9f

    :cond_0
    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->requestLayout()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->requestLayout()V

    goto :goto_0
.end method

.method protected alignLeftGroup()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->leftGroup:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->leftGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->barker:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getBookmarkWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    return-void
.end method

.method protected alignViews()V
    .locals 3

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->alignViews()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->leftGroup:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->alignHeroImage()V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->alignShadow(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->alignLeftGroup()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->leftGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method protected calculateImageHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f100000    # 0.5625f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public clearHeroImages()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->horzDispImg2:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->horzDispImg2:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected findViews()V
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViews()V

    const v0, 0x7f0f00ad

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodes:Landroid/widget/RadioButton;

    const v0, 0x7f0f00af

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    const v0, 0x7f0f00ae

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodesTop:Landroid/view/View;

    const v0, 0x7f0f00be

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->titleImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const v0, 0x7f0f00b0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorRelatedTop:Landroid/view/View;

    const v0, 0x7f0f009b

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->certification:Landroid/widget/TextView;

    const v0, 0x7f0f009d

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->hdIcon:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    const v0, 0x7f0f009c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->basicSupplementalInfo:Landroid/widget/TextView;

    const v0, 0x7f0f00ac

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorGroup:Landroid/widget/RadioGroup;

    const v0, 0x7f0f00b2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->horzDispImg2:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const v0, 0x7f0f00ab

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->myList:Landroid/widget/Button;

    const v0, 0x7f0f009a

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->year:Landroid/widget/TextView;

    const v0, 0x7f0f00b7

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->leftGroup:Landroid/view/View;

    const v0, 0x7f0f00b3

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->shadow:Landroid/view/View;

    const v0, 0x7f0f0099

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->rate:Landroid/view/View;

    const v0, 0x7f0f00b9

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->bookmarkGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0f01cc

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->bookmarkDuration:Landroid/widget/TextView;

    const v0, 0x7f0f01cb

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->bookmarkValue:Landroid/widget/TextView;

    const v0, 0x7f0f01cd

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->bookmarkProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0f00bc

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->credits:Landroid/view/View;

    const v0, 0x7f0f009e

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->actions:Landroid/view/View;

    const v0, 0x7f0f00b6

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->detailFlipper:Landroid/widget/LinearLayout;

    const v0, 0x7f0f00bb

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->detailSpacer:Landroid/view/View;

    const v0, 0x7f0f0098

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->ratingContainer:Landroid/view/View;

    return-void
.end method

.method public getAddToMyListButton()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->myList:Landroid/widget/Button;

    return-object v0
.end method

.method public getHeroImage2()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->horzDispImg2:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    return-object v0
.end method

.method public getRelatedTitleButton()Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    return-object v0
.end method

.method protected getlayoutId()I
    .locals 1

    const v0, 0x7f030026

    return v0
.end method

.method public hideDataSelector()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorGroup:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorGroup:Landroid/widget/RadioGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public performClickOnRelatedTitles()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->performClick()Z

    :cond_0
    return-void
.end method

.method public setBookmarkVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->bookmarkGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->bookmarkGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected setEpisodesTextAsSelected()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodes:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodes:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodesTop:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodes:Landroid/widget/RadioButton;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorRelatedTop:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    return-void
.end method

.method protected setRelatedTextAsSelected()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorRelatedTop:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodes:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodes:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodesTop:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodes:Landroid/widget/RadioButton;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    return-void
.end method

.method protected setupRateButton()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->ratingContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->ratingContainer:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup$1;-><init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected updateActions()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->actions:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->actions:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->barker:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->isSynopsisAndCreditsInSameRow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->barker:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getBookmarkWidth()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->barker:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getGutterWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method protected updateBasicInfo(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->updateHD(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->setYear(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->updateCertification(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->updateSupplementalInfo(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V

    goto :goto_0
.end method

.method protected updateBasicInfo(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V
    .locals 0

    return-void
.end method

.method public updateBookmark(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->bookmarkProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkPosition()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v1

    div-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->bookmarkProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->bookmarkDuration:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->bookmarkDuration:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/TimeUtils;->getFormattedTime(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->bookmarkValue:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->bookmarkValue:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/TimeUtils;->getFormattedTime(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateBookmarkTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->episodeTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isNSRE()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->episodeTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->createTitleText(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->episodeTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->episodeTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080172

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getEpisodeNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected updateCredits(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateCredits(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->credits:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->credits:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->barker:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getCreditsWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    return-void
.end method

.method public updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->updateTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->updateBasicInfo(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->setupActionButtons()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->setupRadioButtons()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->setEpisodesTextAsSelected()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->updateActions()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->manageDetailsOrientation()V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->updateMessage(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    return-void
.end method

.method protected updateImage(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 9

    const/4 v6, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getKubrickStoryImgUrl()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getStoryUrl()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v4, p3

    move v7, v6

    invoke-interface/range {v0 .. v8}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZILandroid/graphics/Bitmap$Config;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->setupImageClicks(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method

.method protected updateImage(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)V
    .locals 9

    const/4 v6, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    move-object v2, p1

    move-object v4, p3

    move v7, v6

    move-object v8, p4

    invoke-interface/range {v0 .. v8}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZILandroid/graphics/Bitmap$Config;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-virtual {p0, v0, p2}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->setupImageClicks(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0
.end method

.method protected updateRelatedTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    return-void
.end method

.method protected updateTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->title:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitleImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->canDisplayTransparentWebpImages()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->title:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->titleImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->title:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->titleImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->titleImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->heroImage:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move v7, v6

    invoke-interface/range {v0 .. v8}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZILandroid/graphics/Bitmap$Config;)V

    goto :goto_0
.end method
