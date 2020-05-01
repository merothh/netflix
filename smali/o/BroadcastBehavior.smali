.class public Lo/BroadcastBehavior;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AnyRes;


# instance fields
.field private final a:Landroid/graphics/Path$FillType;

.field private final b:Lo/PathKeyframes;

.field private final c:Z

.field private final d:Lo/PointFEvaluator;

.field private final e:Ljava/lang/String;

.field private final i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lo/PointFEvaluator;Lo/PathKeyframes;Z)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lo/BroadcastBehavior;->e:Ljava/lang/String;

    .line 24
    iput-boolean p2, p0, Lo/BroadcastBehavior;->c:Z

    .line 25
    iput-object p3, p0, Lo/BroadcastBehavior;->a:Landroid/graphics/Path$FillType;

    .line 26
    iput-object p4, p0, Lo/BroadcastBehavior;->d:Lo/PointFEvaluator;

    .line 27
    iput-object p5, p0, Lo/BroadcastBehavior;->b:Lo/PathKeyframes;

    .line 28
    iput-boolean p6, p0, Lo/BroadcastBehavior;->i:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lo/BroadcastBehavior;->i:Z

    return v0
.end method

.method public b()Landroid/graphics/Path$FillType;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/BroadcastBehavior;->a:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public c(Lo/DESKeySpec;Lo/CheckResult;)Lo/AccessibilityButtonController;
    .locals 1

    .line 52
    new-instance v0, Lo/GestureDescription;

    invoke-direct {v0, p1, p2, p0}, Lo/GestureDescription;-><init>(Lo/DESKeySpec;Lo/CheckResult;Lo/BroadcastBehavior;)V

    return-object v0
.end method

.method public c()Lo/PathKeyframes;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/BroadcastBehavior;->b:Lo/PathKeyframes;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/BroadcastBehavior;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lo/PointFEvaluator;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/BroadcastBehavior;->d:Lo/PointFEvaluator;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/BroadcastBehavior;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
