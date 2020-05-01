.class public final Lo/Vm$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vm;->a(ILcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;Lcom/netflix/model/leafs/originals/interactive/Choice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Vm;

.field private c:Z

.field final synthetic d:Lcom/netflix/model/leafs/originals/interactive/Choice;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lo/Vm;ILcom/netflix/model/leafs/originals/interactive/Choice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ")V"
        }
    .end annotation

    .line 443
    iput-object p1, p0, Lo/Vm$ActionBar;->b:Lo/Vm;

    iput p2, p0, Lo/Vm$ActionBar;->e:I

    iput-object p3, p0, Lo/Vm$ActionBar;->d:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Z)V
    .locals 7

    .line 485
    iget-object v0, p0, Lo/Vm$ActionBar;->b:Lo/Vm;

    iget v1, p0, Lo/Vm$ActionBar;->e:I

    if-eqz p1, :cond_0

    const-string v2, "focused"

    goto :goto_0

    :cond_0
    const-string v2, "default"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lo/Vm;->a(ILjava/lang/String;)V

    .line 486
    iget-object v0, p0, Lo/Vm$ActionBar;->b:Lo/Vm;

    invoke-virtual {v0}, Lo/Vm;->c()Lo/Vv;

    move-result-object v1

    iget v3, p0, Lo/Vm$ActionBar;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lo/Vv;->b(Lo/Vv;ZILandroid/view/animation/Animation$AnimationListener;ILjava/lang/Object;)V

    return-void
.end method

.method private final d(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    if-eqz p1, :cond_0

    .line 491
    new-instance v0, Landroid/graphics/Rect;

    .line 492
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 493
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 494
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    .line 495
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 491
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 499
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 500
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p1, p2

    .line 498
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 446
    iget-object v0, p0, Lo/Vm$ActionBar;->b:Lo/Vm;

    invoke-static {v0}, Lo/Vm;->a(Lo/Vm;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    iget-object v0, p0, Lo/Vm$ActionBar;->b:Lo/Vm;

    invoke-static {v0}, Lo/Vm;->b(Lo/Vm;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz p2, :cond_0

    .line 447
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    .line 448
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    :goto_1
    const/4 v3, 0x5

    if-nez v0, :cond_3

    goto :goto_2

    .line 449
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    const/16 v3, 0x9

    if-nez v0, :cond_5

    goto :goto_4

    .line 450
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_6

    .line 451
    :goto_3
    iput-boolean v2, p0, Lo/Vm$ActionBar;->c:Z

    .line 452
    invoke-direct {p0, v2}, Lo/Vm$ActionBar;->a(Z)V

    goto/16 :goto_e

    :cond_6
    :goto_4
    if-nez v0, :cond_7

    goto :goto_5

    .line 455
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_8

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v3, 0x6

    if-nez v0, :cond_9

    goto :goto_7

    .line 456
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_a

    .line 457
    :goto_6
    iget-boolean p1, p0, Lo/Vm$ActionBar;->c:Z

    if-eqz p1, :cond_13

    .line 458
    iget-object p1, p0, Lo/Vm$ActionBar;->b:Lo/Vm;

    iget p2, p0, Lo/Vm$ActionBar;->e:I

    iget-object v0, p0, Lo/Vm$ActionBar;->d:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-static {p1, p2, v0}, Lo/Vm;->e(Lo/Vm;ILcom/netflix/model/leafs/originals/interactive/Choice;)V

    goto :goto_e

    :cond_a
    :goto_7
    const/4 v3, 0x2

    if-nez v0, :cond_b

    goto :goto_8

    .line 462
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_c

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v3, 0x7

    if-nez v0, :cond_d

    goto :goto_a

    .line 463
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_e

    .line 465
    :goto_9
    iget-boolean v0, p0, Lo/Vm$ActionBar;->c:Z

    if-eqz v0, :cond_13

    invoke-direct {p0, p1, p2}, Lo/Vm$ActionBar;->d(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 466
    iput-boolean v1, p0, Lo/Vm$ActionBar;->c:Z

    .line 467
    invoke-direct {p0, v1}, Lo/Vm$ActionBar;->a(Z)V

    goto :goto_e

    :cond_e
    :goto_a
    const/4 p1, 0x3

    if-nez v0, :cond_f

    goto :goto_b

    .line 471
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_10

    goto :goto_c

    :cond_10
    :goto_b
    const/16 p1, 0xa

    if-nez v0, :cond_11

    goto :goto_d

    .line 472
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_12

    .line 473
    :goto_c
    invoke-direct {p0, v1}, Lo/Vm$ActionBar;->a(Z)V

    goto :goto_e

    :cond_12
    :goto_d
    const/4 v2, 0x0

    :cond_13
    :goto_e
    return v2

    :cond_14
    return v1
.end method
