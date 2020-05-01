.class public Lcom/netflix/mediaclient/util/ViewUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/util/ViewUtils$TaskDescription;,
        Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;,
        Lcom/netflix/mediaclient/util/ViewUtils$Visibility;
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 674
    new-instance v0, Lcom/netflix/mediaclient/util/ViewUtils$4;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/ViewUtils$4;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/util/ViewUtils;->c:Ljava/util/Comparator;

    return-void
.end method

.method public static varargs a(Landroid/view/View;[Ljava/lang/Integer;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "[",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 693
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 694
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 699
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 701
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static a(Landroid/widget/TextView;I)V
    .locals 1

    .line 781
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lo/PushbackReader;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "SPY-8702, tried to add %s frag %s twice"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ViewUtils"

    .line 110
    invoke-static {p1, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    invoke-interface {p1, p0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .locals 1

    .line 339
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 340
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 341
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 764
    sget v1, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->o:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 765
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 767
    invoke-virtual {p0, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    .line 768
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method public static b(Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 2

    const-string v0, "ViewUtils"

    const-string v1, "getRect"

    .line 517
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 521
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 522
    instance-of v1, p1, Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    const-string p0, "Rectangle was known from before, use it"

    .line 523
    invoke-static {v0, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    check-cast p1, Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    const-string p1, "Rectangle was NOT known from before, calculate"

    .line 526
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 530
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 531
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 534
    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 535
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_0
    return-object p1
.end method

.method public static b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)Landroid/view/View;
    .locals 2

    .line 745
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 746
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->f:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    .line 747
    new-instance p0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static b(Landroid/view/View;)V
    .locals 2

    .line 311
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 312
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->hg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 321
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/widget/TextView;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 923
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public static c(Landroid/content/Context;)I
    .locals 4

    .line 913
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 915
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "ViewUtils"

    const-string v0, "Status bar height uknown!"

    .line 918
    invoke-static {p0, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lo/RatingBar;Landroid/widget/ScrollView;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RatingBar;",
            "Landroid/widget/ScrollView;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 815
    invoke-virtual {p0}, Lo/RatingBar;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_5

    .line 819
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    .line 823
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 824
    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->getHitRect(Landroid/graphics/Rect;)V

    .line 826
    invoke-virtual {p0}, Lo/RatingBar;->getChildCount()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    :goto_0
    if-ge v2, p1, :cond_4

    .line 831
    invoke-virtual {p0, v2}, Lo/RatingBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 832
    invoke-virtual {v5, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne v4, v3, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    if-nez v5, :cond_3

    if-eq v4, v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-eq v4, v3, :cond_5

    if-eq v2, v3, :cond_5

    .line 843
    new-instance p0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_5
    :goto_3
    return-object v0
.end method

.method public static c(Landroid/view/View;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 369
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 370
    instance-of v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v1, :cond_1

    .line 371
    check-cast p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object p0

    .line 374
    :cond_1
    instance-of v1, p0, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_2

    .line 375
    check-cast p0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 376
    instance-of v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v1, :cond_2

    .line 377
    check-cast p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static c(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1027
    invoke-static {p0}, Lo/AccessibilityRecord;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0, p1}, Lo/AccessibilityRecord;->b(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public static c(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 392
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public static c(Landroid/widget/TextView;I)V
    .locals 2

    .line 935
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 936
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 938
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public static c(Lo/PushbackReader;Lo/SerializablePermission;Lo/UnsupportedEncodingException;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 87
    invoke-static {p3}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1}, Lo/SerializablePermission;->b()Z

    .line 94
    invoke-virtual {p0}, Lo/PushbackReader;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 98
    :cond_1
    invoke-virtual {p1, p3}, Lo/SerializablePermission;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_2

    .line 99
    invoke-virtual {p0, p2, p3}, Lo/PushbackReader;->show(Lo/UnsupportedEncodingException;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :cond_2
    invoke-static {p3, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->a(Ljava/lang/String;Lo/PushbackReader;)V

    .line 104
    invoke-virtual {p2}, Lo/UnsupportedEncodingException;->d()I

    :cond_3
    :goto_0
    return-void
.end method

.method public static d(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 152
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 153
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    aget v0, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View;
    .locals 1

    .line 741
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .line 502
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 503
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 504
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 505
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static d(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x8

    .line 280
    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->e:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 282
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->b:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x4

    .line 286
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static d(Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 193
    sget-object p1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->e:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->b:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    .line 194
    :goto_0
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    return-void
.end method

.method public static d(Landroid/widget/TextView;)V
    .locals 2

    .line 773
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static d(Landroid/widget/TextView;I)V
    .locals 1

    .line 357
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 400
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 401
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 403
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 404
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 405
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

    return-object v1
.end method

.method public static e(Landroid/view/View;)V
    .locals 2

    .line 301
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 302
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->iM:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static e(Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 164
    sget-object p1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->e:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->c:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    .line 165
    :goto_0
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    return-void
.end method

.method public static e(Landroid/widget/TextView;)V
    .locals 1

    const v0, 0x3f333333    # 0.7f

    .line 927
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public static e(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 712
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 714
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static f(Landroid/view/View;)V
    .locals 2

    .line 548
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 549
    invoke-static {v0}, Lo/aev;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    new-instance v1, Lcom/netflix/mediaclient/util/ViewUtils$2;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils$2;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 559
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 560
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 561
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 562
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->f(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static i(Landroid/view/View;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 986
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
