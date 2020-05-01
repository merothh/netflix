.class Lo/URI$Application;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/URI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic a:Lo/URI;

.field private b:Landroid/graphics/Paint;

.field private d:Landroid/graphics/RadialGradient;


# direct methods
.method constructor <init>(Lo/URI;I)V
    .locals 1

    .line 131
    iput-object p1, p0, Lo/URI$Application;->a:Lo/URI;

    .line 132
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 133
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/URI$Application;->b:Landroid/graphics/Paint;

    .line 134
    iput p2, p1, Lo/URI;->d:I

    .line 135
    invoke-virtual {p0}, Lo/URI$Application;->rect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lo/URI$Application;->c(I)V

    return-void
.end method

.method private c(I)V
    .locals 8

    .line 153
    new-instance v7, Landroid/graphics/RadialGradient;

    const/4 v0, 0x2

    div-int/2addr p1, v0

    int-to-float v2, p1

    iget-object p1, p0, Lo/URI$Application;->a:Lo/URI;

    iget p1, p1, Lo/URI;->d:I

    int-to-float v3, p1

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    move-object v0, v7

    move v1, v2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v7, p0, Lo/URI$Application;->d:Landroid/graphics/RadialGradient;

    .line 156
    iget-object p1, p0, Lo/URI$Application;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lo/URI$Application;->d:Landroid/graphics/RadialGradient;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4

    .line 146
    iget-object v0, p0, Lo/URI$Application;->a:Lo/URI;

    invoke-virtual {v0}, Lo/URI;->getWidth()I

    move-result v0

    .line 147
    iget-object v1, p0, Lo/URI$Application;->a:Lo/URI;

    invoke-virtual {v1}, Lo/URI;->getHeight()I

    move-result v1

    .line 148
    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Lo/URI$Application;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 149
    iget-object v3, p0, Lo/URI$Application;->a:Lo/URI;

    iget v3, v3, Lo/URI;->d:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v2, v1, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onResize(FF)V
    .locals 0

    .line 140
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/OvalShape;->onResize(FF)V

    float-to-int p1, p1

    .line 141
    invoke-direct {p0, p1}, Lo/URI$Application;->c(I)V

    return-void
.end method
