.class final Lo/WebViewUpdateService$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WebViewUpdateService;->a(Lo/Serializable;Ljava/lang/String;II)Lio/reactivex/Single;
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
.field final synthetic a:Lo/WebViewUpdateService;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/WebViewUpdateService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/WebViewUpdateService$PendingIntent;->a:Lo/WebViewUpdateService;

    iput-object p2, p0, Lo/WebViewUpdateService$PendingIntent;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)Ljava/io/File;
    .locals 9

    const-string v0, "imageLoaderResult"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lo/WebViewUpdateService$PendingIntent;->a:Lo/WebViewUpdateService;

    invoke-static {v0}, Lo/WebViewUpdateService;->a(Lo/WebViewUpdateService;)Lo/AbsSpinner;

    move-result-object v0

    iget-object v1, p0, Lo/WebViewUpdateService$PendingIntent;->e:Ljava/lang/String;

    const-string v2, "grad_"

    const-string v3, "png"

    invoke-virtual {v0, v1, v2, v3}, Lo/AbsSpinner;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 109
    sget-object v1, Lo/AbsSpinner;->c:Lo/AbsSpinner$StateListAnimator;

    invoke-virtual {v1}, Lo/AbsSpinner$StateListAnimator;->d()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 110
    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    move-object v5, v2

    check-cast v5, Lo/CompatibilityInfo;

    .line 111
    iget-object v5, p0, Lo/WebViewUpdateService$PendingIntent;->a:Lo/WebViewUpdateService;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v5, p1}, Lo/WebViewUpdateService;->b(Lo/WebViewUpdateService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 113
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v5, Ljava/io/Closeable;

    check-cast v3, Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v6, v5

    check-cast v6, Ljava/io/FileOutputStream;

    .line 114
    invoke-static {}, Lo/WebViewUpdateService;->c()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v7

    const/16 v8, 0x50

    check-cast v6, Ljava/io/OutputStream;

    invoke-virtual {p1, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :try_start_3
    invoke-static {v5, v3}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 110
    :try_start_4
    invoke-static {v2, v4}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 109
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    .line 113
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-static {v5, p1}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 110
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-static {v2, p1}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    .line 109
    monitor-exit v1

    throw p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-virtual {p0, p1}, Lo/WebViewUpdateService$PendingIntent;->a(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
