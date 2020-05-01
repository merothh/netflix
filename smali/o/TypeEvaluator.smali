.class public Lo/TypeEvaluator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AnyRes;


# instance fields
.field private final a:Lo/AnimRes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AnimRes<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Lo/TimeAnimator;

.field private final d:Ljava/lang/String;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/AnimRes;Lo/TimeAnimator;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/AnimRes<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lo/TimeAnimator;",
            "ZZ)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lo/TypeEvaluator;->d:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lo/TypeEvaluator;->a:Lo/AnimRes;

    .line 23
    iput-object p3, p0, Lo/TypeEvaluator;->c:Lo/TimeAnimator;

    .line 24
    iput-boolean p4, p0, Lo/TypeEvaluator;->e:Z

    .line 25
    iput-boolean p5, p0, Lo/TypeEvaluator;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lo/TypeEvaluator;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lo/TypeEvaluator;->e:Z

    return v0
.end method

.method public c(Lo/DESKeySpec;Lo/CheckResult;)Lo/AccessibilityButtonController;
    .locals 1

    .line 29
    new-instance v0, Lo/AbstractAccountAuthenticator;

    invoke-direct {v0, p1, p2, p0}, Lo/AbstractAccountAuthenticator;-><init>(Lo/DESKeySpec;Lo/CheckResult;Lo/TypeEvaluator;)V

    return-object v0
.end method

.method public c()Lo/AnimRes;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/AnimRes<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lo/TypeEvaluator;->a:Lo/AnimRes;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/TypeEvaluator;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lo/TimeAnimator;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/TypeEvaluator;->c:Lo/TimeAnimator;

    return-object v0
.end method
