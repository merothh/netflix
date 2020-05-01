.class public Lo/CallSuper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AnyRes;


# instance fields
.field private final b:Lo/RevealAnimator;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILo/RevealAnimator;Z)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lo/CallSuper;->c:Ljava/lang/String;

    .line 17
    iput p2, p0, Lo/CallSuper;->e:I

    .line 18
    iput-object p3, p0, Lo/CallSuper;->b:Lo/RevealAnimator;

    .line 19
    iput-boolean p4, p0, Lo/CallSuper;->d:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lo/CallSuper;->d:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/CallSuper;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lo/DESKeySpec;Lo/CheckResult;)Lo/AccessibilityButtonController;
    .locals 1

    .line 31
    new-instance v0, Lo/AccountManagerResponse;

    invoke-direct {v0, p1, p2, p0}, Lo/AccountManagerResponse;-><init>(Lo/DESKeySpec;Lo/CheckResult;Lo/CallSuper;)V

    return-object v0
.end method

.method public d()Lo/RevealAnimator;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/CallSuper;->b:Lo/RevealAnimator;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapePath{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CallSuper;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/CallSuper;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
