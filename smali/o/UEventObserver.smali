.class public Lo/UEventObserver;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/UEventObserver$TaskDescription;
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/TransactionTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lo/CharArrayReader$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CharArrayReader$Activity<",
            "Lo/Temperature;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:I

.field protected e:[Lo/Temperature;

.field private final f:Landroid/view/View$OnClickListener;

.field private g:I

.field private h:Lo/UEventObserver$TaskDescription;

.field private i:Landroid/content/res/ColorStateList;

.field private j:I

.field private k:Landroid/content/res/ColorStateList;

.field private l:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

.field private m:I

.field private o:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lo/UEventObserver;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance p1, Lo/CharArrayReader$StateListAnimator;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lo/CharArrayReader$StateListAnimator;-><init>(I)V

    iput-object p1, p0, Lo/UEventObserver;->b:Lo/CharArrayReader$Activity;

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lo/UEventObserver;->j:I

    .line 48
    iput p1, p0, Lo/UEventObserver;->g:I

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo/UEventObserver;->a:Ljava/util/List;

    .line 63
    invoke-virtual {p0}, Lo/UEventObserver;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lo/IHwInterface$Activity;->c:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lo/UEventObserver;->c:I

    .line 65
    invoke-virtual {p0}, Lo/UEventObserver;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lo/IHwInterface$Activity;->e:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lo/UEventObserver;->d:I

    .line 67
    new-instance p1, Lo/UEventObserver$5;

    invoke-direct {p1, p0}, Lo/UEventObserver$5;-><init>(Lo/UEventObserver;)V

    iput-object p1, p0, Lo/UEventObserver;->f:Landroid/view/View$OnClickListener;

    new-array p1, p2, [I

    .line 77
    iput-object p1, p0, Lo/UEventObserver;->o:[I

    return-void
.end method

.method private c()Lo/Temperature;
    .locals 2

    .line 325
    iget-object v0, p0, Lo/UEventObserver;->b:Lo/CharArrayReader$Activity;

    invoke-interface {v0}, Lo/CharArrayReader$Activity;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Temperature;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Lo/Temperature;

    invoke-virtual {p0}, Lo/UEventObserver;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/Temperature;-><init>(Landroid/content/Context;)V

    :cond_0
    return-object v0
.end method

.method static synthetic d(Lo/UEventObserver;)Lo/UEventObserver$TaskDescription;
    .locals 0

    .line 39
    iget-object p0, p0, Lo/UEventObserver;->h:Lo/UEventObserver$TaskDescription;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 259
    iget-object v0, p0, Lo/UEventObserver;->l:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->setUpdateSuspended(Z)V

    .line 260
    invoke-virtual {p0}, Lo/UEventObserver;->removeAllViews()V

    .line 261
    iget-object v0, p0, Lo/UEventObserver;->e:[Lo/Temperature;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 262
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 263
    iget-object v6, p0, Lo/UEventObserver;->b:Lo/CharArrayReader$Activity;

    invoke-interface {v6, v5}, Lo/CharArrayReader$Activity;->c(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lo/UEventObserver;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 267
    iput v2, p0, Lo/UEventObserver;->j:I

    .line 268
    iput v2, p0, Lo/UEventObserver;->g:I

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lo/UEventObserver;->e:[Lo/Temperature;

    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lo/UEventObserver;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lo/Temperature;

    iput-object v0, p0, Lo/UEventObserver;->e:[Lo/Temperature;

    const/4 v0, 0x0

    .line 273
    :goto_1
    iget-object v3, p0, Lo/UEventObserver;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    if-nez v0, :cond_2

    .line 276
    invoke-virtual {p0}, Lo/UEventObserver;->e()Lo/Temperature;

    move-result-object v3

    goto :goto_2

    .line 279
    :cond_2
    invoke-direct {p0}, Lo/UEventObserver;->c()Lo/Temperature;

    move-result-object v3

    .line 281
    :goto_2
    iget-object v4, p0, Lo/UEventObserver;->e:[Lo/Temperature;

    aput-object v3, v4, v0

    .line 282
    iget-object v4, p0, Lo/UEventObserver;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lo/Temperature;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 283
    iget-object v4, p0, Lo/UEventObserver;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lo/Temperature;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 284
    iget v4, p0, Lo/UEventObserver;->m:I

    invoke-virtual {v3, v4}, Lo/Temperature;->setItemBackground(I)V

    .line 285
    iget-object v4, p0, Lo/UEventObserver;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/TransactionTracker;

    invoke-virtual {v3, v4}, Lo/Temperature;->a(Lo/TransactionTracker;)V

    .line 286
    invoke-virtual {v3, v0}, Lo/Temperature;->setItemPosition(I)V

    .line 287
    invoke-virtual {v3, v1}, Lo/Temperature;->setClickable(Z)V

    .line 288
    iget-object v4, p0, Lo/UEventObserver;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lo/Temperature;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    invoke-virtual {p0, v3}, Lo/UEventObserver;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 291
    :cond_3
    iget-object v0, p0, Lo/UEventObserver;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iget v3, p0, Lo/UEventObserver;->g:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lo/UEventObserver;->g:I

    .line 292
    iget-object v0, p0, Lo/UEventObserver;->a:Ljava/util/List;

    iget v3, p0, Lo/UEventObserver;->g:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/TransactionTracker;

    invoke-virtual {v0, v1}, Lo/TransactionTracker;->a(Z)V

    .line 293
    iget-object v0, p0, Lo/UEventObserver;->l:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->setUpdateSuspended(Z)V

    return-void
.end method

.method public a(I)Z
    .locals 5

    .line 126
    invoke-virtual {p0}, Lo/UEventObserver;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 128
    div-int/2addr p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 130
    invoke-virtual {p0, v2}, Lo/UEventObserver;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 131
    instance-of v4, v3, Lo/Temperature;

    if-eqz v4, :cond_0

    .line 132
    check-cast v3, Lo/Temperature;

    invoke-virtual {v3, p1}, Lo/Temperature;->a(I)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public b()I
    .locals 1

    .line 354
    iget v0, p0, Lo/UEventObserver;->j:I

    return v0
.end method

.method public b(I)Lcom/netflix/android/widgetry/widget/tabs/BadgeView;
    .locals 5

    .line 371
    iget-object v0, p0, Lo/UEventObserver;->e:[Lo/Temperature;

    if-eqz v0, :cond_1

    .line 372
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 373
    invoke-virtual {v3}, Lo/Temperature;->getId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 374
    invoke-virtual {v3}, Lo/Temperature;->d()Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(I)V
    .locals 4

    .line 358
    iget-object v0, p0, Lo/UEventObserver;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 360
    iget-object v2, p0, Lo/UEventObserver;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/TransactionTracker;

    .line 361
    invoke-virtual {v2}, Lo/TransactionTracker;->c()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 362
    iput p1, p0, Lo/UEventObserver;->j:I

    .line 363
    iput v1, p0, Lo/UEventObserver;->g:I

    const/4 p1, 0x1

    .line 364
    invoke-virtual {v2, p1}, Lo/TransactionTracker;->a(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public d()V
    .locals 5

    .line 297
    iget-object v0, p0, Lo/UEventObserver;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 298
    iget-object v1, p0, Lo/UEventObserver;->e:[Lo/Temperature;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 300
    invoke-virtual {p0}, Lo/UEventObserver;->a()V

    return-void

    .line 303
    :cond_0
    iget v1, p0, Lo/UEventObserver;->j:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 306
    iget-object v3, p0, Lo/UEventObserver;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/TransactionTracker;

    .line 307
    invoke-virtual {v3}, Lo/TransactionTracker;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    invoke-virtual {v3}, Lo/TransactionTracker;->c()I

    move-result v3

    iput v3, p0, Lo/UEventObserver;->j:I

    .line 309
    iput v2, p0, Lo/UEventObserver;->g:I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    :cond_2
    iget v2, p0, Lo/UEventObserver;->j:I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 318
    iget-object v3, p0, Lo/UEventObserver;->l:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->setUpdateSuspended(Z)V

    .line 319
    iget-object v3, p0, Lo/UEventObserver;->e:[Lo/Temperature;

    aget-object v3, v3, v2

    iget-object v4, p0, Lo/UEventObserver;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/TransactionTracker;

    invoke-virtual {v3, v4}, Lo/Temperature;->a(Lo/TransactionTracker;)V

    .line 320
    iget-object v3, p0, Lo/UEventObserver;->l:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    invoke-virtual {v3, v1}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->setUpdateSuspended(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected e()Lo/Temperature;
    .locals 1

    .line 333
    invoke-direct {p0}, Lo/UEventObserver;->c()Lo/Temperature;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TransactionTracker;",
            ">;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lo/UEventObserver;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    iget-object v0, p0, Lo/UEventObserver;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 144
    invoke-virtual {p0}, Lo/UEventObserver;->getChildCount()I

    move-result p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge p3, p1, :cond_2

    .line 149
    invoke-virtual {p0, p3}, Lo/UEventObserver;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    goto :goto_2

    .line 153
    :cond_0
    invoke-static {p0}, Lo/FilterWriter;->h(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sub-int v2, p4, v0

    .line 154
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v1, v3, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 156
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 158
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 88
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 90
    invoke-virtual {p0, p1}, Lo/UEventObserver;->a(I)Z

    move-result p2

    invoke-virtual {p0, p2}, Lo/UEventObserver;->setLabelVisibility(Z)V

    .line 92
    invoke-virtual {p0}, Lo/UEventObserver;->getChildCount()I

    move-result p2

    .line 94
    iget v0, p0, Lo/UEventObserver;->d:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, p2

    .line 96
    :goto_0
    div-int v3, p1, v3

    .line 97
    iget v4, p0, Lo/UEventObserver;->c:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int v4, v3, p2

    sub-int/2addr p1, v4

    const/4 v4, 0x0

    move v5, p1

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p2, :cond_2

    .line 100
    iget-object v6, p0, Lo/UEventObserver;->o:[I

    aput v3, v6, p1

    if-lez v5, :cond_1

    .line 102
    aget v7, v6, p1

    add-int/2addr v7, v2

    aput v7, v6, p1

    add-int/lit8 v5, v5, -0x1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge p1, p2, :cond_4

    .line 109
    invoke-virtual {p0, p1}, Lo/UEventObserver;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 110
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    goto :goto_3

    .line 113
    :cond_3
    iget-object v5, p0, Lo/UEventObserver;->o:[I

    aget v5, v5, p1

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v5, v0}, Landroid/view/View;->measure(II)V

    .line 115
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 116
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 117
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 121
    :cond_4
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 120
    invoke-static {v2, p1, v4}, Lo/FilterWriter;->d(III)I

    move-result p1

    iget p2, p0, Lo/UEventObserver;->d:I

    .line 122
    invoke-static {p2, v0, v4}, Lo/FilterWriter;->d(III)I

    move-result p2

    .line 119
    invoke-virtual {p0, p1, p2}, Lo/UEventObserver;->setMeasuredDimension(II)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 168
    iput-object p1, p0, Lo/UEventObserver;->i:Landroid/content/res/ColorStateList;

    .line 169
    iget-object v0, p0, Lo/UEventObserver;->e:[Lo/Temperature;

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 171
    invoke-virtual {v3, p1}, Lo/Temperature;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 4

    .line 238
    iput p1, p0, Lo/UEventObserver;->m:I

    .line 239
    iget-object v0, p0, Lo/UEventObserver;->e:[Lo/Temperature;

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 241
    invoke-virtual {v3, p1}, Lo/Temperature;->setItemBackground(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 216
    iput-object p1, p0, Lo/UEventObserver;->k:Landroid/content/res/ColorStateList;

    .line 217
    iget-object v0, p0, Lo/UEventObserver;->e:[Lo/Temperature;

    if-nez v0, :cond_0

    return-void

    .line 218
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 219
    invoke-virtual {v3, p1}, Lo/Temperature;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLabelVisibility(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 337
    :goto_0
    invoke-virtual {p0}, Lo/UEventObserver;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 338
    invoke-virtual {p0, v0}, Lo/UEventObserver;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 339
    instance-of v2, v1, Lo/Temperature;

    if-eqz v2, :cond_0

    .line 340
    check-cast v1, Lo/Temperature;

    invoke-virtual {v1, p1}, Lo/Temperature;->setLabelVisibility(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSelectedTab(Lo/TransactionTracker;)V
    .locals 3

    .line 346
    iget-object v0, p0, Lo/UEventObserver;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/TransactionTracker;

    .line 347
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lo/TransactionTracker;->a(Z)V

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {p0}, Lo/UEventObserver;->d()V

    return-void
.end method

.method public setTabClickListener(Lo/UEventObserver$TaskDescription;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lo/UEventObserver;->h:Lo/UEventObserver$TaskDescription;

    return-void
.end method

.method public setTabView(Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lo/UEventObserver;->l:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    return-void
.end method
