.class public Landroid/support/design/widget/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation runtime Landroid/support/v4/view/ViewPager$DecorView;
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field static final DEFAULT_GAP_TEXT_ICON:I = 0x8

.field private static final DEFAULT_HEIGHT:I = 0x30

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48

.field static final FIXED_WRAP_GUTTER_MIN:I = 0x10

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field private static final INVALID_WIDTH:I = -0x1

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field static final MOTION_NON_ADJACENT_OFFSET:I = 0x18

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38

.field private static final sTabPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/design/widget/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

.field private mContentInsetStart:I

.field private mCurrentVpSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

.field mMode:I

.field private mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

.field private mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mPagerAdapterObserver:Landroid/database/DataSetObserver;

.field private final mRequestedTabMaxWidth:I

.field private final mRequestedTabMinWidth:I

.field private mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private final mScrollableTabMinWidth:I

.field private mSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

.field private final mSelectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$OnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

.field private mSetupViewPagerImplicitly:Z

.field final mTabBackgroundResId:I

.field mTabGravity:I

.field mTabMaxWidth:I

.field mTabPaddingBottom:I

.field mTabPaddingEnd:I

.field mTabPaddingStart:I

.field mTabPaddingTop:I

.field private final mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

.field mTabTextAppearance:I

.field mTabTextColors:Landroid/content/res/ColorStateList;

.field mTabTextMultiLineSize:F

.field mTabTextSize:F

.field private final mTabViewPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/design/widget/TabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 156
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/support/design/widget/TabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 282
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 286
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 289
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    .line 254
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    .line 278
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    .line 291
    invoke-static {p1}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 294
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 297
    new-instance v0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    .line 298
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v4, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 301
    sget-object v0, Landroid/support/design/R$styleable;->TabLayout:[I

    sget v1, Landroid/support/design/R$style;->Widget_Design_TabLayout:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 304
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorHeight:I

    .line 305
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 304
    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 306
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 308
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPadding:I

    .line 309
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    .line 310
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingStart:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    .line 312
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingTop:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    .line 314
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingEnd:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    .line 316
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingBottom:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    .line 319
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabTextAppearance:I

    sget v2, Landroid/support/design/R$style;->TextAppearance_Design_Tab:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    .line 323
    iget v1, p0, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 326
    :try_start_0
    sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroid/support/design/widget/TabLayout;->mTabTextSize:F

    .line 328
    sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 334
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 339
    :cond_0
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 344
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, v1}, Landroid/support/design/widget/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 347
    :cond_1
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabMinWidth:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMinWidth:I

    .line 349
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabMaxWidth:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    .line 351
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabBackground:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I

    .line 352
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabContentStart:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mContentInsetStart:I

    .line 353
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabMode:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    .line 354
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabGravity:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    .line 355
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 358
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 359
    sget v1, Landroid/support/design/R$dimen;->design_tab_text_size_2line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabTextMultiLineSize:F

    .line 360
    sget v1, Landroid/support/design/R$dimen;->design_tab_scrollable_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->mScrollableTabMinWidth:I

    .line 363
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 364
    return-void

    .line 331
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private addTabFromItemView(Landroid/support/design/widget/TabItem;)V
    .locals 2

    .prologue
    .line 481
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 482
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    .line 485
    :cond_0
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 486
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$Tab;

    .line 488
    :cond_1
    iget v1, p1, Landroid/support/design/widget/TabItem;->mCustomLayout:I

    if-eqz v1, :cond_2

    .line 489
    iget v1, p1, Landroid/support/design/widget/TabItem;->mCustomLayout:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 491
    :cond_2
    invoke-virtual {p1}, Landroid/support/design/widget/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 492
    invoke-virtual {p1}, Landroid/support/design/widget/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    .line 494
    :cond_3
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 495
    return-void
.end method

.method private addTabView(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 4

    .prologue
    .line 944
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    .line 945
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 946
    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 969
    instance-of v0, p1, Landroid/support/design/widget/TabItem;

    if-eqz v0, :cond_0

    .line 970
    check-cast p1, Landroid/support/design/widget/TabItem;

    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addTabFromItemView(Landroid/support/design/widget/TabItem;)V

    .line 974
    return-void

    .line 972
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private animateToTab(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1065
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1099
    :goto_0
    return-void

    .line 1069
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    .line 1070
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->childrenNeedLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1073
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_0

    .line 1077
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getScrollX()I

    move-result v0

    .line 1078
    invoke-direct {p0, p1, v1}, Landroid/support/design/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result v1

    .line 1080
    if-eq v0, v1, :cond_4

    .line 1081
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-nez v2, :cond_3

    .line 1082
    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 1083
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    sget-object v3, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1084
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(J)V

    .line 1085
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    new-instance v3, Landroid/support/design/widget/TabLayout$1;

    invoke-direct {v3, p0}, Landroid/support/design/widget/TabLayout$1;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->addUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 1093
    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2, v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat;->setIntValues(II)V

    .line 1094
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    .line 1098
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    const/16 v1, 0x12c

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    goto :goto_0
.end method

.method private applyModeAndGravity()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1183
    .line 1184
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez v0, :cond_0

    .line 1186
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mContentInsetStart:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1188
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-static {v2, v0, v1, v1, v1}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1190
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 1199
    :goto_1
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout;->updateTabViews(Z)V

    .line 1200
    return-void

    .line 1192
    :pswitch_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setGravity(I)V

    goto :goto_1

    .line 1195
    :pswitch_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setGravity(I)V

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateScrollXForTab(IF)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1166
    iget v1, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez v1, :cond_1

    .line 1167
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1168
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    add-int/lit8 v2, p1, 0x1

    .line 1169
    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1171
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1172
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1174
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, v2

    .line 1176
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1177
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1179
    :cond_1
    return v0

    .line 1169
    :cond_2
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_0

    :cond_3
    move v1, v0

    .line 1171
    goto :goto_1
.end method

.method private configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V
    .locals 3

    .prologue
    .line 934
    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 935
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 937
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 938
    add-int/lit8 v0, p2, 0x1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 939
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 938
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 941
    :cond_0
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 2041
    new-array v0, v1, [[I

    .line 2042
    new-array v1, v1, [I

    .line 2043
    const/4 v2, 0x0

    .line 2045
    sget-object v3, Landroid/support/design/widget/TabLayout;->SELECTED_STATE_SET:[I

    aput-object v3, v0, v2

    .line 2046
    aput p1, v1, v2

    .line 2047
    const/4 v2, 0x1

    .line 2050
    sget-object v3, Landroid/support/design/widget/TabLayout;->EMPTY_STATE_SET:[I

    aput-object v3, v0, v2

    .line 2051
    aput p0, v1, v2

    .line 2054
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 977
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 979
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 980
    return-object v0
.end method

.method private createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;
    .locals 2

    .prologue
    .line 923
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    .line 924
    :goto_0
    if-nez v0, :cond_0

    .line 925
    new-instance v0, Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/TabLayout$TabView;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    .line 927
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$TabView;->setTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 928
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setFocusable(Z)V

    .line 929
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setMinimumWidth(I)V

    .line 930
    return-object v0

    .line 923
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dispatchTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2

    .prologue
    .line 1160
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1161
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-interface {v0, p1}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1160
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1163
    :cond_0
    return-void
.end method

.method private dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2

    .prologue
    .line 1148
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1149
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-interface {v0, p1}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1148
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1151
    :cond_0
    return-void
.end method

.method private dispatchTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2

    .prologue
    .line 1154
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1155
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-interface {v0, p1}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1154
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1157
    :cond_0
    return-void
.end method

.method private getDefaultHeight()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2058
    .line 2059
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    .line 2060
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    .line 2061
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2062
    const/4 v0, 0x1

    .line 2066
    :goto_1
    if-eqz v0, :cond_1

    const/16 v0, 0x48

    :goto_2
    return v0

    .line 2059
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2066
    :cond_1
    const/16 v0, 0x30

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private getScrollPosition()F
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getIndicatorPosition()F

    move-result v0

    return v0
.end method

.method private getTabMinWidth()I
    .locals 2

    .prologue
    .line 2070
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMinWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2072
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMinWidth:I

    .line 2075
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/TabLayout;->mScrollableTabMinWidth:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTabScrollRange()I
    .locals 3

    .prologue
    .line 873
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 874
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 873
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private removeTabViewAt(I)V
    .locals 2

    .prologue
    .line 1055
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    .line 1056
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->removeViewAt(I)V

    .line 1057
    if-eqz v0, :cond_0

    .line 1058
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabView;->reset()V

    .line 1059
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1061
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->requestLayout()V

    .line 1062
    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1102
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v3

    .line 1103
    if-ge p1, v3, :cond_1

    move v2, v1

    .line 1104
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1105
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1106
    if-ne v2, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 1104
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1106
    goto :goto_1

    .line 1109
    :cond_1
    return-void
.end method

.method private setupWithViewPager(Landroid/support/v4/view/ViewPager;ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 773
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 778
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mAdapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    if-eqz v0, :cond_1

    .line 779
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mAdapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 783
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mCurrentVpSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_2

    .line 785
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mCurrentVpSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->removeOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 786
    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->mCurrentVpSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    .line 789
    :cond_2
    if-eqz p1, :cond_6

    .line 790
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 793
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    if-nez v0, :cond_3

    .line 794
    new-instance v0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    .line 796
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->reset()V

    .line 797
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 800
    new-instance v0, Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v0, p1}, Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->mCurrentVpSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    .line 801
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mCurrentVpSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 803
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 804
    if-eqz v0, :cond_4

    .line 807
    invoke-virtual {p0, v0, p2}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    .line 811
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mAdapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    if-nez v0, :cond_5

    .line 812
    new-instance v0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$AdapterChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->mAdapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    .line 814
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mAdapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    invoke-virtual {v0, p2}, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->setAutoRefresh(Z)V

    .line 815
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mAdapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 818
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 826
    :goto_0
    iput-boolean p3, p0, Landroid/support/design/widget/TabLayout;->mSetupViewPagerImplicitly:Z

    .line 827
    return-void

    .line 822
    :cond_6
    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 823
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    goto :goto_0
.end method

.method private updateAllTabs()V
    .locals 3

    .prologue
    .line 917
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 918
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->updateView()V

    .line 917
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 920
    :cond_0
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    .prologue
    .line 984
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    if-nez v0, :cond_0

    .line 985
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 986
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 991
    :goto_0
    return-void

    .line 988
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 989
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method


# virtual methods
.method public addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_0
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 438
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;I)V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    .line 449
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    if-eq v0, p0, :cond_0

    .line 470
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V

    .line 473
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addTabView(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 475
    if-eqz p3, :cond_1

    .line 476
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 478
    :cond_1
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    .line 459
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 950
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 951
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 955
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 956
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 965
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 966
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 960
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 961
    return-void
.end method

.method public clearOnTabSelectedListeners()V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 546
    return-void
.end method

.method dpToPx(I)I
    .locals 2

    .prologue
    .line 994
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 2084
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;
    .locals 1

    .prologue
    .line 580
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .locals 1

    .prologue
    .line 704
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    return v0
.end method

.method getTabMaxWidth()I
    .locals 1

    .prologue
    .line 2088
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    return v0
.end method

.method public getTabMode()I
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    return v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public newTab()Landroid/support/design/widget/TabLayout$Tab;
    .locals 2

    .prologue
    .line 557
    sget-object v0, Landroid/support/design/widget/TabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    .line 558
    if-nez v0, :cond_0

    .line 559
    new-instance v0, Landroid/support/design/widget/TabLayout$Tab;

    invoke-direct {v0}, Landroid/support/design/widget/TabLayout$Tab;-><init>()V

    .line 561
    :cond_0
    iput-object p0, v0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    .line 562
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;

    move-result-object v1

    iput-object v1, v0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    .line 563
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 847
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 849
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 852
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 853
    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 856
    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v0, v2, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;ZZ)V

    .line 859
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 863
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 865
    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->mSetupViewPagerImplicitly:Z

    if-eqz v0, :cond_0

    .line 867
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 868
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/TabLayout;->mSetupViewPagerImplicitly:Z

    .line 870
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1001
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getDefaultHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v0, v3

    .line 1002
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1013
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1014
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1017
    iget v3, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    if-lez v3, :cond_2

    iget v0, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    .line 1019
    :goto_1
    iput v0, p0, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    .line 1023
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 1025
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getChildCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1028
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1031
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 1043
    :goto_2
    if-eqz v0, :cond_1

    .line 1045
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v0

    .line 1046
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1045
    invoke-static {p2, v0, v1}, Landroid/support/design/widget/TabLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 1048
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v1

    .line 1047
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1049
    invoke-virtual {v3, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1052
    :cond_1
    return-void

    .line 1005
    :sswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1004
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 1009
    :sswitch_1
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 1017
    :cond_2
    const/16 v3, 0x38

    .line 1019
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_1

    .line 1035
    :pswitch_0
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-ge v0, v4, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2

    .line 1039
    :pswitch_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-eq v0, v4, :cond_4

    :goto_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    .line 1002
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch

    .line 1031
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method populateFromPagerAdapter()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 898
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->removeAllTabs()V

    .line 900
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_1

    .line 901
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    move v0, v1

    .line 902
    :goto_0
    if-ge v0, v2, :cond_0

    .line 903
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 902
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 907
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    if-lez v2, :cond_1

    .line 908
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 909
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 910
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 914
    :cond_1
    return-void
.end method

.method public removeAllTabs()V
    .locals 3

    .prologue
    .line 637
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 638
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->removeTabViewAt(I)V

    .line 637
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 641
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    .line 643
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 644
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->reset()V

    .line 645
    sget-object v2, Landroid/support/design/widget/TabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v2, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_1

    .line 648
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 649
    return-void
.end method

.method public removeOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 539
    return-void
.end method

.method public removeTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2

    .prologue
    .line 599
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    if-eq v0, p0, :cond_0

    .line 600
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab does not belong to this TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->removeTabAt(I)V

    .line 604
    return-void
.end method

.method public removeTabAt(I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 613
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    move v1, v0

    .line 614
    :goto_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->removeTabViewAt(I)V

    .line 616
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    .line 617
    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->reset()V

    .line 619
    sget-object v3, Landroid/support/design/widget/TabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v3, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 622
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, p1

    .line 623
    :goto_1
    if-ge v3, v4, :cond_2

    .line 624
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 623
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move v1, v2

    .line 613
    goto :goto_0

    .line 627
    :cond_2
    if-ne v1, p1, :cond_3

    .line 628
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 630
    :cond_3
    return-void

    .line 628
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    goto :goto_2
.end method

.method selectTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1

    .prologue
    .line 1112
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 1113
    return-void
.end method

.method selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1116
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 1118
    if-ne v2, p1, :cond_1

    .line 1119
    if-eqz v2, :cond_0

    .line 1120
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->dispatchTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1121
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->animateToTab(I)V

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 1124
    :cond_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    .line 1125
    :goto_1
    if-eqz p2, :cond_3

    .line 1126
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v3

    if-ne v3, v1, :cond_6

    :cond_2
    if-eq v0, v1, :cond_6

    .line 1129
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 1133
    :goto_2
    if-eq v0, v1, :cond_3

    .line 1134
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    .line 1137
    :cond_3
    if-eqz v2, :cond_4

    .line 1138
    invoke-direct {p0, v2}, Landroid/support/design/widget/TabLayout;->dispatchTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1140
    :cond_4
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 1141
    if-eqz p1, :cond_0

    .line 1142
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1124
    goto :goto_1

    .line 1131
    :cond_6
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->animateToTab(I)V

    goto :goto_2
.end method

.method public setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 505
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->removeOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 510
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    .line 511
    if-eqz p1, :cond_1

    .line 512
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 514
    :cond_1
    return-void
.end method

.method setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 883
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 885
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 887
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_1

    .line 888
    new-instance v0, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 890
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 894
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->populateFromPagerAdapter()V

    .line 895
    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZZ)V

    .line 400
    return-void
.end method

.method setScrollPosition(IFZZ)V
    .locals 3

    .prologue
    .line 404
    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 405
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    if-eqz p4, :cond_2

    .line 411
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1, p2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setIndicatorPositionFromTabPosition(IF)V

    .line 415
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 416
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 418
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/support/design/widget/TabLayout;->scrollTo(II)V

    .line 421
    if-eqz p3, :cond_0

    .line 422
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    goto :goto_0
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 375
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 386
    return-void
.end method

.method public setTabGravity(I)V
    .locals 1

    .prologue
    .line 691
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    if-eq v0, p1, :cond_0

    .line 692
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    .line 693
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 695
    :cond_0
    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    if-eq p1, v0, :cond_0

    .line 668
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    .line 669
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 671
    :cond_0
    return-void
.end method

.method public setTabTextColors(II)V
    .locals 1

    .prologue
    .line 734
    invoke-static {p1, p2}, Landroid/support/design/widget/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 735
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 714
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 715
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->updateAllTabs()V

    .line 717
    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 836
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    .line 837
    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;Z)V

    .line 747
    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;Z)V
    .locals 1

    .prologue
    .line 768
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;ZZ)V

    .line 769
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 842
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateTabViews(Z)V
    .locals 3

    .prologue
    .line 1203
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1204
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1205
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1206
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1207
    if-eqz p1, :cond_0

    .line 1208
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1203
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1211
    :cond_1
    return-void
.end method
