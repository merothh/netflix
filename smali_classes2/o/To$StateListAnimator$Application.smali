.class public final Lo/To$StateListAnimator$Application;
.super Landroid/transition/Explode;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/To$StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# instance fields
.field private final a:Landroid/transition/Fade;

.field private final b:Lo/afY;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Landroid/transition/Explode;-><init>()V

    .line 133
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    iput-object v0, p0, Lo/To$StateListAnimator$Application;->a:Landroid/transition/Fade;

    .line 134
    new-instance v0, Lo/afY;

    invoke-direct {v0}, Lo/afY;-><init>()V

    iput-object v0, p0, Lo/To$StateListAnimator$Application;->b:Lo/afY;

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 1

    .line 150
    invoke-super {p0, p1}, Landroid/transition/Explode;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 151
    iget-object v0, p0, Lo/To$StateListAnimator$Application;->a:Landroid/transition/Fade;

    invoke-virtual {v0, p1}, Landroid/transition/Fade;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 152
    iget-object v0, p0, Lo/To$StateListAnimator$Application;->b:Lo/afY;

    invoke-virtual {v0, p1}, Lo/afY;->captureEndValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 1

    .line 144
    invoke-super {p0, p1}, Landroid/transition/Explode;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 145
    iget-object v0, p0, Lo/To$StateListAnimator$Application;->a:Landroid/transition/Fade;

    invoke-virtual {v0, p1}, Landroid/transition/Fade;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 146
    iget-object v0, p0, Lo/To$StateListAnimator$Application;->b:Lo/afY;

    invoke-virtual {v0, p1}, Lo/afY;->captureStartValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 4

    .line 137
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    .line 138
    iget-object v2, p0, Lo/To$StateListAnimator$Application;->a:Landroid/transition/Fade;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/transition/Fade;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 139
    iget-object v2, p0, Lo/To$StateListAnimator$Application;->b:Lo/afY;

    invoke-virtual {v2, p1, p2, p3, p4}, Lo/afY;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 138
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 140
    check-cast v0, Landroid/animation/Animator;

    return-object v0
.end method
