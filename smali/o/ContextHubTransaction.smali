.class public abstract Lo/ContextHubTransaction;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/GeofenceHardwareCallback;


# static fields
.field public static final e:Landroid/graphics/Bitmap$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lo/ContextHubTransaction;->e:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 115
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 116
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->c(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 122
    invoke-virtual {v0, p1, v1, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "Unknown postprocessor"

    return-object v0
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public d()Lo/MacAuthenticatedInputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 84
    invoke-static {p1, p2}, Lo/ContextHubTransaction;->e(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 85
    invoke-virtual {p0, p1}, Lo/ContextHubTransaction;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public e(Landroid/graphics/Bitmap;Lo/Camera;)Lo/CompatibilityInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lo/Camera;",
            ")",
            "Lo/CompatibilityInfo<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lo/ContextHubTransaction;->e:Landroid/graphics/Bitmap$Config;

    .line 56
    :goto_0
    invoke-virtual {p2, v1, v2, v0}, Lo/Camera;->c(IILandroid/graphics/Bitmap$Config;)Lo/CompatibilityInfo;

    move-result-object p2

    .line 61
    :try_start_0
    invoke-virtual {p2}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1}, Lo/ContextHubTransaction;->d(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 62
    invoke-static {p2}, Lo/CompatibilityInfo;->d(Lo/CompatibilityInfo;)Lo/CompatibilityInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-static {p2}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p2}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw p1
.end method
