.class public Lo/afV;
.super Lo/ECField;
.source ""


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lo/ECField;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lo/afV;->b:I

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/afV;->e:Ljava/util/Set;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/afV;->c:Ljava/util/Set;

    .line 35
    iput-boolean p1, p0, Lo/afV;->d:Z

    return-void
.end method

.method static synthetic a(Lo/afV;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/afV;->a:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private b(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
    .locals 5

    .line 129
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_2

    .line 133
    iget-boolean v0, p0, Lo/afV;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/2addr v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_3

    .line 140
    sget-object p1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array p3, v2, [F

    aput v0, p3, v4

    aput v1, p3, v3

    invoke-static {p2, p1, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_3

    .line 142
    :cond_3
    sget-object p3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v1, v2, [F

    aput v0, v1, v4

    iget-boolean v0, p0, Lo/afV;->d:Z

    if-eqz v0, :cond_4

    .line 143
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    div-int/2addr p1, v2

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    :goto_2
    int-to-float p1, p1

    aput p1, v1, v3

    .line 142
    invoke-static {p2, p3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method static synthetic c(Lo/afV;)I
    .locals 0

    .line 26
    iget p0, p0, Lo/afV;->b:I

    return p0
.end method

.method static synthetic e(Lo/afV;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 26
    iput-object p1, p0, Lo/afV;->a:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method


# virtual methods
.method public a(I)Lo/CharsetDecoder;
    .locals 0

    .line 39
    iput p1, p0, Lo/afV;->b:I

    return-object p0
.end method

.method public a(Landroid/animation/Animator;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lo/afV;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroid/view/ViewGroup;Landroid/view/View;Lo/AlgorithmParameters;Lo/AlgorithmParameters;)Landroid/animation/Animator;
    .locals 3

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 106
    :cond_0
    invoke-virtual {p0, p2}, Lo/afV;->d(Landroid/view/View;)V

    .line 108
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p4, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p4}, Lo/afV;->b(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 110
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/IHwInterface$Dialog;->a:I

    invoke-static {v0, v1}, Lo/adk;->c(Landroid/content/Context;I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 112
    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 113
    iget-boolean v0, p0, Lo/afV;->d:Z

    if-eqz v0, :cond_1

    .line 114
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v2, v1, p4

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 115
    invoke-virtual {p1, p4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 118
    :cond_1
    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 120
    iget-object p2, p0, Lo/afV;->c:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/animation/Animator;

    .line 121
    sget v0, Lo/IHwInterface$Dialog;->a:I

    int-to-long v0, v0

    invoke-virtual {p4, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 122
    invoke-virtual {p1, p4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    :cond_2
    return-object p3
.end method

.method public b(Landroid/animation/Animator;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lo/afV;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected d(Landroid/view/View;)V
    .locals 2

    .line 79
    iget v0, p0, Lo/afV;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 80
    new-instance v0, Lo/afV$1;

    invoke-direct {v0, p0, p1}, Lo/afV$1;-><init>(Lo/afV;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lo/afV;->addListener(Lo/CharsetDecoder$StateListAnimator;)Lo/CharsetDecoder;

    :cond_0
    return-void
.end method

.method public e(Landroid/view/ViewGroup;Landroid/view/View;Lo/AlgorithmParameters;Lo/AlgorithmParameters;)Landroid/animation/Animator;
    .locals 2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 58
    :cond_0
    invoke-virtual {p0, p2}, Lo/afV;->d(Landroid/view/View;)V

    const/4 p3, 0x1

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lo/afV;->b(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 61
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lo/IHwInterface$Dialog;->a:I

    invoke-static {p3, p4}, Lo/adk;->c(Landroid/content/Context;I)I

    move-result p3

    int-to-long p3, p3

    invoke-virtual {p1, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 63
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 64
    iget-object p2, p0, Lo/afV;->e:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 65
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 66
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 67
    iget-object p3, p0, Lo/afV;->e:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/animation/Animator;

    .line 68
    sget v0, Lo/IHwInterface$Dialog;->a:I

    int-to-long v0, v0

    invoke-virtual {p4, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 69
    invoke-virtual {p1, p4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    return-object p1
.end method
