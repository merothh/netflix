.class public final Lo/YI;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/YI$Application;,
        Lo/YI$ActionBar;
    }
.end annotation


# static fields
.field public static final e:Lo/YI$ActionBar;


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Path;

.field private final f:Lo/YI$Application;

.field private final g:I

.field private final h:Z

.field private final i:Landroid/graphics/Rect;

.field private final j:Landroid/graphics/Bitmap;

.field private final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/YI$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/YI$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/YI;->e:Lo/YI$ActionBar;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;ZII)V
    .locals 1

    const-string v0, "boxArt"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lo/YI;->j:Landroid/graphics/Bitmap;

    iput-boolean p2, p0, Lo/YI;->h:Z

    iput p3, p0, Lo/YI;->m:I

    .line 35
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lo/YI;->d:Landroid/graphics/Path;

    .line 36
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lo/YI;->a:Landroid/graphics/Matrix;

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lo/YI;->c:Landroid/graphics/Paint;

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lo/YI;->b:Landroid/graphics/Paint;

    .line 41
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/YI;->i:Landroid/graphics/Rect;

    .line 43
    new-instance p1, Lo/YI$Application;

    invoke-direct {p1, p0}, Lo/YI$Application;-><init>(Lo/YI;)V

    iput-object p1, p0, Lo/YI;->f:Lo/YI$Application;

    .line 51
    iget-object p1, p0, Lo/YI;->c:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 52
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 53
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 56
    iget-object p1, p0, Lo/YI;->b:Landroid/graphics/Paint;

    .line 57
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFlags(I)V

    const/16 p1, 0x9b

    .line 60
    invoke-static {p4, p1}, Lo/WindowId;->b(II)I

    move-result p1

    iput p1, p0, Lo/YI;->g:I

    return-void
.end method

.method public static final synthetic c(Lo/YI;)I
    .locals 0

    .line 28
    iget p0, p0, Lo/YI;->m:I

    return p0
.end method


# virtual methods
.method public final c()Lo/YI$Application$Activity;
    .locals 1

    .line 147
    iget-object v0, p0, Lo/YI;->f:Lo/YI$Application;

    invoke-virtual {v0}, Lo/YI$Application;->c()Lo/YI$Application$Activity;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 2

    .line 144
    iget-object v0, p0, Lo/YI;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lo/YI;->a:Landroid/graphics/Matrix;

    .line 66
    iget-boolean v1, p0, Lo/YI;->h:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lo/YI;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lo/YI;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 69
    iget-object v3, p0, Lo/YI;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lo/YI;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    neg-float v3, v3

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 70
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lo/YI;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lo/YI;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 74
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 75
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 79
    :goto_0
    iget-object v0, p0, Lo/YI;->d:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 85
    iget-object v1, p0, Lo/YI;->j:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lo/YI;->a:Landroid/graphics/Matrix;

    iget-object v3, p0, Lo/YI;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 87
    iget-object v1, p0, Lo/YI;->f:Lo/YI$Application;

    invoke-virtual {v1, p1}, Lo/YI$Application;->draw(Landroid/graphics/Canvas;)V

    .line 90
    iget-object v1, p0, Lo/YI;->i:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lo/YI;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 91
    iget-object v1, p0, Lo/YI;->i:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lo/YI;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 93
    iget-object v1, p0, Lo/YI;->b:Landroid/graphics/Paint;

    .line 94
    new-instance v10, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 98
    iget-object v2, p0, Lo/YI;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    const/4 v7, 0x0

    .line 100
    iget v8, p0, Lo/YI;->g:I

    .line 101
    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    .line 94
    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    check-cast v10, Landroid/graphics/Shader;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 105
    iget-object v1, p0, Lo/YI;->i:Landroid/graphics/Rect;

    iget-object v2, p0, Lo/YI;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 107
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final e()Landroid/graphics/Bitmap;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/YI;->j:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 111
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_2

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Lo/amq;->b(F)F

    move-result v0

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-static {p1}, Lo/amq;->b(F)F

    move-result p1

    .line 117
    iget-boolean v1, p0, Lo/YI;->h:Z

    if-eqz v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 120
    :goto_0
    iget-object v2, p0, Lo/YI;->d:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 121
    iget-boolean v2, p0, Lo/YI;->h:Z

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lo/YI;->d:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v0, p1, v1, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 124
    :cond_1
    iget-object p1, p0, Lo/YI;->d:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setAlpha(I)V
    .locals 3

    .line 132
    iget-object v0, p0, Lo/YI;->f:Lo/YI$Application;

    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lo/YI$Application;->setAlpha(F)V

    .line 133
    iget-object v0, p0, Lo/YI;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 134
    iget-object v0, p0, Lo/YI;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lo/YI;->f:Lo/YI$Application;

    invoke-virtual {v0, p1}, Lo/YI$Application;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 139
    iget-object v0, p0, Lo/YI;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 140
    iget-object v0, p0, Lo/YI;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
