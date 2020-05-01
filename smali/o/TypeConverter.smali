.class public Lo/TypeConverter;
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

.field private final b:Lo/PathKeyframes;

.field private final c:Lo/PropertyValuesHolder;

.field private final d:Lo/ObjectAnimator;

.field private final e:Lo/LayoutTransition;

.field private final f:Lo/LayoutTransition;

.field private final g:Lo/LayoutTransition;

.field private final h:Lo/LayoutTransition;

.field private final i:Lo/LayoutTransition;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 35
    invoke-direct/range {v0 .. v9}, Lo/TypeConverter;-><init>(Lo/ObjectAnimator;Lo/AnimRes;Lo/PropertyValuesHolder;Lo/LayoutTransition;Lo/PathKeyframes;Lo/LayoutTransition;Lo/LayoutTransition;Lo/LayoutTransition;Lo/LayoutTransition;)V

    return-void
.end method

.method public constructor <init>(Lo/ObjectAnimator;Lo/AnimRes;Lo/PropertyValuesHolder;Lo/LayoutTransition;Lo/PathKeyframes;Lo/LayoutTransition;Lo/LayoutTransition;Lo/LayoutTransition;Lo/LayoutTransition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ObjectAnimator;",
            "Lo/AnimRes<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lo/PropertyValuesHolder;",
            "Lo/LayoutTransition;",
            "Lo/PathKeyframes;",
            "Lo/LayoutTransition;",
            "Lo/LayoutTransition;",
            "Lo/LayoutTransition;",
            "Lo/LayoutTransition;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lo/TypeConverter;->d:Lo/ObjectAnimator;

    .line 44
    iput-object p2, p0, Lo/TypeConverter;->a:Lo/AnimRes;

    .line 45
    iput-object p3, p0, Lo/TypeConverter;->c:Lo/PropertyValuesHolder;

    .line 46
    iput-object p4, p0, Lo/TypeConverter;->e:Lo/LayoutTransition;

    .line 47
    iput-object p5, p0, Lo/TypeConverter;->b:Lo/PathKeyframes;

    .line 48
    iput-object p6, p0, Lo/TypeConverter;->g:Lo/LayoutTransition;

    .line 49
    iput-object p7, p0, Lo/TypeConverter;->f:Lo/LayoutTransition;

    .line 50
    iput-object p8, p0, Lo/TypeConverter;->h:Lo/LayoutTransition;

    .line 51
    iput-object p9, p0, Lo/TypeConverter;->i:Lo/LayoutTransition;

    return-void
.end method


# virtual methods
.method public a()Lo/LayoutTransition;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/TypeConverter;->e:Lo/LayoutTransition;

    return-object v0
.end method

.method public b()Lo/PropertyValuesHolder;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/TypeConverter;->c:Lo/PropertyValuesHolder;

    return-object v0
.end method

.method public c(Lo/DESKeySpec;Lo/CheckResult;)Lo/AccessibilityButtonController;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Lo/PathKeyframes;
    .locals 1

    .line 76
    iget-object v0, p0, Lo/TypeConverter;->b:Lo/PathKeyframes;

    return-object v0
.end method

.method public d()Lo/ObjectAnimator;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/TypeConverter;->d:Lo/ObjectAnimator;

    return-object v0
.end method

.method public e()Lo/AnimRes;
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

    .line 61
    iget-object v0, p0, Lo/TypeConverter;->a:Lo/AnimRes;

    return-object v0
.end method

.method public f()Lo/AnimatorSet;
    .locals 1

    .line 100
    new-instance v0, Lo/AnimatorSet;

    invoke-direct {v0, p0}, Lo/AnimatorSet;-><init>(Lo/TypeConverter;)V

    return-object v0
.end method

.method public g()Lo/LayoutTransition;
    .locals 1

    .line 81
    iget-object v0, p0, Lo/TypeConverter;->g:Lo/LayoutTransition;

    return-object v0
.end method

.method public h()Lo/LayoutTransition;
    .locals 1

    .line 96
    iget-object v0, p0, Lo/TypeConverter;->i:Lo/LayoutTransition;

    return-object v0
.end method

.method public i()Lo/LayoutTransition;
    .locals 1

    .line 91
    iget-object v0, p0, Lo/TypeConverter;->h:Lo/LayoutTransition;

    return-object v0
.end method

.method public j()Lo/LayoutTransition;
    .locals 1

    .line 86
    iget-object v0, p0, Lo/TypeConverter;->f:Lo/LayoutTransition;

    return-object v0
.end method
