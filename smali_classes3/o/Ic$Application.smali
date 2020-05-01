.class public final Lo/Ic$Application;
.super Landroidx/recyclerview/widget/RecyclerView$PendingIntent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Application"
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:I

.field final synthetic c:Lo/Ic;

.field private final d:Landroid/animation/ValueAnimator;

.field private e:I

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Integer;

.field private final h:Landroid/graphics/Rect;

.field private final i:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lo/Ic;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lo/Ic$Application;->c:Lo/Ic;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;-><init>()V

    .line 173
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lo/Ic$Application;->d:Landroid/animation/ValueAnimator;

    .line 182
    sget-object v0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->Companion:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$ActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$ActionBar;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const v1, -0xffff01

    .line 183
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 182
    :goto_0
    iput-object v0, p0, Lo/Ic$Application;->a:Landroid/graphics/Paint;

    .line 187
    invoke-static {p1}, Lo/Ic;->a(Lo/Ic;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    .line 188
    iget-object p1, p0, Lo/Ic$Application;->d:Landroid/animation/ValueAnimator;

    new-instance v0, Lo/Ic$Application$4;

    invoke-direct {v0, p0}, Lo/Ic$Application$4;-><init>(Lo/Ic$Application;)V

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 197
    iget-object p1, p0, Lo/Ic$Application;->d:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 200
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/Ic$Application;->h:Landroid/graphics/Rect;

    .line 202
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 204
    iget-object v0, p0, Lo/Ic$Application;->c:Lo/Ic;

    invoke-static {v0}, Lo/Ic;->a(Lo/Ic;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 205
    sget v1, Lo/GS$StateListAnimator;->e:I

    .line 203
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iput-object p1, p0, Lo/Ic$Application;->i:Landroid/graphics/Paint;

    return-void
.end method

.method public static final synthetic c(Lo/Ic$Application;I)V
    .locals 0

    .line 171
    iput p1, p0, Lo/Ic$Application;->b:I

    return-void
.end method

.method private final e()V
    .locals 2

    .line 406
    iget-object v0, p0, Lo/Ic$Application;->f:Ljava/lang/Integer;

    iget-object v1, p0, Lo/Ic$Application;->g:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lo/Ic$Application;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lo/Ic$Application;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 411
    :cond_0
    iget-object v0, p0, Lo/Ic$Application;->d:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 412
    iget-object v0, p0, Lo/Ic$Application;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 413
    iget-object v0, p0, Lo/Ic$Application;->g:Ljava/lang/Integer;

    iput-object v0, p0, Lo/Ic$Application;->f:Ljava/lang/Integer;

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final synthetic e(Lo/Ic$Application;I)V
    .locals 0

    .line 171
    iput p1, p0, Lo/Ic$Application;->e:I

    return-void
.end method


# virtual methods
.method public final c(Landroid/graphics/Canvas;Landroid/view/View;Lo/GX;)V
    .locals 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extrasModel"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    sget-object v0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->Companion:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$ActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$ActionBar;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lo/Ic$Application;->a:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 366
    invoke-interface {p3}, Lo/GX;->t()I

    move-result v1

    const v2, -0xff0100

    const-string v7, "child.layoutParams"

    if-nez v1, :cond_0

    .line 367
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 369
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lo/BatteryManager;->b(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-interface {p3}, Lo/GX;->m()Lo/GW;

    move-result-object p3

    invoke-virtual {p3}, Lo/GW;->c()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float v5, v1, p3

    const/4 v2, 0x0

    .line 373
    iget-object p3, p0, Lo/Ic$Application;->c:Lo/Ic;

    invoke-static {p3}, Lo/Ic;->a(Lo/Ic;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result p3

    int-to-float v4, p3

    move-object v1, p1

    move v3, v5

    move-object v6, v0

    .line 370
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 378
    :cond_0
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 380
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lo/BatteryManager;->c(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-interface {p3}, Lo/GX;->m()Lo/GW;

    move-result-object p3

    invoke-virtual {p3}, Lo/GW;->c()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    add-float v5, v1, p3

    const/4 v2, 0x0

    .line 384
    iget-object p3, p0, Lo/Ic$Application;->c:Lo/Ic;

    invoke-static {p3}, Lo/Ic;->a(Lo/Ic;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result p3

    int-to-float v4, p3

    move-object v1, p1

    move v3, v5

    move-object v6, v0

    .line 381
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    const/high16 p3, -0x10000

    .line 389
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 390
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lo/BatteryManager;->c(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p3, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float v5, p3, p2

    const/4 v2, 0x0

    .line 394
    iget-object p2, p0, Lo/Ic$Application;->c:Lo/Ic;

    invoke-static {p2}, Lo/Ic;->a(Lo/Ic;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result p2

    int-to-float v4, p2

    move-object v1, p1

    move v3, v5

    move-object v6, v0

    .line 391
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public final e(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    sget-object v0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->Companion:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$ActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$ActionBar;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v6, p0, Lo/Ic$Application;->a:Landroid/graphics/Paint;

    if-eqz v6, :cond_0

    const v0, -0xffff01

    .line 345
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 347
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    int-to-float v5, v0

    .line 351
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result p2

    int-to-float v4, p2

    move-object v1, p1

    move v3, v5

    .line 348
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/Integer;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lo/Ic$Application;->g:Ljava/lang/Integer;

    if-eq v0, p1, :cond_0

    .line 212
    iput-object p1, p0, Lo/Ic$Application;->g:Ljava/lang/Integer;

    .line 213
    iget-object p1, p0, Lo/Ic$Application;->c:Lo/Ic;

    invoke-static {p1}, Lo/Ic;->a(Lo/Ic;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result p1

    if-nez p1, :cond_0

    .line 215
    iget-object p1, p0, Lo/Ic$Application;->c:Lo/Ic;

    invoke-static {p1}, Lo/Ic;->a(Lo/Ic;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    :cond_0
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ComponentName;)V
    .locals 2

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerView"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const-string v0, "recyclerView.resources"

    invoke-static {p4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    iget p4, p4, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object p4, p0, Lo/Ic$Application;->c:Lo/Ic;

    invoke-static {p4}, Lo/Ic;->e(Lo/Ic;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 238
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object p4

    instance-of v0, p4, Lo/OfLong;

    if-nez v0, :cond_1

    const/4 p4, 0x0

    :cond_1
    check-cast p4, Lo/OfLong;

    .line 239
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    .line 240
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/recyclerview/ExtrasHighlighter$ItemDecoration$getItemOffsets$1;

    invoke-direct {v1, p2, p1, p3}, Lcom/netflix/mediaclient/ui/extras/recyclerview/ExtrasHighlighter$ItemDecoration$getItemOffsets$1;-><init>(Landroid/view/View;Landroid/graphics/Rect;Landroidx/recyclerview/widget/RecyclerView;)V

    check-cast v1, Lo/alN;

    .line 237
    invoke-static {p4, v0, v1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ComponentName;)V
    .locals 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iget-object p3, p0, Lo/Ic$Application;->c:Lo/Ic;

    invoke-virtual {p3}, Lo/Ic;->d()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 295
    invoke-direct {p0}, Lo/Ic$Application;->e()V

    .line 300
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object p3

    instance-of v0, p3, Lo/OfLong;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p3, v1

    :cond_0
    check-cast p3, Lo/OfLong;

    if-eqz p3, :cond_5

    const/4 v0, 0x0

    .line 301
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ltz v2, :cond_6

    .line 302
    :goto_0
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 303
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$Intent;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 304
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Intent;->getAdapterPosition()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 307
    invoke-virtual {p3, v5}, Lo/OfLong;->c(I)Lo/BiConsumer;

    move-result-object v5

    instance-of v6, v5, Lo/GX;

    if-nez v6, :cond_1

    move-object v5, v1

    :cond_1
    check-cast v5, Lo/GX;

    if-eqz v5, :cond_4

    .line 309
    iget-object v6, p0, Lo/Ic$Application;->h:Landroid/graphics/Rect;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$Intent;->itemView:Landroid/view/View;

    const-string v7, "viewHolder.itemView"

    invoke-static {v4, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v4}, Lo/Ie;->c(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 310
    invoke-interface {v5}, Lo/GX;->o()Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, p0, Lo/Ic$Application;->g:Ljava/lang/Integer;

    invoke-static {v4, v6}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 313
    iget-object v4, p0, Lo/Ic$Application;->i:Landroid/graphics/Paint;

    iget v6, p0, Lo/Ic$Application;->e:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 315
    :cond_2
    iget-object v4, p0, Lo/Ic$Application;->i:Landroid/graphics/Paint;

    iget v6, p0, Lo/Ic$Application;->b:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 317
    :goto_1
    iget-object v4, p0, Lo/Ic$Application;->i:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    const/4 v6, 0x5

    if-le v4, v6, :cond_3

    .line 318
    iget-object v4, p0, Lo/Ic$Application;->h:Landroid/graphics/Rect;

    iget-object v6, p0, Lo/Ic$Application;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 320
    :cond_3
    sget-object v4, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->Companion:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$ActionBar;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$ActionBar;->e()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 321
    invoke-virtual {p0, p1, v3, v5}, Lo/Ic$Application;->c(Landroid/graphics/Canvas;Landroid/view/View;Lo/GX;)V

    :cond_4
    if-eq v0, v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "parent.adapter should be an instance of EpoxyControllerAdapter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 332
    :cond_6
    sget-object p3, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->Companion:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$ActionBar;

    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$ActionBar;->e()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 333
    iget-object p3, p0, Lo/Ic$Application;->a:Landroid/graphics/Paint;

    if-eqz p3, :cond_7

    .line 334
    invoke-virtual {p0, p1, p2}, Lo/Ic$Application;->e(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_7
    return-void
.end method
