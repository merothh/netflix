.class public Lo/SQLiteGlobal;
.super Lo/SQLiteOutOfMemoryException;
.source ""


# instance fields
.field private B:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Landroid/graphics/Paint;

.field private final x:Landroid/graphics/Paint;

.field private final y:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 1

    .line 30
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lo/SQLiteOutOfMemoryException;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lo/SQLiteGlobal;->x:Landroid/graphics/Paint;

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lo/SQLiteGlobal;->w:Landroid/graphics/Paint;

    .line 31
    iput-object p2, p0, Lo/SQLiteGlobal;->y:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_0

    .line 33
    iget-object p1, p0, Lo/SQLiteGlobal;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 36
    :cond_0
    iget-object p1, p0, Lo/SQLiteGlobal;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 37
    iget-object p1, p0, Lo/SQLiteGlobal;->w:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private a()V
    .locals 5

    .line 74
    iget-object v0, p0, Lo/SQLiteGlobal;->B:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lo/SQLiteGlobal;->y:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_1

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lo/SQLiteGlobal;->y:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/SQLiteGlobal;->B:Ljava/lang/ref/WeakReference;

    .line 76
    iget-object v0, p0, Lo/SQLiteGlobal;->x:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lo/SQLiteGlobal;->y:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lo/SQLiteGlobal;->b:Z

    .line 79
    :cond_1
    iget-boolean v0, p0, Lo/SQLiteGlobal;->b:Z

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lo/SQLiteGlobal;->x:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    iget-object v1, p0, Lo/SQLiteGlobal;->v:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lo/SQLiteGlobal;->b:Z

    .line 83
    :cond_2
    iget-object v0, p0, Lo/SQLiteGlobal;->x:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lo/SQLiteGlobal;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method


# virtual methods
.method b()Z
    .locals 1

    .line 104
    invoke-super {p0}, Lo/SQLiteOutOfMemoryException;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/SQLiteGlobal;->y:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 46
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RoundedBitmapDrawable#draw"

    .line 47
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lo/SQLiteGlobal;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    invoke-super {p0, p1}, Lo/SQLiteOutOfMemoryException;->draw(Landroid/graphics/Canvas;)V

    .line 51
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 52
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-void

    .line 56
    :cond_2
    invoke-virtual {p0}, Lo/SQLiteGlobal;->c()V

    .line 57
    invoke-virtual {p0}, Lo/SQLiteGlobal;->d()V

    .line 58
    invoke-direct {p0}, Lo/SQLiteGlobal;->a()V

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 60
    iget-object v1, p0, Lo/SQLiteGlobal;->q:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 61
    iget-object v1, p0, Lo/SQLiteGlobal;->d:Landroid/graphics/Path;

    iget-object v2, p0, Lo/SQLiteGlobal;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 62
    iget v1, p0, Lo/SQLiteGlobal;->e:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 63
    iget-object v1, p0, Lo/SQLiteGlobal;->w:Landroid/graphics/Paint;

    iget v2, p0, Lo/SQLiteGlobal;->e:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object v1, p0, Lo/SQLiteGlobal;->w:Landroid/graphics/Paint;

    iget v2, p0, Lo/SQLiteGlobal;->h:I

    iget-object v3, p0, Lo/SQLiteGlobal;->x:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    invoke-static {v2, v3}, Lo/SQLiteDatatypeMismatchException;->e(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v1, p0, Lo/SQLiteGlobal;->i:Landroid/graphics/Path;

    iget-object v2, p0, Lo/SQLiteGlobal;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 67
    :cond_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 68
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 69
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_4
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Lo/SQLiteOutOfMemoryException;->setAlpha(I)V

    .line 110
    iget-object v0, p0, Lo/SQLiteGlobal;->x:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 111
    iget-object v0, p0, Lo/SQLiteGlobal;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 112
    invoke-super {p0, p1}, Lo/SQLiteOutOfMemoryException;->setAlpha(I)V

    .line 113
    invoke-virtual {p0}, Lo/SQLiteGlobal;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 119
    invoke-super {p0, p1}, Lo/SQLiteOutOfMemoryException;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 120
    iget-object v0, p0, Lo/SQLiteGlobal;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
