.class final Lo/WebViewUpdateService$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WebViewUpdateService;->c(Lo/Serializable;Ljava/lang/String;Ljava/lang/String;II)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiFunction<",
        "Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;",
        "Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic d:I

.field final synthetic e:Lo/WebViewUpdateService;


# direct methods
.method constructor <init>(Lo/WebViewUpdateService;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/WebViewUpdateService$ActionBar;->e:Lo/WebViewUpdateService;

    iput p2, p0, Lo/WebViewUpdateService$ActionBar;->b:I

    iput p3, p0, Lo/WebViewUpdateService$ActionBar;->d:I

    iput-object p4, p0, Lo/WebViewUpdateService$ActionBar;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    check-cast p2, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/WebViewUpdateService$ActionBar;->d(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)Ljava/io/File;
    .locals 13

    const-string v0, "titleTreatmentResult"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postImageResult"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    :try_start_0
    iget v0, p0, Lo/WebViewUpdateService$ActionBar;->b:I

    iget v1, p0, Lo/WebViewUpdateService$ActionBar;->d:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 359
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 362
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/high16 v3, -0x1000000

    .line 363
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 364
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 365
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lo/WebViewUpdateService$ActionBar;->b:I

    iget v5, p0, Lo/WebViewUpdateService$ActionBar;->d:I

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 369
    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 370
    iget v3, p0, Lo/WebViewUpdateService$ActionBar;->b:I

    .line 371
    iget v4, p0, Lo/WebViewUpdateService$ActionBar;->b:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v2, v4

    .line 374
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 375
    iget v5, p0, Lo/WebViewUpdateService$ActionBar;->b:I

    int-to-float v5, v5

    const v7, 0x3f19999a    # 0.6f

    mul-float v5, v5, v7

    float-to-int v5, v5

    int-to-float v7, v5

    mul-float v7, v7, v4

    float-to-int v4, v7

    add-int v7, v2, v4

    .line 383
    iget v8, p0, Lo/WebViewUpdateService$ActionBar;->d:I

    sub-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x6

    .line 384
    iget v9, p0, Lo/WebViewUpdateService$ActionBar;->d:I

    sub-int/2addr v9, v7

    add-int/2addr v9, v8

    neg-int v7, v9

    div-int/lit8 v7, v7, 0x4

    .line 387
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    const/4 v9, 0x0

    .line 388
    iget v10, p0, Lo/WebViewUpdateService$ActionBar;->d:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    int-to-float v12, v2

    div-float/2addr v12, v11

    sub-float/2addr v10, v12

    int-to-float v7, v7

    add-float/2addr v10, v7

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 390
    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 392
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v6, v6, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 398
    iget-object v2, p0, Lo/WebViewUpdateService$ActionBar;->e:Lo/WebViewUpdateService;

    invoke-virtual {v2}, Lo/WebViewUpdateService;->d()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x0

    .line 389
    invoke-virtual {v1, v9, v3, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 400
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 403
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 405
    iget v2, p0, Lo/WebViewUpdateService$ActionBar;->b:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    div-float/2addr v2, v11

    .line 406
    iget v9, p0, Lo/WebViewUpdateService$ActionBar;->d:I

    int-to-float v9, v9

    div-float/2addr v9, v11

    add-float/2addr v9, v12

    int-to-float v8, v8

    add-float/2addr v9, v8

    add-float/2addr v9, v7

    .line 404
    invoke-virtual {v1, v2, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 409
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 411
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v6, v6, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 417
    iget-object v4, p0, Lo/WebViewUpdateService$ActionBar;->e:Lo/WebViewUpdateService;

    invoke-virtual {v4}, Lo/WebViewUpdateService;->d()Landroid/graphics/Paint;

    move-result-object v4

    .line 408
    invoke-virtual {v1, v2, v3, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 419
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 422
    iget-object v1, p0, Lo/WebViewUpdateService$ActionBar;->e:Lo/WebViewUpdateService;

    invoke-static {v1}, Lo/WebViewUpdateService;->a(Lo/WebViewUpdateService;)Lo/AbsSpinner;

    move-result-object v4

    .line 423
    iget-object v5, p0, Lo/WebViewUpdateService$ActionBar;->a:Ljava/lang/String;

    const-string v6, "extrasPost_"

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 422
    invoke-static/range {v4 .. v9}, Lo/AbsSpinner;->a(Lo/AbsSpinner;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/io/File;

    move-result-object v1

    .line 426
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/Closeable;

    check-cast v3, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v4, v2

    check-cast v4, Ljava/io/FileOutputStream;

    .line 427
    invoke-static {}, Lo/WebViewUpdateService;->c()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v5

    const/16 v6, 0x50

    check-cast v4, Ljava/io/OutputStream;

    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    :try_start_2
    invoke-static {v2, v3}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 432
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/CompatibilityInfo;->close()V

    .line 433
    :cond_0
    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lo/CompatibilityInfo;->close()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v0

    .line 426
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {v2, v0}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 432
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lo/CompatibilityInfo;->close()V

    .line 433
    :cond_2
    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lo/CompatibilityInfo;->close()V

    :cond_3
    throw v0
.end method
