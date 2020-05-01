.class public Lo/StatFs;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/StatFs$TaskDescription;,
        Lo/StatFs$Activity;,
        Lo/StatFs$StateListAnimator;
    }
.end annotation


# static fields
.field private static final d:Landroid/view/animation/Interpolator;


# instance fields
.field private final A:Landroid/graphics/Point;

.field private final C:[I

.field private final D:Landroid/graphics/Rect;

.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/ImageView;

.field private final c:Ljava/lang/CharSequence;

.field private final e:Ljava/lang/CharSequence;

.field private final f:Z

.field private final g:Lo/StatFs$TaskDescription;

.field private final h:Landroid/widget/ImageView;

.field private final i:Lo/StatFs$TaskDescription;

.field private final j:Lo/StatFs$TaskDescription;

.field private k:Lo/SimpleClock$Activity;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Lo/SystemVibrator;

.field private final n:Lo/StatFs$Activity;

.field private o:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private final p:[I

.field private final q:[I

.field private final r:Z

.field private s:Landroid/widget/ImageView;

.field private t:Z

.field private final u:Landroid/graphics/Rect;

.field private final v:Landroid/graphics/Point;

.field private final w:Landroid/graphics/Rect;

.field private final x:Landroid/graphics/Rect;

.field private final y:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3ea3d70a    # 0.32f

    .line 60
    invoke-static {v1, v0, v2, v0}, Lo/ObjectOutput;->e(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lo/StatFs;->d:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/SimpleClock$Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZI)V
    .locals 10

    move-object v6, p0

    move-object v7, p2

    .line 134
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, v6, Lo/StatFs;->t:Z

    const/4 v8, 0x0

    .line 107
    iput-object v8, v6, Lo/StatFs;->s:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 115
    iput-object v2, v6, Lo/StatFs;->p:[I

    new-array v2, v1, [I

    .line 116
    iput-object v2, v6, Lo/StatFs;->q:[I

    .line 117
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lo/StatFs;->u:Landroid/graphics/Rect;

    .line 118
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lo/StatFs;->w:Landroid/graphics/Rect;

    .line 119
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lo/StatFs;->x:Landroid/graphics/Rect;

    .line 120
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lo/StatFs;->y:Landroid/graphics/Rect;

    .line 121
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v6, Lo/StatFs;->v:Landroid/graphics/Point;

    .line 122
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v6, Lo/StatFs;->A:Landroid/graphics/Point;

    new-array v1, v1, [I

    .line 127
    iput-object v1, v6, Lo/StatFs;->C:[I

    .line 128
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v6, Lo/StatFs;->D:Landroid/graphics/Rect;

    .line 136
    invoke-virtual {p0}, Lo/StatFs;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lo/IHwInterface$LoaderManager;->f:I

    invoke-static {v1, v2, p0}, Lo/StatFs;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v1, 0x1

    .line 137
    invoke-virtual {p0, v1}, Lo/StatFs;->setFitsSystemWindows(Z)V

    if-eqz p9, :cond_0

    move/from16 v2, p10

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    .line 139
    :cond_0
    iput-boolean v0, v6, Lo/StatFs;->r:Z

    move-object/from16 v0, p6

    .line 141
    iput-object v0, v6, Lo/StatFs;->e:Ljava/lang/CharSequence;

    move-object/from16 v0, p7

    .line 142
    iput-object v0, v6, Lo/StatFs;->c:Ljava/lang/CharSequence;

    move/from16 v0, p8

    .line 144
    iput-boolean v0, v6, Lo/StatFs;->f:Z

    .line 145
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lo/StatFs;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, v6, Lo/StatFs;->f:Z

    if-eqz v2, :cond_1

    sget v2, Lo/IHwInterface$StateListAnimator;->j:I

    goto :goto_0

    :cond_1
    sget v2, Lo/IHwInterface$StateListAnimator;->k:I

    :goto_0
    invoke-static {v1, v2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, v6, Lo/StatFs;->l:Landroid/graphics/drawable/Drawable;

    .line 146
    iget-object v0, v6, Lo/StatFs;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lo/StatFs;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    sget v0, Lo/IHwInterface$FragmentManager;->P:I

    invoke-virtual {p0, v0}, Lo/StatFs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v6, Lo/StatFs;->b:Landroid/widget/ImageView;

    .line 149
    sget v0, Lo/IHwInterface$FragmentManager;->R:I

    invoke-virtual {p0, v0}, Lo/StatFs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v6, Lo/StatFs;->a:Landroid/widget/ImageView;

    .line 150
    sget v0, Lo/IHwInterface$FragmentManager;->S:I

    invoke-virtual {p0, v0}, Lo/StatFs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v6, Lo/StatFs;->h:Landroid/widget/ImageView;

    .line 151
    iget-object v0, v6, Lo/StatFs;->h:Landroid/widget/ImageView;

    new-instance v1, Lo/StatFs$3;

    invoke-direct {v1, p0}, Lo/StatFs$3;-><init>(Lo/StatFs;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-direct {p0}, Lo/StatFs;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lo/StatFs;->a(I)Lo/StatFs$TaskDescription;

    move-result-object v0

    iput-object v0, v6, Lo/StatFs;->g:Lo/StatFs$TaskDescription;

    .line 159
    invoke-direct {p0}, Lo/StatFs;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lo/StatFs;->a(I)Lo/StatFs$TaskDescription;

    move-result-object v0

    iput-object v0, v6, Lo/StatFs;->i:Lo/StatFs$TaskDescription;

    .line 161
    new-instance v9, Lo/StatFs$TaskDescription;

    sget v2, Lo/IHwInterface$TaskDescription;->g:I

    sget v3, Lo/IHwInterface$TaskDescription;->g:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lo/StatFs$TaskDescription;-><init>(Lo/StatFs;IIZLo/StatFs$3;)V

    iput-object v9, v6, Lo/StatFs;->j:Lo/StatFs$TaskDescription;

    .line 163
    iget-object v0, v6, Lo/StatFs;->b:Landroid/widget/ImageView;

    iget-object v1, v6, Lo/StatFs;->g:Lo/StatFs$TaskDescription;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v0, v6, Lo/StatFs;->a:Landroid/widget/ImageView;

    iget-object v1, v6, Lo/StatFs;->i:Lo/StatFs$TaskDescription;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object v0, v6, Lo/StatFs;->h:Landroid/widget/ImageView;

    iget-object v1, v6, Lo/StatFs;->j:Lo/StatFs$TaskDescription;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    iget-object v0, v6, Lo/StatFs;->b:Landroid/widget/ImageView;

    move-object v1, p3

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, v6, Lo/StatFs;->a:Landroid/widget/ImageView;

    move-object v1, p4

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, v6, Lo/StatFs;->h:Landroid/widget/ImageView;

    move-object v1, p5

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 171
    iput-object v7, v6, Lo/StatFs;->k:Lo/SimpleClock$Activity;

    .line 173
    new-instance v0, Lo/StatFs$2;

    invoke-direct {v0, p0}, Lo/StatFs$2;-><init>(Lo/StatFs;)V

    .line 206
    iget-object v1, v6, Lo/StatFs;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v1, v6, Lo/StatFs;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v1, v6, Lo/StatFs;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    invoke-virtual {p0, v0}, Lo/StatFs;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    new-instance v0, Lo/StatFs$Activity;

    invoke-direct {v0, p0, v8}, Lo/StatFs$Activity;-><init>(Lo/StatFs;Lo/StatFs$3;)V

    iput-object v0, v6, Lo/StatFs;->n:Lo/StatFs$Activity;

    .line 212
    iget-object v0, v6, Lo/StatFs;->n:Lo/StatFs$Activity;

    invoke-static {v0}, Lo/StatFs$Activity;->b(Lo/StatFs$Activity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lo/StatFs$4;

    invoke-direct {v1, p0, p2}, Lo/StatFs$4;-><init>(Lo/StatFs;Lo/SimpleClock$Activity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 221
    iget-object v0, v6, Lo/StatFs;->v:Landroid/graphics/Point;

    invoke-virtual {p0}, Lo/StatFs;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lo/IHwInterface$Activity;->w:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 222
    iget-object v0, v6, Lo/StatFs;->v:Landroid/graphics/Point;

    invoke-virtual {p0}, Lo/StatFs;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lo/IHwInterface$Activity;->v:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 224
    iget-object v0, v6, Lo/StatFs;->A:Landroid/graphics/Point;

    invoke-virtual {p0}, Lo/StatFs;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lo/IHwInterface$Activity;->w:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 225
    iget-object v0, v6, Lo/StatFs;->A:Landroid/graphics/Point;

    invoke-virtual {p0}, Lo/StatFs;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lo/IHwInterface$Activity;->v:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 227
    invoke-virtual {p0}, Lo/StatFs;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/IHwInterface$Activity;->p:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lo/FilterWriter;->a(Landroid/view/View;F)V

    return-void
.end method

.method private a()I
    .locals 1

    .line 232
    iget-boolean v0, p0, Lo/StatFs;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private a(I)Lo/StatFs$TaskDescription;
    .locals 13

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 242
    new-instance p1, Lo/StatFs$TaskDescription;

    sget v3, Lo/IHwInterface$TaskDescription;->m:I

    sget v4, Lo/IHwInterface$TaskDescription;->l:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lo/StatFs$TaskDescription;-><init>(Lo/StatFs;IIZLo/StatFs$3;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lo/StatFs$TaskDescription;

    sget v9, Lo/IHwInterface$TaskDescription;->j:I

    sget v10, Lo/IHwInterface$TaskDescription;->f:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lo/StatFs$TaskDescription;-><init>(Lo/StatFs;IIZLo/StatFs$3;)V

    :goto_0
    return-object p1
.end method

.method static synthetic a(Lo/StatFs;)Lo/SystemVibrator;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/StatFs;->m:Lo/SystemVibrator;

    return-object p0
.end method

.method static synthetic a(Lo/StatFs;Lo/SystemVibrator;)Lo/SystemVibrator;
    .locals 0

    .line 50
    iput-object p1, p0, Lo/StatFs;->m:Lo/SystemVibrator;

    return-object p1
.end method

.method static synthetic b()Landroid/view/animation/Interpolator;
    .locals 1

    .line 50
    sget-object v0, Lo/StatFs;->d:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic b(Lo/StatFs;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/StatFs;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method private c()I
    .locals 1

    .line 237
    iget-boolean v0, p0, Lo/StatFs;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method static synthetic c(Lo/StatFs;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 0

    .line 50
    iput-object p1, p0, Lo/StatFs;->o:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object p1
.end method

.method static synthetic c(Lo/StatFs;)Lo/SimpleClock$Activity;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/StatFs;->k:Lo/SimpleClock$Activity;

    return-object p0
.end method

.method private static d(FFF)I
    .locals 0

    mul-float p2, p2, p1

    add-float/2addr p0, p2

    float-to-int p0, p0

    return p0
.end method

.method static synthetic d(Lo/StatFs;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/StatFs;->a:Landroid/widget/ImageView;

    return-object p0
.end method

.method private d()V
    .locals 6

    .line 357
    iget-object v0, p0, Lo/StatFs;->v:Landroid/graphics/Point;

    iget-object v1, p0, Lo/StatFs;->A:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 358
    iget-object v0, p0, Lo/StatFs;->v:Landroid/graphics/Point;

    iget-object v1, p0, Lo/StatFs;->A:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 359
    iget-object v0, p0, Lo/StatFs;->A:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 360
    iget-object v0, p0, Lo/StatFs;->A:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 361
    iget-object v0, p0, Lo/StatFs;->m:Lo/SystemVibrator;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lo/StatFs;->o:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_2

    .line 363
    invoke-interface {v0}, Lo/SystemVibrator;->d()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lo/StatFs;->p:[I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 364
    iget-object v0, p0, Lo/StatFs;->o:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, p0, Lo/StatFs;->q:[I

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLocationInWindow([I)V

    .line 365
    iget-object v0, p0, Lo/StatFs;->p:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lo/StatFs;->q:[I

    aget v4, v3, v1

    sub-int/2addr v2, v4

    aput v2, v0, v1

    const/4 v2, 0x1

    .line 366
    aget v4, v0, v2

    aget v3, v3, v2

    sub-int/2addr v4, v3

    aput v4, v0, v2

    .line 368
    invoke-virtual {p0}, Lo/StatFs;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lo/IHwInterface$Activity;->x:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 369
    div-int/lit8 v3, v0, 0x2

    .line 370
    iget-object v4, p0, Lo/StatFs;->p:[I

    aget v4, v4, v1

    iget-object v5, p0, Lo/StatFs;->v:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    .line 371
    iget-object v5, p0, Lo/StatFs;->p:[I

    aget v1, v5, v1

    iget-object v5, p0, Lo/StatFs;->A:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v5

    add-int/2addr v1, v3

    add-int/2addr v1, v0

    const/4 v0, 0x2

    if-gez v4, :cond_0

    .line 374
    iget-object v1, p0, Lo/StatFs;->v:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 375
    iget-object v1, p0, Lo/StatFs;->v:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    mul-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 376
    invoke-direct {p0}, Lo/StatFs;->c()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 378
    iget-object v0, p0, Lo/StatFs;->v:Landroid/graphics/Point;

    iget-object v1, p0, Lo/StatFs;->A:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lo/StatFs;->e(Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_0

    .line 380
    :cond_0
    iget-object v4, p0, Lo/StatFs;->o:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getMeasuredWidth()I

    move-result v4

    if-le v1, v4, :cond_1

    .line 382
    iget-object v1, p0, Lo/StatFs;->A:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 383
    iget-object v1, p0, Lo/StatFs;->A:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    mul-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 384
    invoke-direct {p0}, Lo/StatFs;->a()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 386
    iget-object v0, p0, Lo/StatFs;->v:Landroid/graphics/Point;

    iget-object v1, p0, Lo/StatFs;->A:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lo/StatFs;->e(Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_0

    .line 389
    :cond_1
    iget-object v0, p0, Lo/StatFs;->p:[I

    aget v0, v0, v2

    iget-object v1, p0, Lo/StatFs;->A:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    if-gez v0, :cond_2

    .line 392
    iget-object v0, p0, Lo/StatFs;->A:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 393
    iget-object v0, p0, Lo/StatFs;->v:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Point;->y:I

    :cond_2
    :goto_0
    return-void
.end method

.method private static d(Landroid/graphics/Rect;ILandroid/graphics/Rect;)V
    .locals 2

    .line 311
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    div-int/lit8 v1, p1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 312
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    sub-int/2addr p2, v1

    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 313
    iget p2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->right:I

    .line 314
    iget p2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method static synthetic d(Lo/StatFs;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lo/StatFs;->e(Z)V

    return-void
.end method

.method private d(Landroid/widget/ImageView;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 473
    iget-object v0, p0, Lo/StatFs;->C:[I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 474
    iget-object v0, p0, Lo/StatFs;->D:Landroid/graphics/Rect;

    iget-object v1, p0, Lo/StatFs;->C:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    iput v3, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    .line 475
    aget v1, v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 476
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 477
    iget-object v0, p0, Lo/StatFs;->D:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 479
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lo/StatFs;->D:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lo/StatFs;->D:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 480
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lo/StatFs;->D:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v0, p0, Lo/StatFs;->D:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_1

    .line 481
    iget-object p2, p0, Lo/StatFs;->s:Landroid/widget/ImageView;

    if-nez p2, :cond_0

    .line 483
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    .line 484
    iput-object p1, p0, Lo/StatFs;->s:Landroid/widget/ImageView;

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method static synthetic e(Lo/StatFs;)Lo/StatFs$Activity;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/StatFs;->n:Lo/StatFs$Activity;

    return-object p0
.end method

.method private static e(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2

    .line 400
    iget v0, p0, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    xor-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 401
    iget v0, p0, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    xor-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 402
    iget v0, p0, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    xor-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private e(Z)V
    .locals 1

    .line 406
    iget-object v0, p0, Lo/StatFs;->o:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 409
    invoke-virtual {p0}, Lo/StatFs;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lo/StatFs;->c:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lo/adh;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 411
    :cond_0
    invoke-virtual {p0}, Lo/StatFs;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lo/StatFs;->e:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lo/adh;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 414
    :goto_0
    iget-object p1, p0, Lo/StatFs;->o:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lo/adh;->a(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 416
    iget-object p1, p0, Lo/StatFs;->n:Lo/StatFs$Activity;

    new-instance v0, Lo/StatFs$1;

    invoke-direct {v0, p0}, Lo/StatFs$1;-><init>(Lo/StatFs;)V

    invoke-virtual {p1, v0}, Lo/StatFs$Activity;->d(Lo/StatFs$StateListAnimator;)V

    :cond_1
    return-void
.end method

.method static synthetic f(Lo/StatFs;)Lo/StatFs$TaskDescription;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/StatFs;->i:Lo/StatFs$TaskDescription;

    return-object p0
.end method

.method static synthetic g(Lo/StatFs;)I
    .locals 0

    .line 50
    invoke-direct {p0}, Lo/StatFs;->c()I

    move-result p0

    return p0
.end method

.method static synthetic h(Lo/StatFs;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/StatFs;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic i(Lo/StatFs;)I
    .locals 0

    .line 50
    invoke-direct {p0}, Lo/StatFs;->a()I

    move-result p0

    return p0
.end method

.method static synthetic j(Lo/StatFs;)Lo/StatFs$TaskDescription;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/StatFs;->g:Lo/StatFs$TaskDescription;

    return-object p0
.end method

.method static synthetic l(Lo/StatFs;)Lo/StatFs$TaskDescription;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/StatFs;->j:Lo/StatFs$TaskDescription;

    return-object p0
.end method

.method static synthetic m(Lo/StatFs;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lo/StatFs;->f:Z

    return p0
.end method

.method static synthetic n(Lo/StatFs;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/StatFs;->l:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic o(Lo/StatFs;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/StatFs;->o:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object p0
.end method


# virtual methods
.method a(Landroid/view/MotionEvent;)V
    .locals 4

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 448
    iget-object v0, p0, Lo/StatFs;->n:Lo/StatFs$Activity;

    invoke-static {v0}, Lo/StatFs$Activity;->d(Lo/StatFs$Activity;)F

    move-result v0

    const v2, 0x3f4ccccd    # 0.8f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    .line 450
    iget-object v0, p0, Lo/StatFs;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lo/StatFs;->d(Landroid/widget/ImageView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/StatFs;->a:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lo/StatFs;->d(Landroid/widget/ImageView;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 451
    iput-object v1, p0, Lo/StatFs;->s:Landroid/widget/ImageView;

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 456
    :cond_1
    iget-object v0, p0, Lo/StatFs;->s:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 458
    iget-object p1, p0, Lo/StatFs;->s:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    .line 459
    iput-object v1, p0, Lo/StatFs;->s:Landroid/widget/ImageView;

    goto :goto_0

    .line 462
    :cond_2
    invoke-direct {p0, v2}, Lo/StatFs;->e(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lo/SystemVibrator;I)V
    .locals 2

    .line 326
    iget-object v0, p0, Lo/StatFs;->o:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v0, :cond_0

    .line 327
    iput-object p2, p0, Lo/StatFs;->m:Lo/SystemVibrator;

    .line 329
    iget-object p2, p0, Lo/StatFs;->m:Lo/SystemVibrator;

    invoke-interface {p2}, Lo/SystemVibrator;->d()Landroid/widget/ImageView;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    iput-object p1, p0, Lo/StatFs;->o:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 331
    iget-object p1, p0, Lo/StatFs;->o:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lo/adh;->a(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 332
    iget-object p1, p0, Lo/StatFs;->o:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;-><init>(II)V

    invoke-virtual {p1, p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    iput-boolean p2, p0, Lo/StatFs;->t:Z

    .line 335
    iget-object p1, p0, Lo/StatFs;->g:Lo/StatFs$TaskDescription;

    iget-boolean v0, p0, Lo/StatFs;->r:Z

    invoke-virtual {p1, v0}, Lo/StatFs$TaskDescription;->a(Z)V

    .line 336
    iget-object p1, p0, Lo/StatFs;->i:Lo/StatFs$TaskDescription;

    iget-boolean v0, p0, Lo/StatFs;->r:Z

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lo/StatFs$TaskDescription;->a(Z)V

    .line 337
    iget-object p1, p0, Lo/StatFs;->g:Lo/StatFs$TaskDescription;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/StatFs$TaskDescription;->e(Z)V

    .line 338
    iget-object p1, p0, Lo/StatFs;->i:Lo/StatFs$TaskDescription;

    invoke-virtual {p1, p2}, Lo/StatFs$TaskDescription;->e(Z)V

    .line 340
    iget-object p1, p0, Lo/StatFs;->b:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lo/FilterWriter;->a(Landroid/view/View;F)V

    .line 341
    iget-object p1, p0, Lo/StatFs;->a:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lo/FilterWriter;->a(Landroid/view/View;F)V

    .line 343
    invoke-direct {p0}, Lo/StatFs;->d()V

    .line 345
    iget-object p1, p0, Lo/StatFs;->n:Lo/StatFs$Activity;

    invoke-static {p1, p3}, Lo/StatFs$Activity;->e(Lo/StatFs$Activity;I)V

    const/16 p1, 0x8

    .line 347
    invoke-virtual {p0, p1}, Lo/StatFs;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 439
    iget-object v0, p0, Lo/StatFs;->o:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    if-nez p1, :cond_0

    .line 257
    iget-boolean p1, p0, Lo/StatFs;->t:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/StatFs;->n:Lo/StatFs$Activity;

    invoke-virtual {p1}, Lo/StatFs$Activity;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lo/StatFs;->m:Lo/SystemVibrator;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lo/StatFs;->o:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p2, :cond_1

    .line 260
    invoke-interface {p1}, Lo/SystemVibrator;->d()Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lo/StatFs;->p:[I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 261
    iget-object p1, p0, Lo/StatFs;->o:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object p2, p0, Lo/StatFs;->q:[I

    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLocationInWindow([I)V

    .line 265
    iget-object p1, p0, Lo/StatFs;->p:[I

    const/4 p2, 0x0

    aget p3, p1, p2

    iget-object p4, p0, Lo/StatFs;->q:[I

    aget p5, p4, p2

    sub-int/2addr p3, p5

    aput p3, p1, p2

    const/4 p3, 0x1

    .line 266
    aget p5, p1, p3

    aget p4, p4, p3

    sub-int/2addr p5, p4

    aput p5, p1, p3

    .line 269
    iget-object p4, p0, Lo/StatFs;->u:Landroid/graphics/Rect;

    aget p5, p1, p2

    iput p5, p4, Landroid/graphics/Rect;->left:I

    .line 270
    aget p5, p1, p3

    iput p5, p4, Landroid/graphics/Rect;->top:I

    .line 271
    aget p1, p1, p2

    iget-object p5, p0, Lo/StatFs;->m:Lo/SystemVibrator;

    invoke-interface {p5}, Lo/SystemVibrator;->d()Landroid/widget/ImageView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p1, p5

    iput p1, p4, Landroid/graphics/Rect;->right:I

    .line 272
    iget-object p1, p0, Lo/StatFs;->u:Landroid/graphics/Rect;

    iget-object p4, p0, Lo/StatFs;->p:[I

    aget p3, p4, p3

    iget-object p4, p0, Lo/StatFs;->m:Lo/SystemVibrator;

    invoke-interface {p4}, Lo/SystemVibrator;->d()Landroid/widget/ImageView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p3, p4

    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 274
    iget-object p1, p0, Lo/StatFs;->h:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    .line 275
    iget-object p3, p0, Lo/StatFs;->a:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p3

    .line 278
    iget-object p4, p0, Lo/StatFs;->w:Landroid/graphics/Rect;

    iget-object p5, p0, Lo/StatFs;->u:Landroid/graphics/Rect;

    invoke-static {p4, p1, p5}, Lo/StatFs;->d(Landroid/graphics/Rect;ILandroid/graphics/Rect;)V

    .line 279
    iget-object p1, p0, Lo/StatFs;->x:Landroid/graphics/Rect;

    iget-object p4, p0, Lo/StatFs;->u:Landroid/graphics/Rect;

    invoke-static {p1, p3, p4}, Lo/StatFs;->d(Landroid/graphics/Rect;ILandroid/graphics/Rect;)V

    .line 280
    iget-object p1, p0, Lo/StatFs;->y:Landroid/graphics/Rect;

    iget-object p4, p0, Lo/StatFs;->u:Landroid/graphics/Rect;

    invoke-static {p1, p3, p4}, Lo/StatFs;->d(Landroid/graphics/Rect;ILandroid/graphics/Rect;)V

    .line 284
    iget-object p1, p0, Lo/StatFs;->h:Landroid/widget/ImageView;

    iget-object p3, p0, Lo/StatFs;->w:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    iget-object p4, p0, Lo/StatFs;->w:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->top:I

    iget-object p5, p0, Lo/StatFs;->w:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lo/StatFs;->w:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p3, p4, p5, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 290
    iget-object p1, p0, Lo/StatFs;->b:Landroid/widget/ImageView;

    iget-object p3, p0, Lo/StatFs;->x:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget-object p4, p0, Lo/StatFs;->n:Lo/StatFs$Activity;

    .line 291
    invoke-static {p4}, Lo/StatFs$Activity;->d(Lo/StatFs$Activity;)F

    move-result p4

    iget-object p5, p0, Lo/StatFs;->v:Landroid/graphics/Point;

    iget p5, p5, Landroid/graphics/Point;->x:I

    neg-int p5, p5

    int-to-float p5, p5

    invoke-static {p3, p4, p5}, Lo/StatFs;->d(FFF)I

    move-result p3

    iget-object p4, p0, Lo/StatFs;->x:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    iget-object p5, p0, Lo/StatFs;->n:Lo/StatFs$Activity;

    .line 292
    invoke-static {p5}, Lo/StatFs$Activity;->d(Lo/StatFs$Activity;)F

    move-result p5

    iget-object v0, p0, Lo/StatFs;->v:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p4, p5, v0}, Lo/StatFs;->d(FFF)I

    move-result p4

    iget-object p5, p0, Lo/StatFs;->x:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->right:I

    int-to-float p5, p5

    iget-object v0, p0, Lo/StatFs;->n:Lo/StatFs$Activity;

    .line 293
    invoke-static {v0}, Lo/StatFs$Activity;->d(Lo/StatFs$Activity;)F

    move-result v0

    iget-object v1, p0, Lo/StatFs;->v:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {p5, v0, v1}, Lo/StatFs;->d(FFF)I

    move-result p5

    iget-object v0, p0, Lo/StatFs;->x:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v1, p0, Lo/StatFs;->n:Lo/StatFs$Activity;

    .line 294
    invoke-static {v1}, Lo/StatFs$Activity;->d(Lo/StatFs$Activity;)F

    move-result v1

    iget-object v2, p0, Lo/StatFs;->v:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lo/StatFs;->d(FFF)I

    move-result v0

    .line 290
    invoke-virtual {p1, p3, p4, p5, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 296
    iget-object p1, p0, Lo/StatFs;->a:Landroid/widget/ImageView;

    iget-object p3, p0, Lo/StatFs;->y:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget-object p4, p0, Lo/StatFs;->n:Lo/StatFs$Activity;

    .line 297
    invoke-static {p4}, Lo/StatFs$Activity;->d(Lo/StatFs$Activity;)F

    move-result p4

    iget-object p5, p0, Lo/StatFs;->A:Landroid/graphics/Point;

    iget p5, p5, Landroid/graphics/Point;->x:I

    int-to-float p5, p5

    invoke-static {p3, p4, p5}, Lo/StatFs;->d(FFF)I

    move-result p3

    iget-object p4, p0, Lo/StatFs;->y:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    iget-object p5, p0, Lo/StatFs;->n:Lo/StatFs$Activity;

    .line 298
    invoke-static {p5}, Lo/StatFs$Activity;->d(Lo/StatFs$Activity;)F

    move-result p5

    iget-object v0, p0, Lo/StatFs;->A:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p4, p5, v0}, Lo/StatFs;->d(FFF)I

    move-result p4

    iget-object p5, p0, Lo/StatFs;->y:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->right:I

    int-to-float p5, p5

    iget-object v0, p0, Lo/StatFs;->n:Lo/StatFs$Activity;

    .line 299
    invoke-static {v0}, Lo/StatFs$Activity;->d(Lo/StatFs$Activity;)F

    move-result v0

    iget-object v1, p0, Lo/StatFs;->A:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-static {p5, v0, v1}, Lo/StatFs;->d(FFF)I

    move-result p5

    iget-object v0, p0, Lo/StatFs;->y:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v1, p0, Lo/StatFs;->n:Lo/StatFs$Activity;

    .line 300
    invoke-static {v1}, Lo/StatFs$Activity;->d(Lo/StatFs$Activity;)F

    move-result v1

    iget-object v2, p0, Lo/StatFs;->A:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lo/StatFs;->d(FFF)I

    move-result v0

    .line 296
    invoke-virtual {p1, p3, p4, p5, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 303
    iput-boolean p2, p0, Lo/StatFs;->t:Z

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 249
    iget-object v0, p0, Lo/StatFs;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lo/StatFs;->measureChild(Landroid/view/View;II)V

    .line 250
    iget-object v0, p0, Lo/StatFs;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lo/StatFs;->measureChild(Landroid/view/View;II)V

    .line 251
    iget-object v0, p0, Lo/StatFs;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lo/StatFs;->measureChild(Landroid/view/View;II)V

    .line 252
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
.end method
