.class public final Lo/Filterable;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Filterable$TaskDescription;,
        Lo/Filterable$StateListAnimator;
    }
.end annotation


# static fields
.field public static final a:Lo/Filterable$StateListAnimator;

.field private static final h:I


# instance fields
.field private b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private c:I

.field private final d:Landroid/animation/ValueAnimator;

.field private e:Z

.field private final f:Landroid/graphics/PointF;

.field private i:Z

.field private j:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo/Filterable$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Filterable$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/Filterable;->a:Lo/Filterable$StateListAnimator;

    const/16 v0, 0x96

    int-to-float v0, v0

    .line 192
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 193
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Lookup.get<Context>().resources"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    .line 192
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lo/Filterable;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/Filterable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/Filterable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lo/Filterable;->d:Landroid/animation/ValueAnimator;

    .line 71
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lo/Filterable;->f:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p1}, Lo/Filterable;->setSplitTrack(Z)V

    .line 78
    iget-object p1, p0, Lo/Filterable;->d:Landroid/animation/ValueAnimator;

    new-instance p2, Lo/Filterable$1;

    invoke-direct {p2, p0}, Lo/Filterable$1;-><init>(Lo/Filterable;)V

    check-cast p2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 81
    iget-object p1, p0, Lo/Filterable;->d:Landroid/animation/ValueAnimator;

    check-cast p1, Landroid/animation/Animator;

    .line 184
    new-instance p2, Lo/Filterable$Application;

    invoke-direct {p2, p0}, Lo/Filterable$Application;-><init>(Lo/Filterable;)V

    .line 190
    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 85
    iget-object p1, p0, Lo/Filterable;->d:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 86
    iget-object p1, p0, Lo/Filterable;->d:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    check-cast p2, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    new-instance p1, Lo/Filterable$3;

    invoke-direct {p1, p0}, Lo/Filterable$3;-><init>(Lo/Filterable;)V

    check-cast p1, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 20
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Filterable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lo/Filterable;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lo/Filterable;->e:Z

    return p0
.end method

.method public static final synthetic b(Lo/Filterable;)Ljava/lang/Integer;
    .locals 0

    .line 20
    iget-object p0, p0, Lo/Filterable;->j:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic b(Lo/Filterable;Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lo/Filterable;->i:Z

    return-void
.end method

.method public static final synthetic c(Lo/Filterable;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lo/Filterable;->b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lo/Filterable;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    .line 174
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 138
    :cond_1
    iget-boolean v0, p0, Lo/Filterable;->e:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lo/Filterable;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 142
    :cond_2
    iget-boolean v0, p0, Lo/Filterable;->i:Z

    if-nez v0, :cond_3

    .line 144
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 146
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v4, p0, Lo/Filterable;->f:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 147
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v4, Lo/Filterable;->h:I

    if-le v0, v4, :cond_6

    .line 148
    iget-object p1, p0, Lo/Filterable;->b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    instance-of v0, p1, Lo/Filterable$TaskDescription;

    if-nez v0, :cond_4

    const/4 p1, 0x0

    :cond_4
    check-cast p1, Lo/Filterable$TaskDescription;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Lo/Filterable$TaskDescription;->b(Lo/Filterable;)V

    .line 149
    :cond_5
    iput-boolean v2, p0, Lo/Filterable;->e:Z

    .line 150
    iget-object p1, p0, Lo/Filterable;->d:Landroid/animation/ValueAnimator;

    new-array v0, v3, [I

    .line 151
    invoke-virtual {p0}, Lo/Filterable;->getProgress()I

    move-result v3

    aput v3, v0, v1

    iget v3, p0, Lo/Filterable;->c:I

    aput v3, v0, v2

    .line 150
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 153
    iget-object p1, p0, Lo/Filterable;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return v1

    .line 156
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/Filterable;->j:Ljava/lang/Integer;

    .line 157
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_7
    :goto_0
    return v1

    .line 162
    :cond_8
    iget-boolean v0, p0, Lo/Filterable;->e:Z

    if-nez v0, :cond_9

    .line 163
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_1

    .line 166
    :cond_9
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 168
    iget v0, p0, Lo/Filterable;->c:I

    invoke-virtual {p0, v0}, Lo/Filterable;->setProgress(I)V

    :goto_1
    return p1

    .line 128
    :cond_a
    iput-boolean v1, p0, Lo/Filterable;->e:Z

    .line 129
    iget-object v0, p0, Lo/Filterable;->f:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 130
    iget-object v0, p0, Lo/Filterable;->f:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 131
    invoke-virtual {p0}, Lo/Filterable;->getProgress()I

    move-result v0

    iput v0, p0, Lo/Filterable;->c:I

    .line 132
    iput-boolean v1, p0, Lo/Filterable;->i:Z

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/Filterable;->j:Ljava/lang/Integer;

    .line 134
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lo/Filterable;->b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method
