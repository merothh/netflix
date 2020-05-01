.class public Lo/DE;
.super Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DE$Activity;,
        Lo/DE$ActionBar;,
        Lo/DE$TaskDescription;
    }
.end annotation


# instance fields
.field protected a:I

.field protected final b:Landroid/view/View;

.field c:F

.field protected final d:Landroidx/recyclerview/widget/RecyclerView;

.field protected e:I

.field private f:Z

.field private final g:[Landroid/view/View;

.field private h:Lo/DE$TaskDescription;

.field private i:Landroid/view/ViewGroup;

.field private j:Landroid/view/ViewGroup$LayoutParams;

.field private k:I

.field private l:Landroid/view/View;

.field private m:I

.field private n:F

.field private o:Z

.field private p:I

.field private q:Landroid/graphics/drawable/GradientDrawable;

.field private r:I

.field private s:J

.field private t:J

.field private u:Z

.field private v:I

.field private x:Lo/DE$Activity;

.field private y:[I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;IIILandroid/view/View;)V
    .locals 3

    .line 138
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lo/DE;->f:Z

    .line 80
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lo/DE;->q:Landroid/graphics/drawable/GradientDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 81
    iput-object v0, p0, Lo/DE;->y:[I

    .line 140
    iput p6, p0, Lo/DE;->r:I

    .line 141
    iput-object p2, p0, Lo/DE;->g:[Landroid/view/View;

    .line 142
    iput-object p3, p0, Lo/DE;->b:Landroid/view/View;

    .line 143
    iput-object p7, p0, Lo/DE;->l:Landroid/view/View;

    .line 145
    iput-object p1, p0, Lo/DE;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 146
    iput p4, p0, Lo/DE;->e:I

    .line 147
    iput p5, p0, Lo/DE;->a:I

    if-eqz p3, :cond_0

    .line 150
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/DE;->i:Landroid/view/ViewGroup;

    .line 151
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lo/DE;->j:Landroid/view/ViewGroup$LayoutParams;

    .line 154
    :cond_0
    invoke-virtual {p0}, Lo/DE;->c()V

    return-void
.end method

.method private b(Landroid/view/View;I)V
    .locals 2

    .line 497
    invoke-static {}, Lo/adk;->c()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    neg-int v0, p2

    int-to-float v0, v0

    int-to-float p2, p2

    const v1, 0x3ecccccd    # 0.4f

    mul-float p2, p2, v1

    add-float/2addr v0, p2

    if-eqz p1, :cond_1

    .line 504
    iget p2, p0, Lo/DE;->c:F

    cmpl-float p2, v0, p2

    if-eqz p2, :cond_1

    .line 505
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 506
    iput v0, p0, Lo/DE;->c:F

    :cond_1
    return-void
.end method

.method static synthetic c(Lo/DE;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/DE;->p()V

    return-void
.end method

.method static synthetic c(Lo/DE;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lo/DE;->o:Z

    return p1
.end method

.method public static d(Landroidx/recyclerview/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)Lo/DE;
    .locals 10

    .line 110
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 111
    new-instance v9, Lo/DE;

    sget v1, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->b:I

    .line 115
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/content/Context;I)I

    move-result v5

    sget v1, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->e:I

    .line 116
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/content/Context;I)I

    move-result v6

    const/16 v7, 0xff

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lo/DE;-><init>(Landroidx/recyclerview/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;IIILandroid/view/View;)V

    return-object v9
.end method

.method static synthetic d(Lo/DE;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/DE;->t()V

    return-void
.end method

.method private e(II)I
    .locals 2

    int-to-float p2, p2

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p2, v0

    .line 419
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    rsub-int v1, v0, 0xff

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int p2, v1

    add-int/2addr v0, p2

    .line 422
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v0, p2, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private e(Lo/DE$ActionBar;)V
    .locals 5

    .line 302
    invoke-virtual {p0}, Lo/DE;->n()I

    move-result v0

    iput v0, p0, Lo/DE;->v:I

    .line 303
    iget-wide v0, p0, Lo/DE;->s:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/16 v0, 0x64

    .line 304
    iput v0, p0, Lo/DE;->v:I

    .line 307
    :cond_0
    iget-object v0, p0, Lo/DE;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 308
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lo/DE;->v:I

    int-to-long v1, v1

    .line 309
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 310
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lo/DE$2;

    invoke-direct {v1, p0, p1}, Lo/DE$2;-><init>(Lo/DE;Lo/DE$ActionBar;)V

    .line 311
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private p()V
    .locals 5

    .line 351
    iget-object v0, p0, Lo/DE;->b:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lo/DE;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b()Lo/Magnifier;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lo/DE;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 358
    iget-object v2, p0, Lo/DE;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 359
    iget-object v1, p0, Lo/DE;->b:Landroid/view/View;

    new-instance v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    const/16 v3, 0x30

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4, v3}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 360
    iput-boolean v0, p0, Lo/DE;->u:Z

    .line 361
    iget-object v0, p0, Lo/DE;->b:Landroid/view/View;

    invoke-virtual {p0}, Lo/DE;->h()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    return-void
.end method

.method private q()V
    .locals 2

    .line 171
    iget-object v0, p0, Lo/DE;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 177
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b()Lo/Magnifier;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/Magnifier;->getLocationOnScreen([I)V

    const/4 v0, 0x1

    .line 178
    aget v0, v1, v0

    iput v0, p0, Lo/DE;->m:I

    return-void
.end method

.method private r()V
    .locals 4

    .line 231
    iget-object v0, p0, Lo/DE;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/DE;->l:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 234
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTrackerViewPos... loc: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   latch: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lo/DE;->k:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DetailsPageParallaxScrollListener"

    invoke-static {v3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    aget v0, v1, v2

    iget v3, p0, Lo/DE;->k:I

    if-lt v0, v3, :cond_0

    .line 238
    aget v0, v1, v2

    invoke-virtual {p0, v0}, Lo/DE;->b(I)V

    .line 239
    invoke-virtual {p0}, Lo/DE;->a()V

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lo/DE;->l()V

    .line 243
    invoke-virtual {p0}, Lo/DE;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method private s()V
    .locals 1

    .line 187
    invoke-virtual {p0}, Lo/DE;->i()I

    move-result v0

    iput v0, p0, Lo/DE;->k:I

    return-void
.end method

.method private t()V
    .locals 3

    .line 370
    iget-object v0, p0, Lo/DE;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lo/DE;->i:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/DE;->j:Landroid/view/ViewGroup$LayoutParams;

    if-nez v1, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 375
    iget-object v1, p0, Lo/DE;->i:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_1

    .line 376
    iget-object v1, p0, Lo/DE;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 377
    iget-object v0, p0, Lo/DE;->i:Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/DE;->b:Landroid/view/View;

    iget-object v2, p0, Lo/DE;->j:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    iget-object v0, p0, Lo/DE;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 379
    iget-object v0, p0, Lo/DE;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Lo/DE;->u:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private w()V
    .locals 2

    .line 439
    iget-object v0, p0, Lo/DE;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 440
    invoke-static {}, Lo/adq;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    .line 443
    :cond_0
    iget v1, p0, Lo/DE;->r:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    iput v1, p0, Lo/DE;->n:F

    return-void
.end method

.method private x()I
    .locals 8

    .line 447
    iget-object v0, p0, Lo/DE;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 453
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 455
    iget-object v0, p0, Lo/DE;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 456
    iget-object v2, p0, Lo/DE;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v2

    check-cast v2, Lo/MultiAutoCompleteTextView;

    iget-object v3, p0, Lo/DE;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0, v3}, Lo/MultiAutoCompleteTextView;->c(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 459
    iget v0, p0, Lo/DE;->r:I

    .line 460
    invoke-virtual {p0}, Lo/DE;->b()V

    goto :goto_1

    .line 462
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lo/DE;->n:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 464
    iget-object v3, p0, Lo/DE;->g:[Landroid/view/View;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    if-eqz v6, :cond_2

    .line 466
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lo/DE;->b(Landroid/view/View;I)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 470
    :cond_3
    invoke-virtual {p0}, Lo/DE;->e()V

    move v0, v2

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 475
    :goto_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    if-eqz p3, :cond_0

    .line 209
    iget p1, p0, Lo/DE;->p:I

    add-int/2addr p1, p3

    iput p1, p0, Lo/DE;->p:I

    .line 212
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    .line 213
    iget-wide v0, p0, Lo/DE;->t:J

    sub-long v0, p1, v0

    int-to-long v2, p3

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lo/DE;->s:J

    .line 214
    iput-wide p1, p0, Lo/DE;->t:J

    .line 217
    :cond_0
    iget-boolean p1, p0, Lo/DE;->f:Z

    if-eqz p1, :cond_1

    .line 218
    invoke-virtual {p0}, Lo/DE;->k()V

    .line 221
    :cond_1
    invoke-virtual {p0}, Lo/DE;->o()V

    .line 222
    invoke-direct {p0}, Lo/DE;->r()V

    return-void
.end method

.method protected b()V
    .locals 2

    .line 92
    iget-object v0, p0, Lo/DE;->x:Lo/DE$Activity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 93
    invoke-interface {v0, v1}, Lo/DE$Activity;->e(Z)V

    :cond_0
    return-void
.end method

.method protected b(I)V
    .locals 0

    .line 282
    iget-object p1, p0, Lo/DE;->b:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 286
    :cond_0
    iget-boolean p1, p0, Lo/DE;->u:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lo/DE;->o:Z

    if-nez p1, :cond_1

    .line 288
    new-instance p1, Lo/DE$3;

    invoke-direct {p1, p0}, Lo/DE$3;-><init>(Lo/DE;)V

    invoke-direct {p0, p1}, Lo/DE;->e(Lo/DE$ActionBar;)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 0

    .line 158
    invoke-direct {p0}, Lo/DE;->s()V

    .line 160
    invoke-direct {p0}, Lo/DE;->q()V

    .line 161
    invoke-direct {p0}, Lo/DE;->w()V

    .line 162
    invoke-virtual {p0}, Lo/DE;->j()V

    return-void
.end method

.method public c(Lo/DE$Activity;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lo/DE;->x:Lo/DE$Activity;

    return-void
.end method

.method public c(Lo/DE$TaskDescription;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lo/DE;->h:Lo/DE$TaskDescription;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 511
    iput-boolean p1, p0, Lo/DE;->f:Z

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 3

    .line 401
    iget v0, p0, Lo/DE;->r:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 403
    iget-object v1, p0, Lo/DE;->y:[I

    iget v2, p0, Lo/DE;->e:I

    invoke-direct {p0, v2, p1}, Lo/DE;->e(II)I

    move-result v2

    aput v2, v1, v0

    .line 404
    iget-object v0, p0, Lo/DE;->y:[I

    iget v1, p0, Lo/DE;->a:I

    invoke-direct {p0, v1, p1}, Lo/DE;->e(II)I

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 405
    iget-object p1, p0, Lo/DE;->q:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lo/DE;->y:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    return-void
.end method

.method protected e()V
    .locals 2

    .line 97
    iget-object v0, p0, Lo/DE;->x:Lo/DE$Activity;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 98
    invoke-interface {v0, v1}, Lo/DE$Activity;->e(Z)V

    :cond_0
    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 386
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;->e(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 388
    iget-object p1, p0, Lo/DE;->h:Lo/DE$TaskDescription;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    invoke-interface {p1}, Lo/DE$TaskDescription;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected f()I
    .locals 1

    const/16 v0, 0x12c

    return v0
.end method

.method public g()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 167
    iget-object v0, p0, Lo/DE;->q:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method protected h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected i()I
    .locals 2

    .line 191
    iget-object v0, p0, Lo/DE;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v0

    iget v1, p0, Lo/DE;->m:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected j()V
    .locals 0

    .line 226
    invoke-virtual {p0}, Lo/DE;->k()V

    .line 227
    invoke-virtual {p0}, Lo/DE;->o()V

    return-void
.end method

.method protected k()V
    .locals 1

    .line 409
    invoke-direct {p0}, Lo/DE;->x()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/DE;->d(I)V

    return-void
.end method

.method protected l()V
    .locals 1

    .line 263
    iget-object v0, p0, Lo/DE;->b:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    iget-boolean v0, p0, Lo/DE;->u:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/DE;->o:Z

    if-nez v0, :cond_1

    .line 269
    new-instance v0, Lo/DE$1;

    invoke-direct {v0, p0}, Lo/DE$1;-><init>(Lo/DE;)V

    invoke-direct {p0, v0}, Lo/DE;->e(Lo/DE$ActionBar;)V

    :cond_1
    return-void
.end method

.method public m()V
    .locals 6

    .line 479
    iget-object v0, p0, Lo/DE;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lo/DE;->g:[Landroid/view/View;

    array-length v0, v0

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "DetailsPageParallaxScrollListener"

    const-string v1, "Resetting dynamic views\' Y-position"

    .line 483
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lo/DE;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 485
    iget-object v2, p0, Lo/DE;->g:[Landroid/view/View;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    if-eqz v4, :cond_1

    .line 487
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lo/DE;->b(Landroid/view/View;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 491
    :cond_2
    invoke-direct {p0}, Lo/DE;->r()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected n()I
    .locals 1

    const/16 v0, 0x12c

    return v0
.end method

.method protected o()V
    .locals 1

    .line 426
    invoke-direct {p0}, Lo/DE;->x()I

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lo/DE;->h:Lo/DE$TaskDescription;

    if-eqz v0, :cond_1

    .line 428
    invoke-interface {v0}, Lo/DE$TaskDescription;->e()V

    goto :goto_0

    .line 432
    :cond_0
    iget-object v0, p0, Lo/DE;->h:Lo/DE$TaskDescription;

    if-eqz v0, :cond_1

    .line 433
    invoke-interface {v0}, Lo/DE$TaskDescription;->c()V

    :cond_1
    :goto_0
    return-void
.end method
