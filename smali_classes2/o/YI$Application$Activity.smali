.class public final Lo/YI$Application$Activity;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/YI$Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Activity"
.end annotation


# instance fields
.field private a:F

.field final synthetic b:Lo/YI$Application;

.field private final c:F

.field private final d:F

.field private final e:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lo/YI$Application;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lo/YI$Application$Activity;->b:Lo/YI$Application;

    .line 177
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p2, p0, Lo/YI$Application$Activity;->d:F

    iput p3, p0, Lo/YI$Application$Activity;->c:F

    .line 181
    iget p1, p0, Lo/YI$Application$Activity;->d:F

    iput p1, p0, Lo/YI$Application$Activity;->a:F

    .line 184
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    const-wide/16 p2, 0x32

    .line 186
    invoke-virtual {p0, p2, p3}, Lo/YI$Application$Activity;->setDuration(J)V

    .line 187
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    check-cast p2, Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p2}, Lo/YI$Application$Activity;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 188
    iput-object p1, p0, Lo/YI$Application$Activity;->e:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 192
    iget p2, p0, Lo/YI$Application$Activity;->d:F

    iget v0, p0, Lo/YI$Application$Activity;->c:F

    sub-float/2addr v0, p2

    mul-float v0, v0, p1

    add-float/2addr p2, v0

    iput p2, p0, Lo/YI$Application$Activity;->a:F

    .line 193
    iget-object p1, p0, Lo/YI$Application$Activity;->b:Lo/YI$Application;

    iget-object p1, p1, Lo/YI$Application;->c:Lo/YI;

    invoke-virtual {p1}, Lo/YI;->invalidateSelf()V

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lo/YI$Application$Activity;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/YI$Application$Activity;->b:Lo/YI$Application;

    iget-object v1, v1, Lo/YI$Application;->c:Lo/YI;

    invoke-virtual {v1}, Lo/YI;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 198
    iget-object v0, p0, Lo/YI$Application$Activity;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/YI$Application$Activity;->b:Lo/YI$Application;

    iget-object v1, v1, Lo/YI$Application;->c:Lo/YI;

    invoke-virtual {v1}, Lo/YI;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 200
    iget-object v3, p0, Lo/YI$Application$Activity;->e:Landroid/graphics/RectF;

    iget v4, p0, Lo/YI$Application$Activity;->d:F

    iget v5, p0, Lo/YI$Application$Activity;->a:F

    iget-object v0, p0, Lo/YI$Application$Activity;->b:Lo/YI$Application;

    invoke-static {v0}, Lo/YI$Application;->d(Lo/YI$Application;)Landroid/graphics/Paint;

    move-result-object v7

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method
