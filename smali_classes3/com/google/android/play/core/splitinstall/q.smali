.class final synthetic Lcom/google/android/play/core/splitinstall/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/splitinstall/t;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/q;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/splitinstall/SplitInstallManager;)Lcom/google/android/play/core/tasks/Task;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/q;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->deferredInstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method
