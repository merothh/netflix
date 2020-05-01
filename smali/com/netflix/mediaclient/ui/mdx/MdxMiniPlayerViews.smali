.class public Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;
.super Ljava/lang/Object;
.source "MdxMiniPlayerViews.java"


# static fields
.field private static final ALPHA_50:F = 0.5f

.field private static final DISABLED:Z = false

.field private static final DISABLED_ALPHA:F = 0.4f

.field private static final FULL_ALPHA:F = 0.0f

.field private static final LONG_VIEW_ANIMATION_DURATION_MS:J = 0xc8L

.field private static final MAX_CONTROL_GROUP_WIDTH_DP:I = 0x258

.field private static final NO_ALPHA:F = 1.0f

.field private static final PROGRESS_CHANGE_EVENT_FILTER_TIME_MS:J = -0x1L

.field private static final SHORT_VIEW_ANIMATION_DURATION_MS:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "MdxMiniPlayerViews"

.field private static final TOTAL_NUMBER_OF_COLLAPSED_BUTTONS:I = 0x4

.field private static final timeFormatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;


# instance fields
.field protected final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final animInterpolator:Landroid/view/animation/Interpolator;

.field private artwork:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field protected auxControlsGroup:Landroid/view/View;

.field private bifImage:Landroid/widget/ImageView;

.field private bifSeekTime:Landroid/widget/TextView;

.field private final callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

.field private collapsedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected final content:Landroid/view/ViewGroup;

.field private currentTime:Landroid/widget/TextView;

.field private deviceName:Landroid/widget/TextView;

.field protected deviceNameGroup:Landroid/view/View;

.field private final dialogCallbacks:Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;

.field private final dummyClickListener:Landroid/view/View$OnClickListener;

.field private episodesButtonVisible:Z

.field private final episodesClickListener:Landroid/view/View$OnClickListener;

.field private episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

.field private episodesDivider:Landroid/view/View;

.field private episodesExpanded:Landroid/widget/ImageView;

.field private isShowingViewForExpanded:Ljava/lang/Boolean;

.field private languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

.field private languageExpanded:Landroid/widget/ImageView;

.field protected maxTitleTextYDelta:I

.field protected maxTitleTextYMargin:I

.field private mdxMenu:Lcom/netflix/mediaclient/ui/mdx/MdxMenu;

.field private final onSeekBarChangeListener:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;

.field private final parentActivityClass:Ljava/lang/String;

.field private final pauseOnClickListener:Landroid/view/View$OnClickListener;

.field private playOrPauseCollapsed:Landroid/widget/ImageView;

.field private playOrPauseExpanded:Landroid/widget/ImageView;

.field protected playcardCaret:Landroid/widget/ImageView;

.field protected playcardControlsGroup:Landroid/view/View;

.field private rating:Landroid/widget/ImageView;

.field private remainingTime:Landroid/widget/TextView;

.field private final resumeOnClickListener:Landroid/view/View$OnClickListener;

.field private seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

.field private final seekBarLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final showLanguageSelectorClickListener:Landroid/view/View$OnClickListener;

.field private final showRatingClickListener:Landroid/view/View$OnClickListener;

.field private final showTargetSelectionDialogListener:Landroid/view/View$OnClickListener;

.field private final showVideoDetailsClickListener:Landroid/view/View$OnClickListener;

.field private final showVolumeClickListener:Landroid/view/View$OnClickListener;

.field private skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

.field private skipBackExpanded:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

.field private final skipBackOnClickListener:Landroid/view/View$OnClickListener;

.field private stop:Landroid/widget/ImageView;

.field private final stopOnClickListener:Landroid/view/View$OnClickListener;

.field protected subtitle:Landroid/widget/TextView;

.field private subtitleExpanded:Landroid/widget/TextView;

.field protected title:Landroid/widget/TextView;

.field private titleExpanded:Landroid/widget/TextView;

.field protected titleGroup:Landroid/view/View;

.field protected titleGroupYPos:F

.field protected titleTextGroup:Landroid/view/View;

.field private volume:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/TimeFormatterHelper;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->timeFormatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->animInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesButtonVisible:Z

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->isShowingViewForExpanded:Ljava/lang/Boolean;

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->onSeekBarChangeListener:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$2;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->dummyClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$3;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->pauseOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$4;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->showVideoDetailsClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$5;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->resumeOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$6;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->skipBackOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$7;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->stopOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$8;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$9;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->showLanguageSelectorClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$10;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$10;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->showRatingClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$11;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$11;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->showVolumeClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$12;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$12;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->showTargetSelectionDialogListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$13;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$13;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->seekBarLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const-string/jumbo v0, "Creating"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->parentActivityClass:Ljava/lang/String;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->dialogCallbacks:Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->findViews()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->currentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->artwork:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->bifImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->bifSeekTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateTimeViews(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->dialogCallbacks:Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;

    return-object v0
.end method

.method private computeTitleTextViewGroupWidth()I
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    sub-int v0, v2, v0

    return v0
.end method

.method private enableView(Landroid/view/View;Z)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_1
.end method

.method private fadeInAndShow(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fadeOut(Ljava/util/Collection;F)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;F)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fadeOutAndHide(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$HideViewOnAnimatorEnd;

    invoke-direct {v3, v0}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$HideViewOnAnimatorEnd;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initCollapsedButton(Lcom/netflix/mediaclient/android/widget/IconFontTextView;III)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setText(I)V

    int-to-float v0, p4

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setTextSize(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initContentClicks()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->dummyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initDividersAndCollapsedViews(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const v3, 0x7f0f020b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0f020c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f0f020d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f0f020e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->getViewsById(Landroid/view/View;[Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->showViews(Ljava/util/Collection;)V

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    const v2, 0x7f0802ec

    const v3, 0x7f0800a3

    const/16 v4, 0x12

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->initCollapsedButton(Lcom/netflix/mediaclient/android/widget/IconFontTextView;III)V

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    const v2, 0x7f0802ee

    const v3, 0x7f0800a2

    const/16 v4, 0x14

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->initCollapsedButton(Lcom/netflix/mediaclient/android/widget/IconFontTextView;III)V

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    const v2, 0x7f0802fe

    const v3, 0x7f0800a8

    const/16 v4, 0x18

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->initCollapsedButton(Lcom/netflix/mediaclient/android/widget/IconFontTextView;III)V

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->collapsedViews:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playOrPauseCollapsed:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->collapsedViews:Ljava/util/List;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playOrPauseCollapsed:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->collapsedViews:Ljava/util/List;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->collapsedViews:Ljava/util/List;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->collapsedViews:Ljava/util/List;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->collapsedViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    return-void

    :cond_8
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesDivider:Landroid/view/View;

    goto :goto_0
.end method

.method private initOnClickListeners()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->artwork:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->artwork:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->showVideoDetailsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->stop:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->stop:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->stopOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->skipBackOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->skipBackExpanded:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->skipBackExpanded:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->skipBackOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesExpanded:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesExpanded:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->showLanguageSelectorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->languageExpanded:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->languageExpanded:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->showLanguageSelectorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->deviceNameGroup:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->deviceNameGroup:Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->showTargetSelectionDialogListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->rating:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->rating:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->showRatingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->volume:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->volume:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->showVolumeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    return-void
.end method

.method private initPlaycardCaret()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playcardCaret:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playcardCaret:Landroid/widget/ImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_0
    return-void
.end method

.method private initRating()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->rating:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->rating:Landroid/widget/ImageView;

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initSeekBar(Landroid/content/res/Resources;Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->onSeekBarChangeListener:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->setSnappableOnSeekBarChangeListener(Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->seekBarLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const v0, 0x7f0a0028

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-virtual {v1, v0, v2, v0, v2}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->setPadding(IIII)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    const v1, 0x7f020188

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->setScrubberDentBitmap(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->setShouldSnapToTouchStartPosition(Z)V

    :cond_0
    return-void
.end method

.method private initTitleDimens(Landroid/content/res/Resources;)V
    .locals 2

    const v0, 0x7f0a0025

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f0a0026

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->maxTitleTextYDelta:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->maxTitleTextYMargin:I

    return-void
.end method

.method private initTitleText()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->titleTextGroup:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->titleTextGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->computeTitleTextViewGroupWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MdxMiniPlayerViews"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->parentActivityClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setMaxWidths(ZZ)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/16 v1, 0x258

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->auxControlsGroup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playcardControlsGroup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setBifWidth(I)V

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->artwork:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->artwork:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    div-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setBifHeight(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private updateEpisodeButtonVisibility()V
    .locals 6

    const/4 v3, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->isShowingViewForExpanded:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "MdxMiniPlayerViews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Updating episode button visibility, isPanelCollapsed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", episodesButtonVisible: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesButtonVisible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v0, :cond_7

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesButtonVisible:Z

    if-eqz v2, :cond_7

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesDivider:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesDivider:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesButtonVisible:Z

    if-eqz v0, :cond_2

    move v3, v1

    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesExpanded:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesExpanded:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesButtonVisible:Z

    if-eqz v2, :cond_8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->isShowingViewForExpanded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v2, v3

    goto :goto_1

    :cond_8
    const/16 v1, 0x8

    goto :goto_2
.end method

.method private updateTimeViews(I)V
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->timeFormatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/util/TimeFormatterHelper;->getStringForSeconds(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->currentTime:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->currentTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->bifSeekTime:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->bifSeekTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->timeFormatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getMax()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/TimeFormatterHelper;->getStringForSeconds(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->remainingTime:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->remainingTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private updateViewsForPanelSlide(F)V
    .locals 3

    mul-float v1, p1, p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->collapsedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public attachMenuItem(Lcom/netflix/mediaclient/ui/mdx/MdxMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->mdxMenu:Lcom/netflix/mediaclient/ui/mdx/MdxMenu;

    return-void
.end method

.method public computeMdxMenuEnabled(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->isPlayingRemotely()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MdxMiniPlayerViews"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mdx is playing remotely - mdx menu enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p1

    :cond_0
    const-string/jumbo v0, "MdxMiniPlayerViews"

    const-string/jumbo v1, "mdx is not playing remotely - mdx menu enabled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    goto :goto_0
.end method

.method public enableMdxMenu()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->mdxMenu:Lcom/netflix/mediaclient/ui/mdx/MdxMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->mdxMenu:Lcom/netflix/mediaclient/ui/mdx/MdxMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected varargs fadeInAndShow([Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->fadeInAndShow(Ljava/util/Collection;)V

    return-void
.end method

.method protected varargs fadeOut([Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->fadeOut(Ljava/util/Collection;F)V

    return-void
.end method

.method protected varargs fadeOutAndHide([Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->fadeOutAndHide(Ljava/util/Collection;)V

    return-void
.end method

.method protected varargs fadeOutTranslucent([Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->fadeOut(Ljava/util/Collection;F)V

    return-void
.end method

.method protected findViews()V
    .locals 3

    const v2, 0x7f0f0207

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f01e9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->titleGroup:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f01ec

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f01ed

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->subtitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f0223

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->titleExpanded:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f0224

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->subtitleExpanded:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f01ea

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->titleTextGroup:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f01eb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playcardCaret:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f01ef

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->artwork:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f01f1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->bifSeekTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f01f2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->bifImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f01e8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->deviceNameGroup:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f01f0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->deviceName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f0202

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playcardControlsGroup:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f0204

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playOrPauseExpanded:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f0203

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->skipBackExpanded:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f0205

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->stop:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f01e3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->auxControlsGroup:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f01e4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->languageExpanded:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f01e7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesExpanded:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f01e6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->rating:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f01e5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->volume:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f0200

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->currentTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f0201

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->remainingTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f0206

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f0208

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f020a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f020c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesDivider:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isNotTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f0209

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playOrPauseCollapsed:Landroid/widget/ImageView;

    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f030093

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030099

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getProgress()I

    move-result v0

    goto :goto_0
.end method

.method public getSlidingPanelDragView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->titleTextGroup:Landroid/view/View;

    return-object v0
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->initContentClicks()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->initTitleText()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->initPlaycardCaret()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->initRating()V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->initSeekBar(Landroid/content/res/Resources;Z)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->initTitleDimens(Landroid/content/res/Resources;)V

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setMaxWidths(ZZ)V

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->initDividersAndCollapsedViews(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setLongTapListenersRecursivelyToShowContentDescriptionToast(Landroid/view/View;)V

    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->initOnClickListeners()V

    return-void
.end method

.method public onPanelCollapsed()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "MdxMiniPlayerViews"

    const-string/jumbo v1, "onPanelCollapsed()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->showArtworkAndHideBif()V

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateViewsForSeekBarUsage(Z)V

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateViewsForPanelChange(Z)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateEpisodeButtonVisibility()V

    return-void
.end method

.method public onPanelExpanded()V
    .locals 2

    const-string/jumbo v0, "MdxMiniPlayerViews"

    const-string/jumbo v1, "onPanelExpanded()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateViewsForPanelChange(Z)V

    return-void
.end method

.method public onPanelSlide(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->translateTitleGroup(F)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateViewsForPanelSlide(F)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateMdxMenu()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->titleGroup:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->titleGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->titleGroupYPos:F

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->isPanelExpanded()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateViewsForPanelChange(Z)V

    return-void
.end method

.method public rotateCaretTo(I)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playcardCaret:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playcardCaret:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->animInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method protected setBifHeight(I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->bifImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->bifImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    return-void
.end method

.method protected setBifWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->bifImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->bifImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    return-void
.end method

.method public setControlsEnabled(Z)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Set controls enabled: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playOrPauseCollapsed:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playOrPauseCollapsed:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->enableView(Landroid/view/View;Z)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playOrPauseExpanded:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playOrPauseExpanded:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->enableView(Landroid/view/View;Z)V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->enableView(Landroid/view/View;Z)V

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->skipBackExpanded:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->skipBackExpanded:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->enableView(Landroid/view/View;Z)V

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->isLanguageReady()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->enableView(Landroid/view/View;Z)V

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->languageExpanded:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->languageExpanded:Landroid/widget/ImageView;

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->isLanguageReady()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->enableView(Landroid/view/View;Z)V

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->isEpisodeReady()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_2
    invoke-direct {p0, v3, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->enableView(Landroid/view/View;Z)V

    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesExpanded:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesExpanded:Landroid/widget/ImageView;

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->isEpisodeReady()Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_3
    invoke-direct {p0, v3, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->enableView(Landroid/view/View;Z)V

    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->deviceNameGroup:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->deviceNameGroup:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->enableView(Landroid/view/View;Z)V

    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->stop:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->stop:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->enableView(Landroid/view/View;Z)V

    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->rating:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->rating:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->enableView(Landroid/view/View;Z)V

    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->volume:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->volume:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->enableView(Landroid/view/View;Z)V

    :cond_c
    const-string/jumbo v0, "setControlsEnabled, enabled: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->mdxMenu:Lcom/netflix/mediaclient/ui/mdx/MdxMenu;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->mdxMenu:Lcom/netflix/mediaclient/ui/mdx/MdxMenu;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->computeMdxMenuEnabled(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    if-eqz v0, :cond_d

    const-string/jumbo v0, "MdxMiniPlayerViews"

    const-string/jumbo v1, "setControlsEnabled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->mdxMenu:Lcom/netflix/mediaclient/ui/mdx/MdxMenu;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->update()V

    :cond_d
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->isPanelExpanded()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateViewsForPanelChange(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->notifyControlsEnabled(Z)V

    return-void

    :cond_e
    move v0, v2

    goto/16 :goto_0

    :cond_f
    move v0, v2

    goto/16 :goto_1

    :cond_10
    move v0, v2

    goto/16 :goto_2

    :cond_11
    move v0, v2

    goto :goto_3
.end method

.method public setEpisodesButtonVisibile(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->episodesButtonVisible:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateEpisodeButtonVisibility()V

    return-void
.end method

.method public setLanguageButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->enableView(Landroid/view/View;Z)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->languageExpanded:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->enableView(Landroid/view/View;Z)V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->setProgress(I)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateTimeViews(I)V

    :cond_0
    return-void
.end method

.method public setProgressMax(I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->setMax(I)V

    :cond_0
    return-void
.end method

.method public setVolumeButtonVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->volume:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->volume:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected showArtworkAndHideBif()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->artwork:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_0

    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->artwork:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->fadeInAndShow([Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->currentTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->currentTime:Landroid/widget/TextView;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->fadeInAndShow([Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->bifImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->bifImage:Landroid/widget/ImageView;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->fadeOutAndHide([Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->bifSeekTime:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->bifSeekTime:Landroid/widget/TextView;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->fadeOutAndHide([Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method protected translateTitleGroup(F)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->titleTextGroup:Landroid/view/View;

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->titleGroupYPos:F

    iget v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->maxTitleTextYDelta:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->titleTextGroup:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setY(F)V

    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->maxTitleTextYMargin:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->title:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public updateDeviceNameText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->deviceName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->deviceName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateImage(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->artwork:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->artwork:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getHorzDispUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    goto :goto_0
.end method

.method public updateMdxMenu()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->mdxMenu:Lcom/netflix/mediaclient/ui/mdx/MdxMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MdxMiniPlayerViews"

    const-string/jumbo v1, "updateMdxMenu"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->mdxMenu:Lcom/netflix/mediaclient/ui/mdx/MdxMenu;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->update()V

    :cond_0
    return-void
.end method

.method public updatePlayPauseButton(Z)V
    .locals 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playOrPauseCollapsed:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playOrPauseCollapsed:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playOrPauseExpanded:Landroid/widget/ImageView;

    aput-object v2, v0, v3

    :goto_0
    array-length v3, v0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    if-eqz p1, :cond_2

    const v1, 0x7f020115

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->resumeOnClickListener:Landroid/view/View$OnClickListener;

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    new-array v0, v3, [Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playOrPauseExpanded:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    goto :goto_0

    :cond_2
    const v1, 0x7f020112

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->pauseOnClickListener:Landroid/view/View$OnClickListener;

    goto :goto_3

    :cond_4
    return-void
.end method

.method public updateSubtitleText(Ljava/lang/String;)V
    .locals 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->subtitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->subtitle:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->subtitleExpanded:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->subtitleExpanded:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->subtitleExpanded:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playcardCaret:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playcardCaret:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v3, :cond_5

    const/4 v1, 0x1

    :goto_2
    invoke-static {v2, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    const/4 v1, 0x5

    goto :goto_2
.end method

.method public updateTitleText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->titleExpanded:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->titleExpanded:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public updateToEmptyState(Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateSubtitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f08018c

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->title:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->deviceName:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->deviceName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setControlsEnabled(Z)V

    return-void
.end method

.method protected updateViewsForPanelChange(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->isShowingViewForExpanded:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->isShowingViewForExpanded:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->isShowingViewForExpanded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_2

    const-string/jumbo v0, "MdxMiniPlayerViews"

    const-string/jumbo v1, "Views already updated for panel expansion - skipping"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->isShowingViewForExpanded:Ljava/lang/Boolean;

    const-string/jumbo v0, "MdxMiniPlayerViews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updating views for panel expansion, expanded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->isShowingViewForExpanded:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->isShowingViewForExpanded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->collapsedViews:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->fadeOutAndHide(Ljava/util/Collection;)V

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->rotateCaretTo(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->collapsedViews:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->fadeInAndShow(Ljava/util/Collection;)V

    const/16 v0, 0xb4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->rotateCaretTo(I)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateEpisodeButtonVisibility()V

    goto :goto_1
.end method

.method protected updateViewsForSeekBarUsage(Z)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    new-array v0, v4, [Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->auxControlsGroup:Landroid/view/View;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playcardControlsGroup:Landroid/view/View;

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->fadeOut([Landroid/view/View;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->deviceNameGroup:Landroid/view/View;

    if-eqz v0, :cond_0

    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->deviceNameGroup:Landroid/view/View;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->fadeOutAndHide([Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->auxControlsGroup:Landroid/view/View;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playcardControlsGroup:Landroid/view/View;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->deviceNameGroup:Landroid/view/View;

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->fadeInAndShow([Landroid/view/View;)V

    goto :goto_0
.end method
