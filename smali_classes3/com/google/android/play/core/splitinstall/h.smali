.class final synthetic Lcom/google/android/play/core/splitinstall/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/tasks/OnCompleteListener;


# instance fields
.field private final a:Lcom/google/android/play/core/splitinstall/t;

.field private final b:Lcom/google/android/play/core/tasks/i;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/t;Lcom/google/android/play/core/tasks/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/h;->a:Lcom/google/android/play/core/splitinstall/t;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/h;->b:Lcom/google/android/play/core/tasks/i;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/play/core/tasks/Task;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/h;->a:Lcom/google/android/play/core/splitinstall/t;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/h;->b:Lcom/google/android/play/core/tasks/i;

    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {v0, p1}, Lcom/google/android/play/core/splitinstall/t;->a(Lcom/google/android/play/core/splitinstall/SplitInstallManager;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/android/play/core/splitinstall/j;

    invoke-direct {v0, v1}, Lcom/google/android/play/core/splitinstall/j;-><init>(Lcom/google/android/play/core/tasks/i;)V

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/play/core/tasks/i;->a(Ljava/lang/Exception;)V

    return-void
.end method
