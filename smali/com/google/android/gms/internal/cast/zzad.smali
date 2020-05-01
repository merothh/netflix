.class final Lcom/google/android/gms/internal/cast/zzad;
.super Lcom/google/android/gms/internal/cast/zzah;


# instance fields
.field private final synthetic zzqq:Lcom/google/android/gms/internal/cast/zzz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/cast/zzz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzad;->zzqq:Lcom/google/android/gms/internal/cast/zzz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzah;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzz;Lcom/google/android/gms/internal/cast/zzaa;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzad;-><init>(Lcom/google/android/gms/internal/cast/zzz;)V

    return-void
.end method


# virtual methods
.method public final zza(JJ)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzad;->zzqq:Lcom/google/android/gms/internal/cast/zzz;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzz;->zza(Lcom/google/android/gms/internal/cast/zzz;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzm()I
    .locals 1

    const v0, 0xbdfcc1

    return v0
.end method
