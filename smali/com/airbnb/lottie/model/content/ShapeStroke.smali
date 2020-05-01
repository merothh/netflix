.class public Lcom/airbnb/lottie/model/content/ShapeStroke;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AnyRes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;,
        Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    }
.end annotation


# instance fields
.field private final a:Lo/LayoutTransition;

.field private final b:Lo/PathKeyframes;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/LayoutTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lo/PointFEvaluator;

.field private final f:F

.field private final g:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

.field private final h:Z

.field private final i:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

.field private final j:Lo/LayoutTransition;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/LayoutTransition;Ljava/util/List;Lo/PointFEvaluator;Lo/PathKeyframes;Lo/LayoutTransition;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/LayoutTransition;",
            "Ljava/util/List<",
            "Lo/LayoutTransition;",
            ">;",
            "Lo/PointFEvaluator;",
            "Lo/PathKeyframes;",
            "Lo/LayoutTransition;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;",
            "FZ)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->c:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->a:Lo/LayoutTransition;

    .line 70
    iput-object p3, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->d:Ljava/util/List;

    .line 71
    iput-object p4, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->e:Lo/PointFEvaluator;

    .line 72
    iput-object p5, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->b:Lo/PathKeyframes;

    .line 73
    iput-object p6, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->j:Lo/LayoutTransition;

    .line 74
    iput-object p7, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->g:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 75
    iput-object p8, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->i:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 76
    iput p9, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->f:F

    .line 77
    iput-boolean p10, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->h:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lo/LayoutTransition;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->j:Lo/LayoutTransition;

    return-object v0
.end method

.method public c(Lo/DESKeySpec;Lo/CheckResult;)Lo/AccessibilityButtonController;
    .locals 1

    .line 81
    new-instance v0, Lo/AccountsException;

    invoke-direct {v0, p1, p2, p0}, Lo/AccountsException;-><init>(Lo/DESKeySpec;Lo/CheckResult;Lcom/airbnb/lottie/model/content/ShapeStroke;)V

    return-object v0
.end method

.method public c()Lo/PathKeyframes;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->b:Lo/PathKeyframes;

    return-object v0
.end method

.method public d()Lo/PointFEvaluator;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->e:Lo/PointFEvaluator;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/LayoutTransition;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->d:Ljava/util/List;

    return-object v0
.end method

.method public f()F
    .locals 1

    .line 117
    iget v0, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->f:F

    return v0
.end method

.method public g()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->g:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->h:Z

    return v0
.end method

.method public i()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->i:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    return-object v0
.end method

.method public j()Lo/LayoutTransition;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->a:Lo/LayoutTransition;

    return-object v0
.end method
