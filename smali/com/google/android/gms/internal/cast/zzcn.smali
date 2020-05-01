.class public Lcom/google/android/gms/internal/cast/zzcn;
.super Ljava/lang/Object;


# instance fields
.field private final namespace:Ljava/lang/String;

.field protected final zzwg:Lcom/google/android/gms/internal/cast/zzdh;

.field private zzwh:Lcom/google/android/gms/internal/cast/zzdm;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzcv;->zzo(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzcn;->namespace:Ljava/lang/String;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdh;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzdh;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzcn;->zzwg:Lcom/google/android/gms/internal/cast/zzdh;

    .line 5
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/cast/zzcn;->setSessionLabel(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getNamespace()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcn;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public final setSessionLabel(Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcn;->zzwg:Lcom/google/android/gms/internal/cast/zzdh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzdh;->zzt(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public zza(JI)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzcn;->zzwh:Lcom/google/android/gms/internal/cast/zzdm;

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzcn;->zzwh:Lcom/google/android/gms/internal/cast/zzdm;

    if-nez p1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcn;->zzdd()V

    :cond_0
    return-void
.end method

.method protected final zza(Ljava/lang/String;JLjava/lang/String;)V
    .locals 8

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p4, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-object v1, p4, v0

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzcn;->zzwh:Lcom/google/android/gms/internal/cast/zzdm;

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzcn;->namespace:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v4, p1

    move-wide v5, p2

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/cast/zzdm;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public zzdd()V
    .locals 0

    return-void
.end method

.method protected final zzdf()J
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcn;->zzwh:Lcom/google/android/gms/internal/cast/zzdm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzdm;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzn(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
