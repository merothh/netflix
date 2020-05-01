.class final Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zze;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zze"
.end annotation


# instance fields
.field final synthetic zzpe:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field private final zzpr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzps:J

.field private final zzpt:Ljava/lang/Runnable;

.field private zzpu:Z


# direct methods
.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zze;)Ljava/util/Set;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zze;->zzpr:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final isStarted()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zze;->zzpu:Z

    return v0
.end method

.method public final start()V
    .locals 4

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zze;->zzpe:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzi(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zze;->zzpt:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zze;->zzpu:Z

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zze;->zzpe:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzi(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zze;->zzpt:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zze;->zzps:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final stop()V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zze;->zzpe:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzi(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zze;->zzpt:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zze;->zzpu:Z

    return-void
.end method
