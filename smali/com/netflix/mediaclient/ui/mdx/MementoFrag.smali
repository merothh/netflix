.class public Lcom/netflix/mediaclient/ui/mdx/MementoFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "MementoFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;


# static fields
.field public static final PAGER_INDEX:Ljava/lang/String; = "pagerIndex"

.field public static final POS_TAG:Ljava/lang/String; = "POS_TAG"

.field public static final SHOW_RDP:Ljava/lang/String; = "showRDP"

.field private static final TAG:Ljava/lang/String; = "MementoFrag"


# instance fields
.field private actors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/FalkorPerson;",
            ">;"
        }
    .end annotation
.end field

.field private currentTint:I

.field protected final errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field private isLoading:Z

.field private leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

.field private pager:Lcom/viewpagerindicator/android/osp/ViewPager;

.field private pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

.field private relatedTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/MementoVideoSwatch;",
            ">;"
        }
    .end annotation
.end field

.field private requestId:J

.field resetPager:Z

.field private stills:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/FalkorActorStill;",
            ">;"
        }
    .end annotation
.end field

.field private tabLayout:Landroid/support/design/widget/TabLayout;

.field private tintColors:[I

.field private tintIndex:I

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->relatedTitles:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->actors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->stills:Ljava/util/List;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tintColors:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tintIndex:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tintColors:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->currentTint:I

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$2;-><init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->resetPager:Z

    return-void

    nop

    :array_0
    .array-data 4
        -0x45000000    # -0.001953125f
        -0x4410a1d3
        -0x447b57c2
        -0x441f66d9
        -0x44f18180
    .end array-data
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Lcom/viewpagerindicator/android/osp/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->showStandardViews()V

    return-void
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;I)I
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->currentTint:I

    return p1
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->resetTranslation(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)[I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tintColors:[I

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tintIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;I)I
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tintIndex:I

    return p1
.end method

.method static synthetic access$1408(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)I
    .locals 2

    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tintIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tintIndex:I

    return v0
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->showRDP(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->toggleTabs(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->actors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->actors:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->relatedTitles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->relatedTitles:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->requestId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->isLoading:Z

    return p1
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    return-object v0
.end method

.method static synthetic access$902(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->stills:Ljava/util/List;

    return-object p1
.end method

.method private fetchActorDetailsAndRelated()V
    .locals 6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "MementoFrag"

    const-string/jumbo v1, "Manager is null - can\'t reload data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->isLoading:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->requestId:J

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->hideStandardViews()V

    const-string/jumbo v1, "MementoFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fetching data for actor ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->videoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->videoId:Ljava/lang/String;

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$FetchActorDetailsCallback;

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->requestId:J

    invoke-direct {v2, p0, v4, v5}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$FetchActorDetailsCallback;-><init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;J)V

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchActorDetailsAndRelatedForTitle(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method private findViews(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0f021b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v0, 0x7f0f021c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    const v0, 0x7f0f021a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    return-void
.end method

.method private hideStandardViews()V
    .locals 3

    const/4 v1, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->setCurrentItem(I)V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    :cond_4
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->initTabs()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->initPager()V

    new-instance v0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v0, p1, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    return-void
.end method

.method private initPager()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$3;-><init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$4;-><init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-virtual {v1, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    const/4 v1, 0x0

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$5;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$5;-><init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)V

    invoke-virtual {v0, v1, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->setPageTransformer(ZLcom/viewpagerindicator/android/osp/ViewPager$PageTransformer;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Lcom/viewpagerindicator/android/osp/ViewPager;)V

    :cond_1
    return-void
.end method

.method private initTabs()V
    .locals 6

    const v5, 0x7f0f021f

    const v4, 0x7f0300a9

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->removeAllTabs()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08015f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080161

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;-><init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    :cond_0
    return-void
.end method

.method private isRDPShowing()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f0f022a

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private resetTranslation(I)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "POS_TAG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v0, 0x7f0f01f5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const v0, 0x7f0f01fa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "showRDP"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "pagerIndex"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$1;-><init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;IZ)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private showRDP(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isPanelExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0f022a

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f050002

    const v3, 0x7f050003

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-virtual {v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->setStillImageHeight(I)V

    iget v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->currentTint:I

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->setImageTint(I)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->setVideoId(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->setActorId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->reload()V

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setSlidingEnabled(Z)V

    goto :goto_0
.end method

.method private showStandardViews()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-virtual {v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->actors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->relatedTitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private toggleTabs(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->actors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->resetPager:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->relatedTitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->actors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    if-eq v0, v3, :cond_0

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->resetPager:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    goto :goto_0
.end method


# virtual methods
.method protected adjustHeight(Landroid/widget/ImageView;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0198

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/kubrick/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    sub-float v1, v3, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f400000    # 0.75f

    :goto_0
    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void

    :cond_0
    const/high16 v0, 0x3f100000    # 0.5625f

    goto :goto_0
.end method

.method public fetchData()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->fetchActorDetailsAndRelated()V

    return-void
.end method

.method getStill(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/model/branches/FalkorActorStill;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->stills:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->stills:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorActorStill;

    iget-object v3, v0, Lcom/netflix/model/branches/FalkorActorStill;->summary:Lcom/netflix/model/branches/FalkorActorStill$Summary;

    iget-object v3, v3, Lcom/netflix/model/branches/FalkorActorStill$Summary;->videoId:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/netflix/model/branches/FalkorActorStill;->summary:Lcom/netflix/model/branches/FalkorActorStill$Summary;

    iget-object v3, v3, Lcom/netflix/model/branches/FalkorActorStill$Summary;->videoId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/netflix/model/branches/FalkorActorStill;->summary:Lcom/netflix/model/branches/FalkorActorStill$Summary;

    iget-object v3, v3, Lcom/netflix/model/branches/FalkorActorStill$Summary;->personId:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public hideLoading()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    :cond_0
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string/jumbo v0, "MementoFrag"

    const-string/jumbo v1, "Creating new frag view..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0300a7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->findViews(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->init(Landroid/view/View;)V

    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->restoreInstanceState(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onRetryRequested()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->fetchActorDetailsAndRelated()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->isRDPShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "showRDP"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const-string/jumbo v0, "pagerIndex"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-virtual {v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->videoId:Ljava/lang/String;

    return-void
.end method
