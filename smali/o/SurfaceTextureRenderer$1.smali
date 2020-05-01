.class Lo/SurfaceTextureRenderer$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ConfigurationBoundResourceCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SurfaceTextureRenderer;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ConfigurationBoundResourceCache<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/SurfaceTextureRenderer;


# direct methods
.method constructor <init>(Lo/SurfaceTextureRenderer;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lo/SurfaceTextureRenderer$1;->b:Lo/SurfaceTextureRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 47
    :try_start_0
    iget-object v0, p0, Lo/SurfaceTextureRenderer$1;->b:Lo/SurfaceTextureRenderer;

    invoke-virtual {v0, p1}, Lo/SurfaceTextureRenderer;->c(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    throw v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lo/SurfaceTextureRenderer$1;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method
