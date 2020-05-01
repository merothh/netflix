.class public final Lo/ListAdapter;
.super Lo/ImageButton;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ListAdapter$TaskDescription;,
        Lo/ListAdapter$ActionBar;,
        Lo/ListAdapter$Activity;
    }
.end annotation


# static fields
.field public static final e:Lo/ListAdapter$Activity;

.field private static final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/IntKeyframeSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lo/ListAdapter$TaskDescription;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/ListAdapter$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private f:Ljava/lang/Integer;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private final k:Lo/ListAdapter$ActionBar;

.field private final l:Lo/ListAdapter$ActionBar;

.field private m:Ljava/lang/Integer;

.field private final n:Lo/ListAdapter$ActionBar;

.field private final o:Lo/ListAdapter$ActionBar;

.field private final t:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lo/ListAdapter$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ListAdapter$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/ListAdapter;->e:Lo/ListAdapter$Activity;

    const/4 v0, 0x4

    new-array v0, v0, [Lo/IntKeyframeSet;

    .line 46
    new-instance v1, Lo/IntKeyframeSet;

    const-string v2, "spinnerPath"

    const-string v3, "loop"

    const-string v4, "loopAnimation"

    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lo/IntKeyframeSet;-><init>([Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 47
    new-instance v1, Lo/IntKeyframeSet;

    const-string v3, "start"

    const-string v4, "replayTap"

    filled-new-array {v4, v3, v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lo/IntKeyframeSet;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    .line 48
    new-instance v1, Lo/IntKeyframeSet;

    const-string v4, "startAnimation"

    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lo/IntKeyframeSet;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 49
    new-instance v1, Lo/IntKeyframeSet;

    const-string v4, "replayIn"

    filled-new-array {v4, v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/IntKeyframeSet;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 45
    invoke-static {v0}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/ListAdapter;->s:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/ListAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/ListAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lo/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lo/ListAdapter;->c:Ljava/util/Map;

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lo/ListAdapter;->g:I

    .line 102
    new-instance v9, Lo/ListAdapter$ActionBar;

    const-string v2, "nflx-loop"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x16

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lo/ListAdapter$ActionBar;-><init>(Lo/ListAdapter;Ljava/lang/String;Ljava/lang/Integer;ZZLo/ListAdapter$ActionBar;ILo/amc;)V

    iput-object v9, p0, Lo/ListAdapter;->k:Lo/ListAdapter$ActionBar;

    .line 103
    new-instance v9, Lo/ListAdapter$ActionBar;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v6, p0, Lo/ListAdapter;->k:Lo/ListAdapter$ActionBar;

    const-string v2, "nflx-full-loop"

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v7, 0x8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lo/ListAdapter$ActionBar;-><init>(Lo/ListAdapter;Ljava/lang/String;Ljava/lang/Integer;ZZLo/ListAdapter$ActionBar;ILo/amc;)V

    iput-object v9, p0, Lo/ListAdapter;->n:Lo/ListAdapter$ActionBar;

    .line 104
    new-instance v9, Lo/ListAdapter$ActionBar;

    const-string v2, "nflx-replay-in"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lo/ListAdapter$ActionBar;-><init>(Lo/ListAdapter;Ljava/lang/String;Ljava/lang/Integer;ZZLo/ListAdapter$ActionBar;ILo/amc;)V

    iput-object v9, p0, Lo/ListAdapter;->o:Lo/ListAdapter$ActionBar;

    .line 105
    new-instance v9, Lo/ListAdapter$ActionBar;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v6, p0, Lo/ListAdapter;->n:Lo/ListAdapter$ActionBar;

    const-string v2, "nflx-replay-tap"

    const/16 v7, 0xc

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lo/ListAdapter$ActionBar;-><init>(Lo/ListAdapter;Ljava/lang/String;Ljava/lang/Integer;ZZLo/ListAdapter$ActionBar;ILo/amc;)V

    iput-object v9, p0, Lo/ListAdapter;->l:Lo/ListAdapter$ActionBar;

    .line 136
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 137
    new-instance v1, Lo/ListAdapter$Application;

    invoke-direct {v1, v0, p0}, Lo/ListAdapter$Application;-><init>(Landroid/animation/ValueAnimator;Lo/ListAdapter;)V

    check-cast v1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 142
    move-object v1, v0

    check-cast v1, Landroid/animation/Animator;

    .line 337
    new-instance v2, Lo/ListAdapter$StateListAnimator;

    invoke-direct {v2, v0, p0}, Lo/ListAdapter$StateListAnimator;-><init>(Landroid/animation/ValueAnimator;Lo/ListAdapter;)V

    .line 343
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 152
    invoke-virtual {p0}, Lo/ListAdapter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 136
    iput-object v0, p0, Lo/ListAdapter;->t:Landroid/animation/ValueAnimator;

    .line 156
    sget-object v0, Lo/ImageButton;->a:Lo/ImageButton$TaskDescription;

    .line 157
    move-object v1, p0

    check-cast v1, Lo/ImageButton;

    const-string v2, "lottiefiles/play-loading-replay.json"

    invoke-virtual {v0, p1, v2, v1}, Lo/ImageButton$TaskDescription;->b(Landroid/content/Context;Ljava/lang/String;Lo/ImageButton;)Lio/reactivex/Single;

    move-result-object v0

    .line 158
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "NetflixLottieAnimationVi\u2026dSchedulers.mainThread())"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    new-instance v1, Lcom/netflix/mediaclient/android/widget/PlayLoadingReplayButton$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/widget/PlayLoadingReplayButton$1;-><init>(Lo/ListAdapter;)V

    check-cast v1, Lo/alA;

    .line 171
    new-instance v2, Lcom/netflix/mediaclient/android/widget/PlayLoadingReplayButton$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/android/widget/PlayLoadingReplayButton$2;-><init>(Lo/ListAdapter;)V

    check-cast v2, Lo/alA;

    .line 159
    invoke-static {v0, v2, v1}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Single;Lo/alA;Lo/alA;)Lio/reactivex/disposables/Disposable;

    .line 180
    new-instance v0, Lo/ListAdapter$3;

    invoke-direct {v0, p0}, Lo/ListAdapter$3;-><init>(Lo/ListAdapter;)V

    check-cast v0, Lo/WebSyncManager;

    invoke-virtual {p0, v0}, Lo/ListAdapter;->setTagAnimationListener(Lo/WebSyncManager;)V

    .line 212
    new-instance v0, Lo/ListAdapter$1;

    invoke-direct {v0, p0}, Lo/ListAdapter$1;-><init>(Lo/ListAdapter;)V

    check-cast v0, Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lo/ListAdapter;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 36
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 37
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/ListAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lo/ListAdapter;Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lo/ListAdapter;->d:Z

    return-void
.end method

.method private final a(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static final synthetic a(Lo/ListAdapter;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lo/ListAdapter;->d:Z

    return p0
.end method

.method public static final synthetic b(Lo/ListAdapter;)Ljava/util/Map;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/ListAdapter;->c:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic b(Lo/ListAdapter;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lo/ListAdapter;->c(I)V

    return-void
.end method

.method private final c(I)V
    .locals 6

    .line 243
    iget v0, p0, Lo/ListAdapter;->g:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Lo/ListAdapter;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 247
    :cond_0
    iget-boolean v0, p0, Lo/ListAdapter;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/ListAdapter;->h:Z

    if-nez v0, :cond_1

    .line 250
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/ListAdapter;->f:Ljava/lang/Integer;

    return-void

    .line 253
    :cond_1
    iput p1, p0, Lo/ListAdapter;->g:I

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_5

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 269
    :cond_2
    sget-object p1, Lo/ListAdapter;->e:Lo/ListAdapter$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 270
    iget-object p1, p0, Lo/ListAdapter;->o:Lo/ListAdapter$ActionBar;

    invoke-virtual {p1, v2}, Lo/ListAdapter$ActionBar;->a(Z)V

    .line 271
    invoke-virtual {p0}, Lo/ListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lo/IHwInterface$PendingIntent;->e:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lo/ListAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 276
    :cond_3
    sget-object p1, Lo/ListAdapter;->e:Lo/ListAdapter$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 277
    iget-object p1, p0, Lo/ListAdapter;->n:Lo/ListAdapter$ActionBar;

    invoke-virtual {p1, v2}, Lo/ListAdapter$ActionBar;->a(Z)V

    .line 278
    invoke-virtual {p0}, Lo/ListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lo/IHwInterface$PendingIntent;->a:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lo/ListAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    :cond_4
    sget-object p1, Lo/ListAdapter;->e:Lo/ListAdapter$Activity;

    check-cast p1, Lo/MessagePdu;

    const/4 p1, 0x1

    goto :goto_1

    .line 256
    :cond_5
    sget-object p1, Lo/ListAdapter;->e:Lo/ListAdapter$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 257
    invoke-virtual {p0}, Lo/ListAdapter;->j()V

    .line 258
    iget-object p1, p0, Lo/ListAdapter;->n:Lo/ListAdapter$ActionBar;

    invoke-virtual {p1}, Lo/ListAdapter$ActionBar;->d()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/android/lottie/FrameType;->d:Lcom/netflix/mediaclient/android/lottie/FrameType;

    invoke-virtual {p0, p1, v0}, Lo/ListAdapter;->a(Ljava/lang/String;Lcom/netflix/mediaclient/android/lottie/FrameType;)Z

    .line 259
    invoke-virtual {p0}, Lo/ListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lo/IHwInterface$PendingIntent;->d:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lo/ListAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 261
    iput-boolean v3, p0, Lo/ListAdapter;->j:Z

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_6

    .line 288
    iput-boolean v2, p0, Lo/ListAdapter;->d:Z

    .line 289
    iget-object p1, p0, Lo/ListAdapter;->t:Landroid/animation/ValueAnimator;

    new-array v0, v1, [F

    invoke-virtual {p0}, Lo/ListAdapter;->getAlpha()F

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_2

    .line 291
    :cond_6
    iget-object p1, p0, Lo/ListAdapter;->t:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 292
    iget-object p1, p0, Lo/ListAdapter;->t:Landroid/animation/ValueAnimator;

    new-array v0, v1, [F

    invoke-virtual {p0}, Lo/ListAdapter;->getAlpha()F

    move-result v1

    aput v1, v0, v3

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 294
    :goto_2
    iget-object p1, p0, Lo/ListAdapter;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 295
    sget-object p1, Lo/ListAdapter;->e:Lo/ListAdapter$Activity;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public static final synthetic c(Lo/ListAdapter;Ljava/lang/Integer;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lo/ListAdapter;->f:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic c(Lo/ListAdapter;Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lo/ListAdapter;->i:Z

    return-void
.end method

.method public static final synthetic c(Lo/ListAdapter;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lo/ListAdapter;->j:Z

    return p0
.end method

.method public static final synthetic d(Lo/ListAdapter;)Ljava/lang/Integer;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/ListAdapter;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic d(Lo/ListAdapter;I)V
    .locals 0

    .line 34
    iput p1, p0, Lo/ListAdapter;->g:I

    return-void
.end method

.method public static final synthetic d(Lo/ListAdapter;Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lo/ListAdapter;->j:Z

    return-void
.end method

.method public static final synthetic e(Lo/ListAdapter;)Ljava/lang/Integer;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/ListAdapter;->m:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic e(Lo/ListAdapter;Ljava/lang/Integer;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lo/ListAdapter;->m:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic e(Lo/ListAdapter;Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lo/ListAdapter;->h:Z

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Integer;)V
    .locals 4

    .line 226
    iget-boolean v0, p0, Lo/ListAdapter;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/ListAdapter;->h:Z

    if-nez v0, :cond_0

    .line 229
    iput-object p1, p0, Lo/ListAdapter;->m:Ljava/lang/Integer;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 232
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 233
    :goto_0
    sget-object v0, Lo/ListAdapter;->s:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 305
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/IntKeyframeSet;

    .line 234
    sget-object v2, Lo/IvParameterSpec;->b:Ljava/lang/Integer;

    new-instance v3, Lo/ListAdapter$Fragment;

    invoke-direct {v3, p0, p1}, Lo/ListAdapter$Fragment;-><init>(Lo/ListAdapter;I)V

    check-cast v3, Lo/ActivityThread;

    invoke-virtual {p0, v1, v2, v3}, Lo/ListAdapter;->b(Lo/IntKeyframeSet;Ljava/lang/Object;Lo/ActivityThread;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final g()Lo/ListAdapter$TaskDescription;
    .locals 1

    .line 69
    iget-object v0, p0, Lo/ListAdapter;->b:Lo/ListAdapter$TaskDescription;

    return-object v0
.end method

.method public final setListener(Lo/ListAdapter$TaskDescription;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lo/ListAdapter;->b:Lo/ListAdapter$TaskDescription;

    return-void
.end method

.method public final setState(I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lo/ListAdapter;->c(I)V

    return-void
.end method
