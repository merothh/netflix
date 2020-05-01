.class public Lo/SurfaceTextureRenderer;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private final b:I

.field private c:J

.field private final d:Lo/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ConfigurationBoundResourceCache<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final e:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 39
    :goto_0
    invoke-static {v2}, Lo/StringParceledListSlice;->a(Z)V

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_1
    invoke-static {v0}, Lo/StringParceledListSlice;->a(Z)V

    .line 41
    iput p1, p0, Lo/SurfaceTextureRenderer;->b:I

    .line 42
    iput p2, p0, Lo/SurfaceTextureRenderer;->e:I

    .line 43
    new-instance p1, Lo/SurfaceTextureRenderer$1;

    invoke-direct {p1, p0}, Lo/SurfaceTextureRenderer$1;-><init>(Lo/SurfaceTextureRenderer;)V

    iput-object p1, p0, Lo/SurfaceTextureRenderer;->d:Lo/ConfigurationBoundResourceCache;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 1

    monitor-enter p0

    .line 93
    :try_start_0
    iget v0, p0, Lo/SurfaceTextureRenderer;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/graphics/Bitmap;)Z
    .locals 6

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-static {p1}, Lo/ProgramSelector;->d(Landroid/graphics/Bitmap;)I

    move-result p1

    .line 64
    iget v0, p0, Lo/SurfaceTextureRenderer;->a:I

    iget v1, p0, Lo/SurfaceTextureRenderer;->b:I

    if-ge v0, v1, :cond_1

    iget-wide v0, p0, Lo/SurfaceTextureRenderer;->c:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget p1, p0, Lo/SurfaceTextureRenderer;->e:I

    int-to-long v4, p1

    cmp-long p1, v0, v4

    if-lez p1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget p1, p0, Lo/SurfaceTextureRenderer;->a:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lo/SurfaceTextureRenderer;->a:I

    .line 68
    iget-wide v4, p0, Lo/SurfaceTextureRenderer;->c:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lo/SurfaceTextureRenderer;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 65
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Lo/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/ConfigurationBoundResourceCache<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lo/SurfaceTextureRenderer;->d:Lo/ConfigurationBoundResourceCache;

    return-object v0
.end method

.method public declared-synchronized c()J
    .locals 2

    monitor-enter p0

    .line 100
    :try_start_0
    iget-wide v0, p0, Lo/SurfaceTextureRenderer;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Landroid/graphics/Bitmap;)V
    .locals 9

    monitor-enter p0

    .line 78
    :try_start_0
    invoke-static {p1}, Lo/ProgramSelector;->d(Landroid/graphics/Bitmap;)I

    move-result p1

    .line 79
    iget v0, p0, Lo/SurfaceTextureRenderer;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "No bitmaps registered."

    invoke-static {v0, v3}, Lo/StringParceledListSlice;->e(ZLjava/lang/Object;)V

    int-to-long v3, p1

    .line 80
    iget-wide v5, p0, Lo/SurfaceTextureRenderer;->c:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v5, "Bitmap size bigger than the total registered size: %d, %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v1

    iget-wide v7, p0, Lo/SurfaceTextureRenderer;->c:J

    .line 84
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v2

    .line 80
    invoke-static {v0, v5, v6}, Lo/StringParceledListSlice;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-wide v0, p0, Lo/SurfaceTextureRenderer;->c:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lo/SurfaceTextureRenderer;->c:J

    .line 86
    iget p1, p0, Lo/SurfaceTextureRenderer;->a:I

    sub-int/2addr p1, v2

    iput p1, p0, Lo/SurfaceTextureRenderer;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d()I
    .locals 1

    monitor-enter p0

    .line 108
    :try_start_0
    iget v0, p0, Lo/SurfaceTextureRenderer;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()I
    .locals 1

    monitor-enter p0

    .line 104
    :try_start_0
    iget v0, p0, Lo/SurfaceTextureRenderer;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
