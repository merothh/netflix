.class final Lcom/google/android/play/core/splitinstall/testing/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

.field final synthetic b:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/f;->b:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/testing/f;->a:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/f;->b:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->a(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;)Lcom/google/android/play/core/internal/z;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/f;->a:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/internal/z;->a(Ljava/lang/Object;)V

    return-void
.end method
