.class public Lo/NoSuchMethodError$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/NoSuchMethodError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/NoSuchMethodError$Application$TaskDescription;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/BitmapDrawable;

.field private b:Landroid/graphics/Rect;

.field private c:F

.field private d:Landroid/view/animation/Interpolator;

.field private e:J

.field private f:F

.field private g:F

.field private h:I

.field private i:J

.field private j:Landroid/graphics/Rect;

.field private k:Z

.field private l:Lo/NoSuchMethodError$Application$TaskDescription;

.field private o:Z


# virtual methods
.method public b()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 131
    iget-object v0, p0, Lo/NoSuchMethodError$Application;->a:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public d(J)Z
    .locals 4

    .line 228
    iget-boolean v0, p0, Lo/NoSuchMethodError$Application;->k:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 231
    :cond_0
    iget-wide v0, p0, Lo/NoSuchMethodError$Application;->i:J

    sub-long/2addr p1, v0

    long-to-float p1, p1

    iget-wide v0, p0, Lo/NoSuchMethodError$Application;->e:J

    long-to-float p2, v0

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    .line 232
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 233
    iget-boolean v1, p0, Lo/NoSuchMethodError$Application;->o:Z

    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 236
    :cond_1
    iget-object v0, p0, Lo/NoSuchMethodError$Application;->d:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    move v0, p1

    goto :goto_0

    .line 237
    :cond_2
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 238
    :goto_0
    iget v1, p0, Lo/NoSuchMethodError$Application;->h:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 239
    iget-object v2, p0, Lo/NoSuchMethodError$Application;->b:Landroid/graphics/Rect;

    iget-object v3, p0, Lo/NoSuchMethodError$Application;->j:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 240
    iget-object v2, p0, Lo/NoSuchMethodError$Application;->b:Landroid/graphics/Rect;

    iget-object v3, p0, Lo/NoSuchMethodError$Application;->j:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 241
    iget v1, p0, Lo/NoSuchMethodError$Application;->g:F

    iget v2, p0, Lo/NoSuchMethodError$Application;->f:F

    sub-float/2addr v2, v1

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lo/NoSuchMethodError$Application;->c:F

    .line 242
    iget-object v0, p0, Lo/NoSuchMethodError$Application;->a:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lo/NoSuchMethodError$Application;->b:Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    .line 243
    iget v1, p0, Lo/NoSuchMethodError$Application;->c:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 244
    iget-object v0, p0, Lo/NoSuchMethodError$Application;->a:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lo/NoSuchMethodError$Application;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 246
    :cond_3
    iget-boolean v0, p0, Lo/NoSuchMethodError$Application;->o:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_4

    .line 247
    iput-boolean v1, p0, Lo/NoSuchMethodError$Application;->k:Z

    .line 248
    iget-object p1, p0, Lo/NoSuchMethodError$Application;->l:Lo/NoSuchMethodError$Application$TaskDescription;

    if-eqz p1, :cond_4

    .line 249
    invoke-interface {p1}, Lo/NoSuchMethodError$Application$TaskDescription;->a()V

    .line 252
    :cond_4
    iget-boolean p1, p0, Lo/NoSuchMethodError$Application;->k:Z

    xor-int/2addr p1, v1

    return p1
.end method
