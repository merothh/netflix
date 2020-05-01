.class public Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;
.super Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;
.source "BarkerKidsShowDetailsFrag.java"


# static fields
.field private static final EXTRA_SHOW_ID:Ljava/lang/String; = "extra_show_id"

.field private static final TAG:Ljava/lang/String; = "KubrickKidsShowDetailsFrag"


# instance fields
.field isSeasonUserSelected:Z

.field protected itemDecoration:Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

.field protected viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;-><init>()V

    .line 99
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$1;-><init>(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;)V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->showViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;)Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->heroSlideshow:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;)Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->heroSlideshow:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 4

    .prologue
    .line 55
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;-><init>()V

    .line 57
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 58
    const-string/jumbo v2, "extra_show_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string/jumbo v2, "extra_show_details"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v0
.end method


# virtual methods
.method protected calculateSpinnerLeftPosition()I
    .locals 3

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/kids/KidsUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    .line 337
    if-lez v1, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kids/KidsUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 342
    add-int/2addr v0, v1

    return v0
.end method

.method protected createSeasonsSelectorGroup()Landroid/view/ViewGroup;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    const v3, 0x7f0e0080

    .line 235
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->createSeasonsSelectorGroup()Landroid/view/ViewGroup;

    move-result-object v1

    .line 236
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->setSpinnerBackground(I)V

    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;

    .line 239
    if-eqz v0, :cond_0

    .line 240
    const v2, 0x7f0e00fc

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->setDropDownBackgroundColor(I)V

    .line 241
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->setDropDownTextColor(I)V

    .line 243
    :cond_0
    return-object v1
.end method

.method protected getBackgroundResource()I
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f0e00ec

    return v0
.end method

.method protected getNumColumns()I
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected getRecyclerViewShadowWidth()I
    .locals 3

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kids/KidsUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method protected getlayoutId()I
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f03007a

    return v0
.end method

.method protected initDetailsViewGroup()V
    .locals 2

    .prologue
    .line 368
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsShowDetailsViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsShowDetailsViewGroup;-><init>(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 369
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->removeActionBarDummyView()V

    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->hideRelatedTitle()V

    .line 371
    return-void
.end method

.method protected setSpinnerBackground(I)V
    .locals 4

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 249
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 251
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02016c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 252
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 254
    if-eqz v2, :cond_0

    .line 255
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 259
    return-void
.end method

.method protected setSpinnerSelection()V
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->setSeasonIndex()V

    .line 214
    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->currSeasonIndex:I

    if-gez v0, :cond_1

    .line 215
    const-string/jumbo v0, "KubrickKidsShowDetailsFrag"

    const-string/jumbo v1, "No valid season index found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getSelectedItemPosition()I

    move-result v0

    .line 222
    iget v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->currSeasonIndex:I

    if-eq v0, v1, :cond_0

    .line 226
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    const-string/jumbo v0, "KubrickKidsShowDetailsFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting current season to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->currSeasonIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    iget v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->currSeasonIndex:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->setNonTouchSelection(I)V

    goto :goto_0
.end method

.method protected setupDetailsPageParallaxScrollListener()Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-nez v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-object v0

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    .line 271
    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hidelogo()V

    .line 277
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getFooterViewGroup()Landroid/view/ViewGroup;

    move-result-object v5

    .line 278
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    new-array v3, v6, [Landroid/view/View;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;-><init>(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    .line 287
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 289
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    new-instance v1, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$2;-><init>(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->setOnScrollStateChangedListener(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$IScrollStateChanged;)V

    .line 309
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    goto :goto_0

    .line 281
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 282
    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getHeroImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    check-cast v4, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->getHeroImage2()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;-><init>(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    goto :goto_1
.end method

.method protected setupRecyclerViewAdapter()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;-><init>(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 91
    return-void
.end method

.method protected setupRecyclerViewItemDecoration()V
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->itemDecoration:Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a018e

    .line 356
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getNumColumns()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;-><init>(II)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->itemDecoration:Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    .line 357
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->itemDecoration:Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 359
    :cond_0
    return-void
.end method

.method protected setupRecyclerViewLayoutManager()V
    .locals 2

    .prologue
    .line 362
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->setupRecyclerViewLayoutManager()V

    .line 363
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/kids/KidsUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 364
    return-void
.end method

.method protected setupSeasonsSpinnerAdapter()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    .line 319
    new-instance v0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$3;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$3;-><init>(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;)V

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter$IViewCreator;)V

    .line 328
    const v1, 0x7f0e0080

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->setItemBackgroundColor(I)V

    .line 329
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 330
    return-void
.end method

.method protected showStandardViews()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->heroSlideshow:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->heroSlideshow:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;->start()V

    .line 70
    :cond_0
    return-void
.end method

.method public switchSeason(IZ)V
    .locals 2

    .prologue
    .line 109
    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->isSeasonUserSelected:Z

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->tryGetEpisodeIndexBySeasonNumber(I)I

    move-result v1

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->updateEpisodeStartIndex(I)V

    .line 114
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->switchSeason(IZ)V

    .line 115
    return-void
.end method

.method protected updateShowDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->updateShowDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setViewCreator(Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 97
    return-void
.end method
