.class final Lcom/google/android/gms/internal/cast/zzcs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzxh:Lcom/google/android/gms/internal/cast/zzco;

.field private final synthetic zzxj:Lcom/google/android/gms/internal/cast/zzcw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzcq;Lcom/google/android/gms/internal/cast/zzco;Lcom/google/android/gms/internal/cast/zzcw;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzcs;->zzxh:Lcom/google/android/gms/internal/cast/zzco;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzcs;->zzxj:Lcom/google/android/gms/internal/cast/zzcw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcs;->zzxh:Lcom/google/android/gms/internal/cast/zzco;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzcs;->zzxj:Lcom/google/android/gms/internal/cast/zzcw;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzco;->zza(Lcom/google/android/gms/internal/cast/zzco;Lcom/google/android/gms/internal/cast/zzcw;)V

    return-void
.end method
