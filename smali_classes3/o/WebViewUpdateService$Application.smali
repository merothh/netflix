.class final Lo/WebViewUpdateService$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WebViewUpdateService;->c(Lo/Serializable;Ljava/lang/String;II)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lo/WebViewUpdateService;

.field final synthetic c:I

.field final synthetic d:I


# direct methods
.method constructor <init>(Lo/WebViewUpdateService;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/WebViewUpdateService$Application;->b:Lo/WebViewUpdateService;

    iput p2, p0, Lo/WebViewUpdateService$Application;->c:I

    iput p3, p0, Lo/WebViewUpdateService$Application;->d:I

    iput-object p4, p0, Lo/WebViewUpdateService$Application;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-virtual {p0, p1}, Lo/WebViewUpdateService$Application;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)Ljava/io/File;
    .locals 12

    const-string v0, "boxArtImageResult"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    sget-object v0, Lo/AbsSpinner;->c:Lo/AbsSpinner$StateListAnimator;

    invoke-virtual {v0}, Lo/AbsSpinner$StateListAnimator;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 231
    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    move-object v4, v1

    check-cast v4, Lo/CompatibilityInfo;

    .line 233
    iget-object v4, p0, Lo/WebViewUpdateService$Application;->b:Lo/WebViewUpdateService;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v4, v5}, Lo/WebViewUpdateService;->a(Lo/WebViewUpdateService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 235
    iget-object v5, p0, Lo/WebViewUpdateService$Application;->b:Lo/WebViewUpdateService;

    invoke-virtual {v5}, Lo/WebViewUpdateService;->d()Landroid/graphics/Paint;

    move-result-object v5

    .line 236
    iget v6, p0, Lo/WebViewUpdateService$Application;->c:I

    iget v7, p0, Lo/WebViewUpdateService$Application;->d:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 237
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 241
    new-instance v8, Landroid/graphics/Rect;

    iget v9, p0, Lo/WebViewUpdateService$Application;->c:I

    iget v10, p0, Lo/WebViewUpdateService$Application;->d:I

    const/4 v11, 0x0

    invoke-direct {v8, v11, v11, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 238
    invoke-virtual {v7, v4, v2, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 245
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v8, "resultBitmap"

    .line 246
    invoke-static {v6, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 247
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sub-int/2addr v10, p1

    int-to-float p1, v10

    div-float/2addr p1, v9

    .line 244
    invoke-virtual {v7, v4, v8, p1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 252
    iget-object p1, p0, Lo/WebViewUpdateService$Application;->b:Lo/WebViewUpdateService;

    invoke-static {p1}, Lo/WebViewUpdateService;->a(Lo/WebViewUpdateService;)Lo/AbsSpinner;

    move-result-object p1

    iget-object v4, p0, Lo/WebViewUpdateService$Application;->a:Ljava/lang/String;

    const-string v5, "blurBoxArt_"

    const-string v7, "png"

    invoke-virtual {p1, v4, v5, v7}, Lo/AbsSpinner;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 253
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v4, Ljava/io/Closeable;

    check-cast v2, Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v5, v4

    check-cast v5, Ljava/io/FileOutputStream;

    .line 254
    invoke-static {}, Lo/WebViewUpdateService;->c()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v7

    const/16 v8, 0x50

    check-cast v5, Ljava/io/OutputStream;

    invoke-virtual {v6, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    :try_start_3
    invoke-static {v4, v2}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 231
    :try_start_4
    invoke-static {v1, v3}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 230
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 253
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-static {v4, p1}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 231
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-static {v1, p1}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    .line 230
    monitor-exit v0

    throw p1
.end method
