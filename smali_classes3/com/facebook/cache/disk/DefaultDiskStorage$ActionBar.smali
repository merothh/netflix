.class Lcom/facebook/cache/disk/DefaultDiskStorage$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PackageInstaller$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final a:Ljava/io/File;

.field final synthetic b:Lcom/facebook/cache/disk/DefaultDiskStorage;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$ActionBar;->b:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    iput-object p2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$ActionBar;->c:Ljava/lang/String;

    .line 653
    iput-object p3, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$ActionBar;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$ActionBar;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$ActionBar;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public d(Ljava/lang/Object;)Lo/InstantAppResolveInfo;
    .locals 4

    .line 694
    iget-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$ActionBar;->b:Lcom/facebook/cache/disk/DefaultDiskStorage;

    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$ActionBar;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 697
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$ActionBar;->a:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/facebook/common/file/FileUtils;->c(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$RenameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$ActionBar;->b:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->b(Lcom/facebook/cache/disk/DefaultDiskStorage;)Lo/GradientColor;

    move-result-object v0

    invoke-interface {v0}, Lo/GradientColor;->e()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 721
    :cond_0
    invoke-static {p1}, Lo/InstrumentationInfo;->b(Ljava/io/File;)Lo/InstrumentationInfo;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 700
    invoke-virtual {p1}, Lcom/facebook/common/file/FileUtils$RenameException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 703
    instance-of v1, v0, Lcom/facebook/common/file/FileUtils$ParentDirNotFoundException;

    if-nez v1, :cond_2

    .line 706
    instance-of v0, v0, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_1

    .line 707
    sget-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->i:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    goto :goto_0

    .line 709
    :cond_1
    sget-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->f:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    goto :goto_0

    .line 704
    :cond_2
    sget-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->j:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    goto :goto_0

    .line 702
    :cond_3
    sget-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->f:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 711
    :goto_0
    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$ActionBar;->b:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->c(Lcom/facebook/cache/disk/DefaultDiskStorage;)Lcom/facebook/cache/common/CacheErrorLogger;

    move-result-object v1

    .line 713
    invoke-static {}, Lcom/facebook/cache/disk/DefaultDiskStorage;->c()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "commit"

    .line 711
    invoke-interface {v1, v0, v2, v3, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->e(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 716
    throw p1
.end method

.method public d(Lo/PackageCleanItem;Ljava/lang/Object;)V
    .locals 4

    .line 660
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$ActionBar;->a:Ljava/io/File;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :try_start_1
    new-instance v0, Lo/ShortcutInfo;

    invoke-direct {v0, p2}, Lo/ShortcutInfo;-><init>(Ljava/io/OutputStream;)V

    .line 673
    invoke-interface {p1, v0}, Lo/PackageCleanItem;->c(Ljava/io/OutputStream;)V

    .line 676
    invoke-virtual {v0}, Lo/ShortcutInfo;->flush()V

    .line 677
    invoke-virtual {v0}, Lo/ShortcutInfo;->c()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 682
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 686
    iget-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$ActionBar;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 687
    :cond_0
    new-instance p1, Lcom/facebook/cache/disk/DefaultDiskStorage$IncompleteFileException;

    iget-object p2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$ActionBar;->a:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/facebook/cache/disk/DefaultDiskStorage$IncompleteFileException;-><init>(JJ)V

    throw p1

    :catchall_0
    move-exception p1

    .line 682
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    throw p1

    :catch_0
    move-exception p1

    .line 662
    iget-object p2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$ActionBar;->b:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {p2}, Lcom/facebook/cache/disk/DefaultDiskStorage;->c(Lcom/facebook/cache/disk/DefaultDiskStorage;)Lcom/facebook/cache/common/CacheErrorLogger;

    move-result-object p2

    sget-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->g:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 664
    invoke-static {}, Lcom/facebook/cache/disk/DefaultDiskStorage;->c()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "updateResource"

    .line 662
    invoke-interface {p2, v0, v1, v2, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->e(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 667
    throw p1
.end method
