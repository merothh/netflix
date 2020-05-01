.class public final Lcom/google/android/gms/internal/measurement/zzzj;
.super Ljava/lang/Object;


# static fields
.field public static final zzcax:[I

.field private static final zzcfn:I = 0xb

.field private static final zzcfo:I = 0xc

.field private static final zzcfp:I = 0x10

.field private static final zzcfq:I = 0x1a

.field public static final zzcfr:[J

.field private static final zzcfs:[F

.field private static final zzcft:[D

.field private static final zzcfu:[Z

.field public static final zzcfv:[Ljava/lang/String;

.field private static final zzcfw:[[B

.field public static final zzcfx:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 17
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzzj;->zzcax:[I

    new-array v1, v0, [J

    .line 18
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzzj;->zzcfr:[J

    new-array v1, v0, [F

    .line 19
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzzj;->zzcfs:[F

    new-array v1, v0, [D

    .line 20
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzzj;->zzcft:[D

    new-array v1, v0, [Z

    .line 21
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzzj;->zzcfu:[Z

    new-array v1, v0, [Ljava/lang/String;

    .line 22
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzzj;->zzcfv:[Ljava/lang/String;

    new-array v1, v0, [[B

    .line 23
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzzj;->zzcfw:[[B

    new-array v0, v0, [B

    .line 24
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzj;->zzcfx:[B

    return-void
.end method

.method public static final zzb(Lcom/google/android/gms/internal/measurement/zzyx;I)I
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->getPosition()I

    move-result v0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzyx;->zzao(I)Z

    const/4 v1, 0x1

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->zzug()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzyx;->zzao(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzyx;->zzt(II)V

    return v1
.end method
