.class final Lcom/google/android/gms/measurement/internal/zzcy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzarb:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic zzarc:Lcom/google/android/gms/measurement/internal/zzcs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzcs;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcy;->zzarc:Lcom/google/android/gms/measurement/internal/zzcs;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzcy;->zzarb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcy;->zzarc:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzgg()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzcy;->zzarb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzdr;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
