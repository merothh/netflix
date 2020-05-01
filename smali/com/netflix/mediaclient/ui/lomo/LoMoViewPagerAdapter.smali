.class public Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "LoMoViewPagerAdapter.java"


# static fields
.field private static final LOMO_TYPE_TABLE:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;",
            "Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LoMoViewPagerAdapter"


# instance fields
.field private final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final adapters:Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;

.field private bgAnimator:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

.field private final browseReceiver:Landroid/content/BroadcastReceiver;

.field private currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

.field private discoveryAdapter:Lcom/netflix/mediaclient/ui/lomo/discovery/ProgressiveDiscoveryAdapter;

.field private isDestroyed:Z

.field private listViewPos:I

.field private loMo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

.field private final onReloadClickListener:Landroid/view/View$OnClickListener;

.field private final pager:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

.field private final pagerAdapterCallbacks:Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;

.field private preErrorState:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

.field private previousLastPage:I

.field private final reloadView:Landroid/view/View;

.field private final serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field private state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

.field private final viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$1;

    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$1;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->LOMO_TYPE_TABLE:Ljava/util/EnumMap;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Landroid/view/View;Z)V
    .locals 3

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->LOADING:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->LOADING:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->preErrorState:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$2;-><init>(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->onReloadClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;-><init>(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->pagerAdapterCallbacks:Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;-><init>(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->browseReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->pager:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->reloadView:Landroid/view/View;

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->pagerAdapterCallbacks:Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;

    invoke-virtual {v0, v1, v2, p3, p5}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->createRowAdapterProvider(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Z)Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->adapters:Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoMoViewPagerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Created row adapter provider of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->adapters:Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->registerBrowseNotificationReceiver()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->onReloadClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->adapters:Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;->getLoadingAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->preErrorState:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->preErrorState:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->setState(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->showReloadViews()V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->pager:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->previousLastPage:I

    return v0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->previousLastPage:I

    return p1
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->loMo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->listViewPos:I

    return v0
.end method

.method private convertLomoTypeToAdapterType(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoMoViewPagerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Converting lomo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of v0, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickLoMoHeroDuplicate;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->KUBRICK_HERO:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickLoMoDuplicate;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->KUBRICK_HERO_DUPLICATE:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->TOP_TEN:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->KUBRICK_KIDS_TOP_TEN:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->POPULAR_TITLES:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->KUBRICK_KIDS_POPULAR:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->LOMO_TYPE_TABLE:Ljava/util/EnumMap;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    goto :goto_0
.end method

.method private getView(I)Landroid/view/View;
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoMoViewPagerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getView pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapter;->hasMoreData()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->isLastItem(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->adapters:Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;->getLoadingAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/lomo/RowAdapter;->getView(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/lomo/RowAdapter;->getView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private hideReloadViews()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->reloadView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private isLastItem(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerBrowseNotificationReceiver()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoMoViewPagerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Registering browse notification receiver, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->browseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_CW_REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_IQ_REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_POPULAR_TITLES_REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->browseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setState(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;)V
    .locals 5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoMoViewPagerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$5;->$SwitchMap$com$netflix$mediaclient$ui$lomo$LoMoViewPagerAdapter$Type:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Requested invalid new state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->adapters:Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;->getStandardAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->adapters:Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;->getLoadingAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->adapters:Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;->getErrorAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->adapters:Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;->getIqAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->adapters:Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;->getCwAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->pager:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getParentFrameLayout()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v0, v1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->bgAnimator:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    if-nez v0, :cond_1

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->pager:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    check-cast v1, Landroid/view/View;

    invoke-direct {v2, v3, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->bgAnimator:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->discoveryAdapter:Lcom/netflix/mediaclient/ui/lomo/discovery/ProgressiveDiscoveryAdapter;

    if-nez v0, :cond_2

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/discovery/ProgressiveDiscoveryAdapter;

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->bgAnimator:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->pagerAdapterCallbacks:Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/lomo/discovery/ProgressiveDiscoveryAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->discoveryAdapter:Lcom/netflix/mediaclient/ui/lomo/discovery/ProgressiveDiscoveryAdapter;

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->discoveryAdapter:Lcom/netflix/mediaclient/ui/lomo/discovery/ProgressiveDiscoveryAdapter;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->adapters:Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;->getBillboardAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->adapters:Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;->getCharacterAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->adapters:Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;->getKubrickHeroAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->adapters:Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;->getKubrickHeroDuplicateAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->adapters:Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;->getKubrickKidsTopTenAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->adapters:Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;->getKubrickKidsPopularAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private showLoading()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->hideReloadViews()V

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->LOADING:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->setState(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private showReloadViews()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->reloadView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private unregisterBrowseNotificationReceiver()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoMoViewPagerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unregistering browse notification receiver, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->browseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->browseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public createLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapter;->getRowHeightInPx()I

    move-result v0

    const-string/jumbo v1, "LoMoViewPagerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Creating layout params with height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method public currentPageSwitched(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->getState()Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->DISCOVERY:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->bgAnimator:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->bgAnimator:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->onPageScrolled(IF)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    const-string/jumbo v0, "LoMoViewPagerAdapter"

    const-string/jumbo v1, "Destroying adapter"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->unregisterBrowseNotificationReceiver()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->isDestroyed:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->bgAnimator:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->bgAnimator:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->destroy()V

    :cond_0
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_2

    const-string/jumbo v0, "LoMoViewPagerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroying item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;->push(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "LoMoViewPagerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroying item: null , pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->isDestroyed:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/lomo/RowAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    invoke-interface {v2}, Lcom/netflix/mediaclient/ui/lomo/RowAdapter;->hasMoreData()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getState()Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    return-object v0
.end method

.method public hasMoreData()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapter;->hasMoreData()Z

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoMoViewPagerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "instantiateItem, pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->getView(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/mediaclient/android/fragment/LoadingView;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isCurrentLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "LoMoViewPagerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding loading page for RTL locale, pos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", pages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", layout direction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public invalidateRequestId()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapter;->invalidateRequestId()V

    return-void
.end method

.method public isLoading()Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->LOADING:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingBillboard()Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->BILLBOARD:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->loMo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    instance-of v1, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickLoMoHeroDuplicate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->loMo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->INSTANT_QUEUE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "LoMoViewPagerAdapter"

    const-string/jumbo v1, "Found duplicate IQ row with no items - hiding view pager"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->pager:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "LoMoViewPagerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyDataSetChanged() - getCount(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isPagerVisible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->getState()Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->DISCOVERY:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->bgAnimator:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->bgAnimator:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->onPageScrolled(IF)V

    :cond_0
    return-void
.end method

.method public refresh(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->convertLomoTypeToAdapterType(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "LoMoViewPagerAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshing: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_2

    const-string/jumbo v0, "n/a"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", new state: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", hashcode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->listViewPos:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->previousLastPage:I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->hideReloadViews()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->loMo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->showLoading()V

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->setState(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SPY-10196: Unsupported LoMo row type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_3

    const-string/jumbo v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " LOLOMO_ID - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->getLolomoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/RowAdapter;->refreshData(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    goto :goto_1
.end method

.method public reload()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "LoMoViewPagerAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Reloading data, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->listViewPos:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->loMo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    if-nez v0, :cond_1

    const-string/jumbo v0, "n/a"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", preErrorState state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->preErrorState:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->showLoading()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->preErrorState:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->setState(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->loMo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    iget v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->listViewPos:I

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/RowAdapter;->refreshData(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->loMo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public restoreFromMemento(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Memento;)V
    .locals 3

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Memento;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->loMo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Memento;->state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->reloadView:Landroid/view/View;

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->ERROR:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    if-ne v1, v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->ERROR:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->LOADING:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    if-ne v1, v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "LoMoViewPagerAdapter"

    const-string/jumbo v1, "Page was in error or loading state - ignoring restoration"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Memento;->preErrorState:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->preErrorState:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->setState(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Memento;->adapterMemento:Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/RowAdapter;->restoreFromMemento(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public saveToMemento()Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Memento;
    .locals 5

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Memento;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->preErrorState:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->loMo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Memento;-><init>(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;Lcom/netflix/mediaclient/ui/lomo/RowAdapter;)V

    return-object v0
.end method

.method public shouldOverlapPages()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapter;->shouldOverlapPages()Z

    move-result v0

    return v0
.end method

.method public trackPresentation(I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentAdapter:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/lomo/RowAdapter;->trackPresentation(I)V

    return-void
.end method
