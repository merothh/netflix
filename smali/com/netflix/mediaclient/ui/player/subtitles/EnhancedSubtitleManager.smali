.class public Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;
.super Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;
.source "EnhancedSubtitleManager.java"


# static fields
.field private static final DEFAULT_REGION_ID:Ljava/lang/String; = "DEFAULT"

.field private static final SAFE_DISPLAY_AREA_MARGIN:F = 5.0f


# instance fields
.field private mAspectRatio:Landroid/graphics/Point;

.field private mDefaultRegion:Landroid/widget/LinearLayout;

.field private mDefaultTextSize:F

.field private mDefaultsInitiated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mDoNotDraw:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

.field private mRegions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mSafeDisplayArea:Landroid/widget/RelativeLayout;

.field private mVisibleBlocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultsInitiated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 397
    new-instance v0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$1;-><init>(Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDoNotDraw:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 97
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultTextSize:F

    .line 103
    :goto_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mTransparent:I

    .line 104
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultTextSize:F

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->showSubtitleBlock(Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->removeSubtitleBlock(Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;Z)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->setVisibilityForAllRegions(Z)V

    return-void
.end method

.method private addRegion(Lcom/netflix/mediaclient/service/player/subtitles/text/Region;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 286
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Add region "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 289
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 291
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->setInitialRegionPosition(Lcom/netflix/mediaclient/service/player/subtitles/text/Region;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 292
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 293
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getHorizontalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 298
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getHorizontalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    move-result-object v1

    .line 302
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getVerticalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 303
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getVerticalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    move-result-object v0

    .line 306
    :cond_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 307
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    const-string/jumbo v3, "nf_subtitles_render"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Set gravity for region "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_1
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->toGravity(Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 312
    :cond_2
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method private calculateRegionSize(Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;Landroid/widget/LinearLayout;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;",
            "Landroid/widget/LinearLayout;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v9, -0x2

    const/4 v3, 0x0

    .line 712
    move v2, v3

    move-object v1, v4

    move v5, v3

    move v6, v3

    .line 715
    :goto_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 716
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;

    .line 717
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->toTextView(Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;)Landroid/widget/TextView;

    move-result-object v7

    .line 718
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getLineBreaks()I

    move-result v0

    if-lez v0, :cond_a

    .line 719
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v8, "This node belongs to its own line"

    invoke-static {v0, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    if-eqz v1, :cond_0

    .line 721
    invoke-virtual {v1, v3, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 722
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v5, v0

    .line 723
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 724
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    :cond_0
    move v0, v5

    move v1, v6

    move-object v5, v4

    .line 730
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/netflix/mediaclient/util/SubtitleUtils;->isNextNodeInSameLine(Ljava/util/List;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 731
    const-string/jumbo v6, "nf_subtitles_render"

    const-string/jumbo v8, "Next node is in same line, add current node to horizontal LL."

    invoke-static {v6, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    if-nez v5, :cond_1

    .line 733
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 734
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 735
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 736
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 742
    :cond_1
    :goto_2
    if-eqz v5, :cond_4

    .line 743
    const-string/jumbo v6, "nf_subtitles_render"

    const-string/jumbo v8, "Adding node to horizontal wrapper"

    invoke-static {v6, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 715
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v6, v1

    move-object v1, v5

    move v5, v0

    goto :goto_0

    .line 739
    :cond_3
    const-string/jumbo v6, "nf_subtitles_render"

    const-string/jumbo v8, "Next node is not in same line"

    invoke-static {v6, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 746
    :cond_4
    const-string/jumbo v6, "nf_subtitles_render"

    const-string/jumbo v8, "Adding node directly to a window region"

    invoke-static {v6, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {p2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 748
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v0, v6

    .line 749
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 750
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    goto :goto_3

    .line 755
    :cond_5
    if-eqz v1, :cond_9

    .line 756
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "Last horizontal wrapper needs to be measured"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-virtual {v1, v3, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 758
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v5, v0

    .line 759
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    if-ge v6, v0, :cond_6

    .line 760
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    .line 767
    :cond_6
    :goto_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 768
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Region after text nodes added, calculated w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_7
    invoke-virtual {p2, v3, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 773
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 774
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Region after text nodes added, measured w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_8
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 763
    :cond_9
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "No unmeasured last horizontal wrapper"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    move v0, v5

    move-object v5, v1

    move v1, v6

    goto/16 :goto_1
.end method

.method private declared-synchronized clearDelayedPosts()V
    .locals 3

    .prologue
    .line 493
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPendingActions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPendingActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 502
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 497
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPendingActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 498
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 501
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPendingActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private createRegions([Lcom/netflix/mediaclient/service/player/subtitles/text/Region;)V
    .locals 5

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->setMarginsForSafeDisplayArea()V

    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    const-string/jumbo v1, "DEFAULT"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 260
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "createRegions:: no region found to be added!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_1
    return-void

    .line 264
    :cond_2
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 266
    aget-object v1, p1, v0

    .line 267
    if-nez v1, :cond_3

    .line 268
    const-string/jumbo v1, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createRegions:: region is null on position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_3
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 272
    const-string/jumbo v2, "nf_subtitles_render"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createRegions:: region ID is null on position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". Ignore region "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 276
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 277
    const-string/jumbo v2, "nf_subtitles_render"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Create linear layout from region "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " on position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_5
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->addRegion(Lcom/netflix/mediaclient/service/player/subtitles/text/Region;)V

    goto :goto_1
.end method

.method private findRegionLayout(Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    .line 1047
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "findRegionLayout start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getRegion()Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    move-result-object v1

    .line 1051
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1052
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Block does not have region, put it in default region"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    .line 1073
    :goto_0
    return-object v0

    .line 1055
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1056
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Block have region "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1059
    if-nez v0, :cond_5

    .line 1060
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1061
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Regions known "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1063
    const-string/jumbo v3, "nf_subtitles_render"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Region \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\' found!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1065
    :cond_3
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Region NOT found for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'. Default to default region!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 1069
    :cond_5
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "LL for region found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private findTextView(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 629
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 630
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 631
    if-nez v0, :cond_1

    .line 632
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Text view can not be null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 637
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 638
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v4, "Text view found for removal"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 644
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    .line 645
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Text view NOT found for removal for block "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_3
    return-object v2
.end method

.method private getHorizontalOffsetForDisplayArea()I
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    .line 1192
    if-nez v0, :cond_0

    .line 1193
    const/4 v0, 0x0

    .line 1195
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->getHorizontalOffset()I

    move-result v0

    goto :goto_0
.end method

.method private getVerticalOffsetForDisplayArea()I
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    .line 1182
    if-nez v0, :cond_0

    .line 1183
    const/4 v0, 0x0

    .line 1185
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->getVerticalOffset()I

    move-result v0

    goto :goto_0
.end method

.method private moveRegionInsideVisibleDisplayArea(Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;IILandroid/graphics/Rect;)Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 977
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Margins, left: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", top: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", right: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bottom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_0
    new-instance v5, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;

    invoke-direct {v5}, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;-><init>()V

    .line 982
    iget v2, p1, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->top:I

    .line 983
    iget v4, p1, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->left:I

    .line 988
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lt v0, p3, :cond_3

    .line 989
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Original region is high enough, keep original measure"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget v0, p1, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->bottom:I

    .line 996
    :goto_0
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt v1, p2, :cond_4

    .line 997
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v6, "Original region is wide enough, keep original measure"

    invoke-static {v1, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget v1, p1, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->right:I

    .line 1004
    :goto_1
    const-string/jumbo v6, "nf_subtitles_render"

    const-string/jumbo v7, "Check if region bottom is lower than display area"

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    if-le v0, v6, :cond_5

    .line 1006
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    sub-int/2addr v0, v6

    sub-int v0, v2, v0

    .line 1007
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1008
    const-string/jumbo v2, "nf_subtitles_render"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "New top "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_1
    :goto_2
    const-string/jumbo v2, "nf_subtitles_render"

    const-string/jumbo v6, "Check if region top is higher than display area"

    invoke-static {v2, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    if-gez v0, :cond_6

    .line 1017
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "Top is 0"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1022
    :goto_3
    const-string/jumbo v2, "nf_subtitles_render"

    const-string/jumbo v6, "Check if region right is pass right of display area"

    invoke-static {v2, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_7

    .line 1024
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v1, v4, v1

    .line 1025
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1026
    const-string/jumbo v2, "nf_subtitles_render"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "New left "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_2
    :goto_4
    const-string/jumbo v2, "nf_subtitles_render"

    const-string/jumbo v4, "Check if region left is pass left of display area"

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    if-gez v1, :cond_8

    .line 1035
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Left is 0"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :goto_5
    iput v3, v5, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->left:I

    .line 1041
    iput v0, v5, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->top:I

    .line 1043
    return-object v5

    .line 992
    :cond_3
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Original region is NOT high enough, recalculate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget v0, p1, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->top:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVerticalRegionPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto/16 :goto_0

    .line 1000
    :cond_4
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v6, "Original region is NOT wide enough, recalculate"

    invoke-static {v1, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget v1, p1, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->left:I

    add-int/2addr v1, p2

    iget v6, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mHorizontalRegionPadding:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v1, v6

    goto/16 :goto_1

    .line 1011
    :cond_5
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v6, "No need to change top"

    invoke-static {v0, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_2

    .line 1019
    :cond_6
    const-string/jumbo v2, "nf_subtitles_render"

    const-string/jumbo v6, "No need to change top"

    invoke-static {v2, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1029
    :cond_7
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "No need to change left"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_4

    .line 1037
    :cond_8
    const-string/jumbo v2, "nf_subtitles_render"

    const-string/jumbo v3, "No need to change left"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    goto :goto_5
.end method

.method private removeAll(Z)V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->clearDelayedPosts()V

    .line 517
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->removeVisibleSubtitleBlocks(Z)V

    .line 518
    return-void
.end method

.method private removeBlock(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 583
    if-nez p1, :cond_1

    .line 584
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Block id can not be null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    .line 589
    :cond_2
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Views are null or empty, nothing to remove!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 593
    :cond_3
    const-string/jumbo v0, "DEFAULT"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 594
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, p3, p2}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->findTextView(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->removeViews(Landroid/widget/LinearLayout;Ljava/util/List;)V

    .line 599
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 600
    if-nez v0, :cond_5

    .line 601
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "Text view can not be null!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private declared-synchronized removeRegions()V
    .locals 6

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 220
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "removeRegions:: no region found to remove."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 224
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 225
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 226
    if-nez v1, :cond_2

    .line 227
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const-string/jumbo v1, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removing region "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is not possible. Region is null!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 232
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 233
    const-string/jumbo v3, "nf_subtitles_render"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Removing region "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 240
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private removeSubtitleBlock(Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V
    .locals 4

    .prologue
    .line 561
    if-nez p1, :cond_0

    .line 562
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Subtitle block can not be null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :goto_0
    return-void

    .line 566
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getRegion()Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    move-result-object v0

    .line 567
    if-nez v0, :cond_1

    .line 568
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove block from default region for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    const-string/jumbo v2, "DEFAULT"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string/jumbo v2, "DEFAULT"

    invoke-direct {p0, v1, v0, v2}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->removeBlock(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 571
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getId()Ljava/lang/String;

    move-result-object v1

    .line 572
    if-nez v1, :cond_2

    .line 573
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Region id can NOT be null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 575
    :cond_2
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remove block from region "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for block id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v2, v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->removeBlock(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private removeViews(Landroid/widget/LinearLayout;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 610
    if-nez p1, :cond_1

    .line 611
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Region is null, can not remove views!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    if-nez p2, :cond_2

    .line 616
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Blocks are null, can not remove views!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 620
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 621
    const-string/jumbo v2, "nf_subtitles_render"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Removing block from region "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 623
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private setAspectRatioIfNeeded()V
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getDisplayAspectRatioDimension()Landroid/graphics/Point;

    move-result-object v0

    .line 202
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const-string/jumbo v1, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AspectRatio dimensions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    if-nez v0, :cond_1

    .line 207
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "AspectRatio is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mAspectRatio:Landroid/graphics/Point;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mAspectRatio:Landroid/graphics/Point;

    invoke-virtual {v1, v0}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "AspectRatio not changed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    :cond_2
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "AspectRatio is changed, update"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mAspectRatio:Landroid/graphics/Point;

    .line 213
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->createMeasureTranslator(IILandroid/view/View;)Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    goto :goto_0
.end method

.method private setBackgroundColorToRegion(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V
    .locals 4

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;->getUserDefaults()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    .line 1085
    const/4 v1, 0x0

    .line 1086
    if-nez v0, :cond_0

    .line 1087
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "No user overides for window color"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1089
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    .line 1090
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getWindowColor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1091
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getWindowOpacity()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getWindowColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->resolveColor(Ljava/lang/Float;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1099
    :goto_0
    if-nez v0, :cond_1

    .line 1100
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Sets region background color to transparent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1108
    :goto_1
    return-void

    .line 1095
    :cond_0
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "User overides found for window color"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getWindowOpacity()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getWindowColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->resolveColor(Ljava/lang/Float;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1103
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1104
    const-string/jumbo v1, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sets region background color to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private setDefaults()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 111
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Find root display area"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->isDisplayAreaVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Create safe display area"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mSafeDisplayArea:Landroid/widget/RelativeLayout;

    .line 118
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 120
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mSafeDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Create safe display area done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Create default region"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    .line 125
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 126
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 127
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 128
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mSafeDisplayArea:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    const-string/jumbo v1, "DEFAULT"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultsInitiated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method private setInitialRegionPosition(Lcom/netflix/mediaclient/service/player/subtitles/text/Region;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 10

    .prologue
    const/4 v9, -0x2

    .line 316
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Set initial region position"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getExtent()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v1

    .line 318
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getOrigin()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v2

    .line 320
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/SubtitleUtils;->createRegionForRectangle(Landroid/view/View;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Landroid/graphics/Rect;

    move-result-object v3

    .line 322
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 323
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v4, "Region w/h not know, wrap around content"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 351
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->setMargins(Landroid/widget/RelativeLayout$LayoutParams;Landroid/graphics/Rect;)V

    .line 355
    :cond_1
    return-object v0

    .line 327
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 328
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 329
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Display area: w/h: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Region w/h "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " known, set them"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 338
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 339
    const-string/jumbo v6, "nf_subtitles_render"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "h: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", maxHeight: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_4
    if-ge v5, v0, :cond_5

    .line 343
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v5, "Use wrap content for height"

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    .line 346
    :cond_5
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v6, "Use region height"

    invoke-static {v0, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0
.end method

.method private setMargins(Landroid/widget/RelativeLayout$LayoutParams;Landroid/graphics/Rect;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 360
    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 361
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 362
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iget v4, p2, Landroid/graphics/Rect;->right:I

    sub-int v4, v0, v4

    .line 363
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v5

    .line 365
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 366
    const-string/jumbo v5, "nf_subtitles_render"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Display area w/h"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string/jumbo v5, "nf_subtitles_render"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Margins, left: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", top: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", right: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", bottom: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    if-gez v0, :cond_2

    .line 371
    const-string/jumbo v5, "nf_subtitles_render"

    const-string/jumbo v6, "Bottom margin is less than 0, correct"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    add-int/2addr v2, v0

    .line 374
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Margins, left: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", top: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", right: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", bottom: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    .line 378
    :cond_2
    if-gez v2, :cond_5

    .line 379
    const-string/jumbo v5, "nf_subtitles_render"

    const-string/jumbo v6, "Top margin is less than 0, correct"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    add-int/2addr v0, v2

    .line 382
    if-gez v0, :cond_3

    .line 383
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "Bottom margin is left than 0, after fixing top, set to 0"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 386
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 387
    const-string/jumbo v2, "nf_subtitles_render"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Margins, left: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", top: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", right: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", bottom: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_4
    :goto_0
    invoke-virtual {p1, v3, v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 392
    return-void

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method private setMarginsForSafeDisplayArea()V
    .locals 4

    .prologue
    const/high16 v3, 0x40a00000    # 5.0f

    .line 245
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Sets margin for safe display area"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mSafeDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 247
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 248
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 249
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 250
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mSafeDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    return-void
.end method

.method private setRegionPosition(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/Region;)V
    .locals 10

    .prologue
    .line 844
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Set region position"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getExtent()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v1

    .line 846
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getOrigin()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v2

    .line 848
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 850
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-static {v3, v1, v2}, Lcom/netflix/mediaclient/util/SubtitleUtils;->createRegionForRectangle(Landroid/view/View;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Landroid/graphics/Rect;

    move-result-object v3

    .line 851
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 852
    :cond_0
    const-string/jumbo v4, "nf_subtitles_render"

    const-string/jumbo v5, "Region w/h not know, skip setting w/h"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 882
    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->setMargins(Landroid/widget/RelativeLayout$LayoutParams;Landroid/graphics/Rect;)V

    .line 885
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 887
    return-void

    .line 855
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 856
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 857
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 858
    const-string/jumbo v6, "nf_subtitles_render"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Display area: w/h: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " Region w/h "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " known, set them"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_3
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    .line 866
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 867
    const-string/jumbo v7, "nf_subtitles_render"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "h: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", maxHeight: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_4
    if-ge v5, v6, :cond_5

    .line 871
    const-string/jumbo v5, "nf_subtitles_render"

    const-string/jumbo v6, "Use wrap content for height"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 873
    const/4 v4, -0x2

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_0

    .line 875
    :cond_5
    const-string/jumbo v6, "nf_subtitles_render"

    const-string/jumbo v7, "Use region height"

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 877
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_0
.end method

.method private setVisibilityForAllRegions(Z)V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 487
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_1

    .line 489
    :cond_1
    return-void
.end method

.method private shouldUpdateRegionPosition(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/Region;II)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 900
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getExtent()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->canUse(Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getOrigin()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->canUse(Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 902
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getExtent()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getOrigin()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/util/SubtitleUtils;->createRegionForRectangle(Landroid/view/View;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Landroid/graphics/Rect;

    move-result-object v1

    .line 903
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v2, p4, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v2, p3, :cond_0

    .line 904
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Text does not fit into region by height AND width. Update region position taking into account measured data."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :goto_0
    return v0

    .line 906
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v2, p4, :cond_1

    .line 907
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Text does not fit into region by height. Update region position taking into account measured data."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 909
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ge v1, p3, :cond_2

    .line 910
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Text does not fit into region by width. Update region position taking into account measured data."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 913
    :cond_2
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Text fits into region."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSubtitleBlock(Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, -0x2

    const/4 v1, 0x1

    .line 658
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 659
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Block is empty! Can not show!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :goto_0
    return-void

    .line 663
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 664
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Show subtitle block: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_2
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->findRegionLayout(Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 669
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 670
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "LL for region "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_3
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 675
    if-eqz p2, :cond_4

    .line 676
    new-instance v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;

    invoke-direct {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;-><init>(Landroid/view/View;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_4
    invoke-static {v2, p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->isPositionDefinedInBlock(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 682
    :goto_1
    invoke-static {v2, p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->setAlignmentToRegion(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V

    .line 685
    if-eqz v0, :cond_6

    .line 686
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v3, "Using extent/origin from original region, add wrapper region that will be wrapped around block and that will be used for background color for region"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 688
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->setAlignmentToRegion(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V

    .line 689
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    iget v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mHorizontalRegionPadding:I

    iget v4, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVerticalRegionPadding:I

    iget v5, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mHorizontalRegionPadding:I

    iget v6, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVerticalRegionPadding:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 691
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 692
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v1, v0

    .line 697
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->calculateRegionSize(Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;Landroid/widget/LinearLayout;)Landroid/util/Pair;

    move-result-object v3

    .line 698
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v2, p1, v4, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->updatePositionIfNeeded(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;II)V

    .line 699
    invoke-direct {p0, v1, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->setBackgroundColorToRegion(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V

    .line 700
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->displayed()V

    goto/16 :goto_0

    .line 680
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 694
    :cond_6
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Using extent/origin from block, region will be wrapped around block and background color will be applied to it."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_2
.end method

.method private showSubtitleBlocks(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 414
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDoNotDraw:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 415
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 416
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;

    .line 417
    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->showSubtitleBlock(Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;Ljava/util/List;)V

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->moveBlocksAppartIfNeeded(Ljava/util/List;)V

    .line 421
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->makeItVisible(Ljava/util/List;)V

    .line 423
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDoNotDraw:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 424
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->forceLayout()V

    .line 425
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 426
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 428
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Add displayed block to pending queue to be removed at end time"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->handleDelayedSubtitleBlocks(Ljava/util/List;Z)V

    .line 430
    return-void
.end method

.method private toTextView(Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;)Landroid/widget/TextView;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 1112
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getLineBreaks()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->createText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1113
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Create text view from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Text to set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_0
    new-instance v2, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;-><init>()V

    .line 1119
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;->getUserDefaults()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->merge(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    .line 1120
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->merge(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    .line 1123
    invoke-static {v2}, Lcom/netflix/mediaclient/util/SubtitleUtils;->isStrokeTextViewRequired(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1124
    new-instance v0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/android/widget/StrokeTextView;-><init>(Landroid/content/Context;)V

    .line 1129
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1130
    invoke-virtual {v0, v6}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setSingleLine(Z)V

    .line 1131
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1133
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getUnderline()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1134
    const-string/jumbo v3, "nf_subtitles_render"

    const-string/jumbo v4, "Sets underline"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    invoke-virtual {v0, v6}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setUnderline(Z)V

    .line 1137
    :cond_1
    iget v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultTextSize:F

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/util/SubtitleUtils;->applyStyle(Landroid/widget/TextView;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;F)V

    .line 1138
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setGravity(I)V

    .line 1141
    invoke-virtual {v0, v5, v5}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->measure(II)V

    .line 1143
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1144
    const-string/jumbo v1, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Post measure text view mw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_2
    return-object v0

    .line 1126
    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private updatePositionIfNeeded(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;II)V
    .locals 6

    .prologue
    .line 790
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "updatePositionIfNeeded start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getRegion()Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    move-result-object v1

    .line 793
    if-nez v1, :cond_1

    .line 794
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "updatePositionIfNeeded no region, no update"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "updatePositionIfNeeded start for real"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    .line 800
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "updatePositionIfNeeded no text blocks!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 804
    :cond_2
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;

    .line 805
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    if-nez v0, :cond_4

    .line 806
    :cond_3
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "updatePositionIfNeeded p missing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 810
    :cond_4
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getExtent()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v4

    .line 811
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getOrigin()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v5

    .line 814
    invoke-static {v4}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->canUse(Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v5}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->canUse(Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 815
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "updatePositionIfNeeded using block extent and origin overrides"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    .line 816
    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->updateRegionPosition(Landroid/widget/LinearLayout;IILcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)V

    goto :goto_0

    .line 819
    :cond_5
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "updatePositionIfNeeded using region defaults for extent and origin"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 822
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Region h "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", needed h "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_6
    invoke-direct {p0, p1, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->setRegionPosition(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/Region;)V

    .line 829
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->shouldUpdateRegionPosition(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/Region;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getExtent()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v4

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getOrigin()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->updateRegionPosition(Landroid/widget/LinearLayout;IILcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)V

    goto/16 :goto_0
.end method

.method private updateRegionPosition(Landroid/widget/LinearLayout;IILcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 922
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 924
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 925
    const-string/jumbo v1, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Display area: w "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", h "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-static {v1, p4, p5}, Lcom/netflix/mediaclient/util/SubtitleUtils;->createRegionForRectangle(Landroid/view/View;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Landroid/graphics/Rect;

    move-result-object v2

    .line 929
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-static {v1, p4, p5}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getMarginsForRectangle(Landroid/view/View;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;

    move-result-object v1

    .line 930
    invoke-direct {p0, v1, p2, p3, v2}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->moveRegionInsideVisibleDisplayArea(Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;IILandroid/graphics/Rect;)Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;

    move-result-object v3

    .line 936
    iget v1, v3, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->left:I

    iget v4, v3, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->top:I

    invoke-virtual {v0, v1, v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 939
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lt v1, p3, :cond_1

    .line 940
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v4, "Original region is high enough, keep original measure"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 942
    iget v1, v3, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v1, v4

    .line 949
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lt v4, p2, :cond_2

    .line 950
    const-string/jumbo v4, "nf_subtitles_render"

    const-string/jumbo v5, "Original region is wide enough, keep original measure"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 952
    iget v4, v3, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v4

    .line 960
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v3, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->left:I

    iget v3, v3, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->top:I

    invoke-direct {v4, v5, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 961
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 963
    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mHorizontalRegionPadding:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVerticalRegionPadding:I

    iget v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mHorizontalRegionPadding:I

    iget v4, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVerticalRegionPadding:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 964
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 965
    return-void

    .line 944
    :cond_1
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v4, "Original region is NOT high enough, recalculate"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVerticalRegionPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 946
    iget v1, v3, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->top:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    add-int/2addr v1, v4

    goto :goto_0

    .line 954
    :cond_2
    const-string/jumbo v2, "nf_subtitles_render"

    const-string/jumbo v4, "Original region is NOT wide enough, recalculate"

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mHorizontalRegionPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 956
    iget v2, v3, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->left:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v2, v4

    goto :goto_1
.end method


# virtual methods
.method public canHandleSubtitleProfile(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1163
    if-nez p1, :cond_1

    .line 1172
    :cond_0
    :goto_0
    return v0

    .line 1168
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-eq p1, v1, :cond_0

    .line 1172
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 506
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Remove current and pending actions"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->removeAll(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    monitor-exit p0

    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearPendingUpdates()V
    .locals 0

    .prologue
    .line 1152
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->clearDelayedPosts()V

    .line 1153
    return-void
.end method

.method protected createRunnable(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;Z)Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 435
    check-cast p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;

    .line 436
    new-instance v0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;-><init>(Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;ZLcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V

    .line 457
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPendingActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    return-object v0
.end method

.method public bridge synthetic getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    .prologue
    .line 1157
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->ENHANCED:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-object v0
.end method

.method public declared-synchronized onPlayerOverlayVisibiltyChange(Z)V
    .locals 6

    .prologue
    .line 1202
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Player UI is now visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 1207
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1208
    if-eqz p1, :cond_2

    .line 1210
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->getDisplayAreaMarginTop()I

    move-result v1

    .line 1211
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->getDisplayAreaMarginBottom()I

    move-result v2

    .line 1212
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1213
    const-string/jumbo v3, "nf_subtitles_render"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Add bottom/top margin to display area on visible. Bottom margin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", top margin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->getHorizontalOffsetForDisplayArea()I

    move-result v3

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->getHorizontalOffsetForDisplayArea()I

    move-result v4

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1220
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->removeVisibleSubtitleBlocks(Z)V

    .line 1221
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1222
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1226
    :goto_1
    monitor-exit p0

    return-void

    .line 1217
    :cond_2
    :try_start_1
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Reset all margins to display area on not visible"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->getHorizontalOffsetForDisplayArea()I

    move-result v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->getVerticalOffsetForDisplayArea()I

    move-result v2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->getHorizontalOffsetForDisplayArea()I

    move-result v3

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->getVerticalOffsetForDisplayArea()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1224
    :cond_3
    :try_start_2
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Display area is null, unable to set margins!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized onSubtitleChange(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;)V
    .locals 4

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "EnhancedSubtitleManager:: update subtitle data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-nez p1, :cond_1

    .line 147
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Subtitle data is null. This should never happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 151
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    if-nez v0, :cond_2

    .line 152
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Subtitle parser is null. This should never happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 158
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;

    if-nez v0, :cond_3

    .line 159
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Drop subtitle change! Timing issue, subtitles are supposed to be text based and parser is not, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultsInitiated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 168
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Try to set defaults. They were not initialized before"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->setDefaults()V

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultsInitiated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 171
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Initialization was ok, proceed with subtitles."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->removeAll(Z)V

    .line 179
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->setAspectRatioIfNeeded()V

    .line 181
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mSubtitleParserId:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mSubtitleParserId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_7

    .line 183
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Same subtitles file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mSubtitleParserId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getDisplayNowBlocks()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->showSubtitleBlocks(Ljava/util/List;)V

    .line 196
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getDisplayLaterBlocks()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->handleDelayedSubtitleBlocks(Ljava/util/List;Z)V

    goto/16 :goto_0

    .line 173
    :cond_6
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Initialization was NOT ok, exit."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 187
    :cond_7
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 188
    const-string/jumbo v1, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Subtitles file changed. Was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mSubtitleParserId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ". (Re) create regions!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_8
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mSubtitleParserId:Ljava/lang/Integer;

    .line 191
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->removeRegions()V

    .line 192
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;->getRegions()[Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->createRegions([Lcom/netflix/mediaclient/service/player/subtitles/text/Region;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onSubtitleRemove()V
    .locals 2

    .prologue
    .line 137
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Remove all subtitles."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->removeAll(Z)V

    .line 139
    return-void
.end method

.method protected declared-synchronized removeVisibleSubtitleBlocks(Z)V
    .locals 5

    .prologue
    .line 527
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mTransparent:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 529
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 530
    if-eqz p1, :cond_3

    .line 531
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 537
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 538
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 539
    const-string/jumbo v1, "nf_subtitles_render"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Removing visible blocks for region "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 542
    if-nez v1, :cond_4

    .line 543
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    const-string/jumbo v1, "nf_subtitles_render"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Region not found for id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ". Probably default region."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 533
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    goto :goto_0

    .line 547
    :cond_4
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mTransparent:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 548
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 549
    if-eqz p1, :cond_5

    .line 550
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_1

    .line 552
    :cond_5
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    goto :goto_1

    .line 556
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setSubtitleVisibility(Z)V
    .locals 3

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EnhancedSubtitleManager:: set subtitle visibility to visible "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$3;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$3;-><init>(Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    monitor-exit p0

    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
