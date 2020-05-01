.class public final Lo/YF;
.super Lo/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/YF$Activity;
    }
.end annotation


# static fields
.field public static final e:Lo/YF$Activity;


# instance fields
.field private a:J

.field private b:J

.field private c:F

.field private d:F

.field private g:Z

.field private final i:Landroid/animation/Animator$AnimatorListener;

.field private final j:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/YF$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/YF$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/YF;->e:Lo/YF$Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/YF;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/YF;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lo/BaseAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x3dcccccd    # 0.1f

    .line 19
    iput p1, p0, Lo/YF;->d:F

    const-wide/16 p1, 0x3e8

    .line 21
    iput-wide p1, p0, Lo/YF;->b:J

    .line 23
    iput-wide p1, p0, Lo/YF;->a:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 25
    iput p1, p0, Lo/YF;->c:F

    .line 30
    new-instance p1, Lo/YF$Application;

    invoke-direct {p1, p0}, Lo/YF$Application;-><init>(Lo/YF;)V

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    iput-object p1, p0, Lo/YF;->j:Landroid/animation/Animator$AnimatorListener;

    .line 36
    new-instance p1, Lo/YF$ActionBar;

    invoke-direct {p1, p0}, Lo/YF$ActionBar;-><init>(Lo/YF;)V

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    iput-object p1, p0, Lo/YF;->i:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 9
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/YF;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic b(Lo/YF;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lo/YF;->k()V

    return-void
.end method

.method public static final synthetic e(Lo/YF;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lo/YF;->o()V

    return-void
.end method

.method private final k()V
    .locals 3

    .line 52
    invoke-virtual {p0}, Lo/YF;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 53
    iget v1, p0, Lo/YF;->d:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 54
    iget v1, p0, Lo/YF;->d:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, -0x41b33333    # -0.2f

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alphaBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 56
    iget-wide v1, p0, Lo/YF;->b:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lo/YF;->i:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private final o()V
    .locals 3

    .line 43
    invoke-virtual {p0}, Lo/YF;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 44
    iget v1, p0, Lo/YF;->d:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 45
    iget v1, p0, Lo/YF;->d:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alphaBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 47
    iget-wide v1, p0, Lo/YF;->a:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lo/YF;->j:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 1

    .line 61
    iget-boolean v0, p0, Lo/YF;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lo/YF;->g:Z

    .line 63
    invoke-direct {p0}, Lo/YF;->o()V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lo/YF;->g:Z

    .line 69
    invoke-virtual {p0}, Lo/YF;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 70
    invoke-virtual {p0, v0}, Lo/YF;->setScaleX(F)V

    .line 71
    invoke-virtual {p0, v0}, Lo/YF;->setScaleY(F)V

    .line 72
    iget v0, p0, Lo/YF;->c:F

    invoke-virtual {p0, v0}, Lo/YF;->setAlpha(F)V

    return-void
.end method

.method public final setAnimationStartingAlpha(F)V
    .locals 0

    .line 25
    iput p1, p0, Lo/YF;->c:F

    return-void
.end method

.method public final setPulseInDuration(J)V
    .locals 0

    .line 21
    iput-wide p1, p0, Lo/YF;->b:J

    return-void
.end method

.method public final setPulseOutDuration(J)V
    .locals 0

    .line 23
    iput-wide p1, p0, Lo/YF;->a:J

    return-void
.end method

.method public final setScaleFactor(F)V
    .locals 0

    .line 19
    iput p1, p0, Lo/YF;->d:F

    return-void
.end method
