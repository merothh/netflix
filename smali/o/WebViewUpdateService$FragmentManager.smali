.class final Lo/WebViewUpdateService$FragmentManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WebViewUpdateService;->b(Lo/Serializable;Ljava/lang/String;Ljava/lang/String;II)Lio/reactivex/Single;
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

    iput-object p1, p0, Lo/WebViewUpdateService$FragmentManager;->a:Lo/WebViewUpdateService;

    iput-object p2, p0, Lo/WebViewUpdateService$FragmentManager;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lo/WebViewUpdateService$FragmentManager;->c(Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 6

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lo/WebViewUpdateService$FragmentManager;->a:Lo/WebViewUpdateService;

    invoke-static {v0}, Lo/WebViewUpdateService;->a(Lo/WebViewUpdateService;)Lo/AbsSpinner;

    move-result-object v0

    iget-object v1, p0, Lo/WebViewUpdateService$FragmentManager;->e:Ljava/lang/String;

    const-string v2, "fullBillboard_"

    const-string v3, "png"

    invoke-virtual {v0, v1, v2, v3}, Lo/AbsSpinner;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/Closeable;

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v1

    check-cast v3, Ljava/io/FileOutputStream;

    .line 76
    invoke-static {}, Lo/WebViewUpdateService;->c()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v4

    const/16 v5, 0x50

    check-cast v3, Ljava/io/OutputStream;

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-static {v1, v2}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, p1}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
