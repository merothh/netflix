.class public Lo/aeV;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aeV$StateListAnimator;,
        Lo/aeV$TaskDescription;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/View;FFILandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 137
    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-long p1, p3

    .line 138
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 139
    invoke-virtual {p0, p4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 140
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static b(Landroid/view/View;ZI)Landroid/view/ViewPropertyAnimator;
    .locals 4

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 250
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p2

    .line 251
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 252
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v2, Lo/aeV$5;

    invoke-direct {v2, p1, p0, v1, v0}, Lo/aeV$5;-><init>(ZLandroid/view/View;Landroid/view/ViewPropertyAnimator;F)V

    .line 253
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 296
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-object v1
.end method

.method public static b(Landroid/view/View;Z)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lo/PowerSaveState;->e(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 110
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 111
    invoke-static {p0, p1}, Lo/aeV;->d(Landroid/view/View;Z)V

    return-void
.end method

.method public static c(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 3

    const v0, 0x3f333333    # 0.7f

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x96

    .line 223
    invoke-static {p0, v0, v1, v2, p1}, Lo/aeV;->a(Landroid/view/View;FFILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static c(Landroid/view/View;Z)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/16 v1, 0x4b

    .line 92
    new-instance v2, Lo/aeV$TaskDescription;

    invoke-direct {v2, p0}, Lo/aeV$TaskDescription;-><init>(Landroid/view/View;)V

    invoke-static {p0, p1, v0, v1, v2}, Lo/aeV;->a(Landroid/view/View;FFILandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 96
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static d(Landroid/view/View;Z)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/16 v1, 0x96

    .line 120
    new-instance v2, Lo/aeV$StateListAnimator;

    invoke-direct {v2, p0}, Lo/aeV$StateListAnimator;-><init>(Landroid/view/View;)V

    invoke-static {p0, p1, v0, v1, v2}, Lo/aeV;->a(Landroid/view/View;FFILandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 126
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    .line 128
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static d(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 46
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_0
    aput-object p1, v1, v2

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 48
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p1, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 50
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x96

    .line 54
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 57
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->v:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 59
    invoke-static {p1}, Lo/adX;->c(Ljava/lang/Runnable;)V

    .line 61
    :cond_1
    new-instance p1, Lo/aeV$4;

    invoke-direct {p1, p0, p2}, Lo/aeV$4;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 82
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->v:I

    invoke-virtual {p0, p2, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    const-wide/16 v0, 0x96

    .line 83
    invoke-static {p1, v0, v1}, Lo/adX;->b(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static e(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x12c

    .line 234
    invoke-static {p0, p1, v0}, Lo/aeV;->b(Landroid/view/View;ZI)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    return-object p0
.end method
