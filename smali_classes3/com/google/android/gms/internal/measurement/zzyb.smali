.class abstract Lcom/google/android/gms/internal/measurement/zzyb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract zza(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzud;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I",
            "Lcom/google/android/gms/internal/measurement/zzud;",
            ")V"
        }
    .end annotation
.end method

.method abstract zza(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;ITT;)V"
        }
    .end annotation
.end method

.method abstract zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzyw;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/zzyw;",
            ")V"
        }
    .end annotation
.end method

.method abstract zza(Lcom/google/android/gms/internal/measurement/zzxi;)Z
.end method

.method final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzxi;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lcom/google/android/gms/internal/measurement/zzxi;",
            ")Z"
        }
    .end annotation

    .line 2
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->getTag()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    .line 11
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->zzul()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/measurement/zzyb;->zzc(Ljava/lang/Object;II)V

    return v2

    .line 29
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzyb;->zzye()Ljava/lang/Object;

    move-result-object v0

    shl-int/lit8 v4, v1, 0x3

    or-int/2addr v3, v4

    .line 22
    :cond_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->zzve()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    .line 23
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzyb;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzxi;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 24
    :cond_4
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->getTag()I

    move-result p2

    if-ne v3, p2, :cond_5

    .line 26
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzyb;->zzab(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/measurement/zzyb;->zza(Ljava/lang/Object;ILjava/lang/Object;)V

    return v2

    .line 25
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwn()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object p1

    throw p1

    .line 15
    :cond_6
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->zzuo()Lcom/google/android/gms/internal/measurement/zzud;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/measurement/zzyb;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzud;)V

    return v2

    .line 13
    :cond_7
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->zzuk()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzyb;->zzb(Ljava/lang/Object;IJ)V

    return v2

    .line 9
    :cond_8
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->zzui()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzyb;->zza(Ljava/lang/Object;IJ)V

    return v2
.end method

.method abstract zzab(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TT;"
        }
    .end annotation
.end method

.method abstract zzae(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract zzah(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method abstract zzai(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation
.end method

.method abstract zzaj(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract zzb(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract zzc(Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;II)V"
        }
    .end annotation
.end method

.method abstract zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzyw;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/zzyw;",
            ")V"
        }
    .end annotation
.end method

.method abstract zzf(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

.method abstract zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TB;)V"
        }
    .end annotation
.end method

.method abstract zzh(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation
.end method

.method abstract zzu(Ljava/lang/Object;)V
.end method

.method abstract zzye()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method
