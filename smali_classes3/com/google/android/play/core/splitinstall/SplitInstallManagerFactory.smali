.class public Lcom/google/android/play/core/splitinstall/SplitInstallManagerFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/SplitInstallManager;
    .locals 1

    invoke-static {}, Lcom/google/android/play/core/splitcompat/d;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/play/core/splitinstall/u;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/android/play/core/splitinstall/u;

    move-result-object p0

    return-object p0
.end method
