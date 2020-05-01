.class public final Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/android/mdxpanel/MdxPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActionBar"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior<",
            "Lo/MenuInflater;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/netflix/android/mdxpanel/MdxPanelController;

.field private e:Z

.field private final f:[F

.field private final g:[F

.field private h:I

.field private i:I

.field private j:F

.field private final k:Landroid/graphics/drawable/ColorDrawable;

.field private final l:[F

.field private final m:[F

.field private final n:Lo/DialerFilter;

.field private final o:[F

.field private r:Ljava/lang/Integer;

.field private final s:Landroidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method public constructor <init>(Lcom/netflix/android/mdxpanel/MdxPanelController;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            ")V"
        }
    .end annotation

    const-string v0, "coordinatorLayout"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    iput-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->s:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 362
    sget-object p2, Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;->e:Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior$Application;

    invoke-static {p1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->a(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lo/MenuInflater;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior$Application;->c(Landroid/view/View;)Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->c:Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;

    const/4 p2, 0x1

    .line 373
    iput-boolean p2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->e:Z

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 387
    invoke-virtual {p1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->e()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lo/CancellationSignal$TaskDescription;->g:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x0

    aput p1, v1, p2

    iput-object v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->f:[F

    new-array p1, v0, [F

    .line 388
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->g:[F

    new-array p1, v0, [F

    .line 389
    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->l:[F

    new-array p1, v0, [F

    .line 390
    fill-array-data p1, :array_2

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->o:[F

    new-array p1, v0, [F

    .line 391
    fill-array-data p1, :array_3

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->m:[F

    .line 393
    new-instance p1, Lo/DialerFilter;

    iget-object p2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->s:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p2, "coordinatorLayout.context"

    invoke-static {v1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lo/DialerFilter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    sget p2, Lo/CancellationSignal$Activity;->t:I

    invoke-virtual {p1, p2}, Lo/DialerFilter;->setId(I)V

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->n:Lo/DialerFilter;

    .line 394
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 p2, -0x1000000

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->k:Landroid/graphics/drawable/ColorDrawable;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x43328000    # 178.5f
    .end array-data
.end method

.method public static final synthetic a(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;)V
    .locals 0

    .line 358
    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->f()V

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;F)V
    .locals 0

    .line 358
    iput p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->j:F

    return-void
.end method

.method private final b([FF)F
    .locals 3

    const/4 v0, 0x0

    .line 400
    aget v1, p1, v0

    const/4 v2, 0x1

    aget v2, p1, v2

    aget p1, p1, v0

    sub-float/2addr v2, p1

    mul-float p2, p2, v2

    add-float/2addr v1, p2

    return v1
.end method

.method public static final synthetic b(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;)I
    .locals 0

    .line 358
    iget p0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->h:I

    return p0
.end method

.method public static final synthetic d(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;I)V
    .locals 0

    .line 358
    iput p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->i:I

    return-void
.end method

.method public static final synthetic d(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;)[F
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->f:[F

    return-object p0
.end method

.method public static final synthetic e(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;)Landroid/graphics/Rect;
    .locals 0

    .line 358
    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->h()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private final f()V
    .locals 7

    .line 554
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-virtual {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->d()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 558
    iget v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->j:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lo/PowerSaveState;->e(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->r:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 561
    sget-object v2, Lcom/netflix/android/mdxpanel/MdxPanelController;->c:Lcom/netflix/android/mdxpanel/MdxPanelController$Application;

    check-cast v2, Lo/MessagePdu;

    .line 562
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 v0, 0x0

    .line 563
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->r:Ljava/lang/Integer;

    goto :goto_0

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->r:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 566
    sget-object v1, Lcom/netflix/android/mdxpanel/MdxPanelController;->c:Lcom/netflix/android/mdxpanel/MdxPanelController$Application;

    check-cast v1, Lo/MessagePdu;

    .line 568
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->r:Ljava/lang/Integer;

    const/16 v1, 0xe

    .line 571
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 572
    sget-object v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->c:Lcom/netflix/android/mdxpanel/MdxPanelController$Application;

    check-cast v0, Lo/MessagePdu;

    .line 578
    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    .line 580
    iget-object v1, v0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->f:[F

    iget v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->j:F

    invoke-direct {v0, v1, v2}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->b([FF)F

    move-result v1

    .line 581
    iget-object v2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v2}, Lcom/netflix/android/mdxpanel/MdxPanelController;->a(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lo/MenuInflater;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    float-to-int v3, v1

    .line 664
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 666
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 667
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 669
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 582
    iget-object v2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v2}, Lcom/netflix/android/mdxpanel/MdxPanelController;->k(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;

    move-result-object v2

    neg-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 585
    iget-object v1, v0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->k:Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->m:[F

    iget v3, v0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->j:F

    invoke-direct {v0, v2, v3}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->b([FF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 586
    iget-object v1, v0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->n:Lo/DialerFilter;

    iget-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->k:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-gt v2, v3, :cond_2

    const/16 v2, 0x8

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lo/DialerFilter;->setVisibility(I)V

    .line 592
    iget-object v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->j(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 594
    iget-object v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->g:[F

    iget-object v2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v2}, Lcom/netflix/android/mdxpanel/MdxPanelController;->j(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v3

    .line 595
    iget-object v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->g:[F

    iget v2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->j:F

    invoke-direct {p0, v1, v2}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->b([FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->h:I

    .line 596
    iget-object v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->a(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lo/MenuInflater;

    move-result-object v1

    invoke-virtual {v1}, Lo/MenuInflater;->invalidateOutline()V

    .line 598
    iget-object v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->l:[F

    iget-object v2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v2}, Lcom/netflix/android/mdxpanel/MdxPanelController;->j(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v5

    .line 599
    iget-object v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->b(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->l:[F

    iget v3, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->j:F

    invoke-direct {p0, v2, v3}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->b([FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 600
    iget-object v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->b(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_2

    .line 599
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_4
    iget-object v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->b(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 604
    :goto_2
    iget-object v1, v0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->o:[F

    iget-object v2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v2}, Lcom/netflix/android/mdxpanel/MdxPanelController;->a(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lo/MenuInflater;

    move-result-object v2

    invoke-virtual {v2}, Lo/MenuInflater;->getMeasuredHeight()I

    move-result v2

    iget-object v3, v0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->c:Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;

    invoke-virtual {v3}, Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;->getPeekHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v1, v5

    .line 606
    iget-object v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->e(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->o:[F

    iget v3, v0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->j:F

    invoke-direct {v0, v2, v3}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->b([FF)F

    move-result v2

    iget-object v3, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v3}, Lcom/netflix/android/mdxpanel/MdxPanelController;->j(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->i:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v0, v0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->h:I

    int-to-float v0, v0

    sub-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 607
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->e(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v0, :cond_6

    .line 608
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->e(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 610
    :cond_6
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->e(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->e(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 616
    :goto_4
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    new-instance v1, Lo/Build$DatabaseErrorHandler;

    .line 617
    iget v2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->j:F

    .line 618
    invoke-static {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->n(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 616
    invoke-direct {v1, v2, v3}, Lo/Build$DatabaseErrorHandler;-><init>(FI)V

    check-cast v1, Lo/Build;

    invoke-virtual {v0, v1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->d(Lo/Build;)V

    return-void
.end method

.method private final h()Landroid/graphics/Rect;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->c:Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;

    invoke-virtual {v0}, Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;->b()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 367
    iput-boolean p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->b:Z

    .line 368
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->c:Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;

    invoke-virtual {p1}, Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;->getState()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 369
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->c:Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;

    invoke-virtual {p1, v0}, Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;->setState(I)V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->c:Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;

    invoke-virtual {v0}, Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()V
    .locals 10

    .line 422
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/android/mdxpanel/MdxPanelController;->b(Lcom/netflix/android/mdxpanel/MdxPanelController;ZZILjava/lang/Object;)V

    .line 424
    iget-boolean v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 427
    :cond_0
    iput-boolean v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->a:Z

    .line 430
    invoke-virtual {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->e()V

    .line 432
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->n:Lo/DialerFilter;

    new-instance v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;-><init>(II)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2}, Lo/DialerFilter;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->n:Lo/DialerFilter;

    iget-object v2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->k:Landroid/graphics/drawable/ColorDrawable;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lo/DialerFilter;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 434
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->n:Lo/DialerFilter;

    check-cast v0, Landroid/view/View;

    .line 647
    invoke-static {v0}, Lo/SSLCertificateSocketFactory;->b(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v2, Lo/SSLSessionCache;->d:Lo/SSLSessionCache;

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v2, "RxView.clicks(this).map(AnyToUnit)"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    iget-object v3, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-virtual {v3}, Lcom/netflix/android/mdxpanel/MdxPanelController;->o()Lio/reactivex/Observable;

    move-result-object v3

    check-cast v3, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v4

    const-string v0, "dimView.clicks()\n       \u2026    .takeUntil(destroy())"

    invoke-static {v4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    new-instance v0, Lcom/netflix/android/mdxpanel/MdxPanelController$BottomSheetBehaviorHelper$activate$1;

    invoke-direct {v0, p0}, Lcom/netflix/android/mdxpanel/MdxPanelController$BottomSheetBehaviorHelper$activate$1;-><init>(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;)V

    move-object v7, v0

    check-cast v7, Lo/alA;

    const/4 v6, 0x0

    .line 440
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->d(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lo/alA;

    move-result-object v5

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 436
    invoke-static/range {v4 .. v9}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 443
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->b(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;

    move-result-object v0

    .line 648
    invoke-static {v0}, Lo/SSLCertificateSocketFactory;->b(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v3, Lo/SSLSessionCache;->d:Lo/SSLSessionCache;

    check-cast v3, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    iget-object v2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-virtual {v2}, Lcom/netflix/android/mdxpanel/MdxPanelController;->o()Lio/reactivex/Observable;

    move-result-object v2

    check-cast v2, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v3

    const-string v0, "clickInterceptor.clicks(\u2026    .takeUntil(destroy())"

    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->d(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lo/alA;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 448
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->s:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 450
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

    .line 452
    iget-object v3, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->n:Lo/DialerFilter;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;I)V

    .line 454
    iget-object v2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v2}, Lcom/netflix/android/mdxpanel/MdxPanelController;->a(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lo/MenuInflater;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->n:Lo/DialerFilter;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;I)V

    .line 458
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->a(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/MenuInflater;->setClipToOutline(Z)V

    .line 459
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->a(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lo/MenuInflater;

    move-result-object v0

    new-instance v1, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$StateListAnimator;

    invoke-direct {v1, p0}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$StateListAnimator;-><init>(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;)V

    check-cast v1, Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Lo/MenuInflater;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 472
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->a(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lo/MenuInflater;

    move-result-object v0

    new-instance v1, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$TaskDescription;

    invoke-direct {v1, p0}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$TaskDescription;-><init>(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;)V

    check-cast v1, Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-virtual {v0, v1}, Lo/MenuInflater;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 481
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->a(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->requestApplyInsets()V

    .line 483
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->c:Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;

    new-instance v1, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$ActionBar;

    invoke-direct {v1, p0}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$ActionBar;-><init>(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;)V

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v0, v1}, Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;->setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 506
    new-instance v0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$Application;

    invoke-direct {v0, p0}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$Application;-><init>(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;)V

    check-cast v0, Ljava/lang/Runnable;

    .line 507
    iget-object v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->a(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lo/MenuInflater;

    move-result-object v1

    new-instance v2, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$Activity;

    invoke-direct {v2, p0, v0}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$Activity;-><init>(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;Ljava/lang/Runnable;)V

    check-cast v2, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Lo/MenuInflater;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final c()V
    .locals 4

    .line 522
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v1, v2, v3}, Lcom/netflix/android/mdxpanel/MdxPanelController;->b(Lcom/netflix/android/mdxpanel/MdxPanelController;ZZILjava/lang/Object;)V

    .line 524
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->c:Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;->setState(I)V

    return-void
.end method

.method public final d(Z)V
    .locals 1

    .line 375
    iput-boolean p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->e:Z

    .line 376
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->c:Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;

    invoke-virtual {v0, p1}, Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;->a(Z)V

    .line 377
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    if-eqz p1, :cond_0

    sget-object p1, Lo/Build$Intent;->a:Lo/Build$Intent;

    goto :goto_0

    :cond_0
    sget-object p1, Lo/Build$Context;->c:Lo/Build$Context;

    :goto_0
    check-cast p1, Lo/Build;

    invoke-virtual {v0, p1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->d(Lo/Build;)V

    return-void
.end method

.method public final d()Z
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->c:Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;

    invoke-virtual {v0}, Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->c:Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;

    invoke-virtual {v0}, Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;->getState()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 544
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->c:Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;

    invoke-virtual {v0, v1}, Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;->setState(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()V
    .locals 4

    .line 529
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->j(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-virtual {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->e()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/CancellationSignal$TaskDescription;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 531
    :goto_0
    iget-object v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->c:Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;

    iget-object v2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v2}, Lcom/netflix/android/mdxpanel/MdxPanelController;->h(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    .line 533
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-virtual {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->e()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lo/CancellationSignal$TaskDescription;->n:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 534
    iget v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->i:I

    add-int/2addr v2, v0

    .line 533
    invoke-virtual {v1, v2}, Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;->setPeekHeight(I)V

    .line 536
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->f(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->h(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 537
    iget v2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->i:I

    add-int/2addr v1, v2

    .line 538
    iget-object v2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-virtual {v2}, Lcom/netflix/android/mdxpanel/MdxPanelController;->e()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lo/CancellationSignal$TaskDescription;->h:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 537
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 539
    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->f()V

    return-void

    .line 536
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()V
    .locals 3

    .line 623
    iget-boolean v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->e:Z

    if-eqz v0, :cond_2

    .line 624
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->c:Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;

    invoke-virtual {v0}, Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;->getState()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->c:Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;

    invoke-virtual {v0, v2}, Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;->setState(I)V

    goto :goto_0

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->c:Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;

    invoke-virtual {v0, v1}, Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;->setState(I)V

    :cond_2
    :goto_0
    return-void
.end method
