.class abstract Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;
.super Ljava/lang/Object;
.source "BaseSubtitleManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;


# static fields
.field protected static final H_REGION_PADDING:I = 0x5

.field protected static final PLAYER_PADDING_PHONE:I = 0x2e

.field protected static final PLAYER_PADDING_TABLET:I = 0x3b

.field protected static final TAG:Ljava/lang/String; = "nf_subtitles_render"

.field protected static final TOP_PADDING:I = 0x5

.field protected static final V_REGION_PADDING:I = 0x1


# instance fields
.field protected mBottomPanelHeight:I

.field protected mBottomPanelPadding:I

.field protected mDisplayArea:Landroid/widget/RelativeLayout;

.field protected mHandler:Landroid/os/Handler;

.field protected mHorizontalRegionPadding:I

.field protected mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

.field protected mPendingActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field protected mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

.field protected mSubtitleParserId:Ljava/lang/Integer;

.field protected mTopPanel:Landroid/view/View;

.field protected mTopPanelPadding:I

.field protected mTransparent:I

.field protected mVerticalRegionPadding:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 5

    const/4 v4, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mPendingActions:Ljava/util/List;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Player screen is not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Create handler."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f028f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "Display area w/h are 0, display area is not visible yet!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mHorizontalRegionPadding:I

    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mVerticalRegionPadding:I

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x3b

    :goto_0
    invoke-static {v2, v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mBottomPanelPadding:I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a01ee

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mBottomPanelHeight:I

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mTopPanelPadding:I

    const v0, 0x7f0f0295

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mTopPanel:Landroid/view/View;

    return-void

    :cond_4
    const/16 v0, 0x2e

    goto :goto_0
.end method


# virtual methods
.method protected abstract createRunnable(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;Z)Ljava/lang/Runnable;
.end method

.method public getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method protected getDisplayAreaMarginBottom()I
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/util/DeviceUtils;->hasHardwareNavigationKeys()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->isNavigationBarRightOfContent(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mBottomPanelHeight:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mBottomPanelPadding:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->isNavigationBarBelowContent(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mBottomPanelHeight:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mBottomPanelPadding:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mBottomPanelHeight:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mBottomPanelPadding:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected getDisplayAreaMarginTop()I
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mTopPanel:Landroid/view/View;

    if-nez v1, :cond_0

    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Top panel is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mTopPanelPadding:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mTopPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mTopPanelPadding:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected handleDelayedSubtitleBlocks(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "nf_subtitles_render"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Posting delayed block by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->getEnd()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " [ms]. Display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for block "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p2}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->createRunnable(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;Z)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->getEnd()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected isDisplayAreaVisible()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Display area NOT found! This should NOT happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Display area w/h are 0, display area is not visible yet, postpone getting w/h"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected makeItVisible(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected moveBlocksAppartIfNeeded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->REVERSE_SORT_BY_TOP:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->moveBlocksUpIfNeeded(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Blocks moved appart, but we hit top, reorder blocks and move appart by pushing to bottom"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->SORT_BY_TOP:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Sorted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->moveBlocksBottomIfNeeded(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Blocks moved appart, no issues"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected moveBlocksBottomIfNeeded(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    add-int/lit8 v0, v2, 0x1

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Blocks "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " test "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->getView()Landroid/view/View;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    invoke-static {v4, v0, v5}, Lcom/netflix/mediaclient/util/SubtitleUtils;->adjustIfIntersectByMovingSecondDown(Landroid/view/View;Landroid/view/View;I)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected moveBlocksUpIfNeeded(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    move v3, v0

    move v1, v0

    :goto_0
    if-ge v3, v4, :cond_3

    add-int/lit8 v0, v3, 0x1

    move v2, v1

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Blocks "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " test "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->getView()Landroid/view/View;

    move-result-object v5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->adjustIfIntersectByMovingFirstUp(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "We hit top!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v1, v2

    goto :goto_0

    :cond_3
    return v1
.end method

.method protected abstract removeVisibleSubtitleBlocks(Z)V
.end method
