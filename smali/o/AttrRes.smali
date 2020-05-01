.class public Lo/AttrRes;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AnyRes;


# instance fields
.field private final a:Lo/LayoutTransition;

.field private final b:Ljava/lang/String;

.field private final c:Lo/AnimRes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AnimRes<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Lo/TimeAnimator;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/AnimRes;Lo/TimeAnimator;Lo/LayoutTransition;Z)V
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
            "Lo/LayoutTransition;",
            "Z)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lo/AttrRes;->b:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lo/AttrRes;->c:Lo/AnimRes;

    .line 24
    iput-object p3, p0, Lo/AttrRes;->e:Lo/TimeAnimator;

    .line 25
    iput-object p4, p0, Lo/AttrRes;->a:Lo/LayoutTransition;

    .line 26
    iput-boolean p5, p0, Lo/AttrRes;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lo/LayoutTransition;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/AttrRes;->a:Lo/LayoutTransition;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/AttrRes;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lo/DESKeySpec;Lo/CheckResult;)Lo/AccessibilityButtonController;
    .locals 1

    .line 50
    new-instance v0, Lo/AccountAuthenticatorActivity;

    invoke-direct {v0, p1, p2, p0}, Lo/AccountAuthenticatorActivity;-><init>(Lo/DESKeySpec;Lo/CheckResult;Lo/AttrRes;)V

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lo/AttrRes;->d:Z

    return v0
.end method

.method public d()Lo/AnimRes;
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

    .line 42
    iget-object v0, p0, Lo/AttrRes;->c:Lo/AnimRes;

    return-object v0
.end method

.method public e()Lo/TimeAnimator;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/AttrRes;->e:Lo/TimeAnimator;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectangleShape{position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AttrRes;->c:Lo/AnimRes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AttrRes;->e:Lo/TimeAnimator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
