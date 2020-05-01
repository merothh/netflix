.class public Lcom/airbnb/epoxy/Carousel;
.super Lcom/airbnb/epoxy/EpoxyRecyclerView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/epoxy/Carousel$Activity;,
        Lcom/airbnb/epoxy/Carousel$Padding;
    }
.end annotation


# static fields
.field private static a:Lcom/airbnb/epoxy/Carousel$Activity;

.field private static b:I


# instance fields
.field private c:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/airbnb/epoxy/Carousel$1;

    invoke-direct {v0}, Lcom/airbnb/epoxy/Carousel$1;-><init>()V

    sput-object v0, Lcom/airbnb/epoxy/Carousel;->a:Lcom/airbnb/epoxy/Carousel$Activity;

    const/16 v0, 0x8

    .line 67
    sput v0, Lcom/airbnb/epoxy/Carousel;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/epoxy/EpoxyRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static b(Landroid/view/View;)I
    .locals 1

    .line 249
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 250
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    .line 254
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 255
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method private c(Z)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 222
    invoke-static {p0}, Lcom/airbnb/epoxy/Carousel;->d(Landroid/view/View;)I

    move-result p1

    .line 223
    invoke-virtual {p0}, Lcom/airbnb/epoxy/Carousel;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    .line 224
    invoke-virtual {p0}, Lcom/airbnb/epoxy/Carousel;->getClipToPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/epoxy/Carousel;->getPaddingRight()I

    move-result v0

    :cond_0
    sub-int/2addr p1, v0

    return p1

    .line 229
    :cond_1
    invoke-static {p0}, Lcom/airbnb/epoxy/Carousel;->b(Landroid/view/View;)I

    move-result p1

    .line 230
    invoke-virtual {p0}, Lcom/airbnb/epoxy/Carousel;->getPaddingTop()I

    move-result v1

    sub-int/2addr p1, v1

    .line 231
    invoke-virtual {p0}, Lcom/airbnb/epoxy/Carousel;->getClipToPadding()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/epoxy/Carousel;->getPaddingBottom()I

    move-result v0

    :cond_2
    sub-int/2addr p1, v0

    return p1
.end method

.method private static d(Landroid/view/View;)I
    .locals 1

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0

    .line 243
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 244
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static setDefaultGlobalSnapHelperFactory(Lcom/airbnb/epoxy/Carousel$Activity;)V
    .locals 0

    .line 129
    sput-object p0, Lcom/airbnb/epoxy/Carousel;->a:Lcom/airbnb/epoxy/Carousel$Activity;

    return-void
.end method

.method public static setDefaultItemSpacingDp(I)V
    .locals 0

    .line 276
    sput p0, Lcom/airbnb/epoxy/Carousel;->b:I

    return-void
.end method


# virtual methods
.method protected a()Lcom/airbnb/epoxy/Carousel$Activity;
    .locals 1

    .line 117
    sget-object v0, Lcom/airbnb/epoxy/Carousel;->a:Lcom/airbnb/epoxy/Carousel$Activity;

    return-object v0
.end method

.method protected c()I
    .locals 1

    .line 287
    sget v0, Lcom/airbnb/epoxy/Carousel;->b:I

    return v0
.end method

.method protected d()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->d()V

    .line 87
    invoke-virtual {p0}, Lcom/airbnb/epoxy/Carousel;->c()I

    move-result v0

    if-ltz v0, :cond_0

    .line 90
    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/Carousel;->setItemSpacingDp(I)V

    .line 92
    invoke-virtual {p0}, Lcom/airbnb/epoxy/Carousel;->getPaddingLeft()I

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/airbnb/epoxy/Carousel;->getPaddingRight()I

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/airbnb/epoxy/Carousel;->getPaddingTop()I

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/airbnb/epoxy/Carousel;->getPaddingBottom()I

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/Carousel;->setPaddingDp(I)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/epoxy/Carousel;->a()Lcom/airbnb/epoxy/Carousel$Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/airbnb/epoxy/Carousel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/Carousel$Activity;->d(Landroid/content/Context;)Lo/Annotation;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/Annotation;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/Carousel;->setRemoveAdapterWhenDetachedFromWindow(Z)V

    return-void
.end method

.method public e()V
    .locals 0

    .line 502
    invoke-super {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->e()V

    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 193
    iget v0, p0, Lcom/airbnb/epoxy/Carousel;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 195
    sget v1, Lo/AppGlobals$Activity;->c:I

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 197
    invoke-virtual {p0}, Lcom/airbnb/epoxy/Carousel;->b()Lo/BinaryOperator;

    move-result-object p1

    invoke-virtual {p1}, Lo/BinaryOperator;->e()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    int-to-float p1, p1

    .line 201
    iget v1, p0, Lcom/airbnb/epoxy/Carousel;->c:F

    mul-float p1, p1, v1

    float-to-int v1, p1

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/epoxy/Carousel;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->canScrollHorizontally()Z

    move-result p1

    .line 207
    invoke-direct {p0, p1}, Lcom/airbnb/epoxy/Carousel;->c(Z)I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    iget v2, p0, Lcom/airbnb/epoxy/Carousel;->c:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    if-eqz p1, :cond_1

    .line 211
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 213
    :cond_1
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    :goto_0
    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 261
    sget v0, Lo/AppGlobals$Activity;->c:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 263
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 265
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 266
    sget v0, Lo/AppGlobals$Activity;->c:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    .line 135
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setHasFixedSize(Z)V

    return-void
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 2

    if-ltz p1, :cond_2

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/epoxy/Carousel;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    .line 186
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    .line 187
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(I)V

    :cond_1
    return-void

    .line 179
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "numItemsToPrefetch must be greater than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setModels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    .line 497
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setModels(Ljava/util/List;)V

    return-void
.end method

.method public setNumViewsToShowOnScreen(F)V
    .locals 2

    .line 158
    iput p1, p0, Lcom/airbnb/epoxy/Carousel;->c:F

    float-to-double v0, p1

    .line 159
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/Carousel;->setInitialPrefetchItemCount(I)V

    return-void
.end method

.method public setPadding(Lcom/airbnb/epoxy/Carousel$Padding;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 323
    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/Carousel;->setPaddingDp(I)V

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p1, Lcom/airbnb/epoxy/Carousel$Padding;->h:Lcom/airbnb/epoxy/Carousel$Padding$PaddingType;

    sget-object v1, Lcom/airbnb/epoxy/Carousel$Padding$PaddingType;->b:Lcom/airbnb/epoxy/Carousel$Padding$PaddingType;

    if-ne v0, v1, :cond_1

    .line 325
    iget v0, p1, Lcom/airbnb/epoxy/Carousel$Padding;->c:I

    iget v1, p1, Lcom/airbnb/epoxy/Carousel$Padding;->a:I

    iget v2, p1, Lcom/airbnb/epoxy/Carousel$Padding;->d:I

    iget v3, p1, Lcom/airbnb/epoxy/Carousel$Padding;->b:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/airbnb/epoxy/Carousel;->setPadding(IIII)V

    .line 326
    iget p1, p1, Lcom/airbnb/epoxy/Carousel$Padding;->e:I

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/Carousel;->setItemSpacingPx(I)V

    goto :goto_0

    .line 327
    :cond_1
    iget-object v0, p1, Lcom/airbnb/epoxy/Carousel$Padding;->h:Lcom/airbnb/epoxy/Carousel$Padding$PaddingType;

    sget-object v1, Lcom/airbnb/epoxy/Carousel$Padding$PaddingType;->d:Lcom/airbnb/epoxy/Carousel$Padding$PaddingType;

    if-ne v0, v1, :cond_2

    .line 328
    iget v0, p1, Lcom/airbnb/epoxy/Carousel$Padding;->c:I

    .line 329
    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/Carousel;->d(I)I

    move-result v0

    iget v1, p1, Lcom/airbnb/epoxy/Carousel$Padding;->a:I

    invoke-virtual {p0, v1}, Lcom/airbnb/epoxy/Carousel;->d(I)I

    move-result v1

    iget v2, p1, Lcom/airbnb/epoxy/Carousel$Padding;->d:I

    invoke-virtual {p0, v2}, Lcom/airbnb/epoxy/Carousel;->d(I)I

    move-result v2

    iget v3, p1, Lcom/airbnb/epoxy/Carousel$Padding;->b:I

    invoke-virtual {p0, v3}, Lcom/airbnb/epoxy/Carousel;->d(I)I

    move-result v3

    .line 328
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/airbnb/epoxy/Carousel;->setPadding(IIII)V

    .line 330
    iget p1, p1, Lcom/airbnb/epoxy/Carousel$Padding;->e:I

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/Carousel;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/Carousel;->setItemSpacingPx(I)V

    goto :goto_0

    .line 331
    :cond_2
    iget-object v0, p1, Lcom/airbnb/epoxy/Carousel$Padding;->h:Lcom/airbnb/epoxy/Carousel$Padding$PaddingType;

    sget-object v1, Lcom/airbnb/epoxy/Carousel$Padding$PaddingType;->c:Lcom/airbnb/epoxy/Carousel$Padding$PaddingType;

    if-ne v0, v1, :cond_3

    .line 332
    iget v0, p1, Lcom/airbnb/epoxy/Carousel$Padding;->c:I

    .line 333
    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/Carousel;->a(I)I

    move-result v0

    iget v1, p1, Lcom/airbnb/epoxy/Carousel$Padding;->a:I

    .line 334
    invoke-virtual {p0, v1}, Lcom/airbnb/epoxy/Carousel;->a(I)I

    move-result v1

    iget v2, p1, Lcom/airbnb/epoxy/Carousel$Padding;->d:I

    .line 335
    invoke-virtual {p0, v2}, Lcom/airbnb/epoxy/Carousel;->a(I)I

    move-result v2

    iget v3, p1, Lcom/airbnb/epoxy/Carousel$Padding;->b:I

    .line 336
    invoke-virtual {p0, v3}, Lcom/airbnb/epoxy/Carousel;->a(I)I

    move-result v3

    .line 332
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/airbnb/epoxy/Carousel;->setPadding(IIII)V

    .line 337
    iget p1, p1, Lcom/airbnb/epoxy/Carousel$Padding;->e:I

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/Carousel;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/Carousel;->setItemSpacingPx(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setPaddingDp(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/epoxy/Carousel;->c()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/Carousel;->d(I)I

    move-result p1

    .line 310
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/airbnb/epoxy/Carousel;->setPadding(IIII)V

    .line 311
    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/Carousel;->setItemSpacingPx(I)V

    return-void
.end method

.method public setPaddingRes(I)V
    .locals 0

    .line 296
    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/Carousel;->a(I)I

    move-result p1

    .line 297
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/airbnb/epoxy/Carousel;->setPadding(IIII)V

    .line 298
    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/Carousel;->setItemSpacingPx(I)V

    return-void
.end method
