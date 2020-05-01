.class public Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;
.super Lcom/netflix/mediaclient/android/fragment/CustomViewPager;
.source "LoMoViewPager.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final CW_CACHE_KEY:Ljava/lang/String; = "cw"

.field public static final DO_NOT_OVERLAP_PAGES_CONST:Z = false

.field private static final IQ_CACHE_KEY:Ljava/lang/String; = "iq"

.field private static final IQ_DUPLICATE_CACHE_KEY:Ljava/lang/String; = "iq_duplicate"

.field private static final KIDS_TOUCH_SLOP_SCALE_FACTOR:F = 0.75f

.field public static final OVERLAP_PAGES_CONST:Z = true

.field private static final POPULAR_TITLES_CACHE_KEY:Ljava/lang/String; = "pt"

.field private static final POPULAR_TITLES_DUPLICATE_CACHE_KEY:Ljava/lang/String; = "ptd"

.field private static final ROTATE_TO_NEXT_VIEW_DELAY_MS:J

.field private static final TAG:Ljava/lang/String; = "LoMoViewPager"


# instance fields
.field private final adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

.field private final handler:Landroid/os/Handler;

.field private final pageIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

.field private final rotateToNextViewRunnable:Ljava/lang/Runnable;

.field private shouldAutoPaginate:Z

.field private state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$State;

.field private stateKey:Ljava/lang/String;

.field private final stateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->ROTATE_TO_NEXT_VIEW_DELAY_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/viewpagerindicator/CirclePageIndicator;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Landroid/view/View;Z)V
    .locals 6

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->rotateToNextViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getStateMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->stateMap:Ljava/util/Map;

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->pageIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getTouchSlop()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->setTouchSlop(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    return-object v0
.end method

.method static synthetic access$200()J
    .locals 2

    sget-wide v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->ROTATE_TO_NEXT_VIEW_DELAY_MS:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static computeViewPagerWidth(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)I
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;->STANDARD:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->computeViewPagerWidth(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;)I

    move-result v0

    return v0
.end method

.method public static computeViewPagerWidth(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->getLomoFragOffsetLeftPx(Landroid/app/Activity;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0, p2}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->getLomoFragOffsetRightPx(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method private getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method private getStateKeyForLomo(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$2;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$LoMoType:[I

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "cw"

    goto :goto_0

    :pswitch_1
    instance-of v0, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickLoMoHeroDuplicate;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "iq_duplicate"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "iq"

    goto :goto_0

    :pswitch_2
    instance-of v0, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickLoMoHeroDuplicate;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ptd"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "pt"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->updateAutoPagination(Z)V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->shouldAutoPaginate:Z

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->updateAutoPagination(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onCurrentItemSet(I)V
    .locals 3

    const-string/jumbo v0, "LoMoViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCurrentItemSet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->pageIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->pageIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, p1}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->currentPageSwitched(I)V

    return-void
.end method

.method private restoreState(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getStateKeyForLomo(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->stateKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->stateMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->stateKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$State;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$State;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$State;

    if-nez v0, :cond_0

    const-string/jumbo v0, "LoMoViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No state found for key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->stateKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "LoMoViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Restoring state for key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->stateKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$State;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$State;->adapterMemento:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Memento;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->restoreFromMemento(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Memento;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->shouldOverlapPages()Z

    move-result v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->getState()Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->setPagesToOverlap(ZLcom/netflix/mediaclient/servicemgr/interface_/LoMoType;Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$State;

    iget v0, v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$State;->currPage:I

    invoke-virtual {p0, v0, v1, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->setCurrentItem(IZZ)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private saveState(I)V
    .locals 3

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$State;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$State;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$State;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$State;

    iput p1, v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$State;->currPage:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$State;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->saveToMemento()Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Memento;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$State;->adapterMemento:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Memento;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoMoViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Saving state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->stateKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->stateMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->stateKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPagesToOverlap(ZLcom/netflix/mediaclient/servicemgr/interface_/LoMoType;Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;->STANDARD:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    sget-object v2, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->KUBRICK_KIDS_TOP_TEN:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    if-ne p3, v2, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldShowLargePeakForKidsTopTen()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;->KUBRICK_KIDS_TOP_TEN_ROW:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->getLomoFragOffsetLeftPx(Landroid/app/Activity;)I

    move-result v2

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->getLomoFragOffsetRightPx(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;)I

    move-result v0

    add-int/2addr v0, v2

    neg-int v0, v0

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->setPageMargin(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CHARACTERS:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne p2, v2, :cond_2

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;->KUBRICK_KIDS_CHARACTER_ROW:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isKubrick()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isDisplayPageRefresh()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne p2, v2, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/BarkerUtils;->getCwGalleryWidthType(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateAutoPagination(Z)V
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoMoViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAutoPagination, enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->rotateToNextViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->rotateToNextViewRunnable:Ljava/lang/Runnable;

    sget-wide v2, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->ROTATE_TO_NEXT_VIEW_DELAY_MS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private updatePageIndicatorVisibility()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->isShowingBillboard()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_4

    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shouldShowArtworkOnly(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->getState()Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->DISCOVERY:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    if-ne v4, v5, :cond_5

    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "LoMoViewPager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hasBillboardData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; isCoppolaDiscovery: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->pageIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    if-eqz v4, :cond_3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->pageIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v3, v2, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->measure(II)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->pageIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v4}, Lcom/viewpagerindicator/CirclePageIndicator;->getMeasuredHeight()I

    move-result v4

    mul-int/lit8 v4, v4, -0x2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/netflix/mediaclient/ui/lomo/PaginatedBillboardAdapter;->getPortraitBillboardPhoneOffset(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->pageIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v4, v3}, Lcom/viewpagerindicator/CirclePageIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->pageIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    if-nez v0, :cond_2

    if-eqz v1, :cond_6

    :cond_2
    :goto_2
    invoke-virtual {v3, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    const/16 v2, 0x8

    goto :goto_2
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->destroy()V

    return-void
.end method

.method public getParentFrameLayout()Landroid/view/ViewParent;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateCwCache()V
    .locals 2

    const-string/jumbo v0, "LoMoViewPager"

    const-string/jumbo v1, "Invalidating CW cache"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->stateMap:Ljava/util/Map;

    const-string/jumbo v1, "cw"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public invalidateIqCache()V
    .locals 2

    const-string/jumbo v0, "LoMoViewPager"

    const-string/jumbo v1, "Invalidating IQ cache"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->stateMap:Ljava/util/Map;

    const-string/jumbo v1, "iq"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->stateMap:Ljava/util/Map;

    const-string/jumbo v1, "iq_duplicate"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public invalidatePopularTitlesCache()V
    .locals 2

    const-string/jumbo v0, "LoMoViewPager"

    const-string/jumbo v1, "Invalidating popular titles cache"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->stateMap:Ljava/util/Map;

    const-string/jumbo v1, "pt"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->stateMap:Ljava/util/Map;

    const-string/jumbo v1, "ptd"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isLoading()Z
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NflxLoading"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", loading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->isLoading()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->isLoading()Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    const-string/jumbo v0, "LoMoViewPager"

    const-string/jumbo v1, "Notifying pager indicator of data set change"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->pageIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->pageIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0}, Lcom/viewpagerindicator/CirclePageIndicator;->notifyDataSetChanged()V

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->updatePageIndicatorVisibility()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->handleTouchEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPageScrolled(IFI)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->onPageScrolled(IFI)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->onPageScrolled(IFI)V

    return-void
.end method

.method protected onPageSelected(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->onPageSelected(I)V

    const-string/jumbo v0, "LoMoViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->saveStateAndTrackPresentation(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->rotateToNextViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->shouldAutoPaginate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->updateAutoPagination(Z)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->handleTouchEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onViewMovedToScrapHeap()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->rotateToNextViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->invalidateRequestId()V

    :cond_0
    return-void
.end method

.method public refresh(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoMoViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting layout params for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", listViewPos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->restoreState(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$State;

    iget v1, v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$State;->currPage:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->trackPresentation(I)V

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->createLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->BILLBOARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->shouldAutoPaginate:Z

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->shouldAutoPaginate:Z

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->updateAutoPagination(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->refresh(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->shouldOverlapPages()Z

    move-result v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->getState()Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->setPagesToOverlap(ZLcom/netflix/mediaclient/servicemgr/interface_/LoMoType;Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->updatePageIndicatorVisibility()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method saveStateAndTrackPresentation(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->saveState(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->adapter:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->trackPresentation(I)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->setCurrentItem(I)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->onCurrentItemSet(I)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->setCurrentItem(IZ)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->onCurrentItemSet(I)V

    return-void
.end method

.method public setCurrentItem(IZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->setCurrentItem(IZZ)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->onCurrentItemSet(I)V

    return-void
.end method
