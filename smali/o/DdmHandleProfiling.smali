.class public Lo/DdmHandleProfiling;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DdmHandleProfiling$ActionBar;
    }
.end annotation


# instance fields
.field a:Z

.field b:Z

.field final c:F

.field d:Lo/DdmHandleProfiling$ActionBar;

.field e:J

.field g:F

.field i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lo/DdmHandleProfiling;->c:F

    .line 46
    invoke-virtual {p0}, Lo/DdmHandleProfiling;->a()V

    return-void
.end method

.method public static d(Landroid/content/Context;)Lo/DdmHandleProfiling;
    .locals 1

    .line 51
    new-instance v0, Lo/DdmHandleProfiling;

    invoke-direct {v0, p0}, Lo/DdmHandleProfiling;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lo/DdmHandleProfiling;->d:Lo/DdmHandleProfiling$ActionBar;

    .line 57
    invoke-virtual {p0}, Lo/DdmHandleProfiling;->d()V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lo/DdmHandleProfiling;->a:Z

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lo/DdmHandleProfiling;->a:Z

    .line 66
    iput-boolean v0, p0, Lo/DdmHandleProfiling;->b:Z

    return-void
.end method

.method public e(Lo/DdmHandleProfiling$ActionBar;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lo/DdmHandleProfiling;->d:Lo/DdmHandleProfiling$ActionBar;

    return-void
.end method

.method public e(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 96
    :cond_0
    iput-boolean v2, p0, Lo/DdmHandleProfiling;->a:Z

    .line 97
    iput-boolean v2, p0, Lo/DdmHandleProfiling;->b:Z

    goto/16 :goto_0

    .line 90
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lo/DdmHandleProfiling;->g:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lo/DdmHandleProfiling;->c:F

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_2

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lo/DdmHandleProfiling;->i:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lo/DdmHandleProfiling;->c:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_8

    .line 92
    :cond_2
    iput-boolean v2, p0, Lo/DdmHandleProfiling;->b:Z

    goto :goto_0

    .line 100
    :cond_3
    iput-boolean v2, p0, Lo/DdmHandleProfiling;->a:Z

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lo/DdmHandleProfiling;->g:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lo/DdmHandleProfiling;->c:F

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_4

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lo/DdmHandleProfiling;->i:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lo/DdmHandleProfiling;->c:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 103
    :cond_4
    iput-boolean v2, p0, Lo/DdmHandleProfiling;->b:Z

    .line 105
    :cond_5
    iget-boolean v0, p0, Lo/DdmHandleProfiling;->b:Z

    if-eqz v0, :cond_6

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Lo/DdmHandleProfiling;->e:J

    sub-long/2addr v3, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-gtz p1, :cond_6

    .line 107
    iget-object p1, p0, Lo/DdmHandleProfiling;->d:Lo/DdmHandleProfiling$ActionBar;

    if-eqz p1, :cond_6

    .line 108
    invoke-interface {p1}, Lo/DdmHandleProfiling$ActionBar;->s()Z

    .line 114
    :cond_6
    iput-boolean v2, p0, Lo/DdmHandleProfiling;->b:Z

    goto :goto_0

    .line 83
    :cond_7
    iput-boolean v1, p0, Lo/DdmHandleProfiling;->a:Z

    .line 84
    iput-boolean v1, p0, Lo/DdmHandleProfiling;->b:Z

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lo/DdmHandleProfiling;->e:J

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lo/DdmHandleProfiling;->g:F

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lo/DdmHandleProfiling;->i:F

    :cond_8
    :goto_0
    return v1
.end method
