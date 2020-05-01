.class final synthetic Lcom/google/android/gms/internal/cast/zzaj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzqy:Lcom/google/android/gms/internal/cast/zzai;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzai;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzaj;->zzqy:Lcom/google/android/gms/internal/cast/zzai;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzaj;->zzqy:Lcom/google/android/gms/internal/cast/zzai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzai;->zzcm()V

    return-void
.end method
