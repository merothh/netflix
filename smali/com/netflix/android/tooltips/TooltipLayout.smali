.class public Lcom/netflix/android/tooltips/TooltipLayout;
.super Landroid/view/ViewGroup;
.source "TooltipLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Tooltip"

.field private static final sDebug:Z


# instance fields
.field private mAccentColor:I

.field private mAnimator:Landroid/view/ViewPropertyAnimator;

.field private final mArrow:Landroid/graphics/Rect;

.field private mArrowCenterXInTooltipBounds:I

.field private mBackgroundColor:I

.field private mCallback:Lcom/netflix/android/tooltips/Tooltip$Callback;

.field private mDetail:Landroid/widget/TextView;

.field private mGravity:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mLastMeasuredHeight:I

.field private mLastMeasuredWidth:I

.field private final mLocationHelper:[I

.field private final mLocationHelperParent:[I

.field private mParent:Landroid/view/View;

.field private final mScrimPaint:Landroid/graphics/Paint;

.field private mTarget:Landroid/view/View;

.field private final mTargetBounds:Landroid/graphics/RectF;

.field private mTitle:Landroid/widget/TextView;

.field private mTooltip:Landroid/view/ViewGroup;

.field private final mTooltipDefaultSize:I

.field private final mTooltipDesignDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

.field private final mTooltipElevation:I

.field private final mTooltipMaxWidth:I

.field private final mTooltipViewBounds:Landroid/graphics/Rect;

.field private mUserOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/android/tooltips/TooltipLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x50

    iput v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mGravity:I

    iput v3, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mLastMeasuredWidth:I

    iput v3, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mLastMeasuredHeight:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTargetBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipViewBounds:Landroid/graphics/Rect;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mLocationHelper:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mLocationHelperParent:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mArrow:Landroid/graphics/Rect;

    new-instance v0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    invoke-direct {v0, p0, v5}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;-><init>(Lcom/netflix/android/tooltips/TooltipLayout;Lcom/netflix/android/tooltips/TooltipLayout$1;)V

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipDesignDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mScrimPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/android/tooltips/R$color;->tooltip_accent_color:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mAccentColor:I

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/android/tooltips/R$color;->tooltip_background_color:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mBackgroundColor:I

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/android/tooltips/R$dimen;->tooltip_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipMaxWidth:I

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/android/tooltips/R$dimen;->tooltip_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipElevation:I

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mArrow:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/android/tooltips/R$dimen;->tooltip_arrow_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mArrow:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/android/tooltips/R$dimen;->tooltip_arrow_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/android/tooltips/R$dimen;->tooltip_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipDefaultSize:I

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mHighlightPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mHighlightPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/android/tooltips/R$dimen;->tooltip_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/netflix/android/tooltips/R$color;->tooltip_scrim_color:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mScrimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Lcom/netflix/android/tooltips/TooltipLayout$ScrimDrawable;

    invoke-direct {v0, p0, v5}, Lcom/netflix/android/tooltips/TooltipLayout$ScrimDrawable;-><init>(Lcom/netflix/android/tooltips/TooltipLayout;Lcom/netflix/android/tooltips/TooltipLayout$1;)V

    invoke-virtual {p0, v0}, Lcom/netflix/android/tooltips/TooltipLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v4, v5}, Lcom/netflix/android/tooltips/TooltipLayout;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0, v4}, Lcom/netflix/android/tooltips/TooltipLayout;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->requestFocus()Z

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/android/tooltips/TooltipLayout;)I
    .locals 1

    iget v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mBackgroundColor:I

    return v0
.end method

.method static synthetic access$1200(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltip:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/android/tooltips/TooltipLayout;)I
    .locals 1

    iget v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mGravity:I

    return v0
.end method

.method static synthetic access$1500(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mArrow:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/netflix/android/tooltips/TooltipLayout;)I
    .locals 1

    iget v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mArrowCenterXInTooltipBounds:I

    return v0
.end method

.method static synthetic access$202(Lcom/netflix/android/tooltips/TooltipLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netflix/android/tooltips/TooltipLayout;)Lcom/netflix/android/tooltips/Tooltip$Callback;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mCallback:Lcom/netflix/android/tooltips/Tooltip$Callback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mUserOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mScrimPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTargetBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mHighlightPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/android/tooltips/TooltipLayout;)I
    .locals 1

    iget v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mAccentColor:I

    return v0
.end method

.method private debug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method dismiss(Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mAnimator:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x10e0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mAnimator:Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mAnimator:Landroid/view/ViewPropertyAnimator;

    new-instance v2, Lcom/netflix/android/tooltips/TooltipLayout$2;

    invoke-direct {v2, p0, v0}, Lcom/netflix/android/tooltips/TooltipLayout$2;-><init>(Lcom/netflix/android/tooltips/TooltipLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mAnimator:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/netflix/android/tooltips/TooltipLayout;->dismiss(Landroid/view/ViewGroup;)V

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->generateDefaultLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/android/tooltips/TooltipLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/android/tooltips/TooltipLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getTarget()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTarget:Landroid/view/View;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mParent:Landroid/view/View;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mParent:Landroid/view/View;

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    sget v0, Lcom/netflix/android/tooltips/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/netflix/android/tooltips/TooltipLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTitle:Landroid/widget/TextView;

    sget v0, Lcom/netflix/android/tooltips/R$id;->detail:I

    invoke-virtual {p0, v0}, Lcom/netflix/android/tooltips/TooltipLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mDetail:Landroid/widget/TextView;

    sget v0, Lcom/netflix/android/tooltips/R$id;->tooltip:I

    invoke-virtual {p0, v0}, Lcom/netflix/android/tooltips/TooltipLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltip:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltip:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipDesignDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltip:Landroid/view/ViewGroup;

    new-instance v1, Lcom/netflix/android/tooltips/TooltipLayout$3;

    invoke-direct {v1, p0}, Lcom/netflix/android/tooltips/TooltipLayout$3;-><init>(Lcom/netflix/android/tooltips/TooltipLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltip:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipViewBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipViewBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipViewBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipViewBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mParent:Landroid/view/View;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mLastMeasuredWidth:I

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getMeasuredWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mLastMeasuredHeight:I

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getMeasuredHeight()I

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mLocationHelper:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mLocationHelperParent:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mLocationHelper:[I

    aget v1, v0, v3

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mLocationHelperParent:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mLocationHelper:[I

    aget v1, v0, v6

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mLocationHelperParent:[I

    aget v2, v2, v6

    sub-int/2addr v1, v2

    aput v1, v0, v6

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTargetBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mLocationHelper:[I

    aget v1, v1, v3

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTargetBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mLocationHelper:[I

    aget v1, v1, v6

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTargetBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mLocationHelper:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTargetBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mLocationHelper:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipMaxWidth:I

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltip:Landroid/view/ViewGroup;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move-object v0, p0

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/android/tooltips/TooltipLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltip:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipViewBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTargetBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipViewBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipViewBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltip:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipViewBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTargetBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    float-to-int v2, v2

    iget-object v4, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltip:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipViewBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipViewBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltip:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipViewBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getMeasuredWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipViewBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltip:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipViewBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    :cond_1
    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipViewBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltip:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipDefaultSize:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getMeasuredHeight()I

    move-result v2

    if-le v1, v2, :cond_4

    const/16 v1, 0x30

    iput v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mGravity:I

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipViewBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTargetBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipViewBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipViewBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltip:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :goto_0
    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTargetBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipViewBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mArrowCenterXInTooltipBounds:I

    iget v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mArrowCenterXInTooltipBounds:I

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mArrow:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    iget v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mArrowCenterXInTooltipBounds:I

    iget-object v3, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mArrow:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getLayoutDirection()I

    move-result v1

    if-ne v1, v6, :cond_5

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltip:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v4, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v1, v4

    :goto_1
    if-ge v2, v1, :cond_2

    if-le v3, v1, :cond_2

    iget-object v4, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mArrow:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_6

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mArrowCenterXInTooltipBounds:I

    :cond_2
    :goto_2
    iget v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mArrowCenterXInTooltipBounds:I

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mArrowCenterXInTooltipBounds:I

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipDesignDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    invoke-static {v0}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->access$500(Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;)V

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mLastMeasuredWidth:I

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mLastMeasuredHeight:I

    :cond_3
    return-void

    :cond_4
    const/16 v1, 0x50

    iput v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mGravity:I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    goto :goto_1

    :cond_6
    add-int/2addr v1, v4

    iput v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mArrowCenterXInTooltipBounds:I

    goto :goto_2
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mLastMeasuredWidth:I

    iput v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mLastMeasuredHeight:I

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setAccentColor(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mAccentColor:I

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->requestLayout()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mBackgroundColor:I

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->requestLayout()V

    return-void
.end method

.method setCallback(Lcom/netflix/android/tooltips/Tooltip$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mCallback:Lcom/netflix/android/tooltips/Tooltip$Callback;

    return-void
.end method

.method public setDetail(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mDetail:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setScrimColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->invalidate()V

    return-void
.end method

.method setTarget(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTarget:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTarget:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    iget v1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTooltipElevation:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->requestLayout()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setUserOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mUserOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method show(Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mAnimator:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/android/tooltips/TooltipLayout;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/TooltipLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mAnimator:Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mAnimator:Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/netflix/android/tooltips/TooltipLayout$1;

    invoke-direct {v1, p0}, Lcom/netflix/android/tooltips/TooltipLayout$1;-><init>(Lcom/netflix/android/tooltips/TooltipLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout;->mAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method
