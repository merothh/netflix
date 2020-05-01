.class public final Lo/StatsDimensionsValue;
.super Lo/SimpleClock;
.source ""


# instance fields
.field private f:Lo/StatsLogEventWrapper$ActionBar;

.field private h:Lo/WebStorage;

.field private j:Lo/StatsLogEventWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/StatsDimensionsValue;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/StatsDimensionsValue;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lo/SimpleClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p1, Lo/StatsLogEventWrapper$ActionBar;

    iget-object v2, p0, Lo/StatsDimensionsValue;->d:Ljava/lang/CharSequence;

    const-string p2, "mAccessibilityOverlayThumbUpDescription"

    invoke-static {v2, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v3, p0, Lo/StatsDimensionsValue;->a:Ljava/lang/CharSequence;

    const-string p2, "mAccessibilityOverlayThumbDownDescription"

    invoke-static {v3, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v4, p0, Lo/StatsDimensionsValue;->i:Ljava/lang/CharSequence;

    const-string p2, "mAccessibilityOverlayCloseDescription"

    invoke-static {v4, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v5, p0, Lo/StatsDimensionsValue;->b:Ljava/lang/CharSequence;

    const-string p2, "mAccessibilityOverlayFeedbackVideoRated"

    invoke-static {v5, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v6, p0, Lo/StatsDimensionsValue;->g:Ljava/lang/CharSequence;

    const-string p2, "mAccessibilityOverlayFeedbackRatingCancelled"

    invoke-static {v6, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    .line 20
    invoke-direct/range {v1 .. v6}, Lo/StatsLogEventWrapper$ActionBar;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lo/StatsDimensionsValue;->f:Lo/StatsLogEventWrapper$ActionBar;

    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Lo/StatsDimensionsValue;->setClickable(Z)V

    .line 28
    sget-object p1, Lo/StatsLogEventWrapper;->b:Lo/StatsLogEventWrapper$Activity;

    invoke-virtual {p1}, Lo/StatsLogEventWrapper$Activity;->a()Lio/reactivex/Single;

    move-result-object p1

    .line 29
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "UserRatingButtonOverlayL\u2026dSchedulers.mainThread())"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance p2, Lcom/netflix/android/widgetry/widget/UserRatingButtonLottie_Ab9305$1;

    invoke-direct {p2, p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonLottie_Ab9305$1;-><init>(Lo/StatsDimensionsValue;)V

    check-cast p2, Lo/alA;

    .line 36
    sget-object p3, Lcom/netflix/android/widgetry/widget/UserRatingButtonLottie_Ab9305$2;->b:Lcom/netflix/android/widgetry/widget/UserRatingButtonLottie_Ab9305$2;

    check-cast p3, Lo/alA;

    .line 30
    invoke-static {p1, p3, p2}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Single;Lo/alA;Lo/alA;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 16
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/StatsDimensionsValue;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lo/StatsDimensionsValue;)Lo/StatsLogEventWrapper;
    .locals 0

    .line 15
    iget-object p0, p0, Lo/StatsDimensionsValue;->j:Lo/StatsLogEventWrapper;

    return-object p0
.end method

.method private final a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Z)V
    .locals 5

    .line 61
    iget-object v0, p0, Lo/StatsDimensionsValue;->c:Lo/SimpleClock$Activity;

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "openOverlay called before setting OnRateListener"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lo/StatsDimensionsValue;->j:Lo/StatsLogEventWrapper;

    const-string v1, "context"

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lo/StatsDimensionsValue;->c:Lo/SimpleClock$Activity;

    if-eqz v0, :cond_1

    .line 66
    new-instance v2, Lo/StatsLogEventWrapper;

    invoke-virtual {p0}, Lo/StatsDimensionsValue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "it"

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lo/StatsDimensionsValue;->f:Lo/StatsLogEventWrapper$ActionBar;

    invoke-direct {v2, v3, v0, v4}, Lo/StatsLogEventWrapper;-><init>(Landroid/content/Context;Lo/SimpleClock$Activity;Lo/StatsLogEventWrapper$ActionBar;)V

    iput-object v2, p0, Lo/StatsDimensionsValue;->j:Lo/StatsLogEventWrapper;

    .line 69
    :cond_1
    invoke-virtual {p0}, Lo/StatsDimensionsValue;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 70
    iget-object v0, p0, Lo/StatsDimensionsValue;->h:Lo/WebStorage;

    if-eqz v0, :cond_2

    .line 71
    iget-object v2, p0, Lo/StatsDimensionsValue;->j:Lo/StatsLogEventWrapper;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lo/StatsDimensionsValue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0}, Lo/ImageButton;->setNetflixLottieComposition(Landroid/content/Context;Lo/WebStorage;)V

    .line 73
    :cond_2
    iget-object v0, p0, Lo/StatsDimensionsValue;->j:Lo/StatsLogEventWrapper;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p0}, Lo/StatsLogEventWrapper;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lo/StatsDimensionsValue;)V

    .line 74
    :cond_3
    iget-object p1, p0, Lo/StatsDimensionsValue;->c:Lo/SimpleClock$Activity;

    if-eqz p1, :cond_4

    move-object v0, p0

    check-cast v0, Lo/SystemVibrator;

    invoke-interface {p1, v0, p2}, Lo/SimpleClock$Activity;->c(Lo/SystemVibrator;Z)V

    :cond_4
    return-void
.end method

.method public static final synthetic b(Lo/StatsDimensionsValue;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Z)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lo/StatsDimensionsValue;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Z)V

    return-void
.end method

.method public static final synthetic e(Lo/StatsDimensionsValue;Lo/WebStorage;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lo/StatsDimensionsValue;->h:Lo/WebStorage;

    return-void
.end method


# virtual methods
.method public setOnRateListener(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lo/SimpleClock$Activity;ZI)V
    .locals 0

    const-string p4, "host"

    invoke-static {p1, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "onRateListener"

    invoke-static {p2, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p2}, Lo/StatsDimensionsValue;->c(Lo/SimpleClock$Activity;)Lo/SimpleClock$Activity;

    move-result-object p2

    iput-object p2, p0, Lo/StatsDimensionsValue;->c:Lo/SimpleClock$Activity;

    .line 45
    new-instance p2, Lo/StatsDimensionsValue$Activity;

    invoke-direct {p2, p0, p1}, Lo/StatsDimensionsValue$Activity;-><init>(Lo/StatsDimensionsValue;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lo/StatsDimensionsValue;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p3, :cond_0

    .line 47
    new-instance p2, Lo/StatsDimensionsValue$TaskDescription;

    invoke-direct {p2, p0, p1}, Lo/StatsDimensionsValue$TaskDescription;-><init>(Lo/StatsDimensionsValue;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    check-cast p2, Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, p2}, Lo/StatsDimensionsValue;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 51
    new-instance p1, Lo/StatsDimensionsValue$StateListAnimator;

    invoke-direct {p1, p0}, Lo/StatsDimensionsValue$StateListAnimator;-><init>(Lo/StatsDimensionsValue;)V

    check-cast p1, Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, p1}, Lo/StatsDimensionsValue;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method
