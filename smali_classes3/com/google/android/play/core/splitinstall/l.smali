.class final synthetic Lcom/google/android/play/core/splitinstall/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/splitinstall/t;


# instance fields
.field private final a:Lcom/google/android/play/core/splitinstall/SplitInstallRequest;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/l;->a:Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/splitinstall/SplitInstallManager;)Lcom/google/android/play/core/tasks/Task;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/l;->a:Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

    invoke-interface {p1, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->startInstall(Lcom/google/android/play/core/splitinstall/SplitInstallRequest;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method
