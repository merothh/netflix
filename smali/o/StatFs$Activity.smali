.class Lo/StatFs$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/StatFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field private final a:Landroid/animation/ValueAnimator;

.field private b:Lo/StatFs$TaskDescription;

.field private final c:Landroid/animation/ValueAnimator;

.field private final d:Landroid/animation/ValueAnimator;

.field final synthetic e:Lo/StatFs;

.field private final f:Landroid/animation/ValueAnimator;

.field private g:Lo/StatFs$StateListAnimator;

.field private h:Lo/StatFs$StateListAnimator;

.field private final i:Landroid/animation/ValueAnimator;

.field private final j:Landroid/animation/ValueAnimator;

.field private k:J

.field private l:J

.field private m:J

.field private n:Z

.field private final o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method private constructor <init>(Lo/StatFs;)V
    .locals 4

    .line 592
    iput-object p1, p0, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lo/StatFs$Activity;->a:Landroid/animation/ValueAnimator;

    .line 513
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lo/StatFs$Activity;->d:Landroid/animation/ValueAnimator;

    .line 516
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lo/StatFs$Activity;->c:Landroid/animation/ValueAnimator;

    .line 519
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lo/StatFs$Activity;->j:Landroid/animation/ValueAnimator;

    .line 522
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lo/StatFs$Activity;->i:Landroid/animation/ValueAnimator;

    .line 525
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lo/StatFs$Activity;->f:Landroid/animation/ValueAnimator;

    .line 540
    new-instance v0, Lo/StatFs$Activity$1;

    invoke-direct {v0, p0}, Lo/StatFs$Activity$1;-><init>(Lo/StatFs$Activity;)V

    iput-object v0, p0, Lo/StatFs$Activity;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 593
    iget-object v0, p0, Lo/StatFs$Activity;->j:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lo/StatFs$Activity;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 594
    iget-object v0, p0, Lo/StatFs$Activity;->c:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lo/StatFs$Activity;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 596
    iget-object v0, p0, Lo/StatFs$Activity;->i:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lo/StatFs$Activity;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 597
    iget-object v0, p0, Lo/StatFs$Activity;->i:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 598
    iget-object v0, p0, Lo/StatFs$Activity;->i:Landroid/animation/ValueAnimator;

    new-instance v2, Lo/StatFs$Activity$5;

    invoke-direct {v2, p0, p1}, Lo/StatFs$Activity$5;-><init>(Lo/StatFs$Activity;Lo/StatFs;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 625
    iget-object v0, p0, Lo/StatFs$Activity;->f:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lo/StatFs$Activity;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 626
    iget-object v0, p0, Lo/StatFs$Activity;->f:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 627
    iget-object v0, p0, Lo/StatFs$Activity;->f:Landroid/animation/ValueAnimator;

    new-instance v1, Lo/StatFs$Activity$2;

    invoke-direct {v1, p0, p1}, Lo/StatFs$Activity$2;-><init>(Lo/StatFs$Activity;Lo/StatFs;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 636
    iget-object v0, p0, Lo/StatFs$Activity;->a:Landroid/animation/ValueAnimator;

    invoke-static {}, Lo/StatFs;->b()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 637
    iget-object v0, p0, Lo/StatFs$Activity;->a:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lo/StatFs$Activity;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 638
    iget-object v0, p0, Lo/StatFs$Activity;->a:Landroid/animation/ValueAnimator;

    new-instance v1, Lo/StatFs$Activity$4;

    invoke-direct {v1, p0, p1}, Lo/StatFs$Activity$4;-><init>(Lo/StatFs$Activity;Lo/StatFs;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 663
    iget-object p1, p0, Lo/StatFs$Activity;->j:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 664
    iget-object p1, p0, Lo/StatFs$Activity;->c:Landroid/animation/ValueAnimator;

    new-array v1, v0, [F

    aput v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 665
    iget-object p1, p0, Lo/StatFs$Activity;->a:Landroid/animation/ValueAnimator;

    new-array v1, v0, [F

    aput v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 666
    iget-object p1, p0, Lo/StatFs$Activity;->d:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    aput v2, v0, v3

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(Lo/StatFs;Lo/StatFs$3;)V
    .locals 0

    .line 506
    invoke-direct {p0, p1}, Lo/StatFs$Activity;-><init>(Lo/StatFs;)V

    return-void
.end method

.method static synthetic a(Lo/StatFs$Activity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 506
    iget-object p0, p0, Lo/StatFs$Activity;->f:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic b(Lo/StatFs$Activity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 506
    iget-object p0, p0, Lo/StatFs$Activity;->d:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private c()F
    .locals 1

    .line 740
    iget-object v0, p0, Lo/StatFs$Activity;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method static synthetic c(Lo/StatFs$Activity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 506
    iget-object p0, p0, Lo/StatFs$Activity;->i:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic d(Lo/StatFs$Activity;)F
    .locals 0

    .line 506
    invoke-direct {p0}, Lo/StatFs$Activity;->c()F

    move-result p0

    return p0
.end method

.method private d(I)V
    .locals 6

    const/4 v0, 0x0

    .line 671
    iput-object v0, p0, Lo/StatFs$Activity;->g:Lo/StatFs$StateListAnimator;

    .line 672
    iput-object v0, p0, Lo/StatFs$Activity;->h:Lo/StatFs$StateListAnimator;

    int-to-long v0, p1

    const-wide/16 v2, 0xfa

    mul-long v2, v2, v0

    .line 674
    iput-wide v2, p0, Lo/StatFs$Activity;->m:J

    const-wide/16 v4, 0x96

    mul-long v4, v4, v0

    .line 675
    iput-wide v4, p0, Lo/StatFs$Activity;->k:J

    const-wide/16 v4, 0x12c

    mul-long v4, v4, v0

    .line 676
    iput-wide v4, p0, Lo/StatFs$Activity;->l:J

    .line 678
    iget-object p1, p0, Lo/StatFs$Activity;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x32

    mul-long v0, v0, v4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 679
    iget-object p1, p0, Lo/StatFs$Activity;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 680
    iget-object p1, p0, Lo/StatFs$Activity;->d:Landroid/animation/ValueAnimator;

    iget-wide v0, p0, Lo/StatFs$Activity;->m:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 681
    iget-object p1, p0, Lo/StatFs$Activity;->j:Landroid/animation/ValueAnimator;

    iget-wide v0, p0, Lo/StatFs$Activity;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 682
    iget-object p1, p0, Lo/StatFs$Activity;->c:Landroid/animation/ValueAnimator;

    iget-wide v0, p0, Lo/StatFs$Activity;->l:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 683
    iget-object p1, p0, Lo/StatFs$Activity;->a:Landroid/animation/ValueAnimator;

    iget-wide v0, p0, Lo/StatFs$Activity;->l:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 685
    iget-object p1, p0, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->n(Lo/StatFs;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 686
    iget-object p1, p0, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->l(Lo/StatFs;)Lo/StatFs$TaskDescription;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/StatFs$TaskDescription;->setAlpha(I)V

    .line 687
    iget-object p1, p0, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->j(Lo/StatFs;)Lo/StatFs$TaskDescription;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/StatFs$TaskDescription;->setAlpha(I)V

    .line 688
    iget-object p1, p0, Lo/StatFs$Activity;->e:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->f(Lo/StatFs;)Lo/StatFs$TaskDescription;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/StatFs$TaskDescription;->setAlpha(I)V

    .line 690
    iget-object p1, p0, Lo/StatFs$Activity;->d:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 692
    iget-object p1, p0, Lo/StatFs$Activity;->j:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lo/StatFs$Activity;->l:J

    iget-wide v3, p0, Lo/StatFs$Activity;->k:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/animation/ValueAnimator;

    .line 694
    iget-object v1, p0, Lo/StatFs$Activity;->d:Landroid/animation/ValueAnimator;

    aput-object v1, p1, v0

    iget-object v1, p0, Lo/StatFs$Activity;->j:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    aput-object v1, p1, v2

    iget-object v1, p0, Lo/StatFs$Activity;->c:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    aput-object v1, p1, v2

    iget-object v1, p0, Lo/StatFs$Activity;->a:Landroid/animation/ValueAnimator;

    const/4 v2, 0x3

    aput-object v1, p1, v2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, p1}, Lo/StatFs$Activity;->e(F[Landroid/animation/ValueAnimator;)V

    .line 695
    iput-boolean v0, p0, Lo/StatFs$Activity;->n:Z

    return-void
.end method

.method private d(Lo/StatFs$TaskDescription;Lo/StatFs$StateListAnimator;)V
    .locals 2

    .line 727
    iput-object p1, p0, Lo/StatFs$Activity;->b:Lo/StatFs$TaskDescription;

    .line 728
    iget-object p1, p0, Lo/StatFs$Activity;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 729
    iget-object p1, p0, Lo/StatFs$Activity;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 730
    :cond_0
    iget-object p1, p0, Lo/StatFs$Activity;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 731
    iget-object p1, p0, Lo/StatFs$Activity;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    :goto_0
    const/4 p1, 0x4

    new-array p1, p1, [Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    .line 733
    iget-object v1, p0, Lo/StatFs$Activity;->d:Landroid/animation/ValueAnimator;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lo/StatFs$Activity;->j:Landroid/animation/ValueAnimator;

    aput-object v1, p1, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lo/StatFs$Activity;->c:Landroid/animation/ValueAnimator;

    aput-object v1, p1, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lo/StatFs$Activity;->a:Landroid/animation/ValueAnimator;

    aput-object v1, p1, v0

    invoke-direct {p0, p1}, Lo/StatFs$Activity;->d([Landroid/animation/ValueAnimator;)V

    .line 734
    iget-object p1, p0, Lo/StatFs$Activity;->b:Lo/StatFs$TaskDescription;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lo/StatFs$TaskDescription;->setAlpha(I)V

    .line 735
    iput-object p2, p0, Lo/StatFs$Activity;->h:Lo/StatFs$StateListAnimator;

    .line 736
    iget-object p1, p0, Lo/StatFs$Activity;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private varargs d([Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 707
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 708
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 709
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic e(Lo/StatFs$Activity;)Lo/StatFs$TaskDescription;
    .locals 0

    .line 506
    iget-object p0, p0, Lo/StatFs$Activity;->b:Lo/StatFs$TaskDescription;

    return-object p0
.end method

.method private varargs e(F[Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 699
    invoke-direct {p0, p2}, Lo/StatFs$Activity;->d([Landroid/animation/ValueAnimator;)V

    .line 700
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 701
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v4, v1

    const/4 v5, 0x1

    aput p1, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 702
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic e(Lo/StatFs$Activity;I)V
    .locals 0

    .line 506
    invoke-direct {p0, p1}, Lo/StatFs$Activity;->d(I)V

    return-void
.end method

.method static synthetic e(Lo/StatFs$Activity;Lo/StatFs$TaskDescription;Lo/StatFs$StateListAnimator;)V
    .locals 0

    .line 506
    invoke-direct {p0, p1, p2}, Lo/StatFs$Activity;->d(Lo/StatFs$TaskDescription;Lo/StatFs$StateListAnimator;)V

    return-void
.end method

.method static synthetic f(Lo/StatFs$Activity;)Lo/StatFs$StateListAnimator;
    .locals 0

    .line 506
    iget-object p0, p0, Lo/StatFs$Activity;->h:Lo/StatFs$StateListAnimator;

    return-object p0
.end method

.method static synthetic g(Lo/StatFs$Activity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 506
    iget-object p0, p0, Lo/StatFs$Activity;->c:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic h(Lo/StatFs$Activity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 506
    iget-object p0, p0, Lo/StatFs$Activity;->j:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic i(Lo/StatFs$Activity;)Lo/StatFs$StateListAnimator;
    .locals 0

    .line 506
    iget-object p0, p0, Lo/StatFs$Activity;->g:Lo/StatFs$StateListAnimator;

    return-object p0
.end method

.method static synthetic j(Lo/StatFs$Activity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 506
    iget-object p0, p0, Lo/StatFs$Activity;->a:Landroid/animation/ValueAnimator;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 748
    iget-boolean v0, p0, Lo/StatFs$Activity;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/StatFs$Activity;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Lo/StatFs$StateListAnimator;)V
    .locals 7

    .line 716
    iget-object v0, p0, Lo/StatFs$Activity;->d:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lo/StatFs$Activity;->l:J

    iget-wide v3, p0, Lo/StatFs$Activity;->m:J

    const-wide/16 v5, 0x2

    mul-long v3, v3, v5

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 718
    iget-object v0, p0, Lo/StatFs$Activity;->j:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/ValueAnimator;

    .line 720
    iget-object v1, p0, Lo/StatFs$Activity;->d:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/StatFs$Activity;->j:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/StatFs$Activity;->c:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, Lo/StatFs$Activity;->a:Landroid/animation/ValueAnimator;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lo/StatFs$Activity;->e(F[Landroid/animation/ValueAnimator;)V

    .line 722
    iput-object p1, p0, Lo/StatFs$Activity;->g:Lo/StatFs$StateListAnimator;

    .line 723
    iput-boolean v2, p0, Lo/StatFs$Activity;->n:Z

    return-void
.end method

.method e()Z
    .locals 1

    .line 744
    iget-object v0, p0, Lo/StatFs$Activity;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method
