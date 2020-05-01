.class final Lcom/google/android/play/core/internal/ae;
.super Lcom/google/android/play/core/internal/ab;


# instance fields
.field final synthetic a:Lcom/google/android/play/core/internal/ak;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/ae;->a:Lcom/google/android/play/core/internal/ak;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/internal/ae;->a:Lcom/google/android/play/core/internal/ak;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ak;->a(Lcom/google/android/play/core/internal/ak;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/internal/ae;->a:Lcom/google/android/play/core/internal/ak;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ak;->b(Lcom/google/android/play/core/internal/ak;)Lcom/google/android/play/core/internal/aa;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Unbind from service."

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/ae;->a:Lcom/google/android/play/core/internal/ak;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ak;->d(Lcom/google/android/play/core/internal/ak;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/internal/ae;->a:Lcom/google/android/play/core/internal/ak;

    invoke-static {v1}, Lcom/google/android/play/core/internal/ak;->c(Lcom/google/android/play/core/internal/ak;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/ae;->a:Lcom/google/android/play/core/internal/ak;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ak;->j(Lcom/google/android/play/core/internal/ak;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/ae;->a:Lcom/google/android/play/core/internal/ak;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/ak;->a(Lcom/google/android/play/core/internal/ak;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/ae;->a:Lcom/google/android/play/core/internal/ak;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ak;->i(Lcom/google/android/play/core/internal/ak;)V

    :cond_0
    return-void
.end method
