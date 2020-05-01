.class final synthetic Lcom/google/android/play/core/splitinstall/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/splitinstall/u;

.field private final b:Lcom/google/android/play/core/tasks/i;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/u;Lcom/google/android/play/core/tasks/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/i;->a:Lcom/google/android/play/core/splitinstall/u;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/i;->b:Lcom/google/android/play/core/tasks/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i;->a:Lcom/google/android/play/core/splitinstall/u;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/i;->b:Lcom/google/android/play/core/tasks/i;

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/u;->a()Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/play/core/tasks/i;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Lcom/google/android/play/core/tasks/i;->a(Ljava/lang/Exception;)V

    return-void
.end method
