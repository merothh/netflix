.class public Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;
.super Landroid/database/DataSetObserver;
.source "LoLoMoFocusHandler.java"


# static fields
.field private static final LEFT:Z = false

.field private static final LOG_VERBOSE:Z = false

.field private static final RIGHT:Z = true

.field private static final TAG:Ljava/lang/String; = "LoLoMoFocusHandler"

.field private static final VIEW_ID_ROW_MULTIPLIER:I = 0x3e8

.field private static viewIdsValidated:Z


# instance fields
.field private final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private col:I

.field private final listView:Landroid/widget/ListView;

.field private prevFocusView:Landroid/view/View;

.field private row:I

.field private touchEnabled:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/ListView;)V
    .locals 1

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->touchEnabled:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->validateViewIdsIfNecessary()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->listView:Landroid/widget/ListView;

    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler$1;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->touchEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->touchEnabled:Z

    return p1
.end method

.method private canScrollHorizontally(Z)Z
    .locals 3

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->col:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->listView:Landroid/widget/ListView;

    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->row:I

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->computeViewId(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->col:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private computeColFromViewId(I)I
    .locals 1

    rem-int/lit16 v0, p1, 0x3e8

    return v0
.end method

.method private computeCurrViewId()I
    .locals 2

    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->row:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->col:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->computeViewId(II)I

    move-result v0

    return v0
.end method

.method public static computeViewId(II)I
    .locals 1

    add-int/lit8 v0, p0, 0x1

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, p1

    return v0
.end method

.method private disableTouchMode()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->touchEnabled:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->touchEnabled:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->requestFocusAtCurrPos()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getVideoViewGroup(Landroid/view/View;)Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup",
            "<**>;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :cond_1
    instance-of v2, v0, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private getViewPager(Landroid/view/View;)Lcom/viewpagerindicator/android/osp/ViewPager;
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->getVideoViewGroup(Landroid/view/View;)Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager;

    goto :goto_0
.end method

.method private handleDpadEvent(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "LoLoMoFocusHandler"

    const-string/jumbo v1, "Unknown keyCode"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->row:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->row:I

    move v2, v1

    :goto_1
    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->requestFocusAtCurrPos()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->scrollHorizontallyIfRequired()V

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->row:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->row:I

    move v2, v1

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->canScrollHorizontally(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->col:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->col:I

    move v2, v0

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->canScrollHorizontally(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->col:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->col:I

    move v2, v0

    goto :goto_1

    :cond_1
    const/16 v2, 0x14

    if-ne p1, v2, :cond_2

    :goto_2
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->handleVerticalKeyEvent(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->row:I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->scrollVertically(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleVerticalKeyEvent(Z)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->prevFocusView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->prevFocusView:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->prevFocusView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->listView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->prevFocusView:Landroid/view/View;

    :cond_0
    if-eqz p1, :cond_2

    const/16 v0, 0x82

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->prevFocusView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/view/MenuItem;

    if-eqz v2, :cond_3

    :cond_1
    move v0, v1

    :goto_1
    return v0

    :cond_2
    const/16 v0, 0x21

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->getVideoViewGroup(Landroid/view/View;)Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->col:I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->getChildCount()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->computeColFromViewId(I)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->col:I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->requestFocusAtCurrPos()V

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private requestFocusAtCurrPos()V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->computeCurrViewId()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->prevFocusView:Landroid/view/View;

    goto :goto_0
.end method

.method private scrollHorizontallyIfRequired()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->listView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->computeCurrViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->getViewPager(Landroid/view/View;)Lcom/viewpagerindicator/android/osp/ViewPager;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int v3, v2, v0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->getCurrentItem()I

    move-result v0

    if-gez v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_1
    :goto_1
    invoke-virtual {v1, v0, v5, v5}, Lcom/viewpagerindicator/android/osp/ViewPager;->setCurrentItem(IZZ)V

    goto :goto_0

    :cond_2
    if-le v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private scrollVertically(I)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    return-void
.end method

.method private validateViewIdsIfNecessary()V
    .locals 0

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->disableTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->handleDpadEvent(I)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onChanged()V
    .locals 0

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    return-void
.end method
