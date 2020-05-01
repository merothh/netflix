.class public final Lo/IncidentReportArgs;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final B:I

.field private final C:Lo/alB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alB<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final D:Lo/alB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alB<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final a:I

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/view/ViewPropertyAnimator;

.field private final d:Landroid/graphics/RectF;

.field private e:I

.field private final f:[I

.field private final g:Landroid/graphics/RectF;

.field private final h:Landroid/graphics/Rect;

.field private final i:Landroid/graphics/RectF;

.field private final j:[I

.field private k:I

.field private final l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lo/IInterface;

.field private s:I

.field private t:I

.field private u:Z

.field private final v:Landroid/view/View;

.field private w:Z

.field private x:Landroid/view/WindowInsets;

.field private final y:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;Lo/alB;Lo/alB;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/view/View;",
            "Lo/alB<",
            "Lo/akj;",
            ">;",
            "Lo/alB<",
            "Lo/akj;",
            ">;ZI)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dismissListener"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchorClickedListener"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lo/IncidentReportArgs;->v:Landroid/view/View;

    iput-object p4, p0, Lo/IncidentReportArgs;->D:Lo/alB;

    iput-object p5, p0, Lo/IncidentReportArgs;->C:Lo/alB;

    iput-boolean p6, p0, Lo/IncidentReportArgs;->z:Z

    iput p7, p0, Lo/IncidentReportArgs;->B:I

    .line 55
    invoke-virtual {p0}, Lo/IncidentReportArgs;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lo/IHwInterface$Activity;->G:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lo/IncidentReportArgs;->a:I

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/IncidentReportArgs;->b:Landroid/view/ViewGroup;

    .line 62
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lo/IncidentReportArgs;->d:Landroid/graphics/RectF;

    .line 63
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lo/IncidentReportArgs;->i:Landroid/graphics/RectF;

    .line 64
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lo/IncidentReportArgs;->g:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 65
    iput-object p2, p0, Lo/IncidentReportArgs;->j:[I

    new-array p1, p1, [I

    .line 66
    iput-object p1, p0, Lo/IncidentReportArgs;->f:[I

    .line 67
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/IncidentReportArgs;->h:Landroid/graphics/Rect;

    .line 69
    invoke-virtual {p0}, Lo/IncidentReportArgs;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lo/IHwInterface$Activity;->B:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lo/IncidentReportArgs;->l:I

    .line 102
    new-instance p1, Lo/IncidentReportArgs$TaskDescription;

    invoke-direct {p1, p0}, Lo/IncidentReportArgs$TaskDescription;-><init>(Lo/IncidentReportArgs;)V

    check-cast p1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p1, p0, Lo/IncidentReportArgs;->y:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 123
    iget-object p1, p0, Lo/IncidentReportArgs;->h:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lo/IncidentReportArgs;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lo/IHwInterface$Activity;->C:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 124
    iget-object p1, p0, Lo/IncidentReportArgs;->h:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lo/IncidentReportArgs;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lo/IHwInterface$Activity;->z:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 126
    invoke-direct {p0}, Lo/IncidentReportArgs;->i()V

    .line 129
    invoke-virtual {p0}, Lo/IncidentReportArgs;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lo/IncidentReportArgs;->B:I

    invoke-static {p1, p2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lo/IncidentReportArgs;->e:I

    .line 130
    invoke-direct {p0}, Lo/IncidentReportArgs;->n()Lo/IInterface;

    move-result-object p1

    iput-object p1, p0, Lo/IncidentReportArgs;->r:Lo/IInterface;

    .line 131
    iget-object p1, p0, Lo/IncidentReportArgs;->b:Landroid/view/ViewGroup;

    iget-object p2, p0, Lo/IncidentReportArgs;->r:Lo/IInterface;

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 133
    invoke-virtual {p0}, Lo/IncidentReportArgs;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lo/IHwInterface$StateListAnimator;->q:I

    invoke-static {p1, p2}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/IncidentReportArgs;->c(Landroid/graphics/drawable/Drawable;)V

    .line 135
    invoke-virtual {p0}, Lo/IncidentReportArgs;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lo/IHwInterface$Activity;->A:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 136
    iput p1, p0, Lo/IncidentReportArgs;->p:I

    .line 137
    iput p1, p0, Lo/IncidentReportArgs;->q:I

    .line 139
    iget-object p1, p0, Lo/IncidentReportArgs;->b:Landroid/view/ViewGroup;

    new-instance p2, Lo/IServiceManager;

    iget p3, p0, Lo/IncidentReportArgs;->a:I

    iget-object p4, p0, Lo/IncidentReportArgs;->h:Landroid/graphics/Rect;

    invoke-direct {p2, p3, p4}, Lo/IServiceManager;-><init>(ILandroid/graphics/Rect;)V

    check-cast p2, Landroid/view/ViewOutlineProvider;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    .line 141
    invoke-virtual {p0, p1}, Lo/IncidentReportArgs;->setFitsSystemWindows(Z)V

    .line 143
    invoke-virtual {p0}, Lo/IncidentReportArgs;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lo/IHwInterface$Activity;->D:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    .line 144
    invoke-virtual {p0, p2}, Lo/IncidentReportArgs;->setElevation(F)V

    .line 146
    invoke-virtual {p0, p1}, Lo/IncidentReportArgs;->setClickable(Z)V

    .line 147
    invoke-virtual {p0, p1}, Lo/IncidentReportArgs;->setFocusableInTouchMode(Z)V

    return-void

    .line 58
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Lo/IncidentReportArgs;)Landroid/view/ViewGroup;
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/IncidentReportArgs;->f()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method private final b()I
    .locals 1

    .line 99
    invoke-direct {p0}, Lo/IncidentReportArgs;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/IncidentReportArgs;->q:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lo/IncidentReportArgs;->p:I

    :goto_0
    return v0
.end method

.method private final b(Landroid/graphics/RectF;)V
    .locals 3

    .line 233
    iget-object v0, p0, Lo/IncidentReportArgs;->v:Landroid/view/View;

    invoke-direct {p0}, Lo/IncidentReportArgs;->f()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lcom/netflix/android/tooltips/TooltipContainer$readTargetBounds$1;

    invoke-direct {v2, p0, p1}, Lcom/netflix/android/tooltips/TooltipContainer$readTargetBounds$1;-><init>(Lo/IncidentReportArgs;Landroid/graphics/RectF;)V

    check-cast v2, Lo/alN;

    invoke-static {v0, v1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic b(Lo/IncidentReportArgs;)[I
    .locals 0

    .line 42
    iget-object p0, p0, Lo/IncidentReportArgs;->f:[I

    return-object p0
.end method

.method private final c(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 119
    new-instance v0, Lo/MemoryFile;

    iget-object v1, p0, Lo/IncidentReportArgs;->d:Landroid/graphics/RectF;

    iget v2, p0, Lo/IncidentReportArgs;->a:I

    invoke-direct {v0, p1, v1, v2}, Lo/MemoryFile;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lo/IncidentReportArgs;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final synthetic d(Lo/IncidentReportArgs;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lo/IncidentReportArgs;->c:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private final d(Z)V
    .locals 6

    .line 347
    iget-object v0, p0, Lo/IncidentReportArgs;->r:Lo/IInterface;

    if-eqz v0, :cond_0

    .line 349
    iget-object v1, p0, Lo/IncidentReportArgs;->g:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 350
    iget-object v1, p0, Lo/IncidentReportArgs;->g:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 351
    invoke-direct {p0}, Lo/IncidentReportArgs;->k()F

    move-result v4

    .line 352
    iget-object v5, p0, Lo/IncidentReportArgs;->h:Landroid/graphics/Rect;

    move v1, p1

    .line 347
    invoke-virtual/range {v0 .. v5}, Lo/IInterface;->b(ZFFFLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public static final synthetic d(Lo/IncidentReportArgs;)[I
    .locals 0

    .line 42
    iget-object p0, p0, Lo/IncidentReportArgs;->j:[I

    return-object p0
.end method

.method private final e()I
    .locals 1

    .line 96
    invoke-direct {p0}, Lo/IncidentReportArgs;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/IncidentReportArgs;->p:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lo/IncidentReportArgs;->q:I

    :goto_0
    return v0
.end method

.method public static final synthetic e(Lo/IncidentReportArgs;)Z
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/IncidentReportArgs;->h()Z

    move-result p0

    return p0
.end method

.method private final f()Landroid/view/ViewGroup;
    .locals 2

    .line 111
    invoke-virtual {p0}, Lo/IncidentReportArgs;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private final g()Z
    .locals 4

    .line 249
    iget-object v0, p0, Lo/IncidentReportArgs;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lo/IncidentReportArgs;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lo/IncidentReportArgs;->t:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lo/IncidentReportArgs;->h:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 250
    invoke-virtual {p0}, Lo/IncidentReportArgs;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lo/IncidentReportArgs;->x:Landroid/view/WindowInsets;

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

.method private final h()Z
    .locals 2

    .line 225
    iget-object v0, p0, Lo/IncidentReportArgs;->i:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lo/IncidentReportArgs;->b(Landroid/graphics/RectF;)V

    .line 226
    iget-object v0, p0, Lo/IncidentReportArgs;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-direct {p0}, Lo/IncidentReportArgs;->f()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/IncidentReportArgs;->i:Landroid/graphics/RectF;

    .line 228
    iget-object v1, p0, Lo/IncidentReportArgs;->d:Landroid/graphics/RectF;

    .line 227
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final i()V
    .locals 1

    .line 151
    iget-object v0, p0, Lo/IncidentReportArgs;->b:Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lo/IncidentReportArgs;->addView(Landroid/view/View;)V

    .line 153
    iget-object v0, p0, Lo/IncidentReportArgs;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    iput v0, p0, Lo/IncidentReportArgs;->n:I

    .line 154
    iget-object v0, p0, Lo/IncidentReportArgs;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lo/IncidentReportArgs;->k:I

    .line 155
    iget-object v0, p0, Lo/IncidentReportArgs;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v0

    iput v0, p0, Lo/IncidentReportArgs;->m:I

    .line 156
    iget-object v0, p0, Lo/IncidentReportArgs;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lo/IncidentReportArgs;->o:I

    return-void
.end method

.method private final j()Z
    .locals 1

    .line 114
    invoke-virtual {p0}, Lo/IncidentReportArgs;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final k()F
    .locals 3

    .line 337
    iget-object v0, p0, Lo/IncidentReportArgs;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 340
    iget-object v1, p0, Lo/IncidentReportArgs;->g:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iget-object v2, p0, Lo/IncidentReportArgs;->d:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    iget-object v1, p0, Lo/IncidentReportArgs;->g:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v0

    iget-object v2, p0, Lo/IncidentReportArgs;->d:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Lo/IncidentReportArgs;->g:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v0, v1, v0

    goto :goto_0

    .line 342
    :cond_1
    iget-object v0, p0, Lo/IncidentReportArgs;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lo/IncidentReportArgs;->g:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method private final n()Lo/IInterface;
    .locals 2

    .line 357
    sget-object v0, Lo/IHwBinder;->c:Lo/IHwBinder$Application;

    iget v1, p0, Lo/IncidentReportArgs;->a:I

    invoke-virtual {v0, v1}, Lo/IHwBinder$Application;->c(I)Landroid/graphics/Paint;

    move-result-object v0

    .line 358
    iget v1, p0, Lo/IncidentReportArgs;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    new-instance v1, Lo/IHwBinder;

    invoke-direct {v1, v0}, Lo/IHwBinder;-><init>(Landroid/graphics/Paint;)V

    check-cast v1, Lo/IInterface;

    return-object v1
.end method


# virtual methods
.method public final a()Lo/alB;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/alB<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lo/IncidentReportArgs;->D:Lo/alB;

    return-object v0
.end method

.method public final b(Landroid/view/ViewGroup;)Z
    .locals 4

    .line 166
    sget-object v0, Lo/HwParcel;->b:Lo/HwParcel$Activity;

    invoke-virtual {p0}, Lo/IncidentReportArgs;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/HwParcel$Activity;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Lo/IncidentReportArgs;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 172
    :cond_1
    iget-boolean v0, p0, Lo/IncidentReportArgs;->u:Z

    if-nez v0, :cond_2

    .line 173
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v2, p0, Lo/IncidentReportArgs;->y:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 175
    iput-boolean v1, p0, Lo/IncidentReportArgs;->u:Z

    .line 179
    :cond_2
    iget-object v0, p0, Lo/IncidentReportArgs;->c:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 182
    :cond_3
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    const/4 v2, -0x1

    .line 181
    invoke-virtual {p1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 186
    invoke-virtual {p0}, Lo/IncidentReportArgs;->requestApplyInsets()V

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, v0}, Lo/IncidentReportArgs;->setAlpha(F)V

    .line 188
    invoke-virtual {p0}, Lo/IncidentReportArgs;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 189
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v2, 0x10e0000

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 190
    new-instance v0, Lo/IncidentReportArgs$Application;

    invoke-direct {v0, p0}, Lo/IncidentReportArgs$Application;-><init>(Lo/IncidentReportArgs;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 197
    iput-object p1, p0, Lo/IncidentReportArgs;->c:Landroid/view/ViewPropertyAnimator;

    .line 198
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return v1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()Landroid/view/View;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/IncidentReportArgs;->v:Landroid/view/View;

    return-object v0
.end method

.method public final d()V
    .locals 3

    .line 203
    invoke-virtual {p0}, Lo/IncidentReportArgs;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-direct {p0}, Lo/IncidentReportArgs;->f()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v1, p0, Lo/IncidentReportArgs;->y:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lo/IncidentReportArgs;->u:Z

    .line 210
    :cond_1
    iget-object v0, p0, Lo/IncidentReportArgs;->c:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 212
    :cond_2
    invoke-virtual {p0}, Lo/IncidentReportArgs;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Lo/IncidentReportArgs;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 214
    new-instance v1, Lo/IncidentReportArgs$Activity;

    invoke-direct {v1, p0}, Lo/IncidentReportArgs$Activity;-><init>(Lo/IncidentReportArgs;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 220
    iput-object v0, p0, Lo/IncidentReportArgs;->c:Landroid/view/ViewPropertyAnimator;

    .line 221
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lo/IncidentReportArgs;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/IncidentReportArgs;->c:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_0

    .line 367
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 368
    invoke-virtual {p0}, Lo/IncidentReportArgs;->d()V

    goto :goto_0

    .line 372
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    const-string v0, "insets"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iput-object p1, p0, Lo/IncidentReportArgs;->x:Landroid/view/WindowInsets;

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lo/IncidentReportArgs;->w:Z

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 328
    iget-object p1, p0, Lo/IncidentReportArgs;->b:Landroid/view/ViewGroup;

    .line 329
    iget-object p2, p0, Lo/IncidentReportArgs;->g:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    float-to-int p2, p2

    .line 330
    iget-object p3, p0, Lo/IncidentReportArgs;->g:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->top:F

    float-to-int p3, p3

    .line 331
    iget-object p4, p0, Lo/IncidentReportArgs;->g:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->right:F

    float-to-int p4, p4

    .line 332
    iget-object p5, p0, Lo/IncidentReportArgs;->g:Landroid/graphics/RectF;

    iget p5, p5, Landroid/graphics/RectF;->bottom:F

    float-to-int p5, p5

    .line 328
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 253
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 255
    iget-object p1, p0, Lo/IncidentReportArgs;->v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lo/IncidentReportArgs;->h()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lo/IncidentReportArgs;->w:Z

    if-eqz p1, :cond_5

    :cond_0
    const/4 p1, 0x0

    .line 256
    iput-boolean p1, p0, Lo/IncidentReportArgs;->w:Z

    .line 258
    iget-object v0, p0, Lo/IncidentReportArgs;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/IncidentReportArgs;->i:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 260
    iget-object v0, p0, Lo/IncidentReportArgs;->b:Landroid/view/ViewGroup;

    .line 261
    iget v1, p0, Lo/IncidentReportArgs;->n:I

    .line 262
    iget v2, p0, Lo/IncidentReportArgs;->k:I

    .line 263
    iget v3, p0, Lo/IncidentReportArgs;->m:I

    .line 264
    iget v4, p0, Lo/IncidentReportArgs;->o:I

    .line 260
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 267
    invoke-virtual {p0}, Lo/IncidentReportArgs;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lo/IncidentReportArgs;->p:I

    sub-int/2addr v0, v1

    iget v1, p0, Lo/IncidentReportArgs;->q:I

    sub-int/2addr v0, v1

    .line 268
    iget v1, p0, Lo/IncidentReportArgs;->l:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 270
    iget-object v1, p0, Lo/IncidentReportArgs;->b:Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/View;

    const/high16 v2, 0x40000000    # 2.0f

    .line 271
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 269
    invoke-virtual {p0, v1, v3, p2}, Lo/IncidentReportArgs;->measureChild(Landroid/view/View;II)V

    .line 274
    iget-object v1, p0, Lo/IncidentReportArgs;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 277
    invoke-direct {p0}, Lo/IncidentReportArgs;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 282
    iget-object v4, p0, Lo/IncidentReportArgs;->d:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lo/IncidentReportArgs;->t:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 283
    iget v5, p0, Lo/IncidentReportArgs;->k:I

    iget-object v6, p0, Lo/IncidentReportArgs;->h:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    .line 284
    iget v6, p0, Lo/IncidentReportArgs;->o:I

    goto :goto_0

    .line 286
    :cond_1
    iget-object v4, p0, Lo/IncidentReportArgs;->d:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lo/IncidentReportArgs;->b:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lo/IncidentReportArgs;->h:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 287
    iget v5, p0, Lo/IncidentReportArgs;->t:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lo/IncidentReportArgs;->s:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 288
    iget v5, p0, Lo/IncidentReportArgs;->k:I

    .line 289
    iget v6, p0, Lo/IncidentReportArgs;->o:I

    iget-object v7, p0, Lo/IncidentReportArgs;->h:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v6, v7

    .line 291
    :goto_0
    iget-object v7, p0, Lo/IncidentReportArgs;->b:Landroid/view/ViewGroup;

    .line 292
    iget v8, p0, Lo/IncidentReportArgs;->n:I

    .line 294
    iget v9, p0, Lo/IncidentReportArgs;->m:I

    .line 291
    invoke-virtual {v7, v8, v5, v9, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 297
    iget-object v5, p0, Lo/IncidentReportArgs;->g:Landroid/graphics/RectF;

    iput v4, v5, Landroid/graphics/RectF;->top:F

    .line 300
    iget-object v4, p0, Lo/IncidentReportArgs;->x:Landroid/view/WindowInsets;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    int-to-float v4, v4

    invoke-direct {p0}, Lo/IncidentReportArgs;->e()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 301
    iget-object v5, p0, Lo/IncidentReportArgs;->d:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    int-to-float v6, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v7, v6, v4

    cmpl-float v5, v5, v7

    if-lez v5, :cond_4

    .line 305
    invoke-virtual {p0}, Lo/IncidentReportArgs;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-direct {p0}, Lo/IncidentReportArgs;->b()I

    move-result v1

    sub-int/2addr v4, v1

    iget-object v1, p0, Lo/IncidentReportArgs;->x:Landroid/view/WindowInsets;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    sub-int/2addr v4, v1

    .line 303
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 308
    iget-object v1, p0, Lo/IncidentReportArgs;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v1, v6

    int-to-float p1, p1

    .line 309
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 313
    :cond_4
    iget-object p1, p0, Lo/IncidentReportArgs;->g:Landroid/graphics/RectF;

    iput v4, p1, Landroid/graphics/RectF;->left:F

    .line 316
    iget-object p1, p0, Lo/IncidentReportArgs;->b:Landroid/view/ViewGroup;

    check-cast p1, Landroid/view/View;

    .line 317
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 315
    invoke-virtual {p0, p1, v0, p2}, Lo/IncidentReportArgs;->measureChild(Landroid/view/View;II)V

    .line 320
    iget-object p1, p0, Lo/IncidentReportArgs;->g:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lo/IncidentReportArgs;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 321
    iget-object p1, p0, Lo/IncidentReportArgs;->g:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lo/IncidentReportArgs;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 323
    invoke-direct {p0, v3}, Lo/IncidentReportArgs;->d(Z)V

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

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 378
    iget-object v0, p0, Lo/IncidentReportArgs;->d:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lo/IncidentReportArgs;->C:Lo/alB;

    invoke-interface {v0}, Lo/alB;->invoke()Ljava/lang/Object;

    .line 380
    iget-boolean v0, p0, Lo/IncidentReportArgs;->z:Z

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lo/IncidentReportArgs;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 383
    :cond_0
    invoke-virtual {p0}, Lo/IncidentReportArgs;->d()V

    .line 385
    :cond_1
    iget-object v0, p0, Lo/IncidentReportArgs;->g:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_2

    .line 386
    invoke-virtual {p0}, Lo/IncidentReportArgs;->d()V

    .line 389
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setContentMarginBottom(I)V
    .locals 0

    .line 79
    iput p1, p0, Lo/IncidentReportArgs;->s:I

    return-void
.end method

.method public final setContentMarginEnd(I)V
    .locals 0

    .line 78
    iput p1, p0, Lo/IncidentReportArgs;->q:I

    return-void
.end method

.method public final setContentMarginStart(I)V
    .locals 0

    .line 76
    iput p1, p0, Lo/IncidentReportArgs;->p:I

    return-void
.end method

.method public final setContentMarginTop(I)V
    .locals 0

    .line 77
    iput p1, p0, Lo/IncidentReportArgs;->t:I

    return-void
.end method
