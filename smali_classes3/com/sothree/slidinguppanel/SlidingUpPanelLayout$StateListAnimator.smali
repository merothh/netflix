.class Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;
.super Lo/SequenceInputStream$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field final synthetic b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;


# direct methods
.method private constructor <init>(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)V
    .locals 0

    .line 1056
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-direct {p0}, Lo/SequenceInputStream$StateListAnimator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$5;)V
    .locals 0

    .line 1056
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;-><init>(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0

    .line 1154
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1155
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result p1

    .line 1156
    iget-object p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result p3

    add-int/2addr p3, p1

    goto :goto_0

    .line 1158
    :cond_0
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result p3

    .line 1159
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result p1

    sub-int p1, p3, p1

    .line 1162
    :goto_0
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 0

    .line 1147
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result p1

    return p1
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 0

    .line 1104
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d()V

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 2

    .line 1072
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result p1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 1074
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Lo/SequenceInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lo/SequenceInputStream;->b()I

    move-result v0

    if-nez v0, :cond_3

    .line 1082
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v0

    int-to-float p1, p1

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    .line 1089
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    move-result-object p1

    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->e:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    if-eq p1, v0, :cond_3

    .line 1090
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a()V

    .line 1091
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(Landroid/view/View;)V

    .line 1092
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->e:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    invoke-static {p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    goto :goto_1

    .line 1094
    :cond_1
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    move-result-object p1

    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->c:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    if-eq p1, v0, :cond_3

    .line 1095
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e(Landroid/view/View;)V

    .line 1096
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->c:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    invoke-static {p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    goto :goto_1

    .line 1083
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    move-result-object p1

    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->d:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    if-eq p1, v0, :cond_3

    .line 1084
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a()V

    .line 1085
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(Landroid/view/View;)V

    .line 1086
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->d:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    invoke-static {p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    :cond_3
    :goto_1
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    .line 1109
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1, p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;I)V

    .line 1110
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 5

    .line 1115
    iget-object p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 1116
    invoke-static {p2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 1117
    invoke-static {p2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result p2

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v0

    sub-int/2addr p2, v0

    .line 1119
    :goto_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 1122
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1123
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v0

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    .line 1124
    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v2

    goto :goto_1

    .line 1126
    :cond_1
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v0

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v0, v2

    .line 1127
    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v2

    :goto_1
    int-to-float v2, v2

    div-float/2addr v0, v2

    cmpl-float p3, p3, v1

    if-gtz p3, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    if-nez p3, :cond_2

    .line 1130
    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v3

    add-float v4, v0, v1

    div-float/2addr v4, v2

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    goto :goto_2

    :cond_2
    if-nez p3, :cond_6

    .line 1132
    iget-object p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result p3

    add-float/2addr v1, v0

    div-float/2addr v1, v2

    cmpg-float p3, p3, v1

    if-gez p3, :cond_6

    iget-object p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 1133
    invoke-static {p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result p3

    div-float/2addr v0, v2

    cmpl-float p3, p3, v0

    if-ltz p3, :cond_6

    int-to-float p2, p2

    .line 1134
    iget-object p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v0

    mul-float p3, p3, v0

    add-float/2addr p2, p3

    float-to-int p2, p2

    goto :goto_4

    .line 1131
    :cond_3
    :goto_2
    iget-object p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result p3

    goto :goto_3

    :cond_4
    cmpl-float p3, p3, v1

    if-gtz p3, :cond_5

    if-nez p3, :cond_6

    .line 1137
    iget-object p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result p3

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p3, p3, v0

    if-lez p3, :cond_6

    .line 1138
    :cond_5
    iget-object p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result p3

    :goto_3
    add-int/2addr p2, p3

    .line 1141
    :cond_6
    :goto_4
    iget-object p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Lo/SequenceInputStream;

    move-result-object p3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p3, p1, p2}, Lo/SequenceInputStream;->d(II)Z

    .line 1142
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    .line 1060
    iget-object p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$StateListAnimator;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1064
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;

    iget-boolean p1, p1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$Activity;->a:Z

    return p1
.end method
