.class public abstract Lo/ParcelFormatException$Activity;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ParcelFormatException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Activity"
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private b:Landroid/view/ViewGroup;

.field protected final c:Lo/PatternMatcher;

.field public final d:Landroid/view/View;

.field protected final e:Lo/ServiceManagerNative;

.field private final f:Landroid/view/View$OnLayoutChangeListener;

.field private h:I

.field private j:Lo/PooledStringWriter;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;I)V
    .locals 1

    .line 270
    invoke-static {p2}, Lo/ParcelFormatException$Activity;->e(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 264
    iput p2, p0, Lo/ParcelFormatException$Activity;->h:I

    const/4 p2, 0x0

    .line 266
    iput-object p2, p0, Lo/ParcelFormatException$Activity;->j:Lo/PooledStringWriter;

    .line 271
    iget-object v0, p0, Lo/ParcelFormatException$Activity;->itemView:Landroid/view/View;

    instance-of v0, v0, Lo/ServiceManagerNative;

    if-eqz v0, :cond_0

    .line 272
    iget-object p2, p0, Lo/ParcelFormatException$Activity;->itemView:Landroid/view/View;

    check-cast p2, Lo/ServiceManagerNative;

    iput-object p2, p0, Lo/ParcelFormatException$Activity;->e:Lo/ServiceManagerNative;

    goto :goto_0

    .line 274
    :cond_0
    iput-object p2, p0, Lo/ParcelFormatException$Activity;->e:Lo/ServiceManagerNative;

    .line 276
    :goto_0
    iget-object p2, p0, Lo/ParcelFormatException$Activity;->itemView:Landroid/view/View;

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lo/ParcelFormatException$Activity;->d:Landroid/view/View;

    .line 277
    iput-object p3, p0, Lo/ParcelFormatException$Activity;->c:Lo/PatternMatcher;

    .line 279
    new-instance p2, Lo/NullVibrator;

    invoke-direct {p2, p0, p3}, Lo/NullVibrator;-><init>(Lo/ParcelFormatException$Activity;Lo/PatternMatcher;)V

    iput-object p2, p0, Lo/ParcelFormatException$Activity;->a:Ljava/lang/Runnable;

    .line 280
    new-instance p2, Lo/ParcelableException;

    invoke-direct {p2, p0}, Lo/ParcelableException;-><init>(Lo/ParcelFormatException$Activity;)V

    iput-object p2, p0, Lo/ParcelFormatException$Activity;->f:Landroid/view/View$OnLayoutChangeListener;

    .line 288
    iput-object p1, p0, Lo/ParcelFormatException$Activity;->b:Landroid/view/ViewGroup;

    .line 289
    iget-object p2, p0, Lo/ParcelFormatException$Activity;->f:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic b(Lo/ParcelFormatException$Activity;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lo/ParcelFormatException$Activity;->d(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private b(Lo/PooledStringWriter;Landroidx/recyclerview/widget/RecyclerView$Dialog;)V
    .locals 4

    .line 351
    invoke-virtual {p1}, Lo/PooledStringWriter;->a()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 354
    invoke-virtual {p1}, Lo/PooledStringWriter;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 355
    invoke-virtual {p1}, Lo/PooledStringWriter;->f()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 357
    iget-object v1, p0, Lo/ParcelFormatException$Activity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Lo/PooledStringWriter;->i()I

    move-result v2

    sub-int/2addr v1, v2

    .line 359
    invoke-virtual {p1}, Lo/PooledStringWriter;->a()I

    move-result v2

    div-int v2, v1, v2

    sub-int/2addr v2, v0

    iput v2, p2, Landroidx/recyclerview/widget/RecyclerView$Dialog;->width:I

    .line 361
    invoke-virtual {p1}, Lo/PooledStringWriter;->f()F

    move-result v2

    iget v3, p2, Landroidx/recyclerview/widget/RecyclerView$Dialog;->width:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 363
    invoke-virtual {p1}, Lo/PooledStringWriter;->a()I

    move-result p1

    div-int/2addr v1, p1

    sub-int/2addr v1, v0

    iput v1, p2, Landroidx/recyclerview/widget/RecyclerView$Dialog;->width:I

    goto :goto_0

    .line 366
    :cond_0
    iget-object v1, p0, Lo/ParcelFormatException$Activity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Lo/PooledStringWriter;->i()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 368
    invoke-virtual {p1}, Lo/PooledStringWriter;->a()I

    move-result p1

    div-int/2addr v1, p1

    sub-int/2addr v1, v0

    iput v1, p2, Landroidx/recyclerview/widget/RecyclerView$Dialog;->width:I

    :goto_0
    return-void

    .line 352
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "config.numberOfItemsPerPage need a positive integer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic c(Lo/ParcelFormatException$Activity;Lo/PatternMatcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/ParcelFormatException$Activity;->d(Lo/PatternMatcher;)V

    return-void
.end method

.method private synthetic d(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_1

    if-ne p3, p7, :cond_1

    if-ne p4, p8, :cond_1

    if-eq p5, p9, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 284
    iget-object p1, p0, Lo/ParcelFormatException$Activity;->itemView:Landroid/view/View;

    iget-object p2, p0, Lo/ParcelFormatException$Activity;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private synthetic d(Lo/PatternMatcher;)V
    .locals 0

    .line 279
    invoke-interface {p1}, Lo/PatternMatcher;->e()Lo/PooledStringWriter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/ParcelFormatException$Activity;->e(Lo/PooledStringWriter;)V

    return-void
.end method

.method private static e(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 303
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/IHwInterface$FragmentManager;->j:I

    invoke-static {v0, v1}, Lo/TextSwitcher;->e(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Lo/ServiceManagerNative;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ServiceManagerNative;-><init>(Landroid/content/Context;)V

    .line 305
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Lo/ServiceManagerNative;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method private e(Lo/PooledStringWriter;Landroidx/recyclerview/widget/RecyclerView$Dialog;)Z
    .locals 4

    .line 379
    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$Dialog;->width:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 383
    :cond_0
    invoke-virtual {p1}, Lo/PooledStringWriter;->c()F

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 384
    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$Dialog;->width:I

    int-to-float v0, v0

    invoke-virtual {p1}, Lo/PooledStringWriter;->c()F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p2, Landroidx/recyclerview/widget/RecyclerView$Dialog;->height:I

    .line 385
    invoke-virtual {p1}, Lo/PooledStringWriter;->h()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$Dialog;->height:I

    invoke-virtual {p1}, Lo/PooledStringWriter;->h()I

    move-result v2

    if-le v0, v2, :cond_4

    .line 391
    invoke-virtual {p1}, Lo/PooledStringWriter;->q()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    new-array p2, v3, [Ljava/lang/Object;

    .line 398
    invoke-virtual {p0}, Lo/ParcelFormatException$Activity;->getAdapterPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "BaseRowAdapter"

    const-string v2, "[pos=%d] Item height too large, request re-layout with one additional item"

    invoke-static {v0, v2, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 400
    invoke-virtual {p1}, Lo/PooledStringWriter;->t()Lo/PooledStringWriter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/ParcelFormatException$Activity;->e(Lo/PooledStringWriter;)V

    return v1

    .line 394
    :cond_2
    invoke-virtual {p1}, Lo/PooledStringWriter;->h()I

    move-result p1

    iput p1, p2, Landroidx/recyclerview/widget/RecyclerView$Dialog;->height:I

    goto :goto_0

    :cond_3
    const/4 p1, -0x2

    .line 407
    iput p1, p2, Landroidx/recyclerview/widget/RecyclerView$Dialog;->height:I

    :cond_4
    :goto_0
    return v3
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 455
    iget-object v0, p0, Lo/ParcelFormatException$Activity;->e:Lo/ServiceManagerNative;

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0}, Lo/ServiceManagerNative;->b()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 435
    iget-object v0, p0, Lo/ParcelFormatException$Activity;->e:Lo/ServiceManagerNative;

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v0}, Lo/ServiceManagerNative;->a()V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/ViewGroup;)V
    .locals 2

    .line 293
    iget-object v0, p0, Lo/ParcelFormatException$Activity;->b:Landroid/view/ViewGroup;

    if-eq p1, v0, :cond_0

    .line 294
    iget-object v1, p0, Lo/ParcelFormatException$Activity;->f:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 297
    iget-object v0, p0, Lo/ParcelFormatException$Activity;->f:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 298
    iput-object p1, p0, Lo/ParcelFormatException$Activity;->b:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 428
    iget-object v0, p0, Lo/ParcelFormatException$Activity;->e:Lo/ServiceManagerNative;

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0}, Lo/ServiceManagerNative;->e()V

    :cond_0
    return-void
.end method

.method final d(I)V
    .locals 1

    .line 448
    iget-object v0, p0, Lo/ParcelFormatException$Activity;->e:Lo/ServiceManagerNative;

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {v0, p1}, Lo/ServiceManagerNative;->c(I)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 442
    iget-object v0, p0, Lo/ParcelFormatException$Activity;->e:Lo/ServiceManagerNative;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v0}, Lo/ServiceManagerNative;->c()V

    :cond_0
    return-void
.end method

.method e(Lo/PooledStringWriter;)V
    .locals 5

    .line 318
    iget-object v0, p0, Lo/ParcelFormatException$Activity;->e:Lo/ServiceManagerNative;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lo/ServiceManagerNative;->d()V

    .line 322
    :cond_0
    iget-object v0, p0, Lo/ParcelFormatException$Activity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lo/ParcelFormatException$Activity;->h:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lo/ParcelFormatException$Activity;->j:Lo/PooledStringWriter;

    if-eq p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lo/ParcelFormatException$Activity;->b:Landroid/view/ViewGroup;

    .line 323
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return-void

    .line 328
    :cond_3
    iget-object v0, p0, Lo/ParcelFormatException$Activity;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 331
    iget-object v0, p0, Lo/ParcelFormatException$Activity;->itemView:Landroid/view/View;

    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    invoke-direct {v2, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$Dialog;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    .line 334
    :cond_4
    invoke-direct {p0, p1, v0}, Lo/ParcelFormatException$Activity;->b(Lo/PooledStringWriter;Landroidx/recyclerview/widget/RecyclerView$Dialog;)V

    .line 335
    invoke-direct {p0, p1, v0}, Lo/ParcelFormatException$Activity;->e(Lo/PooledStringWriter;Landroidx/recyclerview/widget/RecyclerView$Dialog;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 338
    invoke-virtual {p0}, Lo/ParcelFormatException$Activity;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "BaseRowAdapter"

    const-string v3, "[pos=%d] Layout cover view to %dx%d"

    invoke-static {v1, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 339
    invoke-virtual {p1}, Lo/PooledStringWriter;->b()I

    move-result v1

    invoke-virtual {p1}, Lo/PooledStringWriter;->b()I

    move-result v2

    invoke-virtual {p1}, Lo/PooledStringWriter;->b()I

    move-result v3

    invoke-virtual {p1}, Lo/PooledStringWriter;->b()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Dialog;->setMargins(IIII)V

    .line 340
    iget-object v0, p0, Lo/ParcelFormatException$Activity;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 342
    iget-object v0, p0, Lo/ParcelFormatException$Activity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lo/ParcelFormatException$Activity;->h:I

    .line 343
    iput-object p1, p0, Lo/ParcelFormatException$Activity;->j:Lo/PooledStringWriter;

    :cond_5
    return-void
.end method
