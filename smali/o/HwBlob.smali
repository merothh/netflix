.class public final Lo/HwBlob;
.super Landroid/view/ViewGroup;
.source ""


# static fields
.field static final synthetic b:[Lo/amT;


# instance fields
.field private A:Landroid/view/WindowInsets;

.field private B:Lo/IInterface;

.field private final C:Landroid/graphics/RectF;

.field private D:Z

.field private final E:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private F:Lo/HwBinder;

.field private G:Landroid/view/View;

.field private H:Z

.field private I:Lo/HidlSupport;

.field private M:Landroid/view/View$OnClickListener;

.field private N:Landroid/graphics/PointF;

.field private final a:Lo/ams;

.field private final c:Lo/ams;

.field private final d:Lo/ams;

.field private final e:Lo/ams;

.field private final f:I

.field private g:Ljava/lang/Integer;

.field private h:I

.field private i:Landroid/view/ViewGroup;

.field private j:Z

.field private final k:Landroid/graphics/RectF;

.field private final l:[I

.field private final m:Landroid/graphics/RectF;

.field private final n:Landroid/graphics/RectF;

.field private o:Landroid/view/ViewPropertyAnimator;

.field private final p:I

.field private final q:Landroid/graphics/Rect;

.field private r:I

.field private final s:[I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/HwBlob;

    const/4 v1, 0x4

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "messageView"

    const-string v5, "getMessageView()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "titleSectionView"

    const-string v5, "getTitleSectionView()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "titleImageView"

    const-string v5, "getTitleImageView()Landroid/widget/ImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "titleTextView"

    const-string v4, "getTitleTextView()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lo/HwBlob;->b:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 50
    sget v0, Lo/IHwInterface$FragmentManager;->k:I

    invoke-static {p0, v0}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/HwBlob;->e:Lo/ams;

    .line 51
    sget v0, Lo/IHwInterface$FragmentManager;->M:I

    invoke-static {p0, v0}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/HwBlob;->d:Lo/ams;

    .line 52
    sget v0, Lo/IHwInterface$FragmentManager;->K:I

    invoke-static {p0, v0}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/HwBlob;->c:Lo/ams;

    .line 53
    sget v0, Lo/IHwInterface$FragmentManager;->J:I

    invoke-static {p0, v0}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/HwBlob;->a:Lo/ams;

    .line 62
    invoke-virtual {p0}, Lo/HwBlob;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/IHwInterface$Activity;->G:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lo/HwBlob;->f:I

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lo/IHwInterface$LoaderManager;->i:I

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/HwBlob;->i:Landroid/view/ViewGroup;

    .line 68
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lo/HwBlob;->k:Landroid/graphics/RectF;

    .line 69
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lo/HwBlob;->m:Landroid/graphics/RectF;

    .line 70
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lo/HwBlob;->n:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 71
    iput-object v0, p0, Lo/HwBlob;->l:[I

    new-array p1, p1, [I

    .line 72
    iput-object p1, p0, Lo/HwBlob;->s:[I

    .line 73
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/HwBlob;->q:Landroid/graphics/Rect;

    .line 75
    invoke-virtual {p0}, Lo/HwBlob;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lo/IHwInterface$Activity;->B:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lo/HwBlob;->p:I

    .line 87
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lo/HwBlob;->C:Landroid/graphics/RectF;

    .line 119
    new-instance p1, Lo/HwBlob$StateListAnimator;

    invoke-direct {p1, p0}, Lo/HwBlob$StateListAnimator;-><init>(Lo/HwBlob;)V

    check-cast p1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p1, p0, Lo/HwBlob;->E:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 178
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lo/HwBlob;->N:Landroid/graphics/PointF;

    .line 181
    iget-object p1, p0, Lo/HwBlob;->q:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lo/HwBlob;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/IHwInterface$Activity;->C:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 182
    iget-object p1, p0, Lo/HwBlob;->q:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lo/HwBlob;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/IHwInterface$Activity;->z:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 184
    invoke-direct {p0}, Lo/HwBlob;->l()V

    .line 187
    invoke-virtual {p0}, Lo/HwBlob;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lo/IHwInterface$StateListAnimator;->p:I

    invoke-static {p1, v0}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lo/HwBlob;->h:I

    .line 188
    invoke-virtual {p0}, Lo/HwBlob;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lo/IHwInterface$StateListAnimator;->s:I

    invoke-static {p1, v0}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/HwBlob;->g:Ljava/lang/Integer;

    .line 189
    invoke-direct {p0}, Lo/HwBlob;->k()V

    .line 191
    invoke-virtual {p0}, Lo/HwBlob;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lo/IHwInterface$StateListAnimator;->q:I

    invoke-static {p1, v0}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/HwBlob;->setScrimDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    invoke-virtual {p0}, Lo/HwBlob;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lo/IHwInterface$Activity;->A:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 193
    iput p1, p0, Lo/HwBlob;->y:I

    .line 194
    iput p1, p0, Lo/HwBlob;->w:I

    .line 196
    iget-object p1, p0, Lo/HwBlob;->i:Landroid/view/ViewGroup;

    new-instance v0, Lo/IServiceManager;

    iget v1, p0, Lo/HwBlob;->f:I

    iget-object v2, p0, Lo/HwBlob;->q:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2}, Lo/IServiceManager;-><init>(ILandroid/graphics/Rect;)V

    check-cast v0, Landroid/view/ViewOutlineProvider;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    .line 198
    invoke-virtual {p0, p1}, Lo/HwBlob;->setFitsSystemWindows(Z)V

    .line 200
    invoke-virtual {p0}, Lo/HwBlob;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/IHwInterface$Activity;->D:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 201
    invoke-virtual {p0, v0}, Lo/HwBlob;->setElevation(F)V

    .line 204
    new-instance v0, Lo/HwBlob$4;

    invoke-direct {v0, p0}, Lo/HwBlob$4;-><init>(Lo/HwBlob;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lo/HwBlob;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    sget-object v0, Lo/HwBlob$5;->c:Lo/HwBlob$5;

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lo/HwBlob;->setContentClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    invoke-virtual {p0, p1}, Lo/HwBlob;->setFocusableInTouchMode(Z)V

    return-void

    .line 64
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Lo/HwBlob;)Landroid/graphics/PointF;
    .locals 0

    .line 48
    iget-object p0, p0, Lo/HwBlob;->N:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static final synthetic a(Lo/HwBlob;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lo/HwBlob;->o:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private final a(Z)V
    .locals 10

    .line 417
    invoke-direct {p0}, Lo/HwBlob;->q()F

    move-result v0

    .line 419
    invoke-direct {p0}, Lo/HwBlob;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 420
    iget-object v1, p0, Lo/HwBlob;->C:Landroid/graphics/RectF;

    invoke-direct {p0}, Lo/HwBlob;->n()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lo/HwBlob;->n:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-direct {p0}, Lo/HwBlob;->i()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    :goto_0
    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 421
    iget-object v1, p0, Lo/HwBlob;->C:Landroid/graphics/RectF;

    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 422
    invoke-direct {p0}, Lo/HwBlob;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lo/HwBlob;->i()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lo/HwBlob;->n:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    :goto_1
    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 423
    iget-object v1, p0, Lo/HwBlob;->C:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/HwBlob;->n:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 425
    invoke-direct {p0, v0}, Lo/HwBlob;->e(F)F

    move-result v0

    goto :goto_2

    .line 426
    :cond_2
    iget-boolean v1, p0, Lo/HwBlob;->j:Z

    if-eqz v1, :cond_5

    .line 427
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    .line 429
    iget-object v2, p0, Lo/HwBlob;->n:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v4, p0, Lo/HwBlob;->q:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    .line 430
    iget-object v2, p0, Lo/HwBlob;->n:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/4 v6, 0x0

    .line 432
    iget v7, p0, Lo/HwBlob;->h:I

    .line 433
    iget-object v2, p0, Lo/HwBlob;->g:Ljava/lang/Integer;

    if-nez v2, :cond_3

    invoke-static {}, Lo/amh;->c()V

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 434
    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    .line 427
    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 436
    iget-object v2, p0, Lo/HwBlob;->B:Lo/IInterface;

    instance-of v3, v2, Lo/IHwBinder;

    if-nez v3, :cond_4

    const/4 v2, 0x0

    :cond_4
    check-cast v2, Lo/IHwBinder;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lo/IHwBinder;->d()Landroid/graphics/Paint;

    move-result-object v2

    if-eqz v2, :cond_5

    check-cast v1, Landroid/graphics/Shader;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_5
    :goto_2
    move v7, v0

    .line 439
    iget-object v3, p0, Lo/HwBlob;->B:Lo/IInterface;

    if-eqz v3, :cond_6

    .line 441
    iget-object v0, p0, Lo/HwBlob;->n:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 442
    iget-object v0, p0, Lo/HwBlob;->n:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    .line 444
    iget-object v8, p0, Lo/HwBlob;->q:Landroid/graphics/Rect;

    move v4, p1

    .line 439
    invoke-virtual/range {v3 .. v8}, Lo/IInterface;->b(ZFFFLandroid/graphics/Rect;)V

    :cond_6
    return-void
.end method

.method private final b(FFF)F
    .locals 2

    const/4 v0, 0x1

    int-to-float v0, v0

    add-float v1, p1, v0

    sub-float v0, p2, v0

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    sub-float p1, p3, p1

    .line 406
    iget-object v0, p0, Lo/HwBlob;->q:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    sub-float/2addr p2, p3

    neg-float p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public static final synthetic b(Lo/HwBlob;)Landroid/view/ViewGroup;
    .locals 0

    .line 48
    invoke-direct {p0}, Lo/HwBlob;->m()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lo/HwBlob;)[I
    .locals 0

    .line 48
    iget-object p0, p0, Lo/HwBlob;->s:[I

    return-object p0
.end method

.method public static final synthetic d(Lo/HwBlob;)Landroid/graphics/RectF;
    .locals 0

    .line 48
    iget-object p0, p0, Lo/HwBlob;->k:Landroid/graphics/RectF;

    return-object p0
.end method

.method private final d(Landroid/graphics/RectF;)V
    .locals 3

    .line 306
    iget-object v0, p0, Lo/HwBlob;->G:Landroid/view/View;

    invoke-direct {p0}, Lo/HwBlob;->m()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lcom/netflix/android/tooltips/Tooltip$readTargetBounds$1;

    invoke-direct {v2, p0, p1}, Lcom/netflix/android/tooltips/Tooltip$readTargetBounds$1;-><init>(Lo/HwBlob;Landroid/graphics/RectF;)V

    check-cast v2, Lo/alN;

    invoke-static {v0, v1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void
.end method

.method private final e(F)F
    .locals 3

    .line 392
    iget-object v0, p0, Lo/HwBlob;->q:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    .line 393
    iget-object v2, p0, Lo/HwBlob;->q:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    add-float/2addr v2, p1

    .line 396
    invoke-direct {p0}, Lo/HwBlob;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lo/HwBlob;->C:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-direct {p0, v0, v2, v1}, Lo/HwBlob;->b(FFF)F

    move-result v0

    goto :goto_0

    .line 399
    :cond_0
    iget-object v1, p0, Lo/HwBlob;->C:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-direct {p0, v0, v2, v1}, Lo/HwBlob;->b(FFF)F

    move-result v0

    :goto_0
    add-float/2addr p1, v0

    return p1
.end method

.method public static final synthetic e(Lo/HwBlob;)[I
    .locals 0

    .line 48
    iget-object p0, p0, Lo/HwBlob;->l:[I

    return-object p0
.end method

.method private final f()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/HwBlob;->e:Lo/ams;

    sget-object v1, Lo/HwBlob;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final g()I
    .locals 1

    .line 113
    invoke-direct {p0}, Lo/HwBlob;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/HwBlob;->y:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lo/HwBlob;->w:I

    :goto_0
    return v0
.end method

.method private final h()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/HwBlob;->a:Lo/ams;

    sget-object v1, Lo/HwBlob;->b:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final i()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/HwBlob;->d:Lo/ams;

    sget-object v1, Lo/HwBlob;->b:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic i(Lo/HwBlob;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Lo/HwBlob;->t()Z

    move-result p0

    return p0
.end method

.method private final j()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lo/HwBlob;->c:Lo/ams;

    sget-object v1, Lo/HwBlob;->b:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final k()V
    .locals 2

    .line 233
    invoke-direct {p0}, Lo/HwBlob;->p()Lo/IInterface;

    move-result-object v0

    iput-object v0, p0, Lo/HwBlob;->B:Lo/IInterface;

    .line 234
    iget-object v0, p0, Lo/HwBlob;->i:Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/HwBlob;->B:Lo/IInterface;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final l()V
    .locals 3

    .line 211
    iget-object v0, p0, Lo/HwBlob;->i:Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lo/HwBlob;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object v0, p0, Lo/HwBlob;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    iput v0, p0, Lo/HwBlob;->t:I

    .line 214
    iget-object v0, p0, Lo/HwBlob;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lo/HwBlob;->r:I

    .line 215
    iget-object v0, p0, Lo/HwBlob;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v0

    iput v0, p0, Lo/HwBlob;->v:I

    .line 216
    iget-object v0, p0, Lo/HwBlob;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lo/HwBlob;->u:I

    return-void
.end method

.method private final m()Landroid/view/ViewGroup;
    .locals 2

    .line 128
    invoke-virtual {p0}, Lo/HwBlob;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private final n()Z
    .locals 1

    .line 131
    invoke-virtual {p0}, Lo/HwBlob;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final o()I
    .locals 1

    .line 116
    invoke-direct {p0}, Lo/HwBlob;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/HwBlob;->w:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lo/HwBlob;->y:I

    :goto_0
    return v0
.end method

.method private final p()Lo/IInterface;
    .locals 5

    .line 452
    iget-boolean v0, p0, Lo/HwBlob;->j:Z

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lo/HwBlob;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 456
    sget-object v0, Lo/IHwBinder;->c:Lo/IHwBinder$Application;

    iget v1, p0, Lo/HwBlob;->f:I

    invoke-virtual {v0, v1}, Lo/IHwBinder$Application;->c(I)Landroid/graphics/Paint;

    move-result-object v0

    .line 457
    new-instance v1, Lo/IHwBinder;

    invoke-direct {v1, v0}, Lo/IHwBinder;-><init>(Landroid/graphics/Paint;)V

    check-cast v1, Lo/IInterface;

    goto :goto_0

    .line 454
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to create gradient without secondary color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 459
    :cond_1
    invoke-direct {p0}, Lo/HwBlob;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 460
    sget-object v0, Lo/IncidentManager;->b:Lo/IncidentManager$StateListAnimator;

    iget v1, p0, Lo/HwBlob;->h:I

    iget-object v2, p0, Lo/HwBlob;->g:Ljava/lang/Integer;

    if-nez v2, :cond_2

    invoke-static {}, Lo/amh;->c()V

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lo/HwBlob;->f:I

    iget-object v4, p0, Lo/HwBlob;->C:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/IncidentManager$StateListAnimator;->a(IIILandroid/graphics/RectF;)Lo/IncidentManager;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lo/IInterface;

    goto :goto_0

    .line 463
    :cond_3
    sget-object v0, Lo/IHwBinder;->c:Lo/IHwBinder$Application;

    iget v1, p0, Lo/HwBlob;->f:I

    invoke-virtual {v0, v1}, Lo/IHwBinder$Application;->c(I)Landroid/graphics/Paint;

    move-result-object v0

    .line 464
    iget v1, p0, Lo/HwBlob;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 465
    new-instance v1, Lo/IHwBinder;

    invoke-direct {v1, v0}, Lo/IHwBinder;-><init>(Landroid/graphics/Paint;)V

    check-cast v1, Lo/IInterface;

    :goto_0
    return-object v1
.end method

.method private final q()F
    .locals 3

    .line 382
    iget-object v0, p0, Lo/HwBlob;->q:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 385
    iget-object v1, p0, Lo/HwBlob;->n:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iget-object v2, p0, Lo/HwBlob;->k:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    iget-object v1, p0, Lo/HwBlob;->n:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v0

    iget-object v2, p0, Lo/HwBlob;->k:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Lo/HwBlob;->n:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v0, v1, v0

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lo/HwBlob;->k:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lo/HwBlob;->n:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method private final r()Z
    .locals 4

    .line 322
    iget-object v0, p0, Lo/HwBlob;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lo/HwBlob;->i:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lo/HwBlob;->x:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lo/HwBlob;->q:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 323
    invoke-virtual {p0}, Lo/HwBlob;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lo/HwBlob;->A:Landroid/view/WindowInsets;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method private final s()Z
    .locals 1

    .line 448
    iget-boolean v0, p0, Lo/HwBlob;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/HwBlob;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic setBackgroundColors$default(Lo/HwBlob;ILjava/lang/Integer;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 225
    iget p1, p0, Lo/HwBlob;->h:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lo/HwBlob;->g:Ljava/lang/Integer;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lo/HwBlob;->setBackgroundColors(ILjava/lang/Integer;Z)V

    return-void
.end method

.method private final t()Z
    .locals 3

    .line 300
    iget-object v0, p0, Lo/HwBlob;->m:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lo/HwBlob;->d(Landroid/graphics/RectF;)V

    .line 301
    iget-object v0, p0, Lo/HwBlob;->G:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 302
    invoke-direct {p0}, Lo/HwBlob;->m()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/HwBlob;->m:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/HwBlob;->k:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 276
    invoke-virtual {p0}, Lo/HwBlob;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lo/HwBlob;->G:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 279
    invoke-direct {p0}, Lo/HwBlob;->m()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v1, p0, Lo/HwBlob;->E:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 281
    iput-boolean v0, p0, Lo/HwBlob;->H:Z

    .line 285
    :cond_1
    iget-object v0, p0, Lo/HwBlob;->o:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 287
    :cond_2
    invoke-virtual {p0}, Lo/HwBlob;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lo/HwBlob;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 288
    new-instance v1, Lo/HwBlob$Activity;

    invoke-direct {v1, p0}, Lo/HwBlob$Activity;-><init>(Lo/HwBlob;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 295
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 296
    iput-object v0, p0, Lo/HwBlob;->o:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)Z
    .locals 4

    .line 240
    invoke-virtual {p0}, Lo/HwBlob;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lo/HwBlob;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 246
    :cond_1
    iget-boolean v0, p0, Lo/HwBlob;->H:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/HwBlob;->G:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 248
    iget-object v2, p0, Lo/HwBlob;->E:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 249
    iput-boolean v1, p0, Lo/HwBlob;->H:Z

    .line 253
    :cond_2
    iget-object v0, p0, Lo/HwBlob;->o:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 256
    :cond_3
    invoke-direct {p0}, Lo/HwBlob;->m()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v2, p0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 257
    :cond_4
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 258
    invoke-virtual {p0}, Lo/HwBlob;->requestApplyInsets()V

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, v0}, Lo/HwBlob;->setAlpha(F)V

    .line 260
    invoke-virtual {p0}, Lo/HwBlob;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v2, 0x10e0000

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 261
    new-instance v0, Lo/HwBlob$Application;

    invoke-direct {v0, p0}, Lo/HwBlob$Application;-><init>(Lo/HwBlob;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 270
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 271
    iput-object p1, p0, Lo/HwBlob;->o:Landroid/view/ViewPropertyAnimator;

    return v1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Z
    .locals 3

    .line 237
    sget-object v0, Lo/HwParcel;->b:Lo/HwParcel$Activity;

    invoke-virtual {p0}, Lo/HwBlob;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/HwParcel$Activity;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/HwBlob;->I:Lo/HidlSupport;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/HidlSupport;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Landroid/view/View;
    .locals 1

    .line 102
    iget-object v0, p0, Lo/HwBlob;->G:Landroid/view/View;

    return-object v0
.end method

.method public final d()Lo/HidlSupport;
    .locals 1

    .line 100
    iget-object v0, p0, Lo/HwBlob;->I:Lo/HidlSupport;

    return-object v0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lo/HwBlob;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/HwBlob;->o:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_0

    .line 474
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 475
    invoke-virtual {p0}, Lo/HwBlob;->a()V

    goto :goto_0

    .line 479
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public final e()Lo/HwBinder;
    .locals 1

    .line 108
    iget-object v0, p0, Lo/HwBlob;->F:Lo/HwBinder;

    return-object v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    const-string v0, "insets"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iput-object p1, p0, Lo/HwBlob;->A:Landroid/view/WindowInsets;

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lo/HwBlob;->D:Z

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 378
    iget-object p1, p0, Lo/HwBlob;->i:Landroid/view/ViewGroup;

    iget-object p2, p0, Lo/HwBlob;->n:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    float-to-int p2, p2

    iget-object p3, p0, Lo/HwBlob;->n:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->top:F

    float-to-int p3, p3

    iget-object p4, p0, Lo/HwBlob;->n:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->right:F

    float-to-int p4, p4

    iget-object p5, p0, Lo/HwBlob;->n:Landroid/graphics/RectF;

    iget p5, p5, Landroid/graphics/RectF;->bottom:F

    float-to-int p5, p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 326
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 328
    iget-object p1, p0, Lo/HwBlob;->G:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lo/HwBlob;->t()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lo/HwBlob;->D:Z

    if-eqz p1, :cond_5

    :cond_0
    const/4 p1, 0x0

    .line 329
    iput-boolean p1, p0, Lo/HwBlob;->D:Z

    .line 331
    iget-object v0, p0, Lo/HwBlob;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/HwBlob;->m:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 333
    iget-object v0, p0, Lo/HwBlob;->i:Landroid/view/ViewGroup;

    iget v1, p0, Lo/HwBlob;->t:I

    iget v2, p0, Lo/HwBlob;->r:I

    iget v3, p0, Lo/HwBlob;->v:I

    iget v4, p0, Lo/HwBlob;->u:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 335
    invoke-virtual {p0}, Lo/HwBlob;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lo/HwBlob;->y:I

    sub-int/2addr v0, v1

    iget v1, p0, Lo/HwBlob;->w:I

    sub-int/2addr v0, v1

    .line 336
    iget v1, p0, Lo/HwBlob;->p:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 337
    iget-object v1, p0, Lo/HwBlob;->i:Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/View;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v1, v3, p2}, Lo/HwBlob;->measureChild(Landroid/view/View;II)V

    .line 338
    iget-object v1, p0, Lo/HwBlob;->i:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 341
    invoke-direct {p0}, Lo/HwBlob;->r()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    iget-object v4, p0, Lo/HwBlob;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lo/HwBlob;->x:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 347
    iget v5, p0, Lo/HwBlob;->r:I

    iget-object v6, p0, Lo/HwBlob;->q:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    .line 348
    iget v6, p0, Lo/HwBlob;->u:I

    goto :goto_0

    .line 350
    :cond_1
    iget-object v4, p0, Lo/HwBlob;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lo/HwBlob;->i:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lo/HwBlob;->q:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lo/HwBlob;->x:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lo/HwBlob;->z:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 351
    iget v5, p0, Lo/HwBlob;->r:I

    .line 352
    iget v6, p0, Lo/HwBlob;->u:I

    iget-object v7, p0, Lo/HwBlob;->q:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v6, v7

    .line 354
    :goto_0
    iget-object v7, p0, Lo/HwBlob;->i:Landroid/view/ViewGroup;

    iget v8, p0, Lo/HwBlob;->t:I

    iget v9, p0, Lo/HwBlob;->v:I

    invoke-virtual {v7, v8, v5, v9, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 355
    iget-object v5, p0, Lo/HwBlob;->n:Landroid/graphics/RectF;

    iput v4, v5, Landroid/graphics/RectF;->top:F

    .line 358
    iget-object v4, p0, Lo/HwBlob;->A:Landroid/view/WindowInsets;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    int-to-float v4, v4

    invoke-direct {p0}, Lo/HwBlob;->g()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 359
    iget-object v5, p0, Lo/HwBlob;->k:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    int-to-float v6, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v7, v6, v4

    cmpl-float v5, v5, v7

    if-lez v5, :cond_4

    .line 361
    invoke-virtual {p0}, Lo/HwBlob;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-direct {p0}, Lo/HwBlob;->o()I

    move-result v1

    sub-int/2addr v4, v1

    iget-object v1, p0, Lo/HwBlob;->A:Landroid/view/WindowInsets;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    sub-int/2addr v4, v1

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 362
    iget-object v1, p0, Lo/HwBlob;->k:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v1, v6

    int-to-float p1, p1

    .line 363
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 367
    :cond_4
    iget-object p1, p0, Lo/HwBlob;->n:Landroid/graphics/RectF;

    iput v4, p1, Landroid/graphics/RectF;->left:F

    .line 369
    iget-object p1, p0, Lo/HwBlob;->i:Landroid/view/ViewGroup;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lo/HwBlob;->measureChild(Landroid/view/View;II)V

    .line 370
    iget-object p1, p0, Lo/HwBlob;->n:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lo/HwBlob;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 371
    iget-object p1, p0, Lo/HwBlob;->n:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lo/HwBlob;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 373
    invoke-direct {p0, v3}, Lo/HwBlob;->a(Z)V

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 488
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 489
    iget-object v0, p0, Lo/HwBlob;->N:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 491
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setBackgroundColors(ILjava/lang/Integer;Z)V
    .locals 0

    .line 226
    iput p1, p0, Lo/HwBlob;->h:I

    .line 227
    iput-object p2, p0, Lo/HwBlob;->g:Ljava/lang/Integer;

    .line 228
    iput-boolean p3, p0, Lo/HwBlob;->j:Z

    .line 229
    invoke-direct {p0}, Lo/HwBlob;->k()V

    return-void
.end method

.method public final setConsumptionManager(Lo/HidlSupport;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lo/HwBlob;->I:Lo/HidlSupport;

    return-void
.end method

.method public final setContentClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lo/HwBlob;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iput-object p1, p0, Lo/HwBlob;->M:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setContentMarginBottom(I)V
    .locals 0

    .line 85
    iput p1, p0, Lo/HwBlob;->z:I

    return-void
.end method

.method public final setContentMarginEnd(I)V
    .locals 0

    .line 84
    iput p1, p0, Lo/HwBlob;->w:I

    return-void
.end method

.method public final setContentMarginStart(I)V
    .locals 0

    .line 82
    iput p1, p0, Lo/HwBlob;->y:I

    return-void
.end method

.method public final setContentMarginTop(I)V
    .locals 0

    .line 83
    iput p1, p0, Lo/HwBlob;->x:I

    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 174
    invoke-direct {p0}, Lo/HwBlob;->j()Landroid/widget/ImageView;

    move-result-object v0

    if-nez p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    invoke-direct {p0}, Lo/HwBlob;->j()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .line 149
    invoke-direct {p0}, Lo/HwBlob;->f()Landroid/widget/TextView;

    move-result-object v0

    if-nez p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    invoke-direct {p0}, Lo/HwBlob;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setMessagePadding(IIII)V
    .locals 1

    .line 483
    invoke-direct {p0}, Lo/HwBlob;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final setMessageTextColor(I)V
    .locals 1

    .line 156
    invoke-direct {p0}, Lo/HwBlob;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final setMessageTextSize(F)V
    .locals 2

    .line 162
    invoke-direct {p0}, Lo/HwBlob;->f()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public final setOnTooltipClickListener(Lo/HandlerExecutor;)V
    .locals 1

    const-string v0, "onTooltipClickListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    new-instance v0, Lo/HwBlob$TaskDescription;

    invoke-direct {v0, p0, p1}, Lo/HwBlob$TaskDescription;-><init>(Lo/HwBlob;Lo/HandlerExecutor;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lo/HwBlob;->setContentClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    new-instance v0, Lo/HwBlob$ActionBar;

    invoke-direct {v0, p0, p1}, Lo/HwBlob$ActionBar;-><init>(Lo/HwBlob;Lo/HandlerExecutor;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lo/HwBlob;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setOnTooltipLayoutChangeListener(Lo/HwBinder;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lo/HwBlob;->F:Lo/HwBinder;

    return-void
.end method

.method public final setScrimDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 168
    new-instance v0, Lo/MemoryFile;

    iget-object v1, p0, Lo/HwBlob;->k:Landroid/graphics/RectF;

    iget v2, p0, Lo/HwBlob;->f:I

    invoke-direct {v0, p1, v1, v2}, Lo/MemoryFile;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lo/HwBlob;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setTarget$widgetry_release(Landroid/view/View;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lo/HwBlob;->G:Landroid/view/View;

    .line 105
    invoke-virtual {p0}, Lo/HwBlob;->requestLayout()V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 142
    invoke-direct {p0}, Lo/HwBlob;->h()Landroid/widget/TextView;

    move-result-object v0

    if-nez p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    invoke-direct {p0}, Lo/HwBlob;->h()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
