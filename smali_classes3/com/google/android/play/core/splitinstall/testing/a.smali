.class final Lcom/google/android/play/core/splitinstall/testing/a;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()V
    .locals 2

    invoke-static {}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    return-void
.end method
