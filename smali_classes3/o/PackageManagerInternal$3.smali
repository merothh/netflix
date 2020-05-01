.class Lo/PackageManagerInternal$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PackageManagerInternal;-><init>(Lo/PackageInstaller;Lo/PackageParser;Lo/PackageManagerInternal$ActionBar;Lcom/facebook/cache/common/CacheEventListener;Lcom/facebook/cache/common/CacheErrorLogger;Lo/PackageSharedLibraryUpdater;Landroid/content/Context;Ljava/util/concurrent/Executor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/PackageManagerInternal;


# direct methods
.method constructor <init>(Lo/PackageManagerInternal;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lo/PackageManagerInternal$3;->a:Lo/PackageManagerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 193
    iget-object v0, p0, Lo/PackageManagerInternal$3;->a:Lo/PackageManagerInternal;

    invoke-static {v0}, Lo/PackageManagerInternal;->d(Lo/PackageManagerInternal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 194
    :try_start_0
    iget-object v1, p0, Lo/PackageManagerInternal$3;->a:Lo/PackageManagerInternal;

    invoke-static {v1}, Lo/PackageManagerInternal;->a(Lo/PackageManagerInternal;)Z

    .line 195
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object v0, p0, Lo/PackageManagerInternal$3;->a:Lo/PackageManagerInternal;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/PackageManagerInternal;->d(Lo/PackageManagerInternal;Z)Z

    .line 197
    iget-object v0, p0, Lo/PackageManagerInternal$3;->a:Lo/PackageManagerInternal;

    invoke-static {v0}, Lo/PackageManagerInternal;->c(Lo/PackageManagerInternal;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v1

    .line 195
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
