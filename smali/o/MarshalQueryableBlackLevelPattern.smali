.class public Lo/MarshalQueryableBlackLevelPattern;
.super Lcom/facebook/imagepipeline/memory/BasePool;
.source ""

# interfaces
.implements Lo/RequestQueue;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/memory/BasePool<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lo/RequestQueue;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/RuntimePermissionPresenter;Lo/Face;Lo/HighSpeedVideoConfiguration;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/BasePool;-><init>(Lo/RuntimePermissionPresenter;Lo/Face;Lo/HighSpeedVideoConfiguration;)V

    .line 43
    invoke-virtual {p0}, Lo/MarshalQueryableBlackLevelPattern;->a()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 29
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lo/MarshalQueryableBlackLevelPattern;->d(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method protected b(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 89
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p1

    return p1
.end method

.method protected b(Lo/SizeAreaComparator;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SizeAreaComparator<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 122
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->d(Lo/SizeAreaComparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_0
    return-object p1
.end method

.method public synthetic b(I)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lo/MarshalQueryableBlackLevelPattern;->i(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected c(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 66
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public d(I)I
    .locals 0

    return p1
.end method

.method public synthetic d(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lo/MarshalQueryableBlackLevelPattern;->b(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public synthetic d(Lo/SizeAreaComparator;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lo/MarshalQueryableBlackLevelPattern;->b(Lo/SizeAreaComparator;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected d(Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 114
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(I)I
    .locals 0

    return p1
.end method

.method public synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lo/MarshalQueryableBlackLevelPattern;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected i(I)Landroid/graphics/Bitmap;
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    .line 54
    invoke-static {v1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
