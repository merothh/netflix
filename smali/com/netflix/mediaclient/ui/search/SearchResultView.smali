.class public Lcom/netflix/mediaclient/ui/search/SearchResultView;
.super Landroid/widget/FrameLayout;
.source "SearchResultView.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/common/PlayContextProvider;


# static fields
.field public static final PEOPLE_TAG:Ljava/lang/String; = "People"

.field public static final SUGGESTION_TAG:Ljava/lang/String; = "Suggestion"

.field public static final VIDEO_TAG:Ljava/lang/String; = "Video"


# instance fields
.field private displayName:Ljava/lang/String;

.field private ignoreClicks:Z

.field private img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field private playableId:Ljava/lang/String;

.field protected rating:Landroid/widget/TextView;

.field private resId:I

.field private searchReferenceId:Ljava/lang/String;

.field protected title:Landroid/widget/TextView;

.field private trackModalview:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

.field private videoClickListener:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0300f0

    iput v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->resId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->ignoreClicks:Z

    iput p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->resId:I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0300f0

    iput v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->resId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->ignoreClicks:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/search/SearchResultView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->searchReferenceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/search/SearchResultView;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->trackModalview:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method private findViews()V
    .locals 1

    const v0, 0x7f0f0340

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const v0, 0x7f0f0341

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->title:Landroid/widget/TextView;

    return-void
.end method

.method private getFormattedYearSpannable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7

    const/4 v6, 0x0

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    const-string/jumbo v1, "%s  (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v6

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v1, v2

    add-int/lit8 v2, v2, -0x4

    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0, v3, v2, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00c5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v3, v2, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->resId:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->findViews()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setupViews()V

    new-instance v1, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-direct {v1, v0, p0}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->videoClickListener:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    return-void
.end method

.method private setTitleTextWithSubtextHighlighting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->title:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_3
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->getHighLightColor()I

    move-result v3

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-interface {v2, v4, v1, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setupViews()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setPressedStateHandlerEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->rating:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->rating:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private update(Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "People"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setTag(Ljava/lang/Object;)V

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->peopleTitleResults:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->trackModalview:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    if-eqz v4, :cond_0

    invoke-direct {p0, v4, p2}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setTitleTextWithSubtextHighlighting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v6}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->heroImage:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfigNoPlaceholder()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->ignoreClicks:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->videoClickListener:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->remove(Landroid/view/View;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultView$PersonClickListener;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/netflix/mediaclient/ui/search/SearchResultView$PersonClickListener;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const v1, 0x7f020068

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private update(Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchSuggestion;Ljava/lang/String;)V
    .locals 3

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchSuggestion;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "Suggestion"

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setTag(Ljava/lang/Object;)V

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->suggestionTitleResults:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->trackModalview:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setTitleTextWithSubtextHighlighting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->ignoreClicks:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->videoClickListener:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->remove(Landroid/view/View;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultView$SuggestionClickListener;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchSuggestion;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchSuggestion;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/netflix/mediaclient/ui/search/SearchResultView$SuggestionClickListener;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private updateForVideo(Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;ILjava/lang/String;)V
    .locals 7

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "Video"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setTag(Ljava/lang/Object;)V

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->titleResults:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->trackModalview:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->title:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->shouldShowVerticalBoxArt()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->videoClickListener:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->update(Landroid/view/View;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/android/widget/PressedStateHandler;)V

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;->getHorzDispUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public clearTitleTextHighlighting()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->title:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method getHighLightColor()I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f01000e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    return v0
.end method

.method public getImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    return-object v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public getPlayablId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->playableId:Ljava/lang/String;

    return-object v0
.end method

.method public setIgnoreClicks()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->ignoreClicks:Z

    return-void
.end method

.method public setTitleTextWithSelectdHighlighting()V
    .locals 5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->getHighLightColor()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->title:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method public update(Ljava/lang/Object;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->searchReferenceId:Ljava/lang/String;

    instance-of v0, p1, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->playableId:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->playableId:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->displayName:Ljava/lang/String;

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;

    invoke-interface {p2}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getVideoPos()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->updateForVideo(Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->playableId:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->displayName:Ljava/lang/String;

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;

    invoke-direct {p0, p1, p3}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchSuggestion;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchSuggestion;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchSuggestion;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->playableId:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->playableId:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->displayName:Ljava/lang/String;

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchSuggestion;

    invoke-direct {p0, p1, p3}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchSuggestion;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unknown search result type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
