.class final Lcom/google/android/gms/internal/cast/zzcr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzxh:Lcom/google/android/gms/internal/cast/zzco;

.field private final synthetic zzxi:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzcq;Lcom/google/android/gms/internal/cast/zzco;I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzcr;->zzxh:Lcom/google/android/gms/internal/cast/zzco;

    iput p3, p0, Lcom/google/android/gms/internal/cast/zzcr;->zzxi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcr;->zzxh:Lcom/google/android/gms/internal/cast/zzco;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzco;->zze(Lcom/google/android/gms/internal/cast/zzco;)Lcom/google/android/gms/cast/Cast$Listener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/cast/zzcr;->zzxi:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationDisconnected(I)V

    return-void
.end method
