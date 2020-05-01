.class public abstract Lo/Xl;
.super Lo/VibrationEffect;
.source ""

# interfaces
.implements Lo/WI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Xl$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/UU;",
        ">;",
        "Lo/WI;"
    }
.end annotation


# static fields
.field public static final a:Lo/Xl$StateListAnimator;


# instance fields
.field private final b:Z

.field private final c:Landroid/view/animation/Interpolator;

.field private final d:Landroid/view/animation/Interpolator;

.field private final e:F

.field private final f:Lo/aka;

.field private g:Landroid/animation/Animator;

.field private h:Landroid/view/ViewPropertyAnimator;

.field private final i:Lo/TA;

.field private final j:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Xl$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Xl$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/Xl;->a:Lo/Xl$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    .line 28
    invoke-static {}, Lo/ady;->d()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lo/adu;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lo/Xl;->b:Z

    .line 29
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/NetflixApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->ah:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lo/Xl;->e:F

    const p1, 0x3e428f5c    # 0.19f

    const v0, 0x3e6147ae    # 0.22f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 30
    invoke-static {p1, v1, v0, v1}, Lo/ObjectOutput;->e(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lo/Xl;->d:Landroid/view/animation/Interpolator;

    const p1, 0x3e6b851f    # 0.23f

    const v0, 0x3ea3d70a    # 0.32f

    .line 31
    invoke-static {p1, v1, v0, v1}, Lo/ObjectOutput;->e(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lo/Xl;->c:Landroid/view/animation/Interpolator;

    const p1, 0x3f4147ae    # 0.755f

    const v0, 0x3d4ccccd    # 0.05f

    const v1, 0x3f5ae148    # 0.855f

    const v2, 0x3d75c28f    # 0.06f

    .line 32
    invoke-static {p1, v0, v1, v2}, Lo/ObjectOutput;->e(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lo/Xl;->j:Landroid/view/animation/Interpolator;

    .line 34
    new-instance p1, Lo/TA;

    invoke-direct {p1}, Lo/TA;-><init>()V

    iput-object p1, p0, Lo/Xl;->i:Lo/TA;

    .line 39
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerUIView$containerId$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerUIView$containerId$2;-><init>(Lo/Xl;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Xl;->f:Lo/aka;

    return-void
.end method

.method private final a(Landroid/view/View;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const v0, 0x3e99999a    # 0.3f

    .line 73
    :goto_0
    iget-boolean v1, p0, Lo/Xl;->b:Z

    if-eqz v1, :cond_2

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    return-void

    .line 79
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 81
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 83
    new-instance v1, Lo/Xl$Activity;

    invoke-direct {v1, p1, p2}, Lo/Xl$Activity;-><init>(Landroid/view/View;Z)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static synthetic a(Lo/Xl;ZJJZILjava/lang/Object;)V
    .locals 7

    if-nez p8, :cond_3

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    const-wide/16 p2, 0x96

    :cond_0
    move-wide v2, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_1

    const-wide/16 p4, 0x64

    :cond_1
    move-wide v4, p4

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_2

    const/4 p6, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    move v6, p6

    :goto_0
    move-object v0, p0

    move v1, p1

    .line 93
    invoke-virtual/range {v0 .. v6}, Lo/Xl;->e(ZJJZ)V

    return-void

    .line 0
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: startVisibilityFadeAnimation"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic c(Lo/Xl;ZZFZLo/alB;ILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_3

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 145
    iget p3, p0, Lo/Xl;->e:F

    :cond_0
    move v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move v4, p4

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 147
    sget-object p3, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerUIView$startTranslateAppearanceAnimation$1;->d:Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerUIView$startTranslateAppearanceAnimation$1;

    move-object p5, p3

    check-cast p5, Lo/alB;

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lo/Xl;->c(ZZFZLo/alB;)V

    return-void

    .line 0
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: startTranslateAppearanceAnimation"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lo/Xl;->f:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public a(F)V
    .locals 1

    .line 219
    invoke-virtual {p0}, Lo/Xl;->x()V

    .line 220
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final a(Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lo/Xl;->h:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public c()V
    .locals 2

    .line 46
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lo/Xl;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public final c(ZZFZLo/alB;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZFZ",
            "Lo/alB<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callBack"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-static {v0, v3}, Lo/PowerSaveState;->e(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 149
    :goto_1
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v4

    .line 238
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 149
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-static {v4, v5}, Lo/PowerSaveState;->e(FF)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v4, 0x1

    :goto_4
    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    .line 150
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-static {v0, v5}, Lo/PowerSaveState;->e(FF)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    if-nez p1, :cond_8

    if-eqz v4, :cond_8

    .line 152
    :cond_6
    iget-object p1, p0, Lo/Xl;->g:Landroid/animation/Animator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_7
    return-void

    .line 156
    :cond_8
    iget-boolean v0, p0, Lo/Xl;->b:Z

    if-eqz v0, :cond_a

    .line 157
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object p2

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    const/16 v2, 0x8

    :goto_5
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    invoke-interface {p5}, Lo/alB;->invoke()Ljava/lang/Object;

    return-void

    :cond_a
    int-to-float v0, v2

    cmpl-float v0, p3, v0

    if-lez v0, :cond_b

    goto :goto_6

    .line 162
    :cond_b
    iget p3, p0, Lo/Xl;->e:F

    :goto_6
    if-eqz p1, :cond_e

    .line 165
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v3

    if-nez v0, :cond_c

    .line 167
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 169
    :cond_c
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpg-float v0, v0, v5

    if-nez v0, :cond_e

    .line 170
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_d

    move v4, p3

    goto :goto_7

    :cond_d
    neg-float v4, p3

    :goto_7
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 175
    :cond_e
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v0

    .line 176
    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v1, [F

    if-eqz p1, :cond_f

    const/4 p2, 0x0

    goto :goto_8

    :cond_f
    if-eqz p2, :cond_10

    move p2, p3

    goto :goto_8

    :cond_10
    neg-float p2, p3

    :goto_8
    aput p2, v6, v2

    .line 174
    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v6, 0x12c

    .line 179
    invoke-virtual {p2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string p3, "animatorTranslation"

    .line 180
    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lo/Xl;->c:Landroid/view/animation/Interpolator;

    check-cast p3, Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_11

    if-nez p4, :cond_11

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_11
    if-eqz p1, :cond_12

    if-eqz p4, :cond_12

    const p3, 0x3e99999a    # 0.3f

    goto :goto_9

    :cond_12
    const/4 p3, 0x0

    .line 189
    :goto_9
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object p4

    .line 190
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    if-eqz p1, :cond_13

    const/4 v3, 0x0

    :cond_13
    aput v3, v4, v2

    aput p3, v4, v1

    .line 189
    invoke-static {p4, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    const-wide/16 v0, 0x96

    .line 191
    invoke-virtual {p3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p3

    const-string p4, "ObjectAnimator.ofFloat<V\u2026ALPHA_ANIMATION_DURATION)"

    invoke-static {p3, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p1, :cond_14

    .line 194
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v5

    if-nez v0, :cond_14

    const/16 v2, 0x64

    :cond_14
    int-to-long v0, v2

    invoke-virtual {p4, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 195
    check-cast p2, Landroid/animation/Animator;

    invoke-virtual {p4, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    check-cast p3, Landroid/animation/Animator;

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 196
    new-instance p2, Lo/Xl$ActionBar;

    invoke-direct {p2, p0, p1, p5}, Lo/Xl$ActionBar;-><init>(Lo/Xl;ZLo/alB;)V

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p4, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 209
    iget-object p1, p0, Lo/Xl;->g:Landroid/animation/Animator;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 210
    :cond_15
    move-object p1, p4

    check-cast p1, Landroid/animation/Animator;

    iput-object p1, p0, Lo/Xl;->g:Landroid/animation/Animator;

    .line 211
    invoke-virtual {p4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final e(ZJJZ)V
    .locals 4

    .line 95
    iget-boolean v0, p0, Lo/Xl;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p6, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    .line 101
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpg-float v2, v2, v0

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x0

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpg-float v3, v3, v2

    if-nez v3, :cond_6

    .line 102
    :cond_4
    iget-object p1, p0, Lo/Xl;->h:Landroid/view/ViewPropertyAnimator;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_5
    return-void

    .line 106
    :cond_6
    iget-object v3, p0, Lo/Xl;->h:Landroid/view/ViewPropertyAnimator;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_7
    if-eqz p1, :cond_9

    .line 109
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpg-float v0, v3, v0

    if-nez v0, :cond_8

    .line 110
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 112
    :cond_8
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :cond_9
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-float p3, p1

    .line 118
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_a

    .line 119
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p3

    cmpg-float p3, p3, v2

    if-nez p3, :cond_a

    goto :goto_1

    :cond_a
    const-wide/16 p4, 0x0

    :goto_1
    invoke-virtual {p2, p4, p5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 120
    new-instance p3, Lo/Xl$Application;

    invoke-direct {p3, p0, p1, p6}, Lo/Xl$Application;-><init>(Lo/Xl;ZZ)V

    check-cast p3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lo/Xl;->h:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public g()V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/Xl;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public l()Z
    .locals 1

    .line 42
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()V
    .locals 2

    .line 59
    invoke-virtual {p0}, Lo/Xl;->x()V

    .line 60
    invoke-virtual {p0}, Lo/Xl;->d()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final p()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lo/Xl;->b:Z

    return v0
.end method

.method public final q()Lo/TA;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/Xl;->i:Lo/TA;

    return-object v0
.end method

.method public r()V
    .locals 0

    .line 224
    invoke-virtual {p0}, Lo/Xl;->e()V

    return-void
.end method

.method public final x()V
    .locals 1

    .line 54
    iget-object v0, p0, Lo/Xl;->h:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 55
    :cond_0
    iget-object v0, p0, Lo/Xl;->g:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    return-void
.end method
