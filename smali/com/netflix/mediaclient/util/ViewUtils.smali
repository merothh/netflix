.class public Lcom/netflix/mediaclient/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field public static final ALPHA_OPAQUE:F = 1.0f

.field public static final ALPHA_TRANSPARENT:F = 0.0f

.field public static final ALPHA_VALUE_ON_CLICK:F = 0.7f

.field public static final ALPHA_VALUE_UNSELECTED_TEXT:F = 0.7f

.field public static final REVERSE_SORT_BY_BOTTOM:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ViewUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 672
    new-instance v0, Lcom/netflix/mediaclient/util/ViewUtils$4;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/ViewUtils$4;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/util/ViewUtils;->REVERSE_SORT_BY_BOTTOM:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public static activityIsDead(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 309
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 310
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 311
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    .line 313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static addActionBarPaddingView(Landroid/widget/ListView;)V
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    .line 738
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 740
    :cond_0
    return-void
.end method

.method public static addWebLinks(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 943
    if-nez p0, :cond_0

    .line 944
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Text view is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 947
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/InternalLinkify;->addWebLinks(Landroid/widget/TextView;)Z

    .line 948
    return-void
.end method

.method public static applyPaddingToGridItem(Landroid/view/View;III)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 239
    if-nez p0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 243
    :cond_0
    rem-int v0, p3, p2

    if-nez v0, :cond_1

    .line 244
    invoke-virtual {p0, v1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 251
    :goto_1
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 252
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 245
    :cond_1
    add-int/lit8 v0, p3, 0x1

    rem-int/2addr v0, p2

    if-nez v0, :cond_2

    .line 246
    invoke-virtual {p0, p1, p1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 248
    :cond_2
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method

.method public static applyUniformPaddingToGridItem(Landroid/view/View;III)V
    .locals 4

    .prologue
    .line 260
    if-nez p0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 264
    :cond_0
    rem-int v0, p3, p2

    if-nez v0, :cond_1

    .line 265
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 266
    :cond_1
    add-int/lit8 v0, p3, 0x1

    rem-int/2addr v0, p2

    if-nez v0, :cond_2

    .line 267
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 269
    :cond_2
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p1, 0x2

    div-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)Landroid/view/View;
    .locals 3

    .prologue
    .line 747
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 748
    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 749
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    return-object v0
.end method

.method public static createLayoutParams(Landroid/view/View;II)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 719
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 720
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 721
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 729
    :goto_0
    return-object v0

    .line 723
    :cond_0
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 724
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 726
    :cond_1
    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 727
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 729
    :cond_2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public static createShowToastMenuClickListener(Landroid/app/Activity;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/netflix/mediaclient/util/ViewUtils$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils$2;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static createShowToastViewClickListener(Landroid/app/Activity;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/netflix/mediaclient/util/ViewUtils$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils$1;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static createSquaredBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 398
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 399
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 401
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 402
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 403
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 405
    return-object v1
.end method

.method public static getDefaultActionBarHeight(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 766
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f010057

    aput v1, v0, v2

    .line 767
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 769
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 770
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 771
    return v1
.end method

.method public static getDisplaySize(Landroid/app/Activity;)Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 417
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 418
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 419
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 420
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 421
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public static getEstimatedTextSize(FLandroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 435
    if-nez p1, :cond_0

    .line 436
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 439
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    const-string/jumbo v0, "ViewUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-string/jumbo v0, "ViewUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 445
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 448
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 449
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 450
    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, p2, v2, v3, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 451
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 452
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 453
    const-string/jumbo v2, "ViewUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "h: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string/jumbo v2, "ViewUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "w: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string/jumbo v2, "ViewUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "realW: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_2
    new-instance v2, Landroid/graphics/Point;

    float-to-int v0, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public static getEstimatedTextWidth(FLandroid/graphics/Typeface;Ljava/lang/String;)F
    .locals 4

    .prologue
    .line 471
    if-nez p1, :cond_0

    .line 472
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 475
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    const-string/jumbo v0, "ViewUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string/jumbo v0, "ViewUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 482
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 483
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 484
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 485
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 486
    const-string/jumbo v1, "ViewUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "realW: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_2
    return v0
.end method

.method public static getHeightIfVisible(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 323
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ViewUtils;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHitRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 500
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 501
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 502
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 503
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 504
    return-void
.end method

.method public static getLocationOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 159
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 160
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 161
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v0, v0, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;Z)I
    .locals 4

    .prologue
    .line 897
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "navigation_bar_height"

    :goto_0
    const-string/jumbo v2, "dimen"

    const-string/jumbo v3, "android"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 900
    if-lez v0, :cond_1

    .line 901
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 905
    :goto_1
    return v0

    .line 897
    :cond_0
    const-string/jumbo v0, "navigation_bar_height_landscape"

    goto :goto_0

    .line 904
    :cond_1
    const-string/jumbo v0, "ViewUtils"

    const-string/jumbo v1, "Nav bar height uknown!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getNetflixActivitySafely(Landroid/view/View;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 335
    if-nez p0, :cond_0

    move-object v0, v1

    .line 351
    :goto_0
    return-object v0

    .line 339
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 340
    instance-of v2, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v2, :cond_1

    .line 341
    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    goto :goto_0

    .line 344
    :cond_1
    instance-of v2, v0, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_2

    .line 345
    check-cast v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 346
    instance-of v2, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v2, :cond_2

    .line 347
    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 351
    goto :goto_0
.end method

.method public static getRatingBarDataProviderSafely(Landroid/view/View;)Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 359
    if-nez p0, :cond_0

    move-object v0, v1

    .line 375
    :goto_0
    return-object v0

    .line 363
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 364
    instance-of v2, v0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;

    if-eqz v2, :cond_1

    .line 365
    check-cast v0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;

    goto :goto_0

    .line 368
    :cond_1
    instance-of v2, v0, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_2

    .line 369
    check-cast v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 370
    instance-of v2, v0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;

    if-eqz v2, :cond_2

    .line 371
    check-cast v0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 375
    goto :goto_0
.end method

.method public static getRect(Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 515
    const-string/jumbo v0, "ViewUtils"

    const-string/jumbo v1, "getRect"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    if-eqz p1, :cond_1

    .line 519
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 520
    instance-of v1, v0, Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 521
    const-string/jumbo v1, "ViewUtils"

    const-string/jumbo v2, "Rectangle was known from before, use it"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    check-cast v0, Landroid/graphics/Rect;

    .line 536
    :goto_0
    return-object v0

    .line 524
    :cond_0
    const-string/jumbo v0, "ViewUtils"

    const-string/jumbo v1, "Rectangle was NOT known from before, calculate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 528
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->getHitRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 529
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 532
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 533
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->getHitRect(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 915
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string/jumbo v2, "dimen"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 916
    if-lez v0, :cond_0

    .line 917
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 921
    :goto_0
    return v0

    .line 920
    :cond_0
    const-string/jumbo v0, "ViewUtils"

    const-string/jumbo v1, "Status bar height uknown!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs getViewsById(Landroid/view/View;[Ljava/lang/Integer;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "[",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 691
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 692
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 693
    if-nez v3, :cond_1

    .line 692
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 697
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 698
    if-eqz v3, :cond_0

    .line 699
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 702
    :cond_2
    return-object v1
.end method

.method public static getVisibilityAsString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    sparse-switch p0, :sswitch_data_0

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 301
    :sswitch_0
    const-string/jumbo v0, "GONE"

    goto :goto_0

    .line 302
    :sswitch_1
    const-string/jumbo v0, "INVISIBLE"

    goto :goto_0

    .line 303
    :sswitch_2
    const-string/jumbo v0, "VISIBLE"

    goto :goto_0

    .line 300
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getVisibilityAsString(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    if-nez p0, :cond_0

    const-string/jumbo v0, "null view"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->getVisibilityAsString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVisiblePositions(Lcom/netflix/mediaclient/android/widget/StaticGridView;Landroid/widget/ScrollView;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/widget/StaticGridView;",
            "Landroid/widget/ScrollView;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 817
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 848
    :goto_0
    return-object v0

    .line 821
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v2

    .line 822
    goto :goto_0

    .line 825
    :cond_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 826
    invoke-virtual {p1, v4}, Landroid/widget/ScrollView;->getHitRect(Landroid/graphics/Rect;)V

    .line 828
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getChildCount()I

    move-result v5

    .line 830
    const/4 v1, 0x0

    move v0, v3

    .line 832
    :goto_1
    if-ge v1, v5, :cond_6

    .line 833
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 834
    invoke-virtual {v6, v4}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v6

    .line 836
    if-eqz v6, :cond_5

    if-ne v0, v3, :cond_5

    move v0, v1

    .line 832
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 838
    :cond_5
    if-nez v6, :cond_4

    if-eq v0, v3, :cond_4

    .line 843
    :cond_6
    add-int/lit8 v4, v1, -0x1

    .line 844
    if-eq v0, v3, :cond_7

    if-eq v4, v3, :cond_7

    .line 845
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_7
    move-object v0, v2

    .line 848
    goto :goto_0
.end method

.method public static isNavigationBarBelowContent(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 878
    if-nez p0, :cond_0

    .line 879
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Activity can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 882
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 883
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 886
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNavigationBarRightOfContent(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 859
    if-nez p0, :cond_0

    .line 860
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Activity can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 862
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 863
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 864
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 867
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVisible(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 976
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logSafeShowDialogFragmentError(Ljava/lang/String;Landroid/app/DialogFragment;)V
    .locals 4

    .prologue
    .line 117
    const-string/jumbo v0, "SPY-8702, tried to add %s frag %s twice"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string/jumbo v1, "ViewUtils"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static modifyExitingWebLinks(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 963
    if-nez p0, :cond_0

    .line 964
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Text view is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 967
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/SpannableString;

    if-eqz v0, :cond_1

    .line 968
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    .line 969
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->modifyUrlHandling(Landroid/text/Spannable;)Z

    .line 973
    :goto_0
    return-void

    .line 971
    :cond_1
    const-string/jumbo v0, "ViewUtils"

    const-string/jumbo v1, "Not spannable!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static removeGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 2

    .prologue
    .line 386
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 387
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/api/Api16Util;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public static removeShadow(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 733
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 734
    return-void
.end method

.method public static resetImageDrawable(Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 1025
    if-nez p0, :cond_0

    .line 1026
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    const-string/jumbo v0, "ViewUtils"

    const-string/jumbo v1, "Request to resetImageDrawable with a null ImageView"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :goto_0
    return-void

    .line 1032
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static safeShowDialogFragment(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 106
    invoke-virtual {p1, p3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    .line 107
    invoke-virtual {p0, p2, p3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :cond_2
    invoke-static {p3, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->logSafeShowDialogFragmentError(Ljava/lang/String;Landroid/app/DialogFragment;)V

    .line 112
    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method public static safeShowDialogFragment(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 88
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    .line 89
    invoke-virtual {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {p2, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->logSafeShowDialogFragmentError(Ljava/lang/String;Landroid/app/DialogFragment;)V

    goto :goto_0
.end method

.method public static setDrawableTint(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 1017
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 1018
    return-void
.end method

.method public static setLayerType(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 998
    if-nez p0, :cond_1

    .line 999
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    const-string/jumbo v0, "ViewUtils"

    const-string/jumbo v1, "Request to set layer type for a view that was null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 1004
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1005
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static setLongTapListenersRecursivelyToShowContentDescriptionToast(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 546
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 547
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    new-instance v1, Lcom/netflix/mediaclient/util/ViewUtils$3;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils$3;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 557
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 558
    check-cast p0, Landroid/view/ViewGroup;

    .line 559
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 560
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setLongTapListenersRecursivelyToShowContentDescriptionToast(Landroid/view/View;)V

    .line 559
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_1
    return-void
.end method

.method public static varargs setOnTouchListeners(Landroid/view/View$OnTouchListener;[Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1044
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 1045
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1044
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1047
    :cond_0
    return-void
.end method

.method public static setPaddingBottom(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 807
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 808
    return-void
.end method

.method public static setPaddingEnd(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 799
    invoke-static {}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isCurrentLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 804
    :goto_0
    return-void

    .line 802
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static setPaddingStart(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 787
    invoke-static {}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isCurrentLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 792
    :goto_0
    return-void

    .line 790
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static setPaddingTop(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 795
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 796
    return-void
.end method

.method public static setTextOpacityToSelected(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 925
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 926
    return-void
.end method

.method public static setTextOpacityToUnselected(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 929
    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 930
    return-void
.end method

.method public static setTextViewColor(Landroid/widget/TextView;I)V
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    return-void
.end method

.method public static setTextViewSizeByRes(Landroid/widget/TextView;I)V
    .locals 2

    .prologue
    .line 783
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 784
    return-void
.end method

.method public static setTextViewToBold(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 775
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 776
    return-void
.end method

.method public static setTextViewToNormal(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 779
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 780
    return-void
.end method

.method public static setVisibility(Landroid/view/MenuItem;Z)V
    .locals 0

    .prologue
    .line 229
    if-eqz p0, :cond_0

    .line 230
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 232
    :cond_0
    return-void
.end method

.method public static setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V
    .locals 2

    .prologue
    .line 281
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const/16 v0, 0x8

    .line 286
    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->VISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    if-ne p1, v1, :cond_3

    .line 287
    const/4 v0, 0x0

    .line 292
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 288
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->INVISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    if-ne p1, v1, :cond_2

    .line 289
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public static setVisibleOrGone(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 172
    if-eqz p1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->VISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    .line 173
    :goto_0
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 174
    return-void

    .line 172
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->GONE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    goto :goto_0
.end method

.method public static setVisibleOrGoneAnimation(Landroid/view/View;ZZ)V
    .locals 1

    .prologue
    .line 185
    if-eqz p2, :cond_0

    .line 186
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 191
    :goto_0
    return-void

    .line 188
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->VISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    .line 189
    :goto_1
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    goto :goto_0

    .line 188
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->GONE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    goto :goto_1
.end method

.method public static setVisibleOrInvisible(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 201
    if-eqz p1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->VISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    .line 202
    :goto_0
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 203
    return-void

    .line 201
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->INVISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    goto :goto_0
.end method

.method public static setVisibleOrInvisibleAnimation(Landroid/view/View;ZZ)V
    .locals 1

    .prologue
    .line 214
    if-eqz p2, :cond_0

    .line 215
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 220
    :goto_0
    return-void

    .line 217
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->VISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    .line 218
    :goto_1
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    goto :goto_0

    .line 217
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->INVISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    goto :goto_1
.end method

.method public static showViews(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 706
    if-nez p0, :cond_1

    .line 715
    :cond_0
    return-void

    .line 710
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 711
    if-eqz v0, :cond_2

    .line 712
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static tintAndGet(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1073
    if-nez p0, :cond_0

    .line 1074
    const/4 v0, 0x0

    .line 1078
    :goto_0
    return-object v0

    .line 1076
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1077
    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method

.method public static tintAndGet(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1054
    if-nez p0, :cond_1

    .line 1055
    const/4 v0, 0x0

    .line 1065
    :cond_0
    :goto_0
    return-object v0

    .line 1057
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1058
    if-lez p2, :cond_2

    .line 1059
    invoke-virtual {v0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1061
    :cond_2
    if-eqz p1, :cond_0

    .line 1063
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method
