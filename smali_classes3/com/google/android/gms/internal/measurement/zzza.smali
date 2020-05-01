.class public abstract Lcom/google/android/gms/internal/measurement/zzza;
.super Lcom/google/android/gms/internal/measurement/zzzg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/measurement/zzza<",
        "TM;>;>",
        "Lcom/google/android/gms/internal/measurement/zzzg;"
    }
.end annotation


# instance fields
.field protected zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzg;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzg;->zzyu()Lcom/google/android/gms/internal/measurement/zzzg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzza;

    .line 43
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/zzze;->zza(Lcom/google/android/gms/internal/measurement/zzza;Lcom/google/android/gms/internal/measurement/zzza;)V

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/measurement/zzyy;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzzc;->zzcc(I)Lcom/google/android/gms/internal/measurement/zzzd;

    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzzd;->zza(Lcom/google/android/gms/internal/measurement/zzyy;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/measurement/zzyx;I)Z
    .locals 3

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->getPosition()I

    move-result v0

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzyx;->zzao(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    ushr-int/lit8 v1, p2, 0x3

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    .line 29
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzyx;->zzs(II)[B

    move-result-object p1

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzi;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzzi;-><init>(I[B)V

    const/4 p1, 0x0

    .line 32
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    if-nez p2, :cond_1

    .line 33
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-direct {p2}, Lcom/google/android/gms/internal/measurement/zzzc;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzzc;->zzcb(I)Lcom/google/android/gms/internal/measurement/zzzd;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    .line 36
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzzd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzzd;-><init>()V

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/measurement/zzzc;->zza(ILcom/google/android/gms/internal/measurement/zzzd;)V

    .line 38
    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzd;->zza(Lcom/google/android/gms/internal/measurement/zzzi;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected zzf()I
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzzc;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzzc;->zzcc(I)Lcom/google/android/gms/internal/measurement/zzzd;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzzd;->zzf()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public final synthetic zzyu()Lcom/google/android/gms/internal/measurement/zzzg;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzza;

    return-object v0
.end method
