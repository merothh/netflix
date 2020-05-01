.class public final Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
.super Ljava/lang/Object;


# instance fields
.field zzUY:Lcom/google/android/gms/cast/CastDevice;

.field zzUZ:Lcom/google/android/gms/cast/Cast$Listener;

.field private zzVa:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "CastDevice parameter cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "CastListener parameter cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zzUY:Lcom/google/android/gms/cast/CastDevice;

    iput-object p2, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zzUZ:Lcom/google/android/gms/cast/Cast$Listener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zzVa:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zzVa:I

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/Cast$CastOptions;
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/Cast$CastOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/Cast$CastOptions;-><init>(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;Lcom/google/android/gms/cast/Cast$1;)V

    return-object v0
.end method

.method public setVerboseLoggingEnabled(Z)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zzVa:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zzVa:I

    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zzVa:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zzVa:I

    goto :goto_0
.end method
