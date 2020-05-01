.class public final Lo/ResultReceiver;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ResultReceiver$TaskDescription;,
        Lo/ResultReceiver$StateListAnimator;
    }
.end annotation


# static fields
.field public static final e:Lo/ResultReceiver$StateListAnimator;


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private final d:Landroid/graphics/PointF;

.field private f:F

.field private g:Lo/ResultReceiver$TaskDescription;

.field private h:Z

.field private final i:I

.field private final j:I

.field private final l:Landroid/animation/Animator$AnimatorListener;

.field private n:Landroid/view/VelocityTracker;

.field private final o:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ResultReceiver$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ResultReceiver$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/ResultReceiver;->e:Lo/ResultReceiver$StateListAnimator;

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

    invoke-direct/range {v0 .. v5}, Lo/ResultReceiver;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/ResultReceiver;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lo/ResultReceiver;->d:Landroid/graphics/PointF;

    .line 120
    new-instance p1, Lo/ResultReceiver$Application;

    invoke-direct {p1, p0}, Lo/ResultReceiver$Application;-><init>(Lo/ResultReceiver;)V

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    iput-object p1, p0, Lo/ResultReceiver;->o:Landroid/animation/Animator$AnimatorListener;

    .line 128
    new-instance p1, Lo/ResultReceiver$Activity;

    invoke-direct {p1, p0}, Lo/ResultReceiver$Activity;-><init>(Lo/ResultReceiver;)V

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    iput-object p1, p0, Lo/ResultReceiver;->l:Landroid/animation/Animator$AnimatorListener;

    .line 136
    invoke-virtual {p0}, Lo/ResultReceiver;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    const-string p2, "vc"

    .line 137
    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lo/ResultReceiver;->i:I

    .line 138
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lo/ResultReceiver;->j:I

    const/4 p1, 0x0

    .line 139
    invoke-static {p1, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lo/ResultReceiver;->setActivityBackgroundColor(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 27
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/ResultReceiver;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lo/ResultReceiver;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/ResultReceiver;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final b(Ljava/lang/Float;)V
    .locals 6

    .line 240
    iget-boolean v0, p0, Lo/ResultReceiver;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 242
    :cond_0
    sget-object v0, Lo/ResultReceiver;->e:Lo/ResultReceiver$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez p1, :cond_5

    .line 245
    invoke-direct {p0}, Lo/ResultReceiver;->a()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 250
    iget p1, p0, Lo/ResultReceiver;->b:I

    const/4 v4, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v4, :cond_3

    .line 253
    invoke-virtual {p0}, Lo/ResultReceiver;->getHeight()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lo/ResultReceiver;->f:F

    invoke-virtual {p0}, Lo/ResultReceiver;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 256
    invoke-direct {p0}, Lo/ResultReceiver;->d()V

    goto :goto_1

    .line 257
    :cond_4
    invoke-direct {p0}, Lo/ResultReceiver;->c()V

    .line 258
    :goto_1
    iput v1, p0, Lo/ResultReceiver;->f:F

    goto :goto_3

    .line 261
    :cond_5
    iget v4, p0, Lo/ResultReceiver;->f:F

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v5, 0x3eb33333    # 0.35f

    mul-float p1, p1, v5

    int-to-float v2, v2

    mul-float p1, p1, v2

    add-float/2addr v4, p1

    int-to-float p1, v3

    cmpg-float p1, v4, p1

    if-gez p1, :cond_6

    return-void

    .line 266
    :cond_6
    iput v4, p0, Lo/ResultReceiver;->f:F

    .line 269
    invoke-virtual {p0}, Lo/ResultReceiver;->getHeight()I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    iget p1, p0, Lo/ResultReceiver;->f:F

    invoke-virtual {p0}, Lo/ResultReceiver;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    :goto_2
    cmpl-float p1, v1, v0

    if-lez p1, :cond_8

    .line 271
    invoke-direct {p0}, Lo/ResultReceiver;->d()V

    return-void

    :cond_8
    const/16 p1, 0xaa

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 275
    iget v1, p0, Lo/ResultReceiver;->f:F

    invoke-virtual {p0}, Lo/ResultReceiver;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-static {p1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 276
    sget-object v0, Lo/ResultReceiver;->e:Lo/ResultReceiver$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 278
    iget v0, p0, Lo/ResultReceiver;->f:F

    invoke-virtual {p0, v0}, Lo/ResultReceiver;->setTranslationY(F)V

    .line 279
    invoke-virtual {p0, p1}, Lo/ResultReceiver;->setActivityBackgroundColor(I)V

    :cond_9
    :goto_3
    return-void
.end method

.method private final c()V
    .locals 3

    .line 296
    iget-object v0, p0, Lo/ResultReceiver;->g:Lo/ResultReceiver$TaskDescription;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lo/ResultReceiver$TaskDescription;->b(Lo/ResultReceiver;)V

    .line 297
    :cond_0
    invoke-virtual {p0}, Lo/ResultReceiver;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 298
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 299
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lo/ResultReceiver;->l:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private final d()V
    .locals 3

    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lo/ResultReceiver;->h:Z

    .line 285
    iget-object v0, p0, Lo/ResultReceiver;->g:Lo/ResultReceiver$TaskDescription;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lo/ResultReceiver$TaskDescription;->e(Lo/ResultReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 286
    invoke-virtual {p0, v0}, Lo/ResultReceiver;->setActivityBackgroundColor(I)V

    .line 287
    invoke-virtual {p0}, Lo/ResultReceiver;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 288
    iget v1, p0, Lo/ResultReceiver;->f:F

    invoke-virtual {p0}, Lo/ResultReceiver;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 289
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lo/ResultReceiver;->o:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public final e()Lo/ResultReceiver$TaskDescription;
    .locals 1

    .line 116
    iget-object v0, p0, Lo/ResultReceiver;->g:Lo/ResultReceiver$TaskDescription;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    iget-boolean v0, p0, Lo/ResultReceiver;->c:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lo/ResultReceiver;->a:Z

    if-nez v0, :cond_4

    .line 166
    iget-object v0, p0, Lo/ResultReceiver;->d:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 167
    iget-object v3, p0, Lo/ResultReceiver;->d:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 168
    iget v4, p0, Lo/ResultReceiver;->i:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lo/ResultReceiver;->a:Z

    .line 169
    iget v4, p0, Lo/ResultReceiver;->i:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lo/ResultReceiver;->c:Z

    .line 171
    sget-object v0, Lo/ResultReceiver;->e:Lo/ResultReceiver$StateListAnimator;

    move-object v2, v0

    check-cast v2, Lo/MessagePdu;

    .line 172
    check-cast v0, Lo/MessagePdu;

    const/4 v2, 0x1

    goto :goto_1

    .line 155
    :cond_3
    iget-object v0, p0, Lo/ResultReceiver;->d:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 156
    iget-object v0, p0, Lo/ResultReceiver;->d:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 157
    iput-boolean v2, p0, Lo/ResultReceiver;->a:Z

    .line 158
    iput-boolean v2, p0, Lo/ResultReceiver;->c:Z

    .line 160
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lo/ResultReceiver;->n:Landroid/view/VelocityTracker;

    .line 179
    :cond_4
    :goto_1
    invoke-direct {p0}, Lo/ResultReceiver;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_6

    .line 181
    iget-object p1, p0, Lo/ResultReceiver;->g:Lo/ResultReceiver$TaskDescription;

    if-eqz p1, :cond_6

    invoke-interface {p1, p0}, Lo/ResultReceiver$TaskDescription;->d(Lo/ResultReceiver;)V

    goto :goto_2

    .line 186
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_6
    :goto_2
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 193
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v1, v2, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 p1, 0x3

    if-eq v1, p1, :cond_1

    goto/16 :goto_1

    .line 229
    :cond_1
    iput v3, p0, Lo/ResultReceiver;->f:F

    .line 230
    check-cast v4, Landroid/view/VelocityTracker;

    iput-object v4, p0, Lo/ResultReceiver;->n:Landroid/view/VelocityTracker;

    .line 231
    invoke-direct {p0}, Lo/ResultReceiver;->c()V

    goto :goto_1

    .line 200
    :cond_2
    iget-object v0, p0, Lo/ResultReceiver;->n:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 203
    :cond_3
    invoke-direct {p0}, Lo/ResultReceiver;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 204
    iget-object v0, p0, Lo/ResultReceiver;->d:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/ResultReceiver;->b(Ljava/lang/Float;)V

    goto :goto_1

    .line 209
    :cond_4
    iget-object v1, p0, Lo/ResultReceiver;->d:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v1, p1

    .line 212
    iget-object p1, p0, Lo/ResultReceiver;->n:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    if-eqz p1, :cond_5

    .line 213
    invoke-virtual {p1, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 214
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    .line 215
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 217
    :cond_5
    move-object p1, v4

    check-cast p1, Landroid/view/VelocityTracker;

    iput-object p1, p0, Lo/ResultReceiver;->n:Landroid/view/VelocityTracker;

    .line 218
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/16 v6, 0x64

    int-to-float v6, v6

    cmpl-float p1, p1, v6

    if-lez p1, :cond_7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float v3, v5

    cmpl-float p1, p1, v3

    if-lez p1, :cond_7

    int-to-float p1, v0

    cmpl-float p1, v1, p1

    if-lez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, -0x1

    :cond_7
    :goto_0
    iput v0, p0, Lo/ResultReceiver;->b:I

    .line 223
    sget-object p1, Lo/ResultReceiver;->e:Lo/ResultReceiver$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 225
    invoke-direct {p0, v4}, Lo/ResultReceiver;->b(Ljava/lang/Float;)V

    goto :goto_1

    .line 196
    :cond_8
    iget-object v0, p0, Lo/ResultReceiver;->n:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_9
    :goto_1
    return v2
.end method

.method public final setActivityBackgroundColor(I)V
    .locals 2

    .line 143
    invoke-virtual {p0}, Lo/ResultReceiver;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public final setDragListener(Lo/ResultReceiver$TaskDescription;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lo/ResultReceiver;->g:Lo/ResultReceiver$TaskDescription;

    return-void
.end method
