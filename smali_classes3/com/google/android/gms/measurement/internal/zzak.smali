.class public final Lcom/google/android/gms/measurement/internal/zzak;
.super Ljava/lang/Object;


# instance fields
.field public final origin:Ljava/lang/String;

.field public final zzadt:J

.field public final zzadu:J

.field public final zzadv:Z

.field public final zzadw:Ljava/lang/String;

.field public final zzadx:Ljava/lang/String;

.field public final zzady:Landroid/os/Bundle;


# direct methods
.method constructor <init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzadt:J

    .line 3
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzadu:J

    .line 4
    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzadv:Z

    .line 5
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzadw:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/zzak;->origin:Ljava/lang/String;

    .line 7
    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzadx:Ljava/lang/String;

    .line 8
    iput-object p9, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzady:Landroid/os/Bundle;

    return-void
.end method

.method public static final zzc(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/zzak;
    .locals 11

    .line 10
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzak;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzak;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v10
.end method
