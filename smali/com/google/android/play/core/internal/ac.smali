.class final synthetic Lcom/google/android/play/core/internal/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final a:Lcom/google/android/play/core/internal/ak;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/ak;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/ac;->a:Lcom/google/android/play/core/internal/ak;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/internal/ac;->a:Lcom/google/android/play/core/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/ak;->c()V

    return-void
.end method
