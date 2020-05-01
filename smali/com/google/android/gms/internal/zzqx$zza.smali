.class public final Lcom/google/android/gms/internal/zzqx$zza;
.super Ljava/lang/Object;


# instance fields
.field private zzaSe:Ljava/lang/String;

.field private zzaVd:Z

.field private zzaVe:Z

.field private zzaVf:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

.field private zzaVg:Z

.field private zzaVh:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzCi()Lcom/google/android/gms/internal/zzqx;
    .locals 8

    new-instance v0, Lcom/google/android/gms/internal/zzqx;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaVd:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaVe:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaSe:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaVf:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaVg:Z

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaVh:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzqx;-><init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;ZZLcom/google/android/gms/internal/zzqx$1;)V

    return-object v0
.end method
