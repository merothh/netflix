.class public Lo/AnyThread;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AnyRes;


# instance fields
.field private final a:Lcom/airbnb/lottie/model/content/GradientType;

.field private final b:Lo/Keyframes;

.field private final c:Ljava/lang/String;

.field private final d:Lo/TimeAnimator;

.field private final e:Lo/PathKeyframes;

.field private final f:F

.field private final g:Lo/TimeAnimator;

.field private final h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

.field private final i:Lo/LayoutTransition;

.field private final j:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/LayoutTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Z

.field private final o:Lo/LayoutTransition;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lo/Keyframes;Lo/PathKeyframes;Lo/TimeAnimator;Lo/TimeAnimator;Lo/LayoutTransition;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lo/LayoutTransition;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/content/GradientType;",
            "Lo/Keyframes;",
            "Lo/PathKeyframes;",
            "Lo/TimeAnimator;",
            "Lo/TimeAnimator;",
            "Lo/LayoutTransition;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;",
            "F",
            "Ljava/util/List<",
            "Lo/LayoutTransition;",
            ">;",
            "Lo/LayoutTransition;",
            "Z)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lo/AnyThread;->c:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lo/AnyThread;->a:Lcom/airbnb/lottie/model/content/GradientType;

    .line 41
    iput-object p3, p0, Lo/AnyThread;->b:Lo/Keyframes;

    .line 42
    iput-object p4, p0, Lo/AnyThread;->e:Lo/PathKeyframes;

    .line 43
    iput-object p5, p0, Lo/AnyThread;->d:Lo/TimeAnimator;

    .line 44
    iput-object p6, p0, Lo/AnyThread;->g:Lo/TimeAnimator;

    .line 45
    iput-object p7, p0, Lo/AnyThread;->i:Lo/LayoutTransition;

    .line 46
    iput-object p8, p0, Lo/AnyThread;->h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 47
    iput-object p9, p0, Lo/AnyThread;->j:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 48
    iput p10, p0, Lo/AnyThread;->f:F

    .line 49
    iput-object p11, p0, Lo/AnyThread;->l:Ljava/util/List;

    .line 50
    iput-object p12, p0, Lo/AnyThread;->o:Lo/LayoutTransition;

    .line 51
    iput-boolean p13, p0, Lo/AnyThread;->n:Z

    return-void
.end method


# virtual methods
.method public a()Lo/Keyframes;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/AnyThread;->b:Lo/Keyframes;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lo/AnyThread;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lo/DESKeySpec;Lo/CheckResult;)Lo/AccessibilityButtonController;
    .locals 1

    .line 107
    new-instance v0, Lo/AccessibilityService;

    invoke-direct {v0, p1, p2, p0}, Lo/AccessibilityService;-><init>(Lo/DESKeySpec;Lo/CheckResult;Lo/AnyThread;)V

    return-object v0
.end method

.method public c()Lo/TimeAnimator;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/AnyThread;->d:Lo/TimeAnimator;

    return-object v0
.end method

.method public d()Lcom/airbnb/lottie/model/content/GradientType;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/AnyThread;->a:Lcom/airbnb/lottie/model/content/GradientType;

    return-object v0
.end method

.method public e()Lo/PathKeyframes;
    .locals 1

    .line 67
    iget-object v0, p0, Lo/AnyThread;->e:Lo/PathKeyframes;

    return-object v0
.end method

.method public f()Lo/LayoutTransition;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/AnyThread;->i:Lo/LayoutTransition;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/LayoutTransition;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lo/AnyThread;->l:Ljava/util/List;

    return-object v0
.end method

.method public h()Lo/TimeAnimator;
    .locals 1

    .line 75
    iget-object v0, p0, Lo/AnyThread;->g:Lo/TimeAnimator;

    return-object v0
.end method

.method public i()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .locals 1

    .line 83
    iget-object v0, p0, Lo/AnyThread;->h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    return-object v0
.end method

.method public j()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .locals 1

    .line 87
    iget-object v0, p0, Lo/AnyThread;->j:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lo/AnyThread;->n:Z

    return v0
.end method

.method public n()Lo/LayoutTransition;
    .locals 1

    .line 95
    iget-object v0, p0, Lo/AnyThread;->o:Lo/LayoutTransition;

    return-object v0
.end method

.method public o()F
    .locals 1

    .line 99
    iget v0, p0, Lo/AnyThread;->f:F

    return v0
.end method
