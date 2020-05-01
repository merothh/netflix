.class final Lo/WebViewUpdateService$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WebViewUpdateService;->d(Lo/Serializable;Landroid/graphics/Bitmap;Ljava/lang/String;)Lio/reactivex/Single;
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
.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic e:Lo/WebViewUpdateService;


# direct methods
.method constructor <init>(Lo/WebViewUpdateService;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lo/WebViewUpdateService$StateListAnimator;->e:Lo/WebViewUpdateService;

    iput-object p2, p0, Lo/WebViewUpdateService$StateListAnimator;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "logoImageResult"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    sget-object v0, Lo/AbsSpinner;->c:Lo/AbsSpinner$StateListAnimator;

    invoke-virtual {v0}, Lo/AbsSpinner$StateListAnimator;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 162
    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v3, v1

    check-cast v3, Lo/CompatibilityInfo;

    .line 163
    iget-object v3, p0, Lo/WebViewUpdateService$StateListAnimator;->e:Lo/WebViewUpdateService;

    iget-object v4, p0, Lo/WebViewUpdateService$StateListAnimator;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v3, v4, p1}, Lo/WebViewUpdateService;->b(Lo/WebViewUpdateService;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 164
    iget-object p1, p0, Lo/WebViewUpdateService$StateListAnimator;->b:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :try_start_2
    invoke-static {v1, v2}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 161
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 162
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v1, p1}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 161
    monitor-exit v0

    throw p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-virtual {p0, p1}, Lo/WebViewUpdateService$StateListAnimator;->a(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
