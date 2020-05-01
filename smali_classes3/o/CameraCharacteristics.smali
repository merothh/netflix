.class public Lo/CameraCharacteristics;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CaptureFailure;


# instance fields
.field private c:Lo/CaptureResult;


# direct methods
.method public constructor <init>(Lo/CaptureResult;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lo/CameraCharacteristics;->c:Lo/CaptureResult;

    return-void
.end method

.method public static a(Lo/PackageBackwardCompatibility;Lo/PackageInstaller;)Lo/PackageManagerInternal;
    .locals 1

    .line 31
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lo/CameraCharacteristics;->c(Lo/PackageBackwardCompatibility;Lo/PackageInstaller;Ljava/util/concurrent/Executor;)Lo/PackageManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lo/PackageBackwardCompatibility;Lo/PackageInstaller;Ljava/util/concurrent/Executor;)Lo/PackageManagerInternal;
    .locals 11

    .line 38
    new-instance v7, Lo/PackageManagerInternal$ActionBar;

    .line 39
    invoke-virtual {p0}, Lo/PackageBackwardCompatibility;->j()J

    move-result-wide v1

    .line 40
    invoke-virtual {p0}, Lo/PackageBackwardCompatibility;->c()J

    move-result-wide v3

    .line 41
    invoke-virtual {p0}, Lo/PackageBackwardCompatibility;->b()J

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lo/PackageManagerInternal$ActionBar;-><init>(JJJ)V

    .line 43
    new-instance v10, Lo/PackageManagerInternal;

    .line 45
    invoke-virtual {p0}, Lo/PackageBackwardCompatibility;->i()Lo/PackageParser;

    move-result-object v2

    .line 47
    invoke-virtual {p0}, Lo/PackageBackwardCompatibility;->f()Lcom/facebook/cache/common/CacheEventListener;

    move-result-object v4

    .line 48
    invoke-virtual {p0}, Lo/PackageBackwardCompatibility;->h()Lcom/facebook/cache/common/CacheErrorLogger;

    move-result-object v5

    .line 49
    invoke-virtual {p0}, Lo/PackageBackwardCompatibility;->g()Lo/PackageSharedLibraryUpdater;

    move-result-object v6

    .line 50
    invoke-virtual {p0}, Lo/PackageBackwardCompatibility;->n()Landroid/content/Context;

    move-result-object v8

    .line 52
    invoke-virtual {p0}, Lo/PackageBackwardCompatibility;->k()Z

    move-result v9

    move-object v0, v10

    move-object v1, p1

    move-object v3, v7

    move-object v7, v8

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lo/PackageManagerInternal;-><init>(Lo/PackageInstaller;Lo/PackageParser;Lo/PackageManagerInternal$ActionBar;Lcom/facebook/cache/common/CacheEventListener;Lcom/facebook/cache/common/CacheErrorLogger;Lo/PackageSharedLibraryUpdater;Landroid/content/Context;Ljava/util/concurrent/Executor;Z)V

    return-object v10
.end method


# virtual methods
.method public b(Lo/PackageBackwardCompatibility;)Lo/PackageStats;
    .locals 1

    .line 57
    iget-object v0, p0, Lo/CameraCharacteristics;->c:Lo/CaptureResult;

    invoke-interface {v0, p1}, Lo/CaptureResult;->d(Lo/PackageBackwardCompatibility;)Lo/PackageInstaller;

    move-result-object v0

    invoke-static {p1, v0}, Lo/CameraCharacteristics;->a(Lo/PackageBackwardCompatibility;Lo/PackageInstaller;)Lo/PackageManagerInternal;

    move-result-object p1

    return-object p1
.end method
