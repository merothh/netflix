.class Lcom/google/android/gms/cast/Cast$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;


# instance fields
.field final synthetic zzVb:Lcom/google/android/gms/common/api/Status;

.field final synthetic zzVc:Lcom/google/android/gms/cast/Cast$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$zza;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/Cast$zza$1;->zzVc:Lcom/google/android/gms/cast/Cast$zza;

    iput-object p2, p0, Lcom/google/android/gms/cast/Cast$zza$1;->zzVb:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/Cast$zza$1;->zzVb:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
