.class public Lo/Ki;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/animation/AnimatorSet;

.field private b:Lio/reactivex/disposables/Disposable;

.field private c:Lo/Kx;


# direct methods
.method public constructor <init>(Lo/Kx;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lo/Ki;->c:Lo/Kx;

    .line 50
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lo/Ki;->a:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static synthetic a(Lo/Ki;IILandroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lo/Ki;->e(IILandroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic a(Lo/Ki;Landroid/content/Context;IIZIILjava/lang/String;ZLcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lo/Ki;->d(Landroid/content/Context;IIZIILjava/lang/String;ZLcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void
.end method

.method private b(Landroid/content/Context;IILjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 12

    move-object v0, p1

    .line 129
    invoke-static {p1}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v1

    mul-int v1, v1, p3

    .line 130
    div-int/2addr v1, p2

    mul-int/lit8 v2, v1, 0x6

    .line 131
    div-int/lit8 v8, v2, 0xa

    sub-int/2addr v1, v8

    .line 134
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x3

    new-array v5, v4, [I

    sget v6, Lcom/netflix/mediaclient/ui/R$Application;->af:I

    .line 135
    invoke-static {p1, v6}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    const/4 v6, 0x1

    aput v7, v5, v6

    const/4 v9, 0x2

    aput v7, v5, v9

    invoke-direct {v2, v3, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const v3, 0x1010054

    .line 138
    invoke-static {p1, v3}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/content/Context;I)I

    move-result v0

    const/16 v3, 0xc8

    .line 139
    invoke-static {v0, v3}, Lo/WindowId;->b(II)I

    move-result v3

    .line 140
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v11, v4, [I

    aput v7, v11, v7

    aput v3, v11, v6

    aput v0, v11, v9

    invoke-direct {v5, v10, v11}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 143
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v3, v4, [Landroid/graphics/drawable/Drawable;

    aput-object p5, v3, v7

    aput-object v2, v3, v6

    aput-object v5, v3, v9

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    .line 144
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v2, v0

    move v5, v1

    .line 145
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    return-object v0
.end method

.method private static synthetic b(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "LolomoBackgroundController"

    const-string v1, "failed to load billboard background"

    .line 107
    invoke-static {v0, v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic d(Landroid/content/Context;IIZIILjava/lang/String;ZLcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 11

    move v3, p2

    move v4, p3

    .line 82
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual/range {p9 .. p9}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 83
    invoke-virtual {v10, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz p4, :cond_0

    move-object v5, p0

    move-object v6, p1

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 85
    invoke-direct/range {v5 .. v10}, Lo/Ki;->b(Landroid/content/Context;IILjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 89
    invoke-virtual/range {p9 .. p9}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p1

    move/from16 v6, p8

    .line 87
    invoke-direct/range {v0 .. v6}, Lo/Ki;->e(Landroid/graphics/drawable/Drawable;Lo/CompatibilityInfo;IILandroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    .line 96
    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 99
    invoke-virtual/range {p9 .. p9}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, p2

    move v4, p3

    move-object v5, p1

    .line 97
    invoke-direct/range {v0 .. v6}, Lo/Ki;->e(Landroid/graphics/drawable/Drawable;Lo/CompatibilityInfo;IILandroid/content/Context;Z)V

    :goto_0
    return-void
.end method

.method private d(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FFFFII)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p5, v1, v2

    const/4 p5, 0x1

    aput p6, v1, p5

    .line 166
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p6

    const-wide/16 v3, 0x258

    invoke-virtual {p6, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p6

    .line 167
    new-instance v1, Lo/Kp;

    invoke-direct {v1, p0, p8, p7, p2}, Lo/Kp;-><init>(Lo/Ki;IILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p6, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v0, [F

    aput p3, v1, v2

    aput p4, v1, p5

    .line 186
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    const-wide/16 v3, 0x12c

    invoke-virtual {p3, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 187
    new-instance p4, Lo/Ko;

    invoke-direct {p4, p0, p2}, Lo/Ko;-><init>(Lo/Ki;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 195
    iget-object p4, p0, Lo/Ki;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {p4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p4

    if-nez p4, :cond_0

    iget-object p4, p0, Lo/Ki;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {p4}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p4

    if-nez p4, :cond_0

    .line 196
    iget-object p4, p0, Lo/Ki;->a:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p3, v0, v2

    aput-object p6, v0, p5

    invoke-virtual {p4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 197
    iget-object p3, p0, Lo/Ki;->a:Landroid/animation/AnimatorSet;

    new-instance p4, Lo/Ki$2;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p7

    move v5, p8

    invoke-direct/range {v0 .. v5}, Lo/Ki$2;-><init>(Lo/Ki;Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 220
    iget-object p1, p0, Lo/Ki;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private synthetic d(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 188
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    .line 189
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 190
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 192
    iget-object p1, p0, Lo/Ki;->c:Lo/Kx;

    invoke-virtual {p1}, Lo/Kx;->invalidate()V

    return-void
.end method

.method static synthetic d(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lo/Ki;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic e(IILandroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 168
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    .line 169
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    int-to-float v1, p1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 170
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    int-to-float v1, p2

    mul-float p4, p4, v1

    float-to-int p4, p4

    const/4 v1, 0x0

    if-le v0, p1, :cond_0

    sub-int p1, v0, p1

    neg-int p1, p1

    .line 174
    div-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-le p4, p2, :cond_1

    sub-int p2, p4, p2

    neg-int p2, p2

    .line 177
    div-int/lit8 v1, p2, 0x2

    .line 180
    :cond_1
    invoke-virtual {p3, p1, v1, p4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 182
    iget-object p1, p0, Lo/Ki;->c:Lo/Kx;

    invoke-virtual {p1}, Lo/Kx;->invalidate()V

    return-void
.end method

.method private e(Landroid/graphics/drawable/Drawable;Lo/CompatibilityInfo;IILandroid/content/Context;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;II",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    move-object v9, p0

    move-object v2, p1

    if-eqz v2, :cond_1

    .line 115
    iget-object v0, v9, Lo/Ki;->c:Lo/Kx;

    invoke-virtual {v0}, Lo/Kx;->e()Landroid/view/View;

    move-result-object v0

    .line 116
    new-instance v1, Lo/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, p1, v0}, Lo/ParcelFileDescriptor;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 120
    iget-object v0, v9, Lo/Ki;->c:Lo/Kx;

    move-object v3, p2

    invoke-virtual {v0, v1, p2}, Lo/Kx;->setBackgroundItemDecoration(Lo/ParcelFileDescriptor;Lo/CompatibilityInfo;)V

    if-eqz p6, :cond_1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f866666    # 1.05f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move v7, p3

    move v8, p4

    .line 123
    invoke-direct/range {v0 .. v8}, Lo/Ki;->d(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FFFFII)V

    :cond_1
    return-void
.end method

.method static synthetic e(Lo/Ki;Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/Ki;->d(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 150
    iget-object v0, p0, Lo/Ki;->c:Lo/Kx;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lo/Kx;->b()V

    .line 153
    :cond_0
    iget-object v0, p0, Lo/Ki;->b:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 154
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lo/Ki;->b:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;IILjava/lang/String;ZZ)V
    .locals 13

    move-object v10, p0

    .line 61
    invoke-static/range {p4 .. p4}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "image url is empty, showBillboardBackground"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    .line 67
    invoke-static {v2}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v3

    mul-int v0, v3, p3

    .line 68
    div-int v4, v0, p2

    .line 70
    iget-object v0, v10, Lo/Ki;->c:Lo/Kx;

    move-object v1, p1

    invoke-static {p1, v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    move-object/from16 v8, p4

    .line 71
    invoke-virtual {v0, v8}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v3}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v4}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object v0

    .line 76
    iget-object v5, v10, Lo/Ki;->b:Lio/reactivex/disposables/Disposable;

    if-eqz v5, :cond_1

    .line 77
    invoke-interface {v5}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 79
    :cond_1
    sget-object v5, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v5, v1}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object v1

    .line 80
    invoke-interface {v1, v0}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object v11

    new-instance v12, Lo/Kj;

    move-object v0, v12

    move-object v1, p0

    move/from16 v5, p5

    move v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lo/Kj;-><init>(Lo/Ki;Landroid/content/Context;IIZIILjava/lang/String;Z)V

    sget-object v0, Lo/Kk;->e:Lo/Kk;

    invoke-virtual {v11, v12, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, v10, Lo/Ki;->b:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public d()V
    .locals 1

    .line 160
    iget-object v0, p0, Lo/Ki;->a:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/Ki;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    iget-object v0, p0, Lo/Ki;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    return-void
.end method
