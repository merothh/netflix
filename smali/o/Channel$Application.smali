.class Lo/Channel$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/view/View;

.field private d:I

.field private e:I

.field private g:I

.field private h:I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p1, p0, Lo/Channel$Application;->c:Landroid/view/View;

    return-void
.end method

.method private b()V
    .locals 5

    .line 491
    iget-object v0, p0, Lo/Channel$Application;->c:Landroid/view/View;

    iget v1, p0, Lo/Channel$Application;->d:I

    iget v2, p0, Lo/Channel$Application;->e:I

    iget v3, p0, Lo/Channel$Application;->b:I

    iget v4, p0, Lo/Channel$Application;->a:I

    invoke-static {v0, v1, v2, v3, v4}, Lo/DSAParams;->b(Landroid/view/View;IIII)V

    const/4 v0, 0x0

    .line 492
    iput v0, p0, Lo/Channel$Application;->h:I

    .line 493
    iput v0, p0, Lo/Channel$Application;->g:I

    return-void
.end method


# virtual methods
.method c(Landroid/graphics/PointF;)V
    .locals 1

    .line 482
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lo/Channel$Application;->b:I

    .line 483
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lo/Channel$Application;->a:I

    .line 484
    iget p1, p0, Lo/Channel$Application;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/Channel$Application;->g:I

    .line 485
    iget p1, p0, Lo/Channel$Application;->h:I

    iget v0, p0, Lo/Channel$Application;->g:I

    if-ne p1, v0, :cond_0

    .line 486
    invoke-direct {p0}, Lo/Channel$Application;->b()V

    :cond_0
    return-void
.end method

.method d(Landroid/graphics/PointF;)V
    .locals 1

    .line 473
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lo/Channel$Application;->d:I

    .line 474
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lo/Channel$Application;->e:I

    .line 475
    iget p1, p0, Lo/Channel$Application;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/Channel$Application;->h:I

    .line 476
    iget p1, p0, Lo/Channel$Application;->h:I

    iget v0, p0, Lo/Channel$Application;->g:I

    if-ne p1, v0, :cond_0

    .line 477
    invoke-direct {p0}, Lo/Channel$Application;->b()V

    :cond_0
    return-void
.end method
