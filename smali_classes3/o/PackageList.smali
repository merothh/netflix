.class public Lo/PackageList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PackageInstaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PackageList$Activity;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field volatile c:Lo/PackageList$Activity;

.field private final d:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final h:Lcom/facebook/cache/common/CacheErrorLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lo/PackageList;

    sput-object v0, Lo/PackageList;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(ILo/UserInfo;Ljava/lang/String;Lcom/facebook/cache/common/CacheErrorLogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/UserInfo<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/cache/common/CacheErrorLogger;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lo/PackageList;->b:I

    .line 56
    iput-object p4, p0, Lo/PackageList;->h:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 57
    iput-object p2, p0, Lo/PackageList;->d:Lo/UserInfo;

    .line 58
    iput-object p3, p0, Lo/PackageList;->e:Ljava/lang/String;

    .line 59
    new-instance p1, Lo/PackageList$Activity;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lo/PackageList$Activity;-><init>(Ljava/io/File;Lo/PackageInstaller;)V

    iput-object p1, p0, Lo/PackageList;->c:Lo/PackageList$Activity;

    return-void
.end method

.method private g()Z
    .locals 2

    .line 162
    iget-object v0, p0, Lo/PackageList;->c:Lo/PackageList$Activity;

    .line 163
    iget-object v1, v0, Lo/PackageList$Activity;->d:Lo/PackageInstaller;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lo/PackageList$Activity;->c:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lo/PackageList$Activity;->c:Ljava/io/File;

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private i()V
    .locals 4

    .line 178
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/PackageList;->d:Lo/UserInfo;

    invoke-interface {v1}, Lo/UserInfo;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Lo/PackageList;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v0}, Lo/PackageList;->d(Ljava/io/File;)V

    .line 180
    new-instance v1, Lcom/facebook/cache/disk/DefaultDiskStorage;

    iget v2, p0, Lo/PackageList;->b:I

    iget-object v3, p0, Lo/PackageList;->h:Lcom/facebook/cache/common/CacheErrorLogger;

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/cache/disk/DefaultDiskStorage;-><init>(Ljava/io/File;ILcom/facebook/cache/common/CacheErrorLogger;)V

    .line 181
    new-instance v2, Lo/PackageList$Activity;

    invoke-direct {v2, v0, v1}, Lo/PackageList$Activity;-><init>(Ljava/io/File;Lo/PackageInstaller;)V

    iput-object v2, p0, Lo/PackageList;->c:Lo/PackageList$Activity;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lo/PackageList;->b()Lo/PackageInstaller;

    move-result-object v0

    invoke-interface {v0}, Lo/PackageInstaller;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    sget-object v1, Lo/PackageList;->a:Ljava/lang/Class;

    const-string v2, "purgeUnexpectedResources"

    invoke-static {v1, v2, v0}, Lo/DexMetadataHelper;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(Lo/PackageInstaller$Activity;)J
    .locals 2

    .line 127
    invoke-virtual {p0}, Lo/PackageList;->b()Lo/PackageInstaller;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/PackageInstaller;->b(Lo/PackageInstaller$Activity;)J

    move-result-wide v0

    return-wide v0
.end method

.method declared-synchronized b()Lo/PackageInstaller;
    .locals 1

    monitor-enter p0

    .line 153
    :try_start_0
    invoke-direct {p0}, Lo/PackageList;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lo/PackageList;->c()V

    .line 156
    invoke-direct {p0}, Lo/PackageList;->i()V

    .line 158
    :cond_0
    iget-object v0, p0, Lo/PackageList;->c:Lo/PackageList$Activity;

    iget-object v0, v0, Lo/PackageList$Activity;->d:Lo/PackageInstaller;

    invoke-static {v0}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/PackageInstaller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/String;)J
    .locals 2

    .line 132
    invoke-virtual {p0}, Lo/PackageList;->b()Lo/PackageInstaller;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/PackageInstaller;->c(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method c()V
    .locals 1

    .line 170
    iget-object v0, p0, Lo/PackageList;->c:Lo/PackageList$Activity;

    iget-object v0, v0, Lo/PackageList$Activity;->d:Lo/PackageInstaller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PackageList;->c:Lo/PackageList$Activity;

    iget-object v0, v0, Lo/PackageList$Activity;->c:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lo/PackageList;->c:Lo/PackageList$Activity;

    iget-object v0, v0, Lo/PackageList$Activity;->c:Ljava/io/File;

    invoke-static {v0}, Lo/ServiceInfo;->b(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method public d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lo/PackageInstaller$Activity;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lo/PackageList;->b()Lo/PackageInstaller;

    move-result-object v0

    invoke-interface {v0}, Lo/PackageInstaller;->d()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;)Lo/PackageInstaller$TaskDescription;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lo/PackageList;->b()Lo/PackageInstaller;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/PackageInstaller;->d(Ljava/lang/String;Ljava/lang/Object;)Lo/PackageInstaller$TaskDescription;

    move-result-object p1

    return-object p1
.end method

.method d(Ljava/io/File;)V
    .locals 4

    .line 187
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/file/FileUtils;->e(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    sget-object v0, Lo/PackageList;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Created cache directory %s"

    invoke-static {v0, v1, p1}, Lo/DexMetadataHelper;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 189
    iget-object v0, p0, Lo/PackageList;->h:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->l:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v2, Lo/PackageList;->a:Ljava/lang/Class;

    const-string v3, "createRootDirectoryIfNecessary"

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->e(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    throw p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;)Lo/InstantAppResolveInfo;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lo/PackageList;->b()Lo/PackageInstaller;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/PackageInstaller;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/InstantAppResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lo/PackageList;->b()Lo/PackageInstaller;

    move-result-object v0

    invoke-interface {v0}, Lo/PackageInstaller;->e()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
