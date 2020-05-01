.class Lcom/google/android/play/core/appupdate/h;
.super Lcom/google/android/play/core/internal/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/play/core/internal/o;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/play/core/internal/aa;

.field final b:Lcom/google/android/play/core/tasks/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/android/play/core/appupdate/k;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/appupdate/k;Lcom/google/android/play/core/internal/aa;Lcom/google/android/play/core/tasks/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/aa;",
            "Lcom/google/android/play/core/tasks/i<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/h;->c:Lcom/google/android/play/core/appupdate/k;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/o;-><init>()V

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/h;->a:Lcom/google/android/play/core/internal/aa;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/h;->b:Lcom/google/android/play/core/tasks/i;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/h;->c:Lcom/google/android/play/core/appupdate/k;

    iget-object p1, p1, Lcom/google/android/play/core/appupdate/k;->a:Lcom/google/android/play/core/internal/ak;

    invoke-virtual {p1}, Lcom/google/android/play/core/internal/ak;->a()V

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/h;->a:Lcom/google/android/play/core/internal/aa;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onRequestInfo"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/h;->c:Lcom/google/android/play/core/appupdate/k;

    iget-object p1, p1, Lcom/google/android/play/core/appupdate/k;->a:Lcom/google/android/play/core/internal/ak;

    invoke-virtual {p1}, Lcom/google/android/play/core/internal/ak;->a()V

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/h;->a:Lcom/google/android/play/core/internal/aa;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onCompleteUpdate"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
