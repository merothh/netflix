.class public Lcom/netflix/mediaclient/util/gfx/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# static fields
.field public static final ANIM_DURATION_MS:I = 0x96

.field public static final APPEARANCE_ANIMATION_MS:I = 0x12c

.field private static final LAYOUT_ANIMATION_DELAY_FRACTION:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "AnimationUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static alphaAnimateView(Landroid/view/View;FFILandroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p3

    .line 92
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 93
    invoke-virtual {v0, p4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 95
    return-void
.end method

.method public static createGridLayoutAnimator(Landroid/content/Context;)Landroid/view/animation/LayoutAnimationController;
    .locals 3

    .prologue
    const/high16 v2, 0x3e800000    # 0.25f

    .line 168
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController;

    const/high16 v1, 0x10a0000

    .line 169
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/animation/GridLayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 170
    invoke-virtual {v0, v2}, Landroid/view/animation/GridLayoutAnimationController;->setColumnDelay(F)V

    .line 171
    invoke-virtual {v0, v2}, Landroid/view/animation/GridLayoutAnimationController;->setRowDelay(F)V

    .line 172
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/GridLayoutAnimationController;->setDirection(I)V

    .line 173
    return-object v0
.end method

.method public static hideView(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 49
    :cond_0
    if-eqz p1, :cond_1

    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/16 v2, 0x4b

    new-instance v3, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$HideViewOnAnimatorEnd;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$HideViewOnAnimatorEnd;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->alphaAnimateView(Landroid/view/View;FFILandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 54
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static isTransitionAnimationSupported()Z
    .locals 2

    .prologue
    .line 263
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setImageBitmapWithPropertyFade(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 41
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 42
    return-void
.end method

.method public static showView(Landroid/view/View;Z)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 70
    if-nez p0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 74
    :cond_0
    if-eqz p1, :cond_1

    .line 75
    const/4 v0, 0x0

    const/16 v1, 0x96

    new-instance v2, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$ShowViewOnAnimatorStart;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$ShowViewOnAnimatorStart;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0, v3, v1, v2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->alphaAnimateView(Landroid/view/View;FFILandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 81
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static showViewIfHidden(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 59
    if-nez p0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public static startPressedStateCompleteAnimation(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 3

    .prologue
    .line 177
    const v0, 0x3f333333    # 0.7f

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x96

    invoke-static {p0, v0, v1, v2, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->alphaAnimateView(Landroid/view/View;FFILandroid/animation/Animator$AnimatorListener;)V

    .line 178
    return-void
.end method

.method public static startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;
    .locals 1

    .prologue
    .line 188
    const/16 v0, 0x12c

    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;ZI)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static startViewAppearanceAnimation(Landroid/view/View;ZI)Landroid/view/ViewPropertyAnimator;
    .locals 4

    .prologue
    .line 200
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string/jumbo v0, "AnimationUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startViewAppearanceAnimation() shouldAppear: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 204
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 205
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 206
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;

    invoke-direct {v2, p1, p0, v0}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;-><init>(ZLandroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 207
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 246
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 247
    return-object v0

    .line 203
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
