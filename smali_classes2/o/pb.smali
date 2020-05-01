.class Lo/pb;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Ljava/io/File;

.field private d:J

.field private e:J

.field private j:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageManager;Ljava/io/File;Landroid/os/StatFs;Z)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p3, p0, Lo/pb;->c:Ljava/io/File;

    .line 44
    invoke-virtual {p0, p4}, Lo/pb;->c(Landroid/os/StatFs;)V

    xor-int/lit8 p1, p5, 0x1

    .line 46
    iput-boolean p1, p0, Lo/pb;->b:Z

    .line 47
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    .line 48
    invoke-static {p3}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result p1

    iput-boolean p1, p0, Lo/pb;->b:Z

    .line 49
    invoke-static {p3}, Landroid/os/Environment;->isExternalStorageEmulated(Ljava/io/File;)Z

    move-result p1

    iput-boolean p1, p0, Lo/pb;->a:Z

    .line 60
    :cond_0
    invoke-direct {p0}, Lo/pb;->h()V

    return-void
.end method

.method private h()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 91
    iget-object v1, p0, Lo/pb;->c:Ljava/io/File;

    .line 92
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lo/pb;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lo/pb;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lo/pb;->j:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lo/pb;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lo/pb;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "offlineStorageVolInfo"

    const-string v2, "\nmDownloadDirPath=%s mTotalSpace=%d mFreeSpace=%d mNetflixUsedSpace=%d mIsRemovable=%b mIsEmulated=%b"

    .line 91
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lo/pb;->d:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lo/pb;->j:J

    return-wide v0
.end method

.method public c()Ljava/io/File;
    .locals 1

    .line 69
    iget-object v0, p0, Lo/pb;->c:Ljava/io/File;

    return-object v0
.end method

.method c(Landroid/os/StatFs;)V
    .locals 2

    .line 85
    invoke-virtual {p1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lo/pb;->e:J

    .line 86
    invoke-virtual {p1}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lo/pb;->d:J

    .line 87
    iget-object p1, p0, Lo/pb;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lo/adE;->e(Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Lo/pb;->j:J

    return-void
.end method

.method public d()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lo/pb;->e:J

    return-wide v0
.end method

.method public e()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lo/pb;->b:Z

    return v0
.end method
