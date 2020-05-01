.class final Lcom/google/android/play/core/internal/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/play/core/internal/ak;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/play/core/internal/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/aj;->a:Lcom/google/android/play/core/internal/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/internal/aj;->a:Lcom/google/android/play/core/internal/ak;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ak;->b(Lcom/google/android/play/core/internal/ak;)Lcom/google/android/play/core/internal/aa;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ServiceConnectionImpl.onServiceConnected(%s)"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/internal/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/play/core/internal/aj;->a:Lcom/google/android/play/core/internal/ak;

    new-instance v0, Lcom/google/android/play/core/internal/ah;

    invoke-direct {v0, p0, p2}, Lcom/google/android/play/core/internal/ah;-><init>(Lcom/google/android/play/core/internal/aj;Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/google/android/play/core/internal/ak;->b(Lcom/google/android/play/core/internal/ak;Lcom/google/android/play/core/internal/ab;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/internal/aj;->a:Lcom/google/android/play/core/internal/ak;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ak;->b(Lcom/google/android/play/core/internal/ak;)Lcom/google/android/play/core/internal/aa;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/internal/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/play/core/internal/aj;->a:Lcom/google/android/play/core/internal/ak;

    new-instance v0, Lcom/google/android/play/core/internal/ai;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/internal/ai;-><init>(Lcom/google/android/play/core/internal/aj;)V

    invoke-static {p1, v0}, Lcom/google/android/play/core/internal/ak;->b(Lcom/google/android/play/core/internal/ak;Lcom/google/android/play/core/internal/ab;)V

    return-void
.end method
