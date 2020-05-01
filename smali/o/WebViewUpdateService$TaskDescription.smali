.class final Lo/WebViewUpdateService$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WebViewUpdateService;->b(Lo/Serializable;Ljava/lang/String;II)Lio/reactivex/Single;
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

.field final synthetic b:I

.field final synthetic d:I

.field final synthetic e:Lo/WebViewUpdateService;


# direct methods
.method constructor <init>(Lo/WebViewUpdateService;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/WebViewUpdateService$TaskDescription;->e:Lo/WebViewUpdateService;

    iput p2, p0, Lo/WebViewUpdateService$TaskDescription;->d:I

    iput p3, p0, Lo/WebViewUpdateService$TaskDescription;->b:I

    iput-object p4, p0, Lo/WebViewUpdateService$TaskDescription;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)Ljava/io/File;
    .locals 11

    const-string v0, "boxArtImageResult"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    sget-object v0, Lo/AbsSpinner;->c:Lo/AbsSpinner$StateListAnimator;

    invoke-virtual {v0}, Lo/AbsSpinner$StateListAnimator;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 289
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

    .line 291
    iget-object v4, p0, Lo/WebViewUpdateService$TaskDescription;->e:Lo/WebViewUpdateService;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v4, p1}, Lo/WebViewUpdateService;->a(Lo/WebViewUpdateService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 293
    iget-object v4, p0, Lo/WebViewUpdateService$TaskDescription;->e:Lo/WebViewUpdateService;

    invoke-virtual {v4}, Lo/WebViewUpdateService;->d()Landroid/graphics/Paint;

    move-result-object v4

    .line 294
    iget v5, p0, Lo/WebViewUpdateService$TaskDescription;->d:I

    iget v6, p0, Lo/WebViewUpdateService$TaskDescription;->b:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 295
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 296
    new-instance v7, Landroid/graphics/Rect;

    iget v8, p0, Lo/WebViewUpdateService$TaskDescription;->d:I

    iget v9, p0, Lo/WebViewUpdateService$TaskDescription;->b:I

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, p1, v2, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 299
    iget-object p1, p0, Lo/WebViewUpdateService$TaskDescription;->e:Lo/WebViewUpdateService;

    invoke-static {p1}, Lo/WebViewUpdateService;->a(Lo/WebViewUpdateService;)Lo/AbsSpinner;

    move-result-object p1

    iget-object v4, p0, Lo/WebViewUpdateService$TaskDescription;->a:Ljava/lang/String;

    const-string v6, "blurBoxArt_"

    const-string v7, "png"

    invoke-virtual {p1, v4, v6, v7}, Lo/AbsSpinner;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 300
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v4, Ljava/io/Closeable;

    check-cast v2, Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v6, v4

    check-cast v6, Ljava/io/FileOutputStream;

    .line 301
    invoke-static {}, Lo/WebViewUpdateService;->c()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v7

    const/16 v8, 0x50

    check-cast v6, Ljava/io/OutputStream;

    invoke-virtual {v5, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    :try_start_3
    invoke-static {v4, v2}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 289
    :try_start_4
    invoke-static {v1, v3}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 288
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 300
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

    .line 289
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

    .line 288
    monitor-exit v0

    throw p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-virtual {p0, p1}, Lo/WebViewUpdateService$TaskDescription;->a(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
