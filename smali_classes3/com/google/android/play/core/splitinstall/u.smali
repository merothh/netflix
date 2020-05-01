.class final Lcom/google/android/play/core/splitinstall/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/splitinstall/SplitInstallManager;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Landroid/content/Context;

.field private volatile c:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

.field private final d:Lcom/google/android/play/core/splitinstall/ag;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/play/core/splitinstall/ag;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/play/core/splitinstall/v;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/u;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/u;->a:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/u;->d:Lcom/google/android/play/core/splitinstall/ag;

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/android/play/core/splitinstall/u;
    .locals 3

    new-instance v0, Lcom/google/android/play/core/splitinstall/u;

    new-instance v1, Lcom/google/android/play/core/splitinstall/ag;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/play/core/splitinstall/ag;-><init>([B)V

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/play/core/splitinstall/u;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/play/core/splitinstall/ag;[B)V

    return-object v0
.end method

.method private final a(Lcom/google/android/play/core/splitinstall/t;)Lcom/google/android/play/core/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/play/core/splitinstall/t<",
            "TT;>;)",
            "Lcom/google/android/play/core/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/u;->c:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/play/core/tasks/i;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/i;-><init>()V

    new-instance v1, Lcom/google/android/play/core/tasks/i;

    invoke-direct {v1}, Lcom/google/android/play/core/tasks/i;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/play/core/tasks/i;->a()Lcom/google/android/play/core/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/splitinstall/h;

    invoke-direct {v3, p1, v0}, Lcom/google/android/play/core/splitinstall/h;-><init>(Lcom/google/android/play/core/splitinstall/t;Lcom/google/android/play/core/tasks/i;)V

    invoke-virtual {v2, v3}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/u;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/play/core/splitinstall/i;

    invoke-direct {v2, p0, v1}, Lcom/google/android/play/core/splitinstall/i;-><init>(Lcom/google/android/play/core/splitinstall/u;Lcom/google/android/play/core/tasks/i;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/i;->a()Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1, v0}, Lcom/google/android/play/core/splitinstall/t;->a(Lcom/google/android/play/core/splitinstall/SplitInstallManager;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method final declared-synchronized a()Lcom/google/android/play/core/splitinstall/SplitInstallManager;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/u;->c:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/u;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    const-string v3, "local_testing_dir"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/play/core/splitinstall/af;

    new-instance v2, Lcom/google/android/play/core/splitinstall/az;

    invoke-direct {v2, v0}, Lcom/google/android/play/core/splitinstall/az;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v0}, Lcom/google/android/play/core/splitinstall/af;-><init>(Lcom/google/android/play/core/splitinstall/az;Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManagerFactory;->create(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/google/android/play/core/splitinstall/u;->c:Lcom/google/android/play/core/splitinstall/SplitInstallManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final deferredInstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/core/splitinstall/q;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/splitinstall/q;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/splitinstall/u;->a(Lcom/google/android/play/core/splitinstall/t;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final deferredLanguageInstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;)",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/core/splitinstall/r;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/splitinstall/r;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/splitinstall/u;->a(Lcom/google/android/play/core/splitinstall/t;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final getInstalledLanguages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/u;->a()Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->getInstalledLanguages()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getInstalledModules()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/u;->a()Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->getInstalledModules()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final registerListener(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/splitinstall/g;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/splitinstall/g;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/splitinstall/u;->a(Lcom/google/android/play/core/splitinstall/t;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method public final startConfirmationDialogForResult(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;Landroid/app/Activity;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/u;->a()Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->startConfirmationDialogForResult(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;Landroid/app/Activity;I)Z

    move-result p1

    return p1
.end method

.method public final startInstall(Lcom/google/android/play/core/splitinstall/SplitInstallRequest;)Lcom/google/android/play/core/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/splitinstall/SplitInstallRequest;",
            ")",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/core/splitinstall/l;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/splitinstall/l;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/splitinstall/u;->a(Lcom/google/android/play/core/splitinstall/t;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method
