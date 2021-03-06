.class public abstract Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseLoLoMoAdapter.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseLoLoMoAdapter"


# instance fields
.field protected final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field protected final frag:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

.field private hasMoreData:Z

.field private isLoading:Z

.field private loMoStartIndex:I

.field private final lolomoId:Ljava/lang/String;

.field private lomoRequestId:J

.field private lomoRequestPending:Z

.field private final lomos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

.field private mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

.field private manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field private final pagerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;",
            ">;"
        }
    .end annotation
.end field

.field private final viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->pagerSet:Ljava/util/Set;

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->isLoading:Z

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomos:Ljava/util/List;

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomoRequestPending:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->frag:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getViewRecycler()Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lolomoId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->hasMoreData:Z

    return v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->hasMoreData:Z

    return p1
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomoRequestPending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;)J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomoRequestId:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->isLoading:Z

    return p1
.end method

.method private areRequestsPending()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomoRequestPending:Z

    return v0
.end method

.method private createRowContent(Landroid/widget/LinearLayout;Landroid/view/View;)Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    new-instance v3, Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v3, v0}, Lcom/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->frag:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->isGenreList()Z

    move-result v6

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/viewpagerindicator/CirclePageIndicator;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->pagerSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v7}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->setFocusable(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v8}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    const v1, -0xafafb0

    invoke-virtual {v3, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setRadius(F)V

    invoke-virtual {v3, v7}, Lcom/viewpagerindicator/CirclePageIndicator;->setStrokeColor(I)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setStrokeWidth(F)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getOnPageChangeListener()Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;)V

    invoke-virtual {v3, v0}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Lcom/viewpagerindicator/android/osp/ViewPager;)V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    invoke-virtual {v3, v7, v7}, Lcom/viewpagerindicator/CirclePageIndicator;->measure(II)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3}, Lcom/viewpagerindicator/CirclePageIndicator;->getMeasuredHeight()I

    move-result v2

    mul-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createViewsAndHolder(Landroid/view/View;)Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;
    .locals 6

    const-string/jumbo v0, "BaseLoLoMoAdapter"

    const-string/jumbo v1, "creating views and holder"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0f01c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    const v0, 0x7f0f01c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0e0046

    :goto_0
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->createRowContent(Landroid/widget/LinearLayout;Landroid/view/View;)Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->initTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v3

    const v0, 0x7f0f01dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->createHolder(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;Landroid/view/View;)Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;

    move-result-object v0

    return-object v0

    :cond_0
    const v1, 0x7f0e00b5

    goto :goto_0
.end method

.method private fetchMoreData()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->isLoading:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomoRequestId:J

    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->loMoStartIndex:I

    add-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, -0x1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BaseLoLoMoAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fetching more data, starting at index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->loMoStartIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "BaseLoLoMoAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fetching from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->loMoStartIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lolomoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-nez v1, :cond_1

    const-string/jumbo v0, "BaseLoLoMoAdapter"

    const-string/jumbo v1, "Manager is null - can\'t refresh data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lolomoId:Ljava/lang/String;

    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->loMoStartIndex:I

    new-instance v3, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomoRequestId:J

    iget v6, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->loMoStartIndex:I

    sub-int v6, v0, v6

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;-><init>(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;JI)V

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->makeFetchRequest(Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)V

    goto :goto_0
.end method

.method private getUserMessage()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleUserMessage()Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->frag:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getUserMessage()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->frag:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getContentView()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->show(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Landroid/widget/ListView;Landroid/view/ViewGroup;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideLoadingAndErrorViews()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->frag:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->hideLoadingAndErrorViews()V

    return-void
.end method

.method private isAnyPagerLoading()Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->pagerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRowAfterBillboardOrCwRow(ILcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->BILLBOARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private refreshUserMessage()V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getUserMessage()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->isStale()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->isConsumed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "BaseLoLoMoAdapter"

    const-string/jumbo v1, "User message is stale or consumed, refreshing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->refreshCurrentUserMessageArea()V

    :cond_1
    return-void
.end method

.method private showErrorView()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->frag:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->showErrorView()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected createDummyView()Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method protected createHolder(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;Landroid/view/View;)Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;-><init>(Landroid/view/View;Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;Landroid/view/View;)V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getGenreId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lolomoId:Ljava/lang/String;

    return-object v0
.end method

.method public getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->DISCOVERY_ROW:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-object v0
.end method

.method protected getShelfVisibility(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->isRowAfterBillboardOrCwRow(ILcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BaseLoLoMoAdapter"

    const-string/jumbo v1, "activity is destroyed - can\'t getView"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->createDummyView()Landroid/view/View;

    move-result-object p2

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getViewLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->createViewsAndHolder(Landroid/view/View;)Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v0, "BaseLoLoMoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Trying to show data for null lomo! Position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->hasMoreData:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->fetchMoreData()V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;

    invoke-virtual {p0, v0, v1, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->updateRowViews(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V

    goto :goto_1
.end method

.method protected getViewLayoutId()I
    .locals 1

    const v0, 0x7f03008f

    return v0
.end method

.method public getViewTypeCount()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola2Utils;->isCoppolaDiscovery(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected initLoadingState()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->dismiss(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    :cond_0
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomoRequestId:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomoRequestPending:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->hasMoreData:Z

    iput v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->loMoStartIndex:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected initTitleView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 4

    const v0, 0x7f0f01c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BaseLoLoMoAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Manipulating title padding, view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->getLomoFragImageOffsetLeftPx(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setPaddingStart(Landroid/view/View;I)V

    :cond_1
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract isGenreList()Z
.end method

.method public isLoadingData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->isLoading:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->isAnyPagerLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract makeFetchRequest(Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->hideLoadingAndErrorViews()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->areRequestsPending()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->showErrorView()V

    goto :goto_0
.end method

.method protected onDataLoaded(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;->onDataLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->pagerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->destroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->refreshData()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->refreshUserMessage()V

    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->pagerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->onPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->pagerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public refreshData()V
    .locals 2

    const-string/jumbo v0, "BaseLoLoMoAdapter"

    const-string/jumbo v1, "Refreshing data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->isLoading:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->initLoadingState()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->fetchMoreData()V

    return-void
.end method

.method public setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->isLoadingData()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;->onDataLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    goto :goto_0
.end method

.method protected updateLoMoData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->handleUserMessage()Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->loMoStartIndex:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->loMoStartIndex:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected updateRowViews(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;",
            "TT;I)V"
        }
    .end annotation

    const/16 v6, 0x14

    const/16 v5, 0xe

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BaseLoLoMoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Updating LoMo row content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->title:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->BILLBOARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x7f08021a

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->DISCOVERY_ROW:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f08012c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->title:Landroid/widget/TextView;

    const-string/jumbo v1, "sans-serif-light"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->title:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_1
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->shelf:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->shelf:Landroid/view/View;

    invoke-virtual {p0, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getShelfVisibility(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->rowContent:Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;

    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;->refresh(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->contentGroup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/api/Api16Util;->setBackgroundDrawableCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->contentGroup:Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->defaultTitleColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void

    :cond_3
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->title:Landroid/widget/TextView;

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v2, p2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getLomoRowTitleVisibility(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
