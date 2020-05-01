.class public final Lcom/netflix/android/widgetry/buffet/BuffetBar;
.super Ljava/lang/Object;
.source "BuffetBar.java"


# static fields
.field static final ANIMATION_DURATION:I = 0xfa

.field static final ANIMATION_FADE_DURATION:I = 0xb4

.field private static final APPCOMPAT_CHECK_ATTRS:[I

.field static final FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field static final MSG_DISMISS:I = 0x1

.field static final MSG_SHOW:I = 0x0

.field static final MSG_SHOW_NO_ANIMATION:I = 0x2

.field static final sHandler:Landroid/os/Handler;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCallback:Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDuration:I

.field private mLastBackgroundColor:I

.field final mManagerCallback:Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

.field private final mTargetParent:Landroid/view/ViewGroup;

.field final mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    aput v2, v0, v1

    sput-object v0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->APPCOMPAT_CHECK_ATTRS:[I

    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/netflix/android/widgetry/buffet/BuffetBar$1;

    invoke-direct {v2}, Lcom/netflix/android/widgetry/buffet/BuffetBar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mLastBackgroundColor:I

    new-instance v0, Lcom/netflix/android/widgetry/buffet/BuffetBar$3;

    invoke-direct {v0, p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$3;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mManagerCallback:Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mTargetParent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->checkAppCompatTheme(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netflix/android/widgetry/R$layout;->design_layout_buffet:I

    iget-object v2, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mTargetParent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method private animateViewOut(I)V
    .locals 4

    const-wide/16 v2, 0xfa

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v1, Lcom/netflix/android/widgetry/buffet/BuffetBar;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/netflix/android/widgetry/buffet/BuffetBar$9;

    invoke-direct {v1, p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$9;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/android/widgetry/R$anim;->design_snackbar_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sget-object v1, Lcom/netflix/android/widgetry/buffet/BuffetBar;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/netflix/android/widgetry/buffet/BuffetBar$10;

    invoke-direct {v1, p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$10;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v1, v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static checkAppCompatTheme(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/netflix/android/widgetry/buffet/BuffetBar;->APPCOMPAT_CHECK_ATTRS:[I

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You need to use a Theme.AppCompat theme (or descendant) with the design library."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private static findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4

    const/4 v2, 0x0

    move-object v1, v2

    move-object v0, p0

    :cond_0
    instance-of v3, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    return-object v0

    :cond_1
    instance-of v3, v0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x1020002

    if-ne v1, v3, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_5

    check-cast v0, Landroid/view/View;

    :cond_4
    :goto_1
    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v0, v2

    goto :goto_1
.end method

.method public static make(Landroid/view/View;III)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->make(Landroid/view/View;Ljava/lang/CharSequence;II)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    move-result-object v0

    return-object v0
.end method

.method public static make(Landroid/view/View;Ljava/lang/CharSequence;II)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 2

    new-instance v0, Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-static {p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->setText(Ljava/lang/CharSequence;)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-virtual {v0, p2}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->setBackgroundColor(I)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-virtual {v0, p3}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->setDuration(I)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    return-object v0
.end method


# virtual methods
.method animateViewIn()V
    .locals 4

    const-wide/16 v2, 0xfa

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v1, Lcom/netflix/android/widgetry/buffet/BuffetBar;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/netflix/android/widgetry/buffet/BuffetBar$7;

    invoke-direct {v1, p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$7;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/android/widgetry/R$anim;->design_snackbar_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sget-object v1, Lcom/netflix/android/widgetry/buffet/BuffetBar;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/netflix/android/widgetry/buffet/BuffetBar$8;

    invoke-direct {v1, p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$8;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v1, v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->dispatchDismiss(I)V

    return-void
.end method

.method dispatchDismiss(I)V
    .locals 2

    invoke-static {}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->getInstance()Lcom/netflix/android/widgetry/buffet/BuffetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mManagerCallback:Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    invoke-virtual {v0, v1, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->dismiss(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;I)V

    return-void
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mDuration:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    return-object v0
.end method

.method final hideView(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->animateViewOut(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->onViewHidden(I)V

    goto :goto_0
.end method

.method public isShown()Z
    .locals 2

    invoke-static {}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->getInstance()Lcom/netflix/android/widgetry/buffet/BuffetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mManagerCallback:Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrent(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    return v0
.end method

.method public isShownOrQueued()Z
    .locals 2

    invoke-static {}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->getInstance()Lcom/netflix/android/widgetry/buffet/BuffetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mManagerCallback:Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentOrNext(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    return v0
.end method

.method onViewHidden(I)V
    .locals 2

    invoke-static {}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->getInstance()Lcom/netflix/android/widgetry/buffet/BuffetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mManagerCallback:Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->onDismissed(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mCallback:Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mCallback:Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;

    invoke-virtual {v0, p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;->onDismissed(Lcom/netflix/android/widgetry/buffet/BuffetBar;I)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method onViewShown()V
    .locals 2

    invoke-static {}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->getInstance()Lcom/netflix/android/widgetry/buffet/BuffetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mManagerCallback:Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->onShown(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mCallback:Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mCallback:Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;

    invoke-virtual {v0, p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;->onShown(Lcom/netflix/android/widgetry/buffet/BuffetBar;)V

    :cond_0
    return-void
.end method

.method public setAction(ILandroid/view/View$OnClickListener;)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    move-result-object v0

    return-object v0
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 2

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/netflix/android/widgetry/buffet/BuffetBar$2;

    invoke-direct {v1, p0, p2}, Lcom/netflix/android/widgetry/buffet/BuffetBar$2;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setActionTextColor(I)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setActionTextColor(Landroid/content/res/ColorStateList;)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-object p0
.end method

.method public setActionTypeface(Landroid/graphics/Typeface;)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 1

    iget v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mLastBackgroundColor:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->setBackgroundColor(I)V

    iput p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mLastBackgroundColor:I

    :cond_0
    return-object p0
.end method

.method public setCallback(Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mCallback:Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;

    return-object p0
.end method

.method public setDuration(I)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 0

    iput p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mDuration:I

    return-object p0
.end method

.method public setText(I)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->setText(Ljava/lang/CharSequence;)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method shouldAnimate()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->show(Z)V

    return-void
.end method

.method public show(Z)V
    .locals 3

    invoke-static {}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->getInstance()Lcom/netflix/android/widgetry/buffet/BuffetManager;

    move-result-object v0

    iget v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mDuration:I

    iget-object v2, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mManagerCallback:Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    invoke-virtual {v0, v1, v2, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->show(ILcom/netflix/android/widgetry/buffet/BuffetManager$Callback;Z)V

    return-void
.end method

.method final showView(Z)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    new-instance v1, Lcom/netflix/android/widgetry/buffet/BuffetBar$Behavior;

    invoke-direct {v1, p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$Behavior;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;)V

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Lcom/netflix/android/widgetry/buffet/BuffetBar$Behavior;->setStartAlphaSwipeDistance(F)V

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lcom/netflix/android/widgetry/buffet/BuffetBar$Behavior;->setEndAlphaSwipeDistance(F)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/netflix/android/widgetry/buffet/BuffetBar$Behavior;->setSwipeDirection(I)V

    new-instance v2, Lcom/netflix/android/widgetry/buffet/BuffetBar$4;

    invoke-direct {v2, p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$4;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;)V

    invoke-virtual {v1, v2}, Lcom/netflix/android/widgetry/buffet/BuffetBar$Behavior;->setListener(Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mTargetParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    new-instance v1, Lcom/netflix/android/widgetry/buffet/BuffetBar$5;

    invoke-direct {v1, p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$5;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;)V

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->setOnAttachStateChangeListener(Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->animateViewIn()V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->onViewShown()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    new-instance v1, Lcom/netflix/android/widgetry/buffet/BuffetBar$6;

    invoke-direct {v1, p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$6;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;Z)V

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->setOnLayoutChangeListener(Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnLayoutChangeListener;)V

    goto :goto_0
.end method
