.class public Lo/ArrayRes;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AnyRes;


# instance fields
.field private final a:Lcom/airbnb/lottie/model/content/GradientType;

.field private final b:Lo/TimeAnimator;

.field private final c:Lo/Keyframes;

.field private final d:Landroid/graphics/Path$FillType;

.field private final e:Lo/PathKeyframes;

.field private final f:Lo/TimeAnimator;

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:Lo/LayoutTransition;

.field private final j:Lo/LayoutTransition;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lo/Keyframes;Lo/PathKeyframes;Lo/TimeAnimator;Lo/TimeAnimator;Lo/LayoutTransition;Lo/LayoutTransition;Z)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lo/ArrayRes;->a:Lcom/airbnb/lottie/model/content/GradientType;

    .line 34
    iput-object p3, p0, Lo/ArrayRes;->d:Landroid/graphics/Path$FillType;

    .line 35
    iput-object p4, p0, Lo/ArrayRes;->c:Lo/Keyframes;

    .line 36
    iput-object p5, p0, Lo/ArrayRes;->e:Lo/PathKeyframes;

    .line 37
    iput-object p6, p0, Lo/ArrayRes;->b:Lo/TimeAnimator;

    .line 38
    iput-object p7, p0, Lo/ArrayRes;->f:Lo/TimeAnimator;

    .line 39
    iput-object p1, p0, Lo/ArrayRes;->g:Ljava/lang/String;

    .line 40
    iput-object p8, p0, Lo/ArrayRes;->i:Lo/LayoutTransition;

    .line 41
    iput-object p9, p0, Lo/ArrayRes;->j:Lo/LayoutTransition;

    .line 42
    iput-boolean p10, p0, Lo/ArrayRes;->h:Z

    return-void
.end method


# virtual methods
.method public a()Lo/PathKeyframes;
    .locals 1

    .line 62
    iget-object v0, p0, Lo/ArrayRes;->e:Lo/PathKeyframes;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lo/ArrayRes;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/airbnb/lottie/model/content/GradientType;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/ArrayRes;->a:Lcom/airbnb/lottie/model/content/GradientType;

    return-object v0
.end method

.method public c(Lo/DESKeySpec;Lo/CheckResult;)Lo/AccessibilityButtonController;
    .locals 1

    .line 86
    new-instance v0, Lo/AccessibilityServiceInfo;

    invoke-direct {v0, p1, p2, p0}, Lo/AccessibilityServiceInfo;-><init>(Lo/DESKeySpec;Lo/CheckResult;Lo/ArrayRes;)V

    return-object v0
.end method

.method public d()Landroid/graphics/Path$FillType;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/ArrayRes;->d:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public e()Lo/Keyframes;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/ArrayRes;->c:Lo/Keyframes;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lo/ArrayRes;->h:Z

    return v0
.end method

.method public g()Lo/TimeAnimator;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/ArrayRes;->b:Lo/TimeAnimator;

    return-object v0
.end method

.method public j()Lo/TimeAnimator;
    .locals 1

    .line 70
    iget-object v0, p0, Lo/ArrayRes;->f:Lo/TimeAnimator;

    return-object v0
.end method
