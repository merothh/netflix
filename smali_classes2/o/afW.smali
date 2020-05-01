.class public Lo/afW;
.super Lo/afV;
.source ""


# static fields
.field public static a:J = 0x32L

.field public static b:J = 0x0L

.field public static c:I = 0x32

.field public static d:J = 0x3e8L

.field public static e:J

.field public static f:Landroid/view/animation/Interpolator;

.field public static g:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    sget-wide v0, Lo/afW;->d:J

    sget-wide v2, Lo/afW;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x2

    div-long/2addr v0, v4

    sput-wide v0, Lo/afW;->b:J

    .line 24
    sget-wide v0, Lo/afW;->b:J

    add-long/2addr v0, v2

    sput-wide v0, Lo/afW;->e:J

    const v0, 0x3f4147ae    # 0.755f

    const v1, 0x3d4ccccd    # 0.05f

    const v2, 0x3f5ae148    # 0.855f

    const v3, 0x3d75c28f    # 0.06f

    .line 26
    invoke-static {v0, v1, v2, v3}, Lo/ObjectOutput;->e(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lo/afW;->g:Landroid/view/animation/Interpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3ea3d70a    # 0.32f

    .line 27
    invoke-static {v1, v0, v2, v0}, Lo/ObjectOutput;->e(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lo/afW;->f:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lo/afV;-><init>(Z)V

    return-void
.end method

.method private e(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
    .locals 5

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/afW;->c:I

    invoke-static {v0, v1}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p2, :cond_0

    .line 84
    sget-object p2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    neg-float v0, v0

    aput v0, v4, v3

    aput v2, v4, v1

    invoke-static {p1, p2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    .line 86
    :cond_0
    sget-object p2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    aput v2, v4, v3

    neg-float v0, v0

    aput v0, v4, v1

    invoke-static {p1, p2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public b(Landroid/view/ViewGroup;Landroid/view/View;Lo/AlgorithmParameters;Lo/AlgorithmParameters;)Landroid/animation/Animator;
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 65
    :cond_0
    invoke-virtual {p0, p2}, Lo/afW;->d(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 67
    invoke-direct {p0, p2, p1}, Lo/afW;->e(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 p3, 0x1

    .line 68
    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 69
    sget-object p4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p2, p4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 70
    invoke-virtual {p4, p3}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 72
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 73
    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 74
    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 75
    sget-wide p1, Lo/afW;->b:J

    invoke-virtual {p3, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 76
    sget-object p1, Lo/afW;->g:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p3

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public e(Landroid/view/ViewGroup;Landroid/view/View;Lo/AlgorithmParameters;Lo/AlgorithmParameters;)Landroid/animation/Animator;
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 40
    :cond_0
    invoke-virtual {p0, p2}, Lo/afW;->d(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 42
    invoke-direct {p0, p2, p1}, Lo/afW;->e(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 43
    invoke-virtual {p3, p1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 44
    sget-object p4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p2, p4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 45
    invoke-virtual {p4, p1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const/4 p1, 0x0

    .line 46
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 48
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 49
    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 50
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 51
    sget-wide p2, Lo/afW;->b:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 52
    sget-wide p2, Lo/afW;->e:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 53
    sget-object p2, Lo/afW;->f:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
