.class Lcom/google/android/gms/cast/internal/zze$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzZd:Lcom/google/android/gms/cast/internal/zze;

.field final synthetic zzZe:I

.field final synthetic zzZf:Lcom/google/android/gms/cast/internal/zze$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/internal/zze$zzb;Lcom/google/android/gms/cast/internal/zze;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zze$zzb$1;->zzZf:Lcom/google/android/gms/cast/internal/zze$zzb;

    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zze$zzb$1;->zzZd:Lcom/google/android/gms/cast/internal/zze;

    iput p3, p0, Lcom/google/android/gms/cast/internal/zze$zzb$1;->zzZe:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zze$zzb$1;->zzZd:Lcom/google/android/gms/cast/internal/zze;

    invoke-static {v0}, Lcom/google/android/gms/cast/internal/zze;->zzd(Lcom/google/android/gms/cast/internal/zze;)Lcom/google/android/gms/cast/Cast$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zze$zzb$1;->zzZd:Lcom/google/android/gms/cast/internal/zze;

    invoke-static {v0}, Lcom/google/android/gms/cast/internal/zze;->zzd(Lcom/google/android/gms/cast/internal/zze;)Lcom/google/android/gms/cast/Cast$Listener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/cast/internal/zze$zzb$1;->zzZe:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationDisconnected(I)V

    :cond_0
    return-void
.end method
