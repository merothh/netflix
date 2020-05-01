.class public Lcom/airbnb/lottie/model/content/PolystarShape;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AnyRes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    }
.end annotation


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

.field private final b:Ljava/lang/String;

.field private final c:Lo/LayoutTransition;

.field private final d:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

.field private final e:Lo/LayoutTransition;

.field private final f:Lo/LayoutTransition;

.field private final g:Lo/LayoutTransition;

.field private final h:Lo/LayoutTransition;

.field private final i:Lo/LayoutTransition;

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lo/LayoutTransition;Lo/AnimRes;Lo/LayoutTransition;Lo/LayoutTransition;Lo/LayoutTransition;Lo/LayoutTransition;Lo/LayoutTransition;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/content/PolystarShape$Type;",
            "Lo/LayoutTransition;",
            "Lo/AnimRes<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lo/LayoutTransition;",
            "Lo/LayoutTransition;",
            "Lo/LayoutTransition;",
            "Lo/LayoutTransition;",
            "Lo/LayoutTransition;",
            "Z)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->b:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->d:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 51
    iput-object p3, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->e:Lo/LayoutTransition;

    .line 52
    iput-object p4, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->a:Lo/AnimRes;

    .line 53
    iput-object p5, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->c:Lo/LayoutTransition;

    .line 54
    iput-object p6, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->f:Lo/LayoutTransition;

    .line 55
    iput-object p7, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->h:Lo/LayoutTransition;

    .line 56
    iput-object p8, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->i:Lo/LayoutTransition;

    .line 57
    iput-object p9, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->g:Lo/LayoutTransition;

    .line 58
    iput-boolean p10, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->j:Z

    return-void
.end method


# virtual methods
.method public a()Lo/LayoutTransition;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->e:Lo/LayoutTransition;

    return-object v0
.end method

.method public b()Lo/AnimRes;
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

    .line 74
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->a:Lo/AnimRes;

    return-object v0
.end method

.method public c()Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->d:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    return-object v0
.end method

.method public c(Lo/DESKeySpec;Lo/CheckResult;)Lo/AccessibilityButtonController;
    .locals 1

    .line 102
    new-instance v0, Lo/AccountManager;

    invoke-direct {v0, p1, p2, p0}, Lo/AccountManager;-><init>(Lo/DESKeySpec;Lo/CheckResult;Lcom/airbnb/lottie/model/content/PolystarShape;)V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lo/LayoutTransition;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->c:Lo/LayoutTransition;

    return-object v0
.end method

.method public f()Lo/LayoutTransition;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->f:Lo/LayoutTransition;

    return-object v0
.end method

.method public g()Lo/LayoutTransition;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->h:Lo/LayoutTransition;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->j:Z

    return v0
.end method

.method public i()Lo/LayoutTransition;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->g:Lo/LayoutTransition;

    return-object v0
.end method

.method public j()Lo/LayoutTransition;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->i:Lo/LayoutTransition;

    return-object v0
.end method
