.class Lcom/google/android/gms/cast/internal/zze$zzb$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzZd:Lcom/google/android/gms/cast/internal/zze;

.field final synthetic zzZf:Lcom/google/android/gms/cast/internal/zze$zzb;

.field final synthetic zzZh:Lcom/google/android/gms/cast/internal/ApplicationStatus;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/internal/zze$zzb;Lcom/google/android/gms/cast/internal/zze;Lcom/google/android/gms/cast/internal/ApplicationStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zze$zzb$3;->zzZf:Lcom/google/android/gms/cast/internal/zze$zzb;

    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zze$zzb$3;->zzZd:Lcom/google/android/gms/cast/internal/zze;

    iput-object p3, p0, Lcom/google/android/gms/cast/internal/zze$zzb$3;->zzZh:Lcom/google/android/gms/cast/internal/ApplicationStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zze$zzb$3;->zzZd:Lcom/google/android/gms/cast/internal/zze;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zze$zzb$3;->zzZh:Lcom/google/android/gms/cast/internal/ApplicationStatus;

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/internal/zze;->zza(Lcom/google/android/gms/cast/internal/zze;Lcom/google/android/gms/cast/internal/ApplicationStatus;)V

    return-void
.end method
