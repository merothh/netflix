.class final Lcom/google/android/gms/internal/cast/zzdj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzdn;


# instance fields
.field private final synthetic zzyw:Lcom/google/android/gms/internal/cast/zzdn;

.field private final synthetic zzyx:Lcom/google/android/gms/internal/cast/zzdi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzdi;Lcom/google/android/gms/internal/cast/zzdn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdj;->zzyx:Lcom/google/android/gms/internal/cast/zzdi;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzdj;->zzyw:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(JILjava/lang/Object;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdj;->zzyx:Lcom/google/android/gms/internal/cast/zzdi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzdi;->zza(Lcom/google/android/gms/internal/cast/zzdi;Ljava/lang/Long;)Ljava/lang/Long;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdj;->zzyw:Lcom/google/android/gms/internal/cast/zzdn;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzb(J)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdj;->zzyw:Lcom/google/android/gms/internal/cast/zzdn;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzdn;->zzb(J)V

    :cond_0
    return-void
.end method
