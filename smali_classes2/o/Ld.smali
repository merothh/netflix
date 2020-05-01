.class public Lo/Ld;
.super Lcom/netflix/mediaclient/ui/lomo/BillboardView;
.source ""


# static fields
.field private static final F:Landroid/view/animation/Interpolator;


# instance fields
.field private A:I

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netflix/model/leafs/originals/ListOfTagSummary;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lio/reactivex/disposables/Disposable;

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/BillboardCTA;",
            ">;"
        }
    .end annotation
.end field

.field private E:Z

.field private final G:Landroid/content/BroadcastReceiver;

.field private H:Landroid/view/animation/AnimationSet;

.field private final I:Landroid/content/BroadcastReceiver;

.field protected b:Landroid/view/View;

.field protected c:Landroid/widget/TextView;

.field protected d:Lo/BaseAdapter;

.field protected e:Lo/BaseAdapter;

.field private z:Lo/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3ea3d70a    # 0.32f

    .line 92
    invoke-static {v1, v0, v2, v0}, Lo/ObjectOutput;->e(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lo/Ld;->F:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/Ld;->B:Ljava/util/ArrayList;

    .line 658
    new-instance p1, Lo/Ld$1;

    invoke-direct {p1, p0}, Lo/Ld$1;-><init>(Lo/Ld;)V

    iput-object p1, p0, Lo/Ld;->G:Landroid/content/BroadcastReceiver;

    .line 672
    new-instance p1, Lo/Ld$5;

    invoke-direct {p1, p0}, Lo/Ld$5;-><init>(Lo/Ld;)V

    iput-object p1, p0, Lo/Ld;->I:Landroid/content/BroadcastReceiver;

    .line 99
    invoke-direct {p0, p2}, Lo/Ld;->b(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/Ld;->B:Ljava/util/ArrayList;

    .line 658
    new-instance p1, Lo/Ld$1;

    invoke-direct {p1, p0}, Lo/Ld$1;-><init>(Lo/Ld;)V

    iput-object p1, p0, Lo/Ld;->G:Landroid/content/BroadcastReceiver;

    .line 672
    new-instance p1, Lo/Ld$5;

    invoke-direct {p1, p0}, Lo/Ld$5;-><init>(Lo/Ld;)V

    iput-object p1, p0, Lo/Ld;->I:Landroid/content/BroadcastReceiver;

    .line 104
    invoke-direct {p0, p3}, Lo/Ld;->b(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/Ld;->B:Ljava/util/ArrayList;

    .line 658
    new-instance p1, Lo/Ld$1;

    invoke-direct {p1, p0}, Lo/Ld$1;-><init>(Lo/Ld;)V

    iput-object p1, p0, Lo/Ld;->G:Landroid/content/BroadcastReceiver;

    .line 672
    new-instance p1, Lo/Ld$5;

    invoke-direct {p1, p0}, Lo/Ld$5;-><init>(Lo/Ld;)V

    iput-object p1, p0, Lo/Ld;->I:Landroid/content/BroadcastReceiver;

    .line 109
    invoke-direct {p0, p4}, Lo/Ld;->b(I)V

    return-void
.end method

.method private a(II)V
    .locals 2

    .line 511
    new-instance v0, Lo/Factory2;

    invoke-direct {v0}, Lo/Factory2;-><init>()V

    .line 512
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->Z:I

    invoke-virtual {p0, v1}, Lo/Ld;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/MenuInflater;

    .line 513
    invoke-virtual {v0, v1}, Lo/Factory2;->d(Lo/MenuInflater;)V

    .line 514
    invoke-virtual {v0, p1, p2}, Lo/Factory2;->g(II)V

    .line 515
    invoke-virtual {v0, v1}, Lo/Factory2;->a(Lo/MenuInflater;)V

    return-void
.end method

.method private a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/ListOfTagSummary;",
            ">;)Z"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lo/Ld;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private a(Lo/Ax;)Z
    .locals 5

    .line 235
    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    .line 236
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getPhase()Lcom/netflix/model/leafs/originals/BillboardPhase;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getAvailabilityDates()Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lo/Ax;->isPreRelease()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 237
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getAvailabilityDates()Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;->start()Ljava/lang/Long;

    move-result-object p1

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 240
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-gez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private b(I)V
    .locals 3

    .line 113
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lo/Ld;->H:Landroid/view/animation/AnimationSet;

    .line 114
    iput p1, p0, Lo/Ld;->A:I

    .line 116
    invoke-virtual {p0}, Lo/Ld;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0}, Lo/Ld;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    iget-object v0, p0, Lo/Ld;->G:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.netflix.mediaclient.intent.action.BILLBOARD_ANIMATION_STARTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 118
    invoke-virtual {p0}, Lo/Ld;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    iget-object v0, p0, Lo/Ld;->I:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.netflix.mediaclient.intent.action.BILLBOARD_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/netflix/model/leafs/originals/BillboardPhase;Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 1

    .line 444
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardPhase;->supplementalMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Ld;->p:Ljava/lang/String;

    .line 445
    invoke-direct {p0, p2}, Lo/Ld;->i(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    .line 446
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardPhase;->actions()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/Ld;->D:Ljava/util/List;

    const/4 p1, 0x0

    .line 447
    invoke-direct {p0, p1, p1, p2}, Lo/Ld;->d(IZLcom/netflix/model/leafs/originals/BillboardSummary;)V

    return-void
.end method

.method private b(Lo/Ax;)V
    .locals 7

    .line 452
    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object p1

    .line 453
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getPhase()Lcom/netflix/model/leafs/originals/BillboardPhase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getAvailabilityDates()Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getPhase()Lcom/netflix/model/leafs/originals/BillboardPhase;

    move-result-object v0

    .line 455
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getAvailabilityDates()Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;

    move-result-object v1

    .line 456
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;->start()Ljava/lang/Long;

    move-result-object v1

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 458
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 459
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    iget-object v2, p0, Lo/Ld;->C:Lio/reactivex/disposables/Disposable;

    if-nez v2, :cond_0

    const-string v2, "BillboardPhoneView"

    const-string v3, " adding the delayed handlers for Pre Release content"

    .line 460
    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lo/Ld$2;

    invoke-direct {v2, p0, v0, p1}, Lo/Ld$2;-><init>(Lo/Ld;Lcom/netflix/model/leafs/originals/BillboardPhase;Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    .line 462
    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lo/Ld;->C:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method static synthetic b(Lo/Ld;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/Ld;->d(Ljava/lang/Integer;)V

    return-void
.end method

.method private c(Lo/Ax;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Ax;",
            ")",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/BillboardCTA;",
            ">;"
        }
    .end annotation

    .line 256
    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object p1

    .line 257
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getPhase()Lcom/netflix/model/leafs/originals/BillboardPhase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getAvailabilityDates()Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getPhase()Lcom/netflix/model/leafs/originals/BillboardPhase;

    move-result-object p1

    .line 259
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardPhase;->actions()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 261
    :cond_0
    iget-object p1, p0, Lo/Ld;->D:Ljava/util/List;

    return-object p1
.end method

.method private c(Lcom/netflix/model/leafs/originals/BillboardSummary;Ljava/lang/String;)V
    .locals 3

    .line 534
    invoke-direct {p0, p1}, Lo/Ld;->h(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object p1, p0, Lo/Ld;->d:Lo/BaseAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    goto :goto_0

    .line 537
    :cond_0
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 538
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getHeight()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lo/Ld;->d:Lo/BaseAdapter;

    invoke-virtual {v2}, Lo/BaseAdapter;->getId()I

    move-result v2

    invoke-virtual {p0, v1, p1, v2}, Lo/Ld;->e(III)V

    .line 540
    iget-object p1, p0, Lo/Ld;->d:Lo/BaseAdapter;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    .line 541
    iget-object p1, p0, Lo/Ld;->d:Lo/BaseAdapter;

    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 543
    invoke-virtual {v1, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    sget-object v1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    .line 544
    invoke-virtual {v0, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    .line 541
    invoke-virtual {p1, v0}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 546
    iget-object p1, p0, Lo/Ld;->d:Lo/BaseAdapter;

    invoke-virtual {p1, p2}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private d(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/model/leafs/originals/BillboardCTA;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/BillboardCTA;",
            ">;)",
            "Lcom/netflix/model/leafs/originals/BillboardCTA;"
        }
    .end annotation

    .line 475
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/BillboardCTA;

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardCTA;->type()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 477
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardCTA;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Lo/Ax;)Ljava/lang/String;
    .locals 1

    .line 247
    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object p1

    .line 248
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getPhase()Lcom/netflix/model/leafs/originals/BillboardPhase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getAvailabilityDates()Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getPhase()Lcom/netflix/model/leafs/originals/BillboardPhase;

    move-result-object p1

    .line 250
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardPhase;->supplementalMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private d(IZLcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 3

    .line 486
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->d(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result p1

    .line 487
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->a(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result p3

    .line 488
    iget-object v0, p0, Lo/Ld;->D:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 489
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 490
    iget-object p3, p0, Lo/Ld;->D:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, 0x2

    if-lt p3, v1, :cond_0

    .line 491
    iget-object p3, p0, Lo/Ld;->n:Landroid/widget/Button;

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 492
    iget-object p3, p0, Lo/Ld;->D:Ljava/util/List;

    const-string v0, "gallery"

    invoke-direct {p0, v0, p3}, Lo/Ld;->d(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/model/leafs/originals/BillboardCTA;

    move-result-object p3

    .line 493
    iget-object v0, p0, Lo/Ld;->n:Landroid/widget/Button;

    invoke-virtual {p0, p3, v0, p2, p1}, Lo/Ld;->b(Lcom/netflix/model/leafs/originals/BillboardCTA;Landroid/widget/Button;ZZ)V

    .line 494
    iget-object p3, p0, Lo/Ld;->m:Lo/ListView;

    invoke-virtual {p3}, Lo/ListView;->getId()I

    move-result p3

    invoke-direct {p0, p3, v1}, Lo/Ld;->a(II)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 497
    iget-object p3, p0, Lo/Ld;->n:Landroid/widget/Button;

    invoke-virtual {p3, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 499
    :cond_1
    iget-object p3, p0, Lo/Ld;->n:Landroid/widget/Button;

    invoke-virtual {p3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 500
    iget-object p3, p0, Lo/Ld;->m:Lo/ListView;

    invoke-virtual {p3}, Lo/ListView;->getId()I

    move-result p3

    invoke-direct {p0, p3, v0}, Lo/Ld;->a(II)V

    .line 502
    :goto_0
    iget-object p3, p0, Lo/Ld;->D:Ljava/util/List;

    const-string v0, "play"

    invoke-direct {p0, v0, p3}, Lo/Ld;->d(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/model/leafs/originals/BillboardCTA;

    move-result-object p3

    .line 503
    iget-object v0, p0, Lo/Ld;->i:Landroid/widget/Button;

    invoke-virtual {p0, p3, v0, p2, p1}, Lo/Ld;->b(Lcom/netflix/model/leafs/originals/BillboardCTA;Landroid/widget/Button;ZZ)V

    goto :goto_1

    .line 505
    :cond_2
    iget-object p1, p0, Lo/Ld;->i:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private d(Lcom/netflix/model/leafs/originals/BillboardSummary;Ljava/lang/String;)V
    .locals 6

    .line 205
    invoke-direct {p0, p1}, Lo/Ld;->h(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 206
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 207
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getWidth()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, p0, Lo/Ld;->e:Lo/BaseAdapter;

    invoke-virtual {v5}, Lo/BaseAdapter;->getId()I

    move-result v5

    invoke-virtual {p0, v4, v0, v5}, Lo/Ld;->e(III)V

    .line 210
    iget-object v0, p0, Lo/Ld;->e:Lo/BaseAdapter;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    .line 211
    iget-object v0, p0, Lo/Ld;->c:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    .line 212
    iget-object v0, p0, Lo/Ld;->e:Lo/BaseAdapter;

    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 214
    invoke-virtual {v1, v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    .line 215
    invoke-virtual {v1, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    sget-object v2, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    .line 216
    invoke-virtual {v1, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 218
    iget-object v0, p0, Lo/Ld;->e:Lo/BaseAdapter;

    iget-object v1, p0, Lo/Ld;->p:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p2, p1}, Lo/Ld;->e(Lo/BaseAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 221
    iget-object p2, p0, Lo/Ld;->e:Lo/BaseAdapter;

    invoke-static {p2, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    .line 222
    iget-object p2, p0, Lo/Ld;->c:Landroid/widget/TextView;

    invoke-static {p2, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    .line 223
    iget-object p2, p0, Lo/Ld;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 224
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object p1, p0, Lo/Ld;->e:Lo/BaseAdapter;

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    .line 229
    iget-object p1, p0, Lo/Ld;->c:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic d(Ljava/lang/Integer;)V
    .locals 1

    .line 419
    iget-object v0, p0, Lo/Ld;->B:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/model/leafs/originals/ListOfTagSummary;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/netflix/model/leafs/originals/ListOfTagSummary;->setIsVisible(Z)V

    return-void
.end method

.method private d(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/ListOfTagSummary;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 407
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/originals/ListOfTagSummary;

    .line 408
    invoke-interface {v1}, Lcom/netflix/model/leafs/originals/ListOfTagSummary;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 409
    invoke-interface {v1}, Lcom/netflix/model/leafs/originals/ListOfTagSummary;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 414
    iget-object p1, p0, Lo/Ld;->z:Lo/ImageView;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lo/ImageView;->setSeparatorColor(I)V

    .line 417
    :cond_2
    iget-object p1, p0, Lo/Ld;->z:Lo/ImageView;

    invoke-virtual {p1, v0}, Lo/ImageView;->c(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lo/Ld;->k:Lo/UpdateEngine;

    .line 418
    invoke-virtual {p2}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lo/Lc;

    invoke-direct {p2, p0}, Lo/Lc;-><init>(Lo/Ld;)V

    .line 419
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic d(Lo/Ld;Lcom/netflix/model/leafs/originals/BillboardPhase;Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lo/Ld;->b(Lcom/netflix/model/leafs/originals/BillboardPhase;Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    return-void
.end method

.method static synthetic d(Lo/Ld;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lo/Ld;->E:Z

    return p0
.end method

.method static synthetic d(Lo/Ld;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lo/Ld;->E:Z

    return p1
.end method

.method static synthetic e(Lo/Ld;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lo/Ld;->r()V

    return-void
.end method

.method private g(Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 4

    .line 380
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 382
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 383
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 384
    invoke-direct {p0, p1}, Lo/Ld;->h(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result p1

    iget v3, p0, Lo/Ld;->A:I

    .line 381
    invoke-static {v0, v1, v2, p1, v3}, Lo/Li;->b(IILjava/lang/String;ZI)V

    :cond_0
    return-void
.end method

.method private g(Lo/Ax;)V
    .locals 6

    .line 576
    invoke-virtual {p0}, Lo/Ld;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    .line 577
    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    const-string v1, "BillboardPhoneView"

    if-nez v0, :cond_0

    const-string p1, "Manager is null/notReady - can\'t reload data"

    .line 578
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 581
    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 585
    :cond_1
    invoke-direct {p0, p1}, Lo/Ld;->a(Lo/Ax;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    invoke-direct {p0, p1}, Lo/Ld;->c(Lo/Ax;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/Ld;->D:Ljava/util/List;

    goto :goto_1

    .line 588
    :cond_2
    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getActions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/Ld;->D:Ljava/util/List;

    goto :goto_1

    .line 583
    :cond_3
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/Ld;->D:Ljava/util/List;

    .line 592
    :goto_1
    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/Ld;->f(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v0

    .line 593
    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->d(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v2

    .line 594
    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->a(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v3

    const/4 v4, 0x0

    .line 596
    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v5

    invoke-direct {p0, v4, v0, v5}, Lo/Ld;->d(IZLcom/netflix/model/leafs/originals/BillboardSummary;)V

    .line 598
    iget-object v0, p0, Lo/Ld;->m:Lo/ListView;

    if-nez v0, :cond_4

    const-string p1, "MyList button is null: can\'t initialize button"

    .line 599
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-nez v2, :cond_5

    if-nez v3, :cond_5

    .line 604
    invoke-interface {p1}, Lo/Ax;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lo/Ax;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 605
    iget-object v0, p0, Lo/Ld;->l:Lo/Oc;

    .line 606
    invoke-interface {p1}, Lo/Ax;->getId()Ljava/lang/String;

    move-result-object v1

    .line 607
    invoke-interface {p1}, Lo/Ax;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    .line 608
    invoke-virtual {p0}, Lo/Ld;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v2

    iget-object v3, p0, Lo/Ld;->s:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    const/4 v4, 0x0

    .line 609
    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v3

    .line 605
    invoke-virtual {v0, v1, p1, v2, v3}, Lo/Oc;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 611
    invoke-virtual {p0}, Lo/Ld;->k()V

    goto :goto_2

    .line 613
    :cond_5
    iget-object p1, p0, Lo/Ld;->m:Lo/ListView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lo/ListView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private h(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z
    .locals 0

    .line 201
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->b(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result p1

    return p1
.end method

.method private i(Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 2

    .line 432
    iget-object v0, p0, Lo/Ld;->w:Lo/Ax;

    iget-object v1, p0, Lo/Ld;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1, v1}, Lo/Ld;->d(Lo/Ax;Lcom/netflix/model/leafs/originals/BillboardSummary;Landroid/widget/TextView;)V

    .line 434
    iget-object v0, p0, Lo/Ld;->p:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/Ld;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/Ld;->w:Lo/Ax;

    invoke-virtual {p0, v0, p1}, Lo/Ld;->d(Lo/Ax;Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->c(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 435
    iget-object p1, p0, Lo/Ld;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lo/Ld;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object p1, p0, Lo/Ld;->h:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 438
    :cond_1
    iget-object p1, p0, Lo/Ld;->h:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private r()V
    .locals 10

    .line 634
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f933333    # 1.15f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f933333    # 1.15f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v0, 0x258

    .line 639
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 640
    sget-object v0, Lo/Ld;->F:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 642
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    .line 643
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 644
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 646
    iget-object v1, p0, Lo/Ld;->H:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 647
    iget-object v1, p0, Lo/Ld;->H:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 648
    iget-object v0, p0, Lo/Ld;->H:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 650
    iget-object v0, p0, Lo/Ld;->H:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lo/Ld;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 151
    iget-object v0, p0, Lo/Ld;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lo/Ld;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lo/Ld;->e:Lo/BaseAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lo/Ld;->e:Lo/BaseAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lo/BaseAdapter;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v0, p0, Lo/Ld;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lo/Ld;->b:Landroid/view/View;

    iget-object v1, p0, Lo/Ld;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected a(Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 5

    .line 269
    new-instance v0, Lo/Factory2;

    invoke-direct {v0}, Lo/Factory2;-><init>()V

    .line 270
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->Z:I

    invoke-virtual {p0, v1}, Lo/Ld;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/MenuInflater;

    .line 271
    invoke-virtual {v0, v1}, Lo/Factory2;->d(Lo/MenuInflater;)V

    .line 273
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->tI:I

    invoke-virtual {p0, v2}, Lo/Ld;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/MotionEvent;

    if-eqz v2, :cond_2

    .line 276
    invoke-virtual {p0}, Lo/Ld;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lo/Li;->c(Landroid/content/Context;)I

    move-result v3

    .line 277
    invoke-direct {p0, p1}, Lo/Ld;->h(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v4

    if-nez v4, :cond_0

    int-to-float p1, v3

    const v3, 0x3e4ccccd    # 0.2f

    mul-float p1, p1, v3

    float-to-int p1, p1

    .line 279
    invoke-virtual {v2}, Lo/MotionEvent;->getId()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lo/Factory2;->f(II)V

    goto :goto_1

    .line 282
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->c(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result p1

    if-eqz p1, :cond_1

    int-to-float p1, v3

    const v3, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_1
    int-to-float p1, v3

    const v3, 0x3f19999a    # 0.6f

    :goto_0
    mul-float p1, p1, v3

    float-to-int p1, p1

    .line 287
    invoke-virtual {v2}, Lo/MotionEvent;->getId()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lo/Factory2;->f(II)V

    .line 290
    :goto_1
    invoke-virtual {v0, v1}, Lo/Factory2;->a(Lo/MenuInflater;)V

    :cond_2
    return-void
.end method

.method public b()I
    .locals 1

    .line 124
    invoke-static {}, Lo/ez;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->l:I

    return v0

    .line 127
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->k:I

    return v0
.end method

.method protected b(Lo/Ax;Lcom/netflix/model/leafs/originals/BillboardSummary;Ljava/lang/String;)V
    .locals 0

    .line 371
    invoke-direct {p0, p2, p3}, Lo/Ld;->d(Lcom/netflix/model/leafs/originals/BillboardSummary;Ljava/lang/String;)V

    .line 373
    invoke-direct {p0, p2, p3}, Lo/Ld;->c(Lcom/netflix/model/leafs/originals/BillboardSummary;Ljava/lang/String;)V

    .line 375
    invoke-direct {p0, p2}, Lo/Ld;->g(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    return-void
.end method

.method protected c()V
    .locals 1

    .line 143
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ab:I

    invoke-virtual {p0, v0}, Lo/Ld;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lo/Ld;->i:Landroid/widget/Button;

    .line 144
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->aa:I

    invoke-virtual {p0, v0}, Lo/Ld;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lo/Ld;->n:Landroid/widget/Button;

    .line 145
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ak:I

    invoke-virtual {p0, v0}, Lo/Ld;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ListView;

    iput-object v0, p0, Lo/Ld;->m:Lo/ListView;

    .line 146
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ai:I

    invoke-virtual {p0, v0}, Lo/Ld;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/Ld;->b:Landroid/view/View;

    return-void
.end method

.method protected c(Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 2

    .line 189
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->d(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->a(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    iget-object p1, p0, Lo/Ld;->m:Lo/ListView;

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/view/View;I)V

    .line 194
    iget-object p1, p0, Lo/Ld;->b:Landroid/view/View;

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/view/View;I)V

    goto :goto_1

    .line 190
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/Ld;->m:Lo/ListView;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/view/View;I)V

    .line 191
    iget-object p1, p0, Lo/Ld;->b:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/view/View;I)V

    .line 196
    :goto_1
    iget-object p1, p0, Lo/Ld;->i:Landroid/widget/Button;

    const/16 v0, 0x64

    invoke-static {p1, v1, v0, v0, v1}, Lo/RemoteException;->d(Landroid/view/View;IIII)V

    .line 197
    iget-object p1, p0, Lo/Ld;->b:Landroid/view/View;

    invoke-static {p1, v1, v0, v0, v1}, Lo/RemoteException;->d(Landroid/view/View;IIII)V

    return-void
.end method

.method protected c(Lcom/netflix/model/leafs/originals/BillboardSummary;Z)V
    .locals 0

    .line 427
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBadgeKeys()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lo/Ld;->g:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->c(Ljava/util/List;Landroid/widget/TextView;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V
    .locals 0

    .line 61
    check-cast p1, Lo/Ax;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/Ld;->c(Lo/Ax;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V

    return-void
.end method

.method public c(Lo/Ax;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V
    .locals 6

    .line 296
    iput-object p1, p0, Lo/Ld;->w:Lo/Ax;

    .line 297
    invoke-virtual {p0}, Lo/Ld;->getContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p3

    const-string p4, "BillboardPhoneView"

    if-eqz p1, :cond_8

    .line 300
    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 305
    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->d(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v1

    .line 306
    iput-object p2, p0, Lo/Ld;->s:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    const/4 p2, 0x0

    .line 307
    invoke-virtual {p0, p2}, Lo/Ld;->setVisibility(I)V

    .line 309
    invoke-interface {p1}, Lo/Ax;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-virtual {p0, v2}, Lo/Ld;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 312
    invoke-virtual {p0, v0}, Lo/Ld;->b(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    .line 314
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getActionToken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lo/Ld;->v:Ljava/lang/String;

    .line 315
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getImpressionToken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lo/Ld;->x:Ljava/lang/String;

    .line 317
    invoke-virtual {p0, v0}, Lo/Ld;->a(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    .line 319
    iget-object v3, p0, Lo/Ld;->w:Lo/Ax;

    invoke-virtual {p0, v3, v0}, Lo/Ld;->d(Lo/Ax;Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    .line 321
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getTags()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 322
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 323
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->c(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 326
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lo/Ld;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 327
    iget-object v3, p0, Lo/Ld;->B:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 328
    iget-object v3, p0, Lo/Ld;->B:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getTags()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 329
    iget-object v3, p0, Lo/Ld;->z:Lo/ImageView;

    invoke-virtual {v3, p2}, Lo/ImageView;->setVisibility(I)V

    .line 330
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getHighlightColor()Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lo/Ld;->d(Ljava/util/List;Ljava/lang/Integer;)V

    goto :goto_1

    .line 333
    :cond_2
    iget-object v3, p0, Lo/Ld;->z:Lo/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lo/ImageView;->setVisibility(I)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 338
    invoke-virtual {p0}, Lo/Ld;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->W:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/Ld;->p:Ljava/lang/String;

    goto :goto_2

    .line 339
    :cond_4
    invoke-direct {p0, p1}, Lo/Ld;->a(Lo/Ax;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 340
    invoke-direct {p0, p1}, Lo/Ld;->d(Lo/Ax;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/Ld;->p:Ljava/lang/String;

    goto :goto_2

    .line 342
    :cond_5
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getSupplementalMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/Ld;->p:Ljava/lang/String;

    .line 344
    :goto_2
    invoke-interface {p1}, Lo/Ax;->isPreRelease()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 345
    invoke-direct {p0, p1}, Lo/Ld;->b(Lo/Ax;)V

    .line 348
    :cond_6
    invoke-direct {p0, v0}, Lo/Ld;->i(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    .line 350
    invoke-virtual {p0, v0}, Lo/Ld;->e(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lo/Ld;->c(Lcom/netflix/model/leafs/originals/BillboardSummary;Z)V

    .line 352
    invoke-virtual {p0, p1, v0, v2}, Lo/Ld;->b(Lo/Ax;Lcom/netflix/model/leafs/originals/BillboardSummary;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0, v0}, Lo/Ld;->c(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    .line 356
    invoke-direct {p0, p1}, Lo/Ld;->g(Lo/Ax;)V

    .line 358
    sget-object p2, Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;->a:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    invoke-virtual {p0, p2}, Lo/Ld;->c(Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;)V

    .line 360
    invoke-virtual {p3}, Lo/Am;->c()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 363
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Loggin billboard impression for video: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/Ax;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p3}, Lo/Am;->w()Lo/zG;

    move-result-object p2

    sget-object p3, Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;->a:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    iget-object p4, p0, Lo/Ld;->y:Ljava/util/Map;

    invoke-interface {p2, p1, p3, p4}, Lo/zG;->a(Lo/AR;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    .line 367
    :cond_7
    invoke-virtual {p0}, Lo/Ld;->e()V

    return-void

    :cond_8
    :goto_3
    const-string p1, "Billboard Data missing summary when trying to render billboard"

    .line 301
    invoke-static {p4, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0}, Lo/Ld;->g()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 133
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->an:I

    invoke-virtual {p0, v0}, Lo/Ld;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Ld;->h:Landroid/widget/TextView;

    .line 134
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->af:I

    invoke-virtual {p0, v0}, Lo/Ld;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Ld;->g:Landroid/widget/TextView;

    .line 135
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->al:I

    invoke-virtual {p0, v0}, Lo/Ld;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    iput-object v0, p0, Lo/Ld;->e:Lo/BaseAdapter;

    .line 136
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ah:I

    invoke-virtual {p0, v0}, Lo/Ld;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Ld;->c:Landroid/widget/TextView;

    .line 137
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jw:I

    invoke-virtual {p0, v0}, Lo/Ld;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    iput-object v0, p0, Lo/Ld;->d:Lo/BaseAdapter;

    .line 138
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sS:I

    invoke-virtual {p0, v0}, Lo/Ld;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageView;

    iput-object v0, p0, Lo/Ld;->z:Lo/ImageView;

    .line 139
    invoke-virtual {p0}, Lo/Ld;->c()V

    return-void
.end method

.method public e(Lo/Ax;)Ljava/lang/String;
    .locals 3

    .line 554
    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 555
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v1, "BillboardPhoneView"

    if-eqz p1, :cond_2

    .line 558
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    const-string v2, "Showing artwork only, image url: %s"

    .line 561
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "Data missing when trying to render billboard image"

    .line 559
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method protected e(III)V
    .locals 6

    .line 618
    new-instance v0, Lo/Factory2;

    invoke-direct {v0}, Lo/Factory2;-><init>()V

    .line 619
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->Z:I

    invoke-virtual {p0, v1}, Lo/Ld;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/MenuInflater;

    .line 620
    invoke-virtual {v0, v1}, Lo/Factory2;->d(Lo/MenuInflater;)V

    .line 621
    invoke-virtual {p0}, Lo/Ld;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double v2, v2, v4

    double-to-int v2, v2

    .line 623
    invoke-virtual {v0, p3, v2}, Lo/Factory2;->b(II)V

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Lo/Factory2;->d(ILjava/lang/String;)V

    .line 625
    invoke-virtual {v0, v1}, Lo/Factory2;->a(Lo/MenuInflater;)V

    return-void
.end method

.method protected e(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z
    .locals 1

    .line 423
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBadgeKeys()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBadgeKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()V
    .locals 2

    .line 170
    invoke-virtual {p0}, Lo/Ld;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lo/Ld;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lo/Ld;->G:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    .line 172
    invoke-virtual {p0}, Lo/Ld;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lo/Ld;->I:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    .line 174
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->f()V

    return-void
.end method

.method public g()V
    .locals 2

    .line 180
    iget-object v0, p0, Lo/Ld;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Z)V

    .line 181
    iget-object v0, p0, Lo/Ld;->i:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    .line 182
    iget-object v0, p0, Lo/Ld;->m:Lo/ListView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    .line 183
    iget-object v0, p0, Lo/Ld;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    .line 184
    iget-object v0, p0, Lo/Ld;->e:Lo/BaseAdapter;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    .line 185
    invoke-virtual {p0}, Lo/Ld;->j()V

    return-void
.end method

.method public h()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/ListOfTagSummary;",
            ">;"
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    iget-object v1, p0, Lo/Ld;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/originals/ListOfTagSummary;

    .line 393
    invoke-interface {v2}, Lcom/netflix/model/leafs/originals/ListOfTagSummary;->getIsVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public i()V
    .locals 1

    .line 520
    invoke-virtual {p0}, Lo/Ld;->j()V

    .line 521
    iget-object v0, p0, Lo/Ld;->e:Lo/BaseAdapter;

    invoke-virtual {v0}, Lo/BaseAdapter;->i()V

    .line 522
    iget-object v0, p0, Lo/Ld;->d:Lo/BaseAdapter;

    invoke-virtual {v0}, Lo/BaseAdapter;->i()V

    return-void
.end method

.method public j()V
    .locals 1

    .line 526
    iget-object v0, p0, Lo/Ld;->C:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Lo/Ld;->C:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 528
    iput-object v0, p0, Lo/Ld;->C:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public m()Z
    .locals 2

    .line 569
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->m()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 572
    :cond_0
    iget-object v0, p0, Lo/Ld;->e:Lo/BaseAdapter;

    invoke-virtual {v0}, Lo/BaseAdapter;->g()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/Ld;->d:Lo/BaseAdapter;

    invoke-virtual {v0}, Lo/BaseAdapter;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method
