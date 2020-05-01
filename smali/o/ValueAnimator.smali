.class public Lo/ValueAnimator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lo/PointFEvaluator;

.field public final c:Lo/LayoutTransition;

.field public final d:Lo/PointFEvaluator;

.field public final e:Lo/LayoutTransition;


# direct methods
.method public constructor <init>(Lo/PointFEvaluator;Lo/PointFEvaluator;Lo/LayoutTransition;Lo/LayoutTransition;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lo/ValueAnimator;->a:Lo/PointFEvaluator;

    .line 16
    iput-object p2, p0, Lo/ValueAnimator;->d:Lo/PointFEvaluator;

    .line 17
    iput-object p3, p0, Lo/ValueAnimator;->e:Lo/LayoutTransition;

    .line 18
    iput-object p4, p0, Lo/ValueAnimator;->c:Lo/LayoutTransition;

    return-void
.end method
