.class public Lo/XW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Ya;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/XW$Application;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private a:Landroid/view/TextureView;

.field private b:Landroid/graphics/SurfaceTexture;

.field private c:Landroid/view/Surface;

.field private e:Lo/XX;

.field private f:I

.field private g:I

.field private h:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

.field private i:I

.field private j:I

.field private m:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lo/XW;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/XW;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/XX;)V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->b:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    iput-object v0, p0, Lo/XW;->h:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    const/16 v0, 0x780

    .line 117
    iput v0, p0, Lo/XW;->i:I

    const/16 v0, 0x438

    .line 118
    iput v0, p0, Lo/XW;->f:I

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lo/XW;->j:I

    .line 120
    iput v0, p0, Lo/XW;->g:I

    const v0, 0x3fe38e39

    .line 121
    iput v0, p0, Lo/XW;->m:F

    .line 124
    new-instance v0, Lo/XW$Application;

    invoke-direct {v0, p0, p1}, Lo/XW$Application;-><init>(Lo/XW;Landroid/content/Context;)V

    iput-object v0, p0, Lo/XW;->a:Landroid/view/TextureView;

    .line 125
    iget-object p1, p0, Lo/XW;->a:Landroid/view/TextureView;

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 126
    iput-object p2, p0, Lo/XW;->e:Lo/XX;

    return-void
.end method

.method static synthetic a(Lo/XW;)I
    .locals 0

    .line 26
    iget p0, p0, Lo/XW;->j:I

    return p0
.end method

.method static synthetic b(Lo/XW;)I
    .locals 0

    .line 26
    iget p0, p0, Lo/XW;->i:I

    return p0
.end method

.method static synthetic c(Lo/XW;)I
    .locals 0

    .line 26
    iget p0, p0, Lo/XW;->g:I

    return p0
.end method

.method private c()V
    .locals 2

    .line 271
    iget-object v0, p0, Lo/XW;->b:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lo/XW;->b:Landroid/graphics/SurfaceTexture;

    .line 274
    iget-object v1, p0, Lo/XW;->c:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 276
    iput-object v0, p0, Lo/XW;->c:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method static synthetic d(Lo/XW;)I
    .locals 0

    .line 26
    iget p0, p0, Lo/XW;->f:I

    return p0
.end method

.method private e()Z
    .locals 1

    .line 267
    iget v0, p0, Lo/XW;->g:I

    if-lez v0, :cond_0

    iget v0, p0, Lo/XW;->j:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic e(Lo/XW;)Z
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/XW;->e()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lo/XW;)Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/XW;->h:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/view/Surface;
    .locals 1

    .line 163
    iget-object v0, p0, Lo/XW;->c:Landroid/view/Surface;

    return-object v0
.end method

.method public a(Landroid/graphics/Matrix;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lo/XW;->a:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public a(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 229
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lo/XW;->i:I

    .line 230
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lo/XW;->f:I

    :cond_0
    if-eqz p2, :cond_1

    .line 233
    iget v0, p2, Landroid/graphics/Point;->x:I

    iput v0, p0, Lo/XW;->j:I

    .line 234
    iget v0, p2, Landroid/graphics/Point;->y:I

    iput v0, p0, Lo/XW;->g:I

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 237
    :cond_2
    iget-object p1, p0, Lo/XW;->a:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->requestLayout()V

    :cond_3
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 173
    iget-object v0, p0, Lo/XW;->a:Landroid/view/TextureView;

    return-object v0
.end method

.method public b(Z)V
    .locals 2

    .line 183
    iget-object v0, p0, Lo/XW;->a:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    const/16 v1, 0x2000

    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 263
    iget-object v0, p0, Lo/XW;->a:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;)V
    .locals 2

    .line 199
    iput-object p1, p0, Lo/XW;->h:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    .line 200
    sget-object v0, Lo/XW$3;->b:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    .line 221
    sget-object p1, Lo/XW;->d:Ljava/lang/String;

    const-string v0, "unsupported scale type"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    :cond_0
    invoke-direct {p0}, Lo/XW;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 206
    iget p1, p0, Lo/XW;->i:I

    int-to-float p1, p1

    iget v0, p0, Lo/XW;->j:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 207
    iget v0, p0, Lo/XW;->f:I

    int-to-float v0, v0

    iget v1, p0, Lo/XW;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 208
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 209
    invoke-virtual {v1, p1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 210
    invoke-virtual {p0, v1}, Lo/XW;->a(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->c()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/XW;->a(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 215
    :cond_2
    iget p1, p0, Lo/XW;->i:I

    int-to-float p1, p1

    iget v0, p0, Lo/XW;->f:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lo/XW;->m:F

    .line 216
    invoke-direct {p0}, Lo/XW;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 217
    iget p1, p0, Lo/XW;->j:I

    int-to-float p1, p1

    iget v0, p0, Lo/XW;->g:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lo/XW;->m:F

    :cond_3
    :goto_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 131
    sget-object p2, Lo/XW;->d:Ljava/lang/String;

    const-string p3, "onSurfaceTextureAvailable"

    invoke-static {p2, p3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 133
    iget-object p2, p0, Lo/XW;->b:Landroid/graphics/SurfaceTexture;

    if-eqz p2, :cond_0

    .line 134
    invoke-direct {p0}, Lo/XW;->c()V

    .line 136
    :cond_0
    iput-object p1, p0, Lo/XW;->b:Landroid/graphics/SurfaceTexture;

    .line 137
    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lo/XW;->b:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lo/XW;->c:Landroid/view/Surface;

    .line 138
    iget-object p1, p0, Lo/XW;->e:Lo/XX;

    invoke-interface {p1, p0}, Lo/XX;->b(Lo/Ya;)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 150
    sget-object p1, Lo/XW;->d:Ljava/lang/String;

    const-string v0, "onSurfaceTextureDestroyed"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {p0}, Lo/XW;->c()V

    .line 152
    iget-object p1, p0, Lo/XW;->e:Lo/XX;

    invoke-interface {p1, p0}, Lo/XX;->c(Lo/Ya;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 144
    sget-object p1, Lo/XW;->d:Ljava/lang/String;

    const-string v0, "onSurfaceTextureSizeChanged"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p1, p0, Lo/XW;->e:Lo/XX;

    invoke-interface {p1, p0, p2, p3}, Lo/XX;->a(Lo/Ya;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 158
    iget-object p1, p0, Lo/XW;->e:Lo/XX;

    invoke-interface {p1, p0}, Lo/XX;->a(Lo/Ya;)V

    return-void
.end method
