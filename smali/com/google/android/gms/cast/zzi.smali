.class final Lcom/google/android/gms/cast/zzi;
.super Lcom/google/android/gms/cast/Cast$zza;


# instance fields
.field private final synthetic val$sessionId:Ljava/lang/String;

.field private final synthetic zzaf:Ljava/lang/String;

.field private final synthetic zzah:Lcom/google/android/gms/cast/zzag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$zza;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzag;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/cast/zzi;->zzaf:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/cast/zzi;->val$sessionId:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/cast/zzi;->zzah:Lcom/google/android/gms/cast/zzag;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/Cast$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/cast/zzco;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$zza;->zza(Lcom/google/android/gms/internal/cast/zzco;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzco;)V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/zzi;->zzaf:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/cast/zzi;->val$sessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/cast/zzi;->zzah:Lcom/google/android/gms/cast/zzag;

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/google/android/gms/internal/cast/zzco;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzag;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/16 p1, 0x7d1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zzk(I)V

    return-void
.end method
