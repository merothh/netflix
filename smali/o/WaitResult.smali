.class public Lo/WaitResult;
.super Lo/WallpaperManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/WaitResult$ActionBar;
    }
.end annotation


# instance fields
.field private final b:Ljava/io/Writer;

.field private final c:Lo/DeviceAdminReceiver;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Lo/WallpaperManager;-><init>(Ljava/io/Writer;)V

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Lo/WaitResult;->d(Z)V

    .line 32
    iput-object p1, p0, Lo/WaitResult;->b:Ljava/io/Writer;

    .line 33
    new-instance p1, Lo/DeviceAdminReceiver;

    invoke-direct {p1}, Lo/DeviceAdminReceiver;-><init>()V

    iput-object p1, p0, Lo/WaitResult;->c:Lo/DeviceAdminReceiver;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lo/WaitResult;
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lo/WallpaperManager;->e(Ljava/lang/String;)Lo/WallpaperManager;

    return-object p0
.end method

.method public bridge synthetic a()Lo/WallpaperManager;
    .locals 1

    .line 14
    invoke-super {p0}, Lo/WallpaperManager;->a()Lo/WallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Lo/WallpaperManager;
    .locals 1

    .line 14
    invoke-super {p0}, Lo/WallpaperManager;->b()Lo/WallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Boolean;)Lo/WallpaperManager;
    .locals 0

    .line 14
    invoke-super {p0, p1}, Lo/WallpaperManager;->b(Ljava/lang/Boolean;)Lo/WallpaperManager;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Z)Lo/WallpaperManager;
    .locals 0

    .line 14
    invoke-super {p0, p1}, Lo/WallpaperManager;->b(Z)Lo/WallpaperManager;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/io/File;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    invoke-super {p0}, Lo/WallpaperManager;->flush()V

    .line 72
    invoke-virtual {p0}, Lo/WaitResult;->h()V

    const/4 v0, 0x0

    .line 77
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 78
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    iget-object v0, p0, Lo/WaitResult;->b:Ljava/io/Writer;

    invoke-static {p1, v0}, Lo/Vr2dDisplayProperties;->e(Ljava/io/Reader;Ljava/io/Writer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-static {p1}, Lo/Vr2dDisplayProperties;->a(Ljava/io/Closeable;)V

    .line 84
    iget-object p1, p0, Lo/WaitResult;->b:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    return-void

    :catchall_0
    move-exception v0

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 81
    :goto_0
    invoke-static {v0}, Lo/Vr2dDisplayProperties;->a(Ljava/io/Closeable;)V

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public b(Lo/WaitResult$ActionBar;)V
    .locals 0

    if-nez p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lo/WaitResult;->a()Lo/WallpaperManager;

    return-void

    .line 52
    :cond_0
    invoke-interface {p1, p0}, Lo/WaitResult$ActionBar;->toStream(Lo/WaitResult;)V

    return-void
.end method

.method public bridge synthetic c()Lo/WallpaperManager;
    .locals 1

    .line 14
    invoke-super {p0}, Lo/WallpaperManager;->c()Lo/WallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic close()V
    .locals 0

    .line 14
    invoke-super {p0}, Lo/WallpaperManager;->close()V

    return-void
.end method

.method public bridge synthetic d()Lo/WallpaperManager;
    .locals 1

    .line 14
    invoke-super {p0}, Lo/WallpaperManager;->d()Lo/WallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Ljava/lang/String;)Lo/WallpaperManager;
    .locals 0

    .line 14
    invoke-super {p0, p1}, Lo/WallpaperManager;->d(Ljava/lang/String;)Lo/WallpaperManager;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e()Lo/WallpaperManager;
    .locals 1

    .line 14
    invoke-super {p0}, Lo/WallpaperManager;->e()Lo/WallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(J)Lo/WallpaperManager;
    .locals 0

    .line 14
    invoke-super {p0, p1, p2}, Lo/WallpaperManager;->e(J)Lo/WallpaperManager;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Ljava/lang/Number;)Lo/WallpaperManager;
    .locals 0

    .line 14
    invoke-super {p0, p1}, Lo/WallpaperManager;->e(Ljava/lang/Number;)Lo/WallpaperManager;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e(Ljava/lang/String;)Lo/WallpaperManager;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lo/WaitResult;->c:Lo/DeviceAdminReceiver;

    invoke-virtual {v0, p1, p0}, Lo/DeviceAdminReceiver;->c(Ljava/lang/Object;Lo/WaitResult;)V

    return-void
.end method

.method public bridge synthetic flush()V
    .locals 0

    .line 14
    invoke-super {p0}, Lo/WallpaperManager;->flush()V

    return-void
.end method
