.class final Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
        "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    move-result-object p1

    return-object p1
.end method

.method protected final zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzav;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/media/zzav;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
